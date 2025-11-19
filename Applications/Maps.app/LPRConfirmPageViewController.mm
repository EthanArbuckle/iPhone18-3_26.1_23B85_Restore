@interface LPRConfirmPageViewController
- (LPRConfirmPageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5 vehicleTypeTitle:(id)a6;
- (void)doneButtonPressed;
- (void)nextButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v8 = [(LPRConfirmPageViewController *)self vehicle];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(LPRCustomizeInterstitialViewController *)v7 initWithVehicle:v8 delegate:WeakRetained];

  v11 = [(LPRConfirmPageViewController *)self navigationController];
  [v11 pushViewController:v10 animated:1];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v7 viewWillDisappear:a3];
  v4 = [(LPRConfirmPageViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v9 viewWillAppear:?];
  v5 = [(LPRConfirmPageViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }
}

- (void)viewDidLoad
{
  v174.receiver = self;
  v174.super_class = LPRConfirmPageViewController;
  [(LPRConfirmPageViewController *)&v174 viewDidLoad];
  v3 = [(LPRConfirmPageViewController *)self view];
  [v3 setAccessibilityIdentifier:@"LPRConfirmPageView"];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(LPRConfirmPageViewController *)self view];
  [v5 setBackgroundColor:v4];

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

  v13 = [(LPRConfirmPageViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v168];

  v14 = [(LPRConfirmPageViewController *)self navigationItem];
  v15 = [v14 rightBarButtonItem];
  [v15 setAccessibilityIdentifier:@"RightBarButtonItem"];

  v16 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v16;

  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"ScrollView"];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
  v18 = [(LPRConfirmPageViewController *)self view];
  [v18 addSubview:self->_scrollView];

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

  v45 = [(LPRConfirmPageViewController *)self vehicle];
  v46 = [v45 licensePlate];
  [(MapsThemeLabel *)v42 setText:v46];

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

  v56 = [(LPRConfirmPageViewController *)self vehicleTypeTitle];
  [(MapsThemeLabel *)v53 setText:v56];

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
  v173 = [(LPRConfirmPageViewController *)self view];
  v165 = [(UIScrollView *)self->_scrollView topAnchor];
  v166 = [(LPRConfirmPageViewController *)self view];
  v164 = [v166 topAnchor];
  v163 = [v165 constraintEqualToAnchor:v164];
  v175[0] = v163;
  v161 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v162 = [(LPRConfirmPageViewController *)self view];
  v160 = [v162 leadingAnchor];
  v159 = [v161 constraintEqualToAnchor:v160];
  v175[1] = v159;
  v157 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v158 = [(LPRConfirmPageViewController *)self view];
  v156 = [v158 trailingAnchor];
  v155 = [v157 constraintEqualToAnchor:v156];
  v175[2] = v155;
  v154 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v152 = [v154 widthAnchor];
  v153 = [(LPRConfirmPageViewController *)self view];
  v151 = [v153 widthAnchor];
  v150 = [v152 constraintEqualToAnchor:v151];
  v175[3] = v150;
  v148 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v149 = [(LPRConfirmPageViewController *)self view];
  v147 = [v149 bottomAnchor];
  v146 = [v148 constraintEqualToAnchor:v147];
  v175[4] = v146;
  v145 = [(UIView *)self->_containerView topAnchor];
  v144 = [(UIScrollView *)self->_scrollView topAnchor];
  v143 = [v145 constraintEqualToAnchor:v144];
  v175[5] = v143;
  v142 = [(UIView *)self->_containerView leadingAnchor];
  v141 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v140 = [v142 constraintEqualToAnchor:v141];
  v175[6] = v140;
  v139 = [(UIView *)self->_containerView trailingAnchor];
  v138 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v137 = [v139 constraintEqualToAnchor:v138];
  v175[7] = v137;
  v136 = [(UIView *)self->_containerView bottomAnchor];
  v135 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v134 = [v136 constraintEqualToAnchor:v135];
  v175[8] = v134;
  v132 = [(MapsThemeLabel *)v172 topAnchor];
  v133 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v131 = [v133 topAnchor];
  v130 = [v132 constraintEqualToAnchor:v131 constant:40.0];
  v175[9] = v130;
  v129 = [(MapsThemeLabel *)v172 centerXAnchor];
  v128 = [(UIView *)self->_containerView centerXAnchor];
  v127 = [v129 constraintEqualToAnchor:v128];
  v175[10] = v127;
  v126 = [(MapsThemeLabel *)v172 widthAnchor];
  v125 = [(UIView *)self->_containerView widthAnchor];
  v124 = [v126 constraintEqualToAnchor:v125 multiplier:0.899999976];
  v175[11] = v124;
  v123 = [(MapsThemeLabel *)v171 topAnchor];
  v122 = [(MapsThemeLabel *)v172 bottomAnchor];
  v121 = [v123 constraintEqualToAnchor:v122 constant:10.0];
  v175[12] = v121;
  v120 = [(MapsThemeLabel *)v171 centerXAnchor];
  v119 = [(MapsThemeLabel *)v172 centerXAnchor];
  v118 = [v120 constraintEqualToAnchor:v119];
  v175[13] = v118;
  v117 = [(MapsThemeLabel *)v171 widthAnchor];
  v116 = [(UIView *)self->_containerView widthAnchor];
  v114 = [v117 constraintEqualToAnchor:v116 multiplier:0.899999976];
  v175[14] = v114;
  v113 = [(MapsThemeLabel *)v41 topAnchor];
  v112 = [(MapsThemeLabel *)v171 bottomAnchor];
  v110 = [v113 constraintEqualToAnchor:v112 constant:55.0];
  v175[15] = v110;
  v109 = [(MapsThemeLabel *)v41 leadingAnchor];
  v108 = [(UIView *)self->_containerView leadingAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:18.0];
  v175[16] = v107;
  v105 = [(MapsThemeLabel *)v41 trailingAnchor];
  v104 = [(MapsThemeLabel *)v42 leadingAnchor];
  v103 = [v105 constraintLessThanOrEqualToAnchor:v104];
  v175[17] = v103;
  v102 = [(MapsThemeLabel *)v42 leadingAnchor];
  v101 = [(UIView *)self->_containerView centerXAnchor];
  v100 = [v102 constraintEqualToAnchor:v101 constant:-15.0];
  v175[18] = v100;
  v99 = [(MapsThemeLabel *)v42 centerYAnchor];
  v98 = [(MapsThemeLabel *)v41 centerYAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v175[19] = v97;
  v96 = [(MapsThemeLabel *)v42 trailingAnchor];
  v95 = [(UIView *)self->_containerView trailingAnchor];
  v94 = [v96 constraintEqualToAnchor:v95 constant:-15.0];
  v175[20] = v94;
  v93 = [(MapsThemeLabel *)v169 topAnchor];
  v92 = [(MapsThemeLabel *)v41 bottomAnchor];
  v91 = [v93 constraintEqualToAnchor:v92 constant:40.0];
  v175[21] = v91;
  v90 = [(MapsThemeLabel *)v169 leadingAnchor];
  v111 = v41;
  v89 = [(MapsThemeLabel *)v41 leadingAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v175[22] = v88;
  v87 = [(MapsThemeLabel *)v169 trailingAnchor];
  v86 = [(MapsThemeLabel *)v53 leadingAnchor];
  v85 = [v87 constraintLessThanOrEqualToAnchor:v86];
  v175[23] = v85;
  v84 = [(MapsThemeLabel *)v53 leadingAnchor];
  v83 = [(UIView *)self->_containerView centerXAnchor];
  v82 = [v84 constraintEqualToAnchor:v83 constant:-15.0];
  v175[24] = v82;
  v115 = v53;
  v81 = [(MapsThemeLabel *)v53 centerYAnchor];
  v80 = [(MapsThemeLabel *)v169 centerYAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v175[25] = v79;
  v78 = [(MapsThemeLabel *)v53 trailingAnchor];
  v77 = [(UIView *)self->_containerView trailingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 constant:-15.0];
  v175[26] = v76;
  v75 = [(MapsThemeLabel *)v57 topAnchor];
  v74 = [(MapsThemeLabel *)v169 bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74 constant:40.0];
  v175[27] = v73;
  v62 = [(MapsThemeLabel *)v57 leadingAnchor];
  v63 = [(MapsThemeLabel *)v111 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  v175[28] = v64;
  v65 = v57;
  v106 = v57;
  v66 = [(MapsThemeLabel *)v57 widthAnchor];
  v67 = [(UIView *)self->_containerView widthAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 multiplier:0.899999976];
  v175[29] = v68;
  v69 = [(MapsThemeLabel *)v65 bottomAnchor];
  v70 = [(UIView *)self->_containerView bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-15.0];
  v175[30] = v71;
  v72 = [NSArray arrayWithObjects:v175 count:31];
  [v173 addConstraints:v72];
}

- (LPRConfirmPageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5 vehicleTypeTitle:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = LPRConfirmPageViewController;
  v13 = [(LPRConfirmPageViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(LPRConfirmPageViewController *)v13 setVehicle:v10];
    [(LPRConfirmPageViewController *)v14 setVehicleTypeTitle:v12];
    v14->_scenario = a3;
    objc_storeWeak(&v14->_delegate, v11);
  }

  return v14;
}

@end