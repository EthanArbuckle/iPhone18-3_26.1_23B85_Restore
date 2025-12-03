@interface ASTOnDeviceEyeTrackingSettingsController
- (ASTOnDeviceEyeTrackingSettingsController)init;
- (double)valueForSpecifier:(id)specifier;
- (id)_calibrationStrategyName:(id)name;
- (id)createGazeTrackingIntroductionGroupSpecifier;
- (id)dwellControlEnabled:(id)enabled;
- (id)onDeviceEyeTrackingEnabled:(id)enabled;
- (id)shouldShowFaceGuidance:(id)guidance;
- (id)shouldShowUncalibratedPoints:(id)points;
- (id)shouldUseGaussianBlur:(id)blur;
- (id)shouldUseMotionFilter:(id)filter;
- (id)shouldUseWeightedAverages:(id)averages;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)_configureDwellControlFooter:(id)footer;
- (void)_resetButtonTapped:(id)tapped;
- (void)_updateOnDeviceEyeTrackingSwitchForOneness;
- (void)_updateSpecifiersForAutoHide;
- (void)dealloc;
- (void)setDwellControlEnabled:(id)enabled specifier:(id)specifier;
- (void)setOnDeviceEyeTrackingEnabled:(id)enabled specifier:(id)specifier;
- (void)setShouldShowFaceGuidance:(id)guidance specifier:(id)specifier;
- (void)setShouldShowUncalibratedPoints:(id)points specifier:(id)specifier;
- (void)setShouldUseGaussianBlur:(id)blur specifier:(id)specifier;
- (void)setShouldUseMotionFilter:(id)filter specifier:(id)specifier;
- (void)setShouldUseWeightedAverages:(id)averages specifier:(id)specifier;
- (void)showMoreDwellControlOptions;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
- (void)willBecomeActive;
@end

@implementation ASTOnDeviceEyeTrackingSettingsController

