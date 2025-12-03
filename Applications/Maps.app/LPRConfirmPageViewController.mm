@interface LPRConfirmPageViewController
- (LPRConfirmPageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate vehicleTypeTitle:(id)title;
- (void)doneButtonPressed;
- (void)nextButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LPRConfirmPageViewController

- (void)nextButtonPressed
{
  v3 = sub_100022C48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    scenario = self->_scenario;
    v12 = 134217984;
    v13 = scenario;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "LPR onboarding: nextButtonPressed scenario: %ld, will add vehicle", &v12, 0xCu);
  }

  v5 = +[VGVirtualGarageService sharedService];
  [v5 virtualGarageAddVehicle:self->_vehicle];

  v6 = +[VGVirtualGarageService sharedService];
  [v6 virtualGarageSelectVehicle:self->_vehicle];

  v7 = [LPRCustomizeInterstitialViewController alloc];
  vehicle = [(LPRConfirmPageViewController *)self vehicle];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(LPRCustomizeInterstitialViewController *)v7 initWithVehicle:vehicle delegate:WeakRetained];

  navigationController = [(LPRConfirmPageViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)doneButtonPressed
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:41 onTarget:660 eventValue:0];

  scenario = self->_scenario;
  v5 = sub_100022C48();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (scenario == 1)
  {
    if (v6)
    {
      v7 = self->_scenario;
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "LPR onboarding: doneButtonPressed scenario: %ld, will add vehicle", &v12, 0xCu);
    }

    v8 = +[VGVirtualGarageService sharedService];
    [v8 virtualGarageAddVehicle:self->_vehicle];
  }

  else
  {
    if (v6)
    {
      v9 = self->_scenario;
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "LPR onboarding: doneButtonPressed scenario: %ld, will add vehicle", &v12, 0xCu);
    }

    v8 = +[VGVirtualGarageService sharedService];
    [v8 virtualGarageSaveVehicle:self->_vehicle];
  }

  v10 = +[VGVirtualGarageService sharedService];
  [v10 virtualGarageSelectVehicle:self->_vehicle];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFinishConfiguringLPRForVehicle:self->_vehicle];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(LPRConfirmPageViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v9 viewWillAppear:?];
  traitCollection = [(LPRConfirmPageViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v174.receiver = self;
  v174.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v174 viewDidLoad];
  view = [(LPRConfirmPageViewController *)self view];
  [view setAccessibilityIdentifier:@"LPRConfirmPageView"];

  v4 = +[UIColor systemBackgroundColor];
  view2 = [(LPRConfirmPageViewController *)self view];
  [view2 setBackgroundColor:v4];

  scenario = self->_scenario;
  v7 = [UIBarButtonItem alloc];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (scenario)
  {
    v10 = @"[LPR Onboarding] done";
  }

  else
  {
    v10 = @"[LPR Onboarding] next page";
  }

  if (scenario)
  {
    v11 = &selRef_doneButtonPressed;
  }

  else
  {
    v11 = &selRef_nextButtonPressed;
  }

  v12 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
  v168 = [v7 initWithTitle:v12 style:0 target:self action:*v11];

  navigationItem = [(LPRConfirmPageViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v168];

  navigationItem2 = [(LPRConfirmPageViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"RightBarButtonItem"];

  v16 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v16;

  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"ScrollView"];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
  view3 = [(LPRConfirmPageViewController *)self view];
  [view3 addSubview:self->_scrollView];

  v19 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v19;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_containerView];
  v21 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v21 setAccessibilityIdentifier:@"TitleLabel"];
  [(MapsThemeLabel *)v21 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v21 setNumberOfLines:0];
  [(MapsThemeLabel *)v21 setTextAlignment:1];
  [(MapsThemeLabel *)v21 setLineBreakMode:0];
  v22 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v23 = [v22 fontDescriptorWithSymbolicTraits:2];
  v24 = [UIFont fontWithDescriptor:v23 size:0.0];
  v172 = v21;
  [(MapsThemeLabel *)v21 setFont:v24];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"[LPR Onboarding confirm title]" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v21 setText:v26];

  [(UIView *)self->_containerView addSubview:v21];
  v27 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v27 setAccessibilityIdentifier:@"DescriptionLabel"];
  [(MapsThemeLabel *)v27 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v27 setNumberOfLines:0];
  [(MapsThemeLabel *)v27 setTextAlignment:1];
  [(MapsThemeLabel *)v27 setLineBreakMode:0];
  v28 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];

  v29 = [v28 fontDescriptorWithSymbolicTraits:2];
  v30 = [UIFont fontWithDescriptor:v29 size:0.0];
  v171 = v27;
  [(MapsThemeLabel *)v27 setFont:v30];

  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"[LPR Onboarding confirm description" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v27 setText:v32];

  [(UIView *)self->_containerView addSubview:v27];
  v33 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v33 setAccessibilityIdentifier:@"PlateLabel"];
  [(MapsThemeLabel *)v33 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v33 setNumberOfLines:0];
  [(MapsThemeLabel *)v33 setTextAlignment:1];
  [(MapsThemeLabel *)v33 setLineBreakMode:4];
  [(MapsThemeLabel *)v33 setAdjustsFontSizeToFitWidth:1];
  v34 = v33;
  [(MapsThemeLabel *)v33 setMinimumScaleFactor:0.699999988];
  v35 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:?];

  v36 = [v35 fontDescriptorWithSymbolicTraits:2];
  v37 = [UIFont fontWithDescriptor:v36 size:0.0];
  [(MapsThemeLabel *)v34 setFont:v37];

  v38 = +[NSBundle mainBundle];
  v39 = [v38 localizedStringForKey:@"[LPR Onboarding confirm plate number" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v34 setText:v39];

  LODWORD(v40) = 1148846080;
  [(MapsThemeLabel *)v34 setContentHuggingPriority:0 forAxis:v40];
  v41 = v34;
  [(UIView *)self->_containerView addSubview:v34];
  v42 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v42 setAccessibilityIdentifier:@"LicensePlateLabel"];
  [(MapsThemeLabel *)v42 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v42 setTextAlignment:0];
  [(MapsThemeLabel *)v42 setLineBreakMode:4];
  [(MapsThemeLabel *)v42 setAdjustsFontSizeToFitWidth:1];
  v170 = v42;
  [(MapsThemeLabel *)v42 setMinimumScaleFactor:0.699999988];
  v43 = [v35 fontDescriptorWithSymbolicTraits:2];
  v44 = [UIFont fontWithDescriptor:v43 size:0.0];
  [(MapsThemeLabel *)v42 setFont:v44];

  vehicle = [(LPRConfirmPageViewController *)self vehicle];
  licensePlate = [vehicle licensePlate];
  [(MapsThemeLabel *)v42 setText:licensePlate];

  LODWORD(v47) = 1148846080;
  [(MapsThemeLabel *)v42 setContentHuggingPriority:0 forAxis:v47];
  [(UIView *)self->_containerView addSubview:v42];
  v48 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v48 setAccessibilityIdentifier:@"PowerLabel"];
  [(MapsThemeLabel *)v48 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v48 setNumberOfLines:2];
  [(MapsThemeLabel *)v48 setTextAlignment:1];
  [(MapsThemeLabel *)v48 setLineBreakMode:4];
  [(MapsThemeLabel *)v48 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v41 setMinimumScaleFactor:0.699999988];
  v167 = v35;
  v49 = [v35 fontDescriptorWithSymbolicTraits:2];
  v50 = [UIFont fontWithDescriptor:v49 size:0.0];
  v169 = v48;
  [(MapsThemeLabel *)v48 setFont:v50];

  v51 = +[NSBundle mainBundle];
  v52 = [v51 localizedStringForKey:@"[LPR Onboarding confirm power type" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v48 setText:v52];

  [(UIView *)self->_containerView addSubview:v48];
  v53 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v53 setAccessibilityIdentifier:@"PowerValue"];
  [(MapsThemeLabel *)v53 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v53 setNumberOfLines:0];
  [(MapsThemeLabel *)v53 setTextAlignment:4];
  [(MapsThemeLabel *)v53 setLineBreakMode:4];
  [(MapsThemeLabel *)v53 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v53 setMinimumScaleFactor:0.699999988];
  v54 = [v35 fontDescriptorWithSymbolicTraits:2];
  v55 = [UIFont fontWithDescriptor:v54 size:0.0];
  [(MapsThemeLabel *)v53 setFont:v55];

  vehicleTypeTitle = [(LPRConfirmPageViewController *)self vehicleTypeTitle];
  [(MapsThemeLabel *)v53 setText:vehicleTypeTitle];

  [(UIView *)self->_containerView addSubview:v53];
  v57 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v57 setAccessibilityIdentifier:@"PrivacyLabel"];
  [(MapsThemeLabel *)v57 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v57 setNumberOfLines:0];
  [(MapsThemeLabel *)v57 setTextAlignment:0];
  [(MapsThemeLabel *)v57 setLineBreakMode:0];
  v58 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(MapsThemeLabel *)v57 setFont:v58];

  v59 = +[UIColor secondaryLabelColor];
  [(MapsThemeLabel *)v57 setTextColor:v59];

  v60 = +[NSBundle mainBundle];
  v61 = [v60 localizedStringForKey:@"[LPR Onboarding] Add License Plate privacy" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v57 setText:v61];

  [(UIView *)self->_containerView addSubview:v57];
  view4 = [(LPRConfirmPageViewController *)self view];
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(LPRConfirmPageViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v163 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v175[0] = v163;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view6 = [(LPRConfirmPageViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v159 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v175[1] = v159;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view7 = [(LPRConfirmPageViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v155 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v175[2] = v155;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide widthAnchor];
  view8 = [(LPRConfirmPageViewController *)self view];
  widthAnchor2 = [view8 widthAnchor];
  v150 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v175[3] = v150;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view9 = [(LPRConfirmPageViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v146 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v175[4] = v146;
  topAnchor3 = [(UIView *)self->_containerView topAnchor];
  topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
  v143 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v175[5] = v143;
  leadingAnchor3 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor4 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v140 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v175[6] = v140;
  trailingAnchor3 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v137 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v175[7] = v137;
  bottomAnchor3 = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v134 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v175[8] = v134;
  topAnchor5 = [(MapsThemeLabel *)v172 topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_containerView safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide topAnchor];
  v130 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:40.0];
  v175[9] = v130;
  centerXAnchor = [(MapsThemeLabel *)v172 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
  v127 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v175[10] = v127;
  widthAnchor3 = [(MapsThemeLabel *)v172 widthAnchor];
  widthAnchor4 = [(UIView *)self->_containerView widthAnchor];
  v124 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.899999976];
  v175[11] = v124;
  topAnchor7 = [(MapsThemeLabel *)v171 topAnchor];
  bottomAnchor5 = [(MapsThemeLabel *)v172 bottomAnchor];
  v121 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  v175[12] = v121;
  centerXAnchor3 = [(MapsThemeLabel *)v171 centerXAnchor];
  centerXAnchor4 = [(MapsThemeLabel *)v172 centerXAnchor];
  v118 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v175[13] = v118;
  widthAnchor5 = [(MapsThemeLabel *)v171 widthAnchor];
  widthAnchor6 = [(UIView *)self->_containerView widthAnchor];
  v114 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.899999976];
  v175[14] = v114;
  topAnchor8 = [(MapsThemeLabel *)v41 topAnchor];
  bottomAnchor6 = [(MapsThemeLabel *)v171 bottomAnchor];
  v110 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:55.0];
  v175[15] = v110;
  leadingAnchor5 = [(MapsThemeLabel *)v41 leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_containerView leadingAnchor];
  v107 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:18.0];
  v175[16] = v107;
  trailingAnchor5 = [(MapsThemeLabel *)v41 trailingAnchor];
  leadingAnchor7 = [(MapsThemeLabel *)v42 leadingAnchor];
  v103 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor7];
  v175[17] = v103;
  leadingAnchor8 = [(MapsThemeLabel *)v42 leadingAnchor];
  centerXAnchor5 = [(UIView *)self->_containerView centerXAnchor];
  v100 = [leadingAnchor8 constraintEqualToAnchor:centerXAnchor5 constant:-15.0];
  v175[18] = v100;
  centerYAnchor = [(MapsThemeLabel *)v42 centerYAnchor];
  centerYAnchor2 = [(MapsThemeLabel *)v41 centerYAnchor];
  v97 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v175[19] = v97;
  trailingAnchor6 = [(MapsThemeLabel *)v42 trailingAnchor];
  trailingAnchor7 = [(UIView *)self->_containerView trailingAnchor];
  v94 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-15.0];
  v175[20] = v94;
  topAnchor9 = [(MapsThemeLabel *)v169 topAnchor];
  bottomAnchor7 = [(MapsThemeLabel *)v41 bottomAnchor];
  v91 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:40.0];
  v175[21] = v91;
  leadingAnchor9 = [(MapsThemeLabel *)v169 leadingAnchor];
  v111 = v41;
  leadingAnchor10 = [(MapsThemeLabel *)v41 leadingAnchor];
  v88 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v175[22] = v88;
  trailingAnchor8 = [(MapsThemeLabel *)v169 trailingAnchor];
  leadingAnchor11 = [(MapsThemeLabel *)v53 leadingAnchor];
  v85 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor11];
  v175[23] = v85;
  leadingAnchor12 = [(MapsThemeLabel *)v53 leadingAnchor];
  centerXAnchor6 = [(UIView *)self->_containerView centerXAnchor];
  v82 = [leadingAnchor12 constraintEqualToAnchor:centerXAnchor6 constant:-15.0];
  v175[24] = v82;
  v115 = v53;
  centerYAnchor3 = [(MapsThemeLabel *)v53 centerYAnchor];
  centerYAnchor4 = [(MapsThemeLabel *)v169 centerYAnchor];
  v79 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v175[25] = v79;
  trailingAnchor9 = [(MapsThemeLabel *)v53 trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_containerView trailingAnchor];
  v76 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-15.0];
  v175[26] = v76;
  topAnchor10 = [(MapsThemeLabel *)v57 topAnchor];
  bottomAnchor8 = [(MapsThemeLabel *)v169 bottomAnchor];
  v73 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:40.0];
  v175[27] = v73;
  leadingAnchor13 = [(MapsThemeLabel *)v57 leadingAnchor];
  leadingAnchor14 = [(MapsThemeLabel *)v111 leadingAnchor];
  v64 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v175[28] = v64;
  v65 = v57;
  v106 = v57;
  widthAnchor7 = [(MapsThemeLabel *)v57 widthAnchor];
  widthAnchor8 = [(UIView *)self->_containerView widthAnchor];
  v68 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:0.899999976];
  v175[29] = v68;
  bottomAnchor9 = [(MapsThemeLabel *)v65 bottomAnchor];
  bottomAnchor10 = [(UIView *)self->_containerView bottomAnchor];
  v71 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-15.0];
  v175[30] = v71;
  v72 = [NSArray arrayWithObjects:v175 count:31];
  [view4 addConstraints:v72];
}

- (LPRConfirmPageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate vehicleTypeTitle:(id)title
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = LPRConfirmPageViewController;
  v13 = [(LPRConfirmPageViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(LPRConfirmPageViewController *)v13 setVehicle:vehicleCopy];
    [(LPRConfirmPageViewController *)v14 setVehicleTypeTitle:titleCopy];
    v14->_scenario = scenario;
    objc_storeWeak(&v14->_delegate, delegateCopy);
  }

  return v14;
}

@end