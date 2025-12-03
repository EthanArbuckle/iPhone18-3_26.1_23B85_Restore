@interface ASTHeadTrackingTopLevelViewController
- (ASTHeadTrackingTopLevelViewController)init;
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)stepValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)_actionForSpecifier:(id)specifier;
- (id)_customizationSpecifiers;
- (id)_setupSpecifiersForExpressions:(id)expressions;
- (id)assistiveTouchBubbleModeEnabled:(id)enabled;
- (id)dwellControlEnabled:(id)enabled;
- (id)headTrackingEnabled:(id)enabled;
- (id)modeSummary:(id)summary;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)_disableHeadTrackingSpec:(id)spec forSwitchControlIfNecessaryAndReload:(BOOL)reload;
- (void)_switchControlToggled:(id)toggled;
- (void)setAssistiveTouchBubbleModeEnabled:(id)enabled specifier:(id)specifier;
- (void)setDwellControlEnabled:(id)enabled specifier:(id)specifier;
- (void)setHeadTrackingEnabled:(id)enabled specifier:(id)specifier;
- (void)showMoreDwellControlOptions;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ASTHeadTrackingTopLevelViewController

- (ASTHeadTrackingTopLevelViewController)init
{
  v5.receiver = self;
  v5.super_class = ASTHeadTrackingTopLevelViewController;
  v2 = [(ASTHeadTrackingTopLevelViewController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_switchControlToggled:" name:kAXSAssistiveTouchScannerEnabledNotification object:0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ASTHeadTrackingTopLevelViewController;
  [(ASTHeadTrackingTopLevelViewController *)&v6 viewWillAppear:appear];
  v4 = settingsLocString(@"AST_HEAD_TRACKING_NAVBAR_TITLE", @"HandSettings");
  navigationItem = [(ASTHeadTrackingTopLevelViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  [(ASTHeadTrackingTopLevelViewController *)self reloadSpecifiers];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = ASTHeadTrackingTopLevelViewController;
  [(ASTHeadTrackingTopLevelViewController *)&v13 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke;
  v10[3] = &unk_255388;
  objc_copyWeak(&v11, &location);
  [v3 registerUpdateBlock:v10 forRetrieveSelector:"assistiveTouchHeadTrackingEnabled" withListener:self];

  objc_destroyWeak(&v11);
  v4 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke_2;
  v8[3] = &unk_255388;
  objc_copyWeak(&v9, &location);
  [v4 registerUpdateBlock:v8 forRetrieveSelector:"assistiveTouchBubbleModeEnabled" withListener:self];

  objc_destroyWeak(&v9);
  v5 = +[AXSettings sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke_3;
  v6[3] = &unk_255388;
  objc_copyWeak(&v7, &location);
  [v5 registerUpdateBlock:v6 forRetrieveSelector:"assistiveTouchMouseDwellControlEnabled" withListener:self];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __52__ASTHeadTrackingTopLevelViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v49 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"AST_HEAD_TRACKING_FOOTER", @"HandSettings");
    v7 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v48 = v5;
    [v4 addObject:v5];
    v8 = settingsLocString(@"AST_HEAD_TRACKING_SWITCH_LABEL", @"HandSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setHeadTrackingEnabled:specifier:" get:"headTrackingEnabled:" detail:0 cell:6 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"ASTHeadTrackingEnabled" forKey:PSIDKey];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [(ASTHeadTrackingTopLevelViewController *)self _disableHeadTrackingSpec:v9 forSwitchControlIfNecessaryAndReload:0];
    [(ASTHeadTrackingTopLevelViewController *)self setHeadTrackingSpecifier:v9];
    v47 = v9;
    [v4 addObject:v9];
    v11 = settingsLocString(@"AST_HEAD_TRACKING_POINTER", @"HandSettings");
    v12 = [PSSpecifier groupSpecifierWithName:v11];

    v13 = settingsLocString(@"AST_HEAD_TRACKING_MODE_LABEL", @"HandSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"modeSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v14 setProperty:@"ASTHeadTrackingMode" forKey:v10];
    v45 = v14;
    v46 = v12;
    v51[0] = v12;
    v51[1] = v14;
    v15 = [NSArray arrayWithObjects:v51 count:2];
    [(ASTHeadTrackingTopLevelViewController *)self setModeSpecifiers:v15];

    v16 = AXAssistiveTouchSupportedHeadTrackingExpressions();
    v17 = [(ASTHeadTrackingTopLevelViewController *)self _setupSpecifiersForExpressions:v16];

    if ([v17 count])
    {
      v18 = settingsLocString(@"AST_HEAD_TRACKING_ACTIONS", @"HandSettings");
      v19 = [PSSpecifier groupSpecifierWithName:v18];
      [v17 insertObject:v19 atIndex:0];

      [(ASTHeadTrackingTopLevelViewController *)self setActionSpecifiers:v17];
    }

    v20 = settingsLocString(@"AST_HEAD_TRACKING_SENSITIVITY", @"HandSettings");
    v21 = [PSSpecifier groupSpecifierWithName:v20];

    v22 = settingsLocString(@"AST_HEAD_TRACKING_SENSITIVITY_FOOTER", @"HandSettings");
    v44 = v21;
    [v21 setProperty:v22 forKey:v7];

    v23 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:"stringValueForSpecifier:" detail:0 cell:4 edit:0];
    [v23 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v23 setProperty:@"ASTExpressionSensitivity" forKey:v10];
    v50[0] = v21;
    v50[1] = v23;
    v24 = [NSArray arrayWithObjects:v50 count:2];
    [(ASTHeadTrackingTopLevelViewController *)self setSensitivitySpecifiers:v24];

    _customizationSpecifiers = [(ASTHeadTrackingTopLevelViewController *)self _customizationSpecifiers];
    [v4 addObjectsFromArray:_customizationSpecifiers];

    v42 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v42];
    settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE", @"HandSettings");
    v26 = v43 = v17;
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setAssistiveTouchBubbleModeEnabled:specifier:" get:"assistiveTouchBubbleModeEnabled:" detail:0 cell:6 edit:0];

    [v4 addObject:v27];
    +[PSSpecifier emptyGroupSpecifier];
    v28 = v41 = v10;
    v29 = settingsLocString(@"AST_HEAD_TRACKING_DWELL_CONTROL_FOOTER", @"HandSettings");
    v30 = settingsLocString(@"AIR_TOUCH_TITLE", @"Accessibility");
    v31 = [NSString stringWithFormat:v29, v30];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v28 setProperty:v33 forKey:PSFooterCellClassGroupKey];

    [v28 setProperty:v31 forKey:PSFooterHyperlinkViewTitleKey];
    v53.location = [v31 rangeOfString:v30];
    v34 = NSStringFromRange(v53);
    [v28 setProperty:v34 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v35 = [NSValue valueWithNonretainedObject:self];
    [v28 setProperty:v35 forKey:PSFooterHyperlinkViewTargetKey];

    v36 = NSStringFromSelector("showMoreDwellControlOptions");
    [v28 setProperty:v36 forKey:PSFooterHyperlinkViewActionKey];

    [v4 axSafelyAddObject:v28];
    v37 = settingsLocString(@"MOUSE_POINTER_DWELL_CONTROL", @"HandSettings");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"setDwellControlEnabled:specifier:" get:"dwellControlEnabled:" detail:0 cell:6 edit:0];

    [v38 setProperty:@"DWELL_CONTROL" forKey:v41];
    [v4 axSafelyAddObject:v38];
    v39 = *&self->AXUISettingsBaseListController_opaque[v49];
    *&self->AXUISettingsBaseListController_opaque[v49] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v49];
  }

  return v3;
}

- (void)showMoreDwellControlOptions
{
  v3 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE#DwellEnabledSpecifier"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
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

- (id)assistiveTouchBubbleModeEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchBubbleModeEnabled]);

  return v4;
}

- (void)setAssistiveTouchBubbleModeEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchBubbleModeEnabled:bOOLValue];
}

- (id)_setupSpecifiersForExpressions:(id)expressions
{
  expressionsCopy = expressions;
  v19 = +[NSMutableArray array];
  v4 = +[AXSSMotionTracker supportedExpressions];
  allObjects = [v4 allObjects];
  v6 = [allObjects sortedArrayUsingSelector:"compare:"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v17 = PSEnabledKey;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        [v12 unsignedIntegerValue];
        v13 = AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression();
        if (v13 && [expressionsCopy containsObject:v13])
        {
          v14 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
          v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"_actionForSpecifier:" detail:0 cell:2 edit:0];

          [v15 setProperty:v12 forKey:@"AXSSExpressionType"];
          [v15 setProperty:v13 forKey:@"ASTExpressionType"];
          [v15 setProperty:&__kCFBooleanTrue forKey:v17];
          [v19 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v19;
}

- (id)_customizationSpecifiers
{
  actionSpecifiers = [(ASTHeadTrackingTopLevelViewController *)self actionSpecifiers];
  modeSpecifiers = [(ASTHeadTrackingTopLevelViewController *)self modeSpecifiers];
  sensitivitySpecifiers = [(ASTHeadTrackingTopLevelViewController *)self sensitivitySpecifiers];
  v6 = [NSArray axArrayWithPossiblyNilArrays:3, actionSpecifiers, modeSpecifiers, sensitivitySpecifiers];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(ASTHeadTrackingTopLevelViewController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ASTExpressionType"];
  v10 = [v8 propertyForKey:@"AXSSExpressionType"];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = objc_alloc_init(ASTHeadTrackingTopLevelExpressionActionPickerController);
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)v12 setParentController:self];
    rootController = [(ASTHeadTrackingTopLevelViewController *)self rootController];
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)v12 setRootController:rootController];

    v14 = settingsLocString(@"AST_HEAD_TRACKING_ACTIONS", @"HandSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)v12 setSpecifier:v15];

    [v11 unsignedIntegerValue];
    v16 = AXSSHumanReadableExplanationForMotionTrackingFacialExpression();
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)v12 setFooterText:v16];

    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)v12 setExpression:v9];
    [(ASTHeadTrackingTopLevelViewController *)self showController:v12 animate:1];
  }

  else
  {
    v17 = [v8 propertyForKey:PSIDKey];
    v18 = [v17 isEqualToString:@"ASTHeadTrackingMode"];

    if (v18)
    {
      v19.receiver = self;
      v19.super_class = ASTHeadTrackingTopLevelViewController;
      [(ASTHeadTrackingTopLevelViewController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }
}

- (id)_actionForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"ASTExpressionType"];
  if (v3)
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingExpressionToActionMapping = [v4 assistiveTouchHeadTrackingExpressionToActionMapping];
    v6 = [assistiveTouchHeadTrackingExpressionToActionMapping objectForKey:v3];

    if (v6 && ![v6 isEqualToString:@"__NONE__"])
    {
      v7 = AXUIAssistiveTouchStringForName();
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = settingsLocString(@"NONE", @"HandSettings");
LABEL_7:
  v8 = v7;

  return v8;
}

- (void)_switchControlToggled:(id)toggled
{
  v4 = [(ASTHeadTrackingTopLevelViewController *)self specifierForID:@"ASTHeadTrackingEnabled"];
  [(ASTHeadTrackingTopLevelViewController *)self _disableHeadTrackingSpec:v4 forSwitchControlIfNecessaryAndReload:1];
}

- (void)_disableHeadTrackingSpec:(id)spec forSwitchControlIfNecessaryAndReload:(BOOL)reload
{
  reloadCopy = reload;
  specCopy = spec;
  v6 = _AXSAssistiveTouchScannerEnabled();
  v7 = [NSNumber numberWithBool:v6 == 0];
  [specCopy setProperty:v7 forKey:PSEnabledKey];

  if (reloadCopy)
  {
    [(ASTHeadTrackingTopLevelViewController *)self reloadSpecifier:specCopy];
  }

  v8 = v6 == 0;
  v9 = [specCopy propertyForKey:PSTableCellKey];
  [v9 setCellEnabled:v8];
}

- (id)headTrackingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchHeadTrackingEnabled]);

  return v4;
}