- (ASTOnDeviceEyeTrackingSettingsController)init
{
  v34.receiver = self;
  v34.super_class = ASTOnDeviceEyeTrackingSettingsController;
  v2 = [(ASTOnDeviceEyeTrackingSettingsController *)&v34 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke;
    v31[3] = &unk_255388;
    objc_copyWeak(&v32, &location);
    [v3 registerUpdateBlock:v31 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v2];

    objc_destroyWeak(&v32);
    v4 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_2;
    v29[3] = &unk_255388;
    objc_copyWeak(&v30, &location);
    [v4 registerUpdateBlock:v29 forRetrieveSelector:"assistiveTouchMouseDwellControlEnabled" withListener:v2];

    objc_destroyWeak(&v30);
    v5 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_3;
    v27[3] = &unk_255388;
    objc_copyWeak(&v28, &location);
    [v5 registerUpdateBlock:v27 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:v2];

    objc_destroyWeak(&v28);
    v6 = +[AXSettings sharedInstance];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_4;
    v25[3] = &unk_255388;
    objc_copyWeak(&v26, &location);
    [v6 registerUpdateBlock:v25 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages" withListener:v2];

    objc_destroyWeak(&v26);
    v7 = +[AXSettings sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_5;
    v23[3] = &unk_255388;
    objc_copyWeak(&v24, &location);
    [v7 registerUpdateBlock:v23 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter" withListener:v2];

    objc_destroyWeak(&v24);
    v8 = +[AXSettings sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_6;
    v21[3] = &unk_255388;
    objc_copyWeak(&v22, &location);
    [v8 registerUpdateBlock:v21 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur" withListener:v2];

    objc_destroyWeak(&v22);
    v9 = +[AXSettings sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_7;
    v19[3] = &unk_255388;
    objc_copyWeak(&v20, &location);
    [v9 registerUpdateBlock:v19 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingAutoHideEnabled" withListener:v2];

    objc_destroyWeak(&v20);
    v10 = +[AXSettings sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_8;
    v17[3] = &unk_255388;
    objc_copyWeak(&v18, &location);
    [v10 registerUpdateBlock:v17 forRetrieveSelector:"assistiveTouchBubbleModeEnabled" withListener:v2];

    objc_destroyWeak(&v18);
    v11 = +[AXSettings sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_9;
    v15[3] = &unk_255388;
    objc_copyWeak(&v16, &location);
    [v11 registerUpdateBlock:v15 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy" withListener:v2];

    objc_destroyWeak(&v16);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleContinuityDisplayStateChanged_2, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v13 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = +[ASTUIGazeEnrollmentManager sharedManager];
    [v4 resetGazeEnrollment];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingEnabledSpecifier" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DWELL_CONTROL" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingShowUncalibratedPointsSpecifier" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingShouldUseWeightedAvergesSpecifier" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingShouldUseMotionFilterSpecifier" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingShouldUseGaussianBlurSpecifier" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpecifiersForAutoHide];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SNAP_TO_ITEM" animated:0];
}

void __48__ASTOnDeviceEyeTrackingSettingsController_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"OnDeviceEyeTrackingCalibrationStrategySpecifier" animated:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = ASTOnDeviceEyeTrackingSettingsController;
  [(ASTOnDeviceEyeTrackingSettingsController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ASTOnDeviceEyeTrackingSettingsController;
  [(ASTOnDeviceEyeTrackingSettingsController *)&v6 viewDidLoad];
  table = [(ASTOnDeviceEyeTrackingSettingsController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = ASTOnDeviceEyeTrackingSettingsController;
  [(ASTOnDeviceEyeTrackingSettingsController *)&v5 willBecomeActive];
  if ([(ASTOnDeviceEyeTrackingSettingsController *)self showingAutoHideSettings])
  {
    eyeTrackingSettingsHelper = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTrackingSettingsHelper];
    autoHideTimeoutAndSliderContiguousSpecs = [eyeTrackingSettingsHelper autoHideTimeoutAndSliderContiguousSpecs];
    [(ASTOnDeviceEyeTrackingSettingsController *)self removeContiguousSpecifiers:autoHideTimeoutAndSliderContiguousSpecs animated:0];

    [(ASTOnDeviceEyeTrackingSettingsController *)self setShowingAutoHideSettings:0];
    [(ASTOnDeviceEyeTrackingSettingsController *)self _updateSpecifiersForAutoHide];
  }
}

- (id)specifiers
{
  eyeTracker = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTracker];

  if (!eyeTracker)
  {
    v96 = 0;
    objc_opt_class();
    userInfo = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 objectForKeyedSubscript:@"AX_ON_DEVICE_EYE_TRACKER_KEY"];
    [(ASTOnDeviceEyeTrackingSettingsController *)self setEyeTracker:v6];
  }

  eyeTrackingSettingsHelper = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTrackingSettingsHelper];

  if (!eyeTrackingSettingsHelper)
  {
    v8 = [ASTOnDeviceEyeTrackingSettingsHelper alloc];
    eyeTracker2 = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTracker];
    v10 = [(ASTOnDeviceEyeTrackingSettingsHelper *)v8 initWithEyeTracker:eyeTracker2];
    [(ASTOnDeviceEyeTrackingSettingsController *)self setEyeTrackingSettingsHelper:v10];
  }

  v11 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v11)
  {
    v86 = OBJC_IVAR___PSListController__specifiers;
    v12 = [objc_allocWithZone(NSMutableArray) init];
    v13 = [PSSpecifier groupSpecifierWithID:@"OnDeviceEyeTrackingGroup"];
    [v13 setObject:@"HandSettings" forKeyedSubscript:@"table"];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 setObject:v15 forKeyedSubscript:PSFooterCellClassGroupKey];

    selfCopy = self;
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    bundlePath = [v16 bundlePath];
    v91 = v13;
    [v13 setObject:bundlePath forKeyedSubscript:@"bundlePath"];

    v18 = +[NSLocale currentLocale];
    v19 = [v18 objectForKey:NSLocaleMeasurementSystem];
    v20 = [v19 isEqualToString:NSLocaleMeasurementSystemMetric];

    v21 = @"EyeTrackingMenuFooter";
    IsPad = AXDeviceIsPad();
    if (IsPad)
    {
      v21 = [NSString stringWithFormat:@"%@_iPad", @"EyeTrackingMenuFooter"];
    }

    if (v20)
    {
      v23 = [NSString stringWithFormat:@"%@_Metric", v21];

      v21 = v23;
    }

    v24 = @"EyeTrackingItem13";
    if (IsPad)
    {
      v24 = [NSString stringWithFormat:@"%@_iPad", @"EyeTrackingItem13"];
    }

    if (v20)
    {
      v25 = [NSString stringWithFormat:@"%@_Metric", v24];

      v24 = v25;
    }

    v89 = v12;
    v26 = @"EyeTrackingItem32";
    if (IsPad)
    {
      v26 = [NSString stringWithFormat:@"%@_iPad", @"EyeTrackingItem32"];
    }

    v111 = @"contentLabel";
    v112 = v21;
    v27 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v113[0] = v27;
    v109[0] = @"moreLabel";
    v109[1] = @"additionalTitleLabel";
    v110[0] = @"EyeTrackingLearnMore";
    v110[1] = @"EyeTrackingLearnMoreTitle";
    v84 = v24;
    v85 = v21;
    v110[2] = v21;
    v109[2] = @"additionalSubtitleLabel";
    v109[3] = @"additionalContent";
    v108[0] = &off_27D5F8;
    v108[1] = &off_27D620;
    v108[2] = &off_27D648;
    v106 = @"headerLabel";
    v107 = v24;
    v28 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v108[3] = v28;
    v108[4] = &off_27D670;
    v108[5] = &off_27D698;
    v108[6] = &off_27D6C0;
    v108[7] = &off_27D6E8;
    v108[8] = &off_27D710;
    v104 = @"headerLabel";
    v105 = v26;
    v83 = v26;
    v29 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    v108[9] = v29;
    v108[10] = &off_27D738;
    v30 = [NSArray arrayWithObjects:v108 count:11];
    v110[3] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];
    v113[1] = v31;
    v32 = [NSArray arrayWithObjects:v113 count:2];
    v33 = [v32 mutableCopy];

    v34 = AXTeachableFeatureEyeTracking;
    v90 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureEyeTracking];
    v88 = v33;
    if ([v90 count])
    {
      v102[0] = @"moreLabel";
      v35 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_WHATS_NEW_LINK", @"HandSettings");
      v103[0] = v35;
      v102[1] = @"additionalTitleLabel";
      v36 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_TITLE", @"HandSettings");
      v103[1] = v36;
      v103[2] = &__kCFBooleanTrue;
      v102[2] = @"alreadyLocalized";
      v102[3] = @"symbolName";
      v103[3] = @"eye.tracking";
      v37 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:4];
      v81 = [v37 mutableCopy];

      v38 = objc_opt_new();
      v100[0] = @"sectionLabel";
      v39 = [AXTeachableMomentsManager notificationTitleForFeature:v34];
      v100[1] = @"alreadyLocalized";
      v101[0] = v39;
      v101[1] = &__kCFBooleanTrue;
      v40 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:2];
      [v38 addObject:v40];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v41 = v90;
      v42 = [v41 countByEnumeratingWithState:&v92 objects:v99 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v93;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v93 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v92 + 1) + 8 * i);
            v97[0] = @"headerLabel";
            itemTitle = [v46 itemTitle];
            v98[0] = itemTitle;
            v97[1] = @"contentLabel";
            itemDescription = [v46 itemDescription];
            v97[2] = @"alreadyLocalized";
            v98[1] = itemDescription;
            v98[2] = &__kCFBooleanTrue;
            v49 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
            [v38 addObject:v49];
          }

          v43 = [v41 countByEnumeratingWithState:&v92 objects:v99 count:16];
        }

        while (v43);
      }

      [v81 setObject:v38 forKey:@"additionalContent"];
      v33 = v88;
      [v88 addObject:v81];
    }

    [v91 setObject:v33 forKeyedSubscript:@"content"];
    v50 = v89;
    [v89 addObject:v91];
    v51 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_TOGGLE_TITLE", @"HandSettings");
    v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:selfCopy set:"setOnDeviceEyeTrackingEnabled:specifier:" get:"onDeviceEyeTrackingEnabled:" detail:0 cell:6 edit:0];

    [v52 setIdentifier:@"OnDeviceEyeTrackingEnabledSpecifier"];
    [v89 addObject:v52];
    eyeTrackingSettingsHelper2 = [(ASTOnDeviceEyeTrackingSettingsController *)selfCopy eyeTrackingSettingsHelper];
    specifiers = [eyeTrackingSettingsHelper2 specifiers];
    [v89 axSafelyAddObjectsFromArray:specifiers];

    v55 = +[PSSpecifier emptyGroupSpecifier];
    [(ASTOnDeviceEyeTrackingSettingsController *)selfCopy _configureDwellControlFooter:v55];
    v82 = v55;
    [v89 axSafelyAddObject:v55];
    v56 = settingsLocString(@"MOUSE_POINTER_DWELL_CONTROL", @"HandSettings");
    v57 = [PSSpecifier preferenceSpecifierNamed:v56 target:selfCopy set:"setDwellControlEnabled:specifier:" get:"dwellControlEnabled:" detail:0 cell:6 edit:0];

    [v57 setProperty:@"DWELL_CONTROL" forKey:PSIDKey];
    [v89 axSafelyAddObject:v57];
    v58 = +[PSSpecifier emptyGroupSpecifier];
    [v89 axSafelyAddObject:v58];
    v59 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_SHOW_FACE_GUIDANCE", @"HandSettings");
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:selfCopy set:"setShouldShowFaceGuidance:specifier:" get:"shouldShowFaceGuidance:" detail:0 cell:6 edit:0];

    [v60 setIdentifier:@"OnDeviceEyeTrackingShowFaceGuidanceSpecifier"];
    [v89 addObject:v60];
    if (AXIsInternalInstall())
    {
      +[NSMutableArray array];
      v61 = v79 = v58;
      v78 = [PSSpecifier groupSpecifierWithName:@"Internal Settings"];
      [v61 addObject:v78];
      v62 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_SHOW_UNCALIBRATED_POINTS", @"HandSettings");
      v77 = [PSSpecifier preferenceSpecifierNamed:v62 target:selfCopy set:"setShouldShowUncalibratedPoints:specifier:" get:"shouldShowUncalibratedPoints:" detail:0 cell:6 edit:0];

      [v77 setIdentifier:@"OnDeviceEyeTrackingShowUncalibratedPointsSpecifier"];
      [v61 addObject:v77];
      v63 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_USE_WEIGHTED_AVERAGES", @"HandSettings");
      v76 = [PSSpecifier preferenceSpecifierNamed:v63 target:selfCopy set:"setShouldUseWeightedAverages:specifier:" get:"shouldUseWeightedAverages:" detail:0 cell:6 edit:0];

      [v76 setIdentifier:@"OnDeviceEyeTrackingShouldUseWeightedAvergesSpecifier"];
      [v61 addObject:v76];
      v64 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_USE_MOTION_FILTER", @"HandSettings");
      v65 = [PSSpecifier preferenceSpecifierNamed:v64 target:selfCopy set:"setShouldUseMotionFilter:specifier:" get:"shouldUseMotionFilter:" detail:0 cell:6 edit:0];

      [v65 setIdentifier:@"OnDeviceEyeTrackingShouldUseMotionFilterSpecifier"];
      [v61 addObject:v65];
      v66 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_USE_GAUSIAN_BLUR", @"HandSettings");
      v67 = [PSSpecifier preferenceSpecifierNamed:v66 target:selfCopy set:"setShouldUseGaussianBlur:specifier:" get:"shouldUseGaussianBlur:" detail:0 cell:6 edit:0];

      [v67 setIdentifier:@"OnDeviceEyeTrackingShouldUseGaussianBlurSpecifier"];
      [v61 addObject:v67];
      settingsLocString(@"ON_DEVICE_EYE_TRACKING_STRATEGY", @"HandSettings");
      v68 = v80 = v52;
      v69 = [PSSpecifier preferenceSpecifierNamed:v68 target:selfCopy set:0 get:"_calibrationStrategyName:" detail:objc_opt_class() cell:2 edit:0];

      [v69 setIdentifier:@"OnDeviceEyeTrackingCalibrationStrategySpecifier"];
      [v61 addObject:v69];
      v70 = [PSSpecifier ax_stepperSpecifierWithDelegate:selfCopy];
      [v70 setIdentifier:@"OnDeviceEyeTrackingCalibrationDotActivationTimeoutSpecifier"];
      [v61 addObject:v70];
      v71 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_RESET", @"HandSettings");
      v72 = [PSSpecifier deleteButtonSpecifierWithName:v71 target:selfCopy action:"_resetButtonTapped:"];

      v50 = v89;
      [v72 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      [v61 addObject:v72];
      [v89 axSafelyAddObjectsFromArray:v61];

      v52 = v80;
      v33 = v88;

      v58 = v79;
    }

    v73 = [v50 copy];
    v74 = *&selfCopy->AXUISettingsBaseListController_opaque[v86];
    *&selfCopy->AXUISettingsBaseListController_opaque[v86] = v73;

    [(ASTOnDeviceEyeTrackingSettingsController *)selfCopy _updateSpecifiersForAutoHide];
    [(ASTOnDeviceEyeTrackingSettingsController *)selfCopy _updateOnDeviceEyeTrackingSwitchForOneness];

    v11 = *&selfCopy->AXUISettingsBaseListController_opaque[v86];
  }

  return v11;
}

- (void)_updateOnDeviceEyeTrackingSwitchForOneness
{
  v6 = [(ASTOnDeviceEyeTrackingSettingsController *)self specifierForID:@"OnDeviceEyeTrackingEnabledSpecifier"];
  v3 = +[AXSpringBoardServer server];
  isContinuitySessionActive = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:isContinuitySessionActive ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(ASTOnDeviceEyeTrackingSettingsController *)self reloadSpecifier:v6];
}

- (void)_resetButtonTapped:(id)tapped
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];

  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompleted:0];

  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeDefault];

  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchMouseDwellControlEnabled:0];

  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchBubbleModeEnabled:0];

  v9 = +[ASTUIGazeEnrollmentManager sharedManager];
  [v9 resetGazeEnrollment];

  [(ASTOnDeviceEyeTrackingSettingsController *)self reloadSpecifiers];
}

- (id)createGazeTrackingIntroductionGroupSpecifier
{
  v2 = +[PSSpecifier emptyGroupSpecifier];
  v3 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_SETUP_FOOTER", @"HandSettings");
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setProperty:v5 forKey:PSFooterCellClassGroupKey];

  [v2 setProperty:v3 forKey:PSFooterHyperlinkViewTitleKey];

  return v2;
}

- (void)_configureDwellControlFooter:(id)footer
{
  footerCopy = footer;
  v12 = settingsLocString(@"ON_DEVICE_EYE_TRACKING_DWELL_CONTROL_FOOTER", @"Accessibility");
  v5 = settingsLocString(@"AIR_TOUCH_TITLE", @"Accessibility");
  v6 = [NSString stringWithFormat:v12, v5];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [footerCopy setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [footerCopy setProperty:v6 forKey:PSFooterHyperlinkViewTitleKey];
  v14.location = [v6 rangeOfString:v5];
  v9 = NSStringFromRange(v14);
  [footerCopy setProperty:v9 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v10 = [NSValue valueWithNonretainedObject:self];
  [footerCopy setProperty:v10 forKey:PSFooterHyperlinkViewTargetKey];

  v11 = NSStringFromSelector("showMoreDwellControlOptions");
  [footerCopy setProperty:v11 forKey:PSFooterHyperlinkViewActionKey];
}

- (void)showMoreDwellControlOptions
{
  v3 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE#DwellEnabledSpecifier"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)_updateSpecifiersForAutoHide
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchOnDeviceEyeTrackingAutoHideEnabled])
  {
    showingAutoHideSettings = [(ASTOnDeviceEyeTrackingSettingsController *)self showingAutoHideSettings];

    if ((showingAutoHideSettings & 1) == 0)
    {
      eyeTrackingSettingsHelper = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTrackingSettingsHelper];
      autoHideTimeoutAndSliderContiguousSpecs = [eyeTrackingSettingsHelper autoHideTimeoutAndSliderContiguousSpecs];
      [(ASTOnDeviceEyeTrackingSettingsController *)self insertContiguousSpecifiers:autoHideTimeoutAndSliderContiguousSpecs afterSpecifierID:@"AUTO_HIDE" animated:1];

      selfCopy2 = self;
      v8 = 1;
LABEL_11:

      [(ASTOnDeviceEyeTrackingSettingsController *)selfCopy2 setShowingAutoHideSettings:v8];
      return;
    }
  }

  else
  {
  }

  v12 = +[AXSettings sharedInstance];
  if (([v12 assistiveTouchOnDeviceEyeTrackingAutoHideEnabled] & 1) == 0)
  {
    showingAutoHideSettings2 = [(ASTOnDeviceEyeTrackingSettingsController *)self showingAutoHideSettings];

    if (!showingAutoHideSettings2)
    {
      return;
    }

    eyeTrackingSettingsHelper2 = [(ASTOnDeviceEyeTrackingSettingsController *)self eyeTrackingSettingsHelper];
    autoHideTimeoutAndSliderContiguousSpecs2 = [eyeTrackingSettingsHelper2 autoHideTimeoutAndSliderContiguousSpecs];
    [(ASTOnDeviceEyeTrackingSettingsController *)self removeContiguousSpecifiers:autoHideTimeoutAndSliderContiguousSpecs2 animated:1];

    selfCopy2 = self;
    v8 = 0;
    goto LABEL_11;
  }
}

- (id)_calibrationStrategyName:(id)name
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy = [v3 assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy];

  return [ASTCalibrationStrategyListController nameForCalibrationStrategy:assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy];
}

- (id)onDeviceEyeTrackingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseOnDeviceEyeTrackingEnabled]);

  return v4;
}

- (void)setOnDeviceEyeTrackingEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  v9 = +[AXSettings sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingEnabled = [v9 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (bOOLValue != assistiveTouchMouseOnDeviceEyeTrackingEnabled)
  {
    if (bOOLValue)
    {
      v11 = +[AXSettings sharedInstance];
      [v11 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:1];
    }

    else
    {
      v12 = AXUILocalizedStringForKey();
      v13 = AXUILocalizedStringForKey();
      v14 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:1];

      v15 = AXUILocalizedStringForKey();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __84__ASTOnDeviceEyeTrackingSettingsController_setOnDeviceEyeTrackingEnabled_specifier___block_invoke;
      v22[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
      v23 = bOOLValue;
      v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v22];

      objc_initWeak(&location, self);
      v17 = AXUILocalizedStringForKey();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __84__ASTOnDeviceEyeTrackingSettingsController_setOnDeviceEyeTrackingEnabled_specifier___block_invoke_2;
      v19[3] = &unk_255BF8;
      objc_copyWeak(&v20, &location);
      v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v19];

      [v14 addAction:v16];
      [v14 addAction:v18];
      [(ASTOnDeviceEyeTrackingSettingsController *)self presentViewController:v14 animated:1 completion:0];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

void __84__ASTOnDeviceEyeTrackingSettingsController_setOnDeviceEyeTrackingEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:*(a1 + 32)];
}

void __84__ASTOnDeviceEyeTrackingSettingsController_setOnDeviceEyeTrackingEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)dwellControlEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseDwellControlEnabled]);

  return v4;
}

- (void)setDwellControlEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchAlwaysShowMenuEnabled] | bOOLValue;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchAlwaysShowMenuEnabled:v6 & 1];

  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchMouseDwellControlShowPrompt:1];

  v9 = +[AXSettings sharedInstance];
  [v9 setAssistiveTouchMouseDwellControlEnabled:bOOLValue];
}

- (id)shouldShowUncalibratedPoints:(id)points
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints]);

  return v4;
}

- (void)setShouldShowUncalibratedPoints:(id)points specifier:(id)specifier
{
  bOOLValue = [points BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints:bOOLValue];
}

- (id)shouldShowFaceGuidance:(id)guidance
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled]);

  return v4;
}

- (void)setShouldShowFaceGuidance:(id)guidance specifier:(id)specifier
{
  bOOLValue = [guidance BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled:bOOLValue];
}

- (id)shouldUseWeightedAverages:(id)averages
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages]);

  return v4;
}

- (void)setShouldUseWeightedAverages:(id)averages specifier:(id)specifier
{
  bOOLValue = [averages BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages:bOOLValue];
}

- (id)shouldUseMotionFilter:(id)filter
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter]);

  return v4;
}

- (void)setShouldUseMotionFilter:(id)filter specifier:(id)specifier
{
  bOOLValue = [filter BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter:bOOLValue];
}

- (id)shouldUseGaussianBlur:(id)blur
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur]);

  return v4;
}

- (void)setShouldUseGaussianBlur:(id)blur specifier:(id)specifier
{
  bOOLValue = [blur BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur:bOOLValue];
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout:value];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(ASTOnDeviceEyeTrackingSettingsController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end