- (void)setHeadTrackingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingEnabled = [v5 assistiveTouchHeadTrackingEnabled];

  if (bOOLValue != assistiveTouchHeadTrackingEnabled)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 setAssistiveTouchHeadTrackingEnabled:bOOLValue];
  }
}

- (id)modeSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchHeadTrackingMode];
  v4 = AXSSHumanReadableDescriptionForMotionTrackingMode();

  return v4;
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTExpressionSensitivity"];

  v5 = 0.0;
  if (v4)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchHeadTrackingSensitivity];
    v5 = switchControlUserPreferenceForNormalizedHeadTrackingSensitivity();
  }

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v5 = [specifier propertyForKey:PSIDKey];
  v6 = [v5 isEqualToString:@"ASTExpressionSensitivity"];

  if (v6)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 assistiveTouchHeadTrackingSensitivity];
    v8 = switchControlUserPreferenceForNormalizedHeadTrackingSensitivity();

    if (v8 != value)
    {
      switchControlNormalizedHeadTrackingSensitivityForUserPreference();
      v10 = v9;
      v11 = +[AXSettings sharedInstance];
      [v11 setAssistiveTouchHeadTrackingSensitivity:v10];
    }
  }
}

- (double)stepValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTExpressionSensitivity"];

  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTExpressionSensitivity"];

  result = kSwitchControlHeadTrackingSensitivityMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTExpressionSensitivity"];

  result = kSwitchControlHeadTrackingSensitivityMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(ASTHeadTrackingTopLevelViewController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end