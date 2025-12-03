@interface HandController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (HandController)init;
- (double)valueForSpecifier:(id)specifier;
- (id)_doubleTapAction:(id)action;
- (id)_longPressAction:(id)action;
- (id)_orbAction:(id)action;
- (id)_singleTapAction:(id)action;
- (id)alwaysShowMenuEnabled:(id)enabled;
- (id)alwaysShowSoftwareKeyboard:(id)keyboard;
- (id)dwellControlAutorevertAction:(id)action;
- (id)dwellControlEnabled:(id)enabled;
- (id)gameControllerEnabled:(id)enabled;
- (id)getCurrentActionForHomeActionListController:(id)controller;
- (id)handEnabled:(id)enabled;
- (id)idleOpacitySummary:(id)summary;
- (id)mouseBehavesLikeFinger:(id)finger;
- (id)mouseClickSoundsEnabled:(id)enabled;
- (id)payWithAST:(id)t;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)swaggleOpensMenu;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)touchSpeed;
- (id)useExtendedKeyboardPredictions:(id)predictions;
- (id)virtualTrackpadEnabled:(id)enabled;
- (void)_handleAssistiveTouchHardwareToggled:(id)toggled;
- (void)_handleAssistiveTouchToggled:(id)toggled;
- (void)_handleSettingsChange;
- (void)_presentASTAlwaysShowMenuDisabledConfirmationAlert;
- (void)_updateASTAlwaysShowMenuGroupSpecifier:(id)specifier;
- (void)_updateASTAlwaysShowMenuSpecifiers;
- (void)_updateAssistiveTouchControlItems:(id)items reload:(BOOL)reload;
- (void)actualSetHandEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)homeActionListController:(id)controller selectedAction:(id)action;
- (void)setAlwaysShowMenuEnabled:(id)enabled specifier:(id)specifier;
- (void)setAlwaysShowSoftwareKeyboard:(id)keyboard specifier:(id)specifier;
- (void)setDwellControlEnabled:(id)enabled specifier:(id)specifier;
- (void)setGameControllerEnabled:(id)enabled specifier:(id)specifier;
- (void)setHandEnabled:(id)enabled specifier:(id)specifier;
- (void)setMouseBehavesLikeFinger:(id)finger specifier:(id)specifier;
- (void)setMouseClickSoundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPayWithAST:(id)t specifier:(id)specifier;
- (void)setSwaggleOpensMenu:(id)menu specifier:(id)specifier;
- (void)setTouchSpeed:(id)speed;
- (void)setUseExtendedKeyboardPredictions:(id)predictions specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HandController

- (HandController)init
{
  v47.receiver = self;
  v47.super_class = HandController;
  v2 = [(AXNamedItemsListController *)&v47 init];
  v3 = v2;
  if (v2)
  {
    [(HandController *)v2 _handleSettingsChange];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_handleAssistiveTouchToggled:" name:kAXSAssistiveTouchEnabledNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _handleAssistiveTouchHardwareToggled, kAXSAssistiveTouchHardwareChangedNotification, 0, 1028);
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"_handleAssistiveTouchToggled:" name:kAXSAssistiveTouchScannerEnabledNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"_handleSettingsChange" name:kAXSAssistiveTouchSettingsChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_orientationChange:" name:UIDeviceOrientationDidChangeNotification object:0];

    objc_initWeak(&location, v3);
    v9 = +[AXSettings sharedInstance];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = __22__HandController_init__block_invoke;
    v44[3] = &unk_255388;
    objc_copyWeak(&v45, &location);
    [v9 registerUpdateBlock:v44 forRetrieveSelector:"assistiveTouchOpenMenuSwaggleEnabled" withListener:v3];

    objc_destroyWeak(&v45);
    v10 = +[AXSettings sharedInstance];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __22__HandController_init__block_invoke_2;
    v42[3] = &unk_255388;
    objc_copyWeak(&v43, &location);
    [v10 registerUpdateBlock:v42 forRetrieveSelector:"assistiveTouchIdleOpacity" withListener:v3];

    objc_destroyWeak(&v43);
    v11 = +[AXSettings sharedInstance];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = __22__HandController_init__block_invoke_3;
    v40[3] = &unk_255388;
    objc_copyWeak(&v41, &location);
    [v11 registerUpdateBlock:v40 forRetrieveSelector:"assistiveTouchSingleTapAction" withListener:v3];

    objc_destroyWeak(&v41);
    v12 = +[AXSettings sharedInstance];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __22__HandController_init__block_invoke_4;
    v38[3] = &unk_255388;
    objc_copyWeak(&v39, &location);
    [v12 registerUpdateBlock:v38 forRetrieveSelector:"assistiveTouchDoubleTapAction" withListener:v3];

    objc_destroyWeak(&v39);
    v13 = +[AXSettings sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __22__HandController_init__block_invoke_5;
    v36[3] = &unk_255388;
    objc_copyWeak(&v37, &location);
    [v13 registerUpdateBlock:v36 forRetrieveSelector:"assistiveTouchLongPressAction" withListener:v3];

    objc_destroyWeak(&v37);
    if (AXForceTouchAvailableAndEnabled())
    {
      v14 = +[AXSettings sharedInstance];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = __22__HandController_init__block_invoke_6;
      v34[3] = &unk_255388;
      objc_copyWeak(&v35, &location);
      [v14 registerUpdateBlock:v34 forRetrieveSelector:"assistiveTouchOrbAction" withListener:v3];

      objc_destroyWeak(&v35);
    }

    v15 = +[AXSettings sharedInstance];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __22__HandController_init__block_invoke_7;
    v32[3] = &unk_255388;
    objc_copyWeak(&v33, &location);
    [v15 registerUpdateBlock:v32 forRetrieveSelector:"assistiveTouchMouseDwellControlEnabled" withListener:v3];

    objc_destroyWeak(&v33);
    v16 = +[AXSettings sharedInstance];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __22__HandController_init__block_invoke_8;
    v30[3] = &unk_255388;
    objc_copyWeak(&v31, &location);
    [v16 registerUpdateBlock:v30 forRetrieveSelector:"assistiveTouchMouseDwellControlAutorevertAction" withListener:v3];

    objc_destroyWeak(&v31);
    v17 = +[AXSettings sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __22__HandController_init__block_invoke_9;
    v28[3] = &unk_255388;
    objc_copyWeak(&v29, &location);
    [v17 registerUpdateBlock:v28 forRetrieveSelector:"assistiveTouchMouseDwellControlAutorevertEnabled" withListener:v3];

    objc_destroyWeak(&v29);
    v18 = +[AXSettings sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __22__HandController_init__block_invoke_10;
    v26[3] = &unk_255388;
    objc_copyWeak(&v27, &location);
    [v18 registerUpdateBlock:v26 forRetrieveSelector:"assistiveTouchMouseDwellControlMovementToleranceRadius" withListener:v3];

    objc_destroyWeak(&v27);
    v19 = +[AXSettings sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __22__HandController_init__block_invoke_11;
    v24[3] = &unk_255388;
    objc_copyWeak(&v25, &location);
    [v19 registerUpdateBlock:v24 forRetrieveSelector:"assistiveTouchAlwaysShowMenuEnabled" withListener:v3];

    objc_destroyWeak(&v25);
    if (AXDeviceSupportsVirtualTrackpad())
    {
      v20 = +[AXSettings sharedInstance];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __22__HandController_init__block_invoke_12;
      v22[3] = &unk_255388;
      objc_copyWeak(&v23, &location);
      [v20 registerUpdateBlock:v22 forRetrieveSelector:"assistiveTouchVirtualTrackpadEnabled" withListener:v3];

      objc_destroyWeak(&v23);
    }

    objc_destroyWeak(&location);
  }

  return v3;
}

void __22__HandController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSettingsChange];
}

void __22__HandController_init__block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForKey:@"IdleOpacity"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __22__HandController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"TapSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DoubleTapSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"LongPressSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"ForceTouchSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DwellEnabledSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DwellAutorevertSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DwellAutorevertSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DwellToleranceSpecifier" animated:0];
}

void __22__HandController_init__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateASTAlwaysShowMenuSpecifiers];
}

void __22__HandController_init__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"ASTVirtualTrackpadCellID" animated:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HandController;
  [(HandController *)&v5 dealloc];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_62;
  }

  v122 = OBJC_IVAR___PSListController__specifiers;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(HandController *)selfCopy loadSpecifiersFromPlistName:@"HandSettings" target:selfCopy bundle:v4];

  v125 = [v5 ax_firstObjectUsingBlock:&__block_literal_global_34];
  v6 = [v125 propertyForKey:@"content"];
  v7 = [v6 mutableCopy];

  v8 = AXTeachableFeatureAssistiveTouch;
  v9 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureAssistiveTouch];
  v10 = AXValidationManager_ptr;
  v131 = selfCopy;
  obj = v5;
  v123 = v7;
  v121 = v9;
  if ([v9 count])
  {
    v129 = v8;
    v11 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v138 objects:v151 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v139;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v139 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v138 + 1) + 8 * i);
          v149[0] = @"headerLabel";
          itemTitle = [v17 itemTitle];
          v150[0] = itemTitle;
          v149[1] = @"contentLabel";
          itemDescription = [v17 itemDescription];
          v149[2] = @"alreadyLocalized";
          v150[1] = itemDescription;
          v150[2] = &__kCFBooleanTrue;
          v20 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:3];
          [v11 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v138 objects:v151 count:16];
      }

      while (v14);
    }

    v146[0] = @"sectionLabel";
    v21 = [AXTeachableMomentsManager notificationTitleForFeature:v129];
    v146[1] = @"alreadyLocalized";
    v147[0] = v21;
    v147[1] = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:2];
    v148 = v22;
    v23 = [NSArray arrayWithObjects:&v148 count:1];

    v24 = [v23 arrayByAddingObjectsFromArray:v11];

    v144[0] = @"moreLabel";
    v144[1] = @"additionalTitleLabel";
    v145[0] = @"AssistiveTouchWhatsNewLabel";
    v145[1] = @"AIR_TOUCH_TITLE";
    v144[2] = @"additionalContent";
    v144[3] = @"symbolName";
    v145[2] = v24;
    v145[3] = @"hand.point.up.left.fill";
    v25 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:4];
    [v7 setObject:v25 atIndexedSubscript:1];

    v5 = obj;
    v10 = AXValidationManager_ptr;
  }

  else
  {
    [v7 removeObjectAtIndex:1];
  }

  [v125 setProperty:v7 forKey:@"content"];
  v124 = [v10[486] arrayWithArray:v5];
  array = [v10[486] array];
  v27 = settingsLocString(@"ACTIONS_TITLE", @"HandSettings");
  v28 = [PSSpecifier groupSpecifierWithName:v27];

  v29 = settingsLocString(@"ACTIONS_FOOTER", @"HandSettings");
  v126 = PSFooterTextGroupKey;
  [v28 setProperty:v29 forKey:?];

  [v28 setIdentifier:@"ActionsGroupSpecifier"];
  v119 = v28;
  [array addObject:v28];
  v30 = settingsLocString(@"SINGLE_TAP_ACTION", @"HandSettings");
  v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:selfCopy set:0 get:"_singleTapAction:" detail:objc_opt_class() cell:2 edit:0];

  [v31 setProperty:&off_27A1B8 forKey:@"HomeAction"];
  [v31 setIdentifier:@"TapSpecifier"];
  v118 = v31;
  [array addObject:v31];
  v32 = settingsLocString(@"DOUBLE_TAP_ACTION", @"HandSettings");
  v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:selfCopy set:0 get:"_doubleTapAction:" detail:objc_opt_class() cell:2 edit:0];

  v34 = PSSpecifierIsSearchableKey;
  [v33 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
  [v33 setProperty:&off_27A1D0 forKey:@"HomeAction"];
  [v33 setIdentifier:@"DoubleTapSpecifier"];
  v117 = v33;
  [array addObject:v33];
  v35 = settingsLocString(@"LONG_PRESS_ACTION", @"HandSettings");
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:selfCopy set:0 get:"_longPressAction:" detail:objc_opt_class() cell:2 edit:0];

  [v36 setProperty:&__kCFBooleanFalse forKey:v34];
  [v36 setProperty:&off_27A1E8 forKey:@"HomeAction"];
  [v36 setIdentifier:@"LongPressSpecifier"];
  v116 = v36;
  [array addObject:v36];
  if (AXHasCapability())
  {
    v37 = settingsLocString(@"FORCE_TOUCH_AST_ACTION_TITLE", @"Accessibility");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:selfCopy set:0 get:"_orbAction:" detail:objc_opt_class() cell:2 edit:0];
    [v38 setProperty:&off_27A200 forKey:@"HomeAction"];
    [v38 setProperty:&__kCFBooleanFalse forKey:v34];
    [v38 setIdentifier:@"ForceTouchSpecifier"];
    [array addObject:v38];
  }

  v39 = [obj indexOfObjectPassingTest:&__block_literal_global_466_0];
  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v39;
    customGestureSpecifiers = [(CustomGestureController *)selfCopy customGestureSpecifiers];
    v42 = [array arrayByAddingObjectsFromArray:customGestureSpecifiers];

    v43 = [obj objectAtIndexedSubscript:v40];
    [v124 ps_insertObjectsFromArray:v42 afterObject:v43];
  }

  v44 = +[AXSettings sharedInstance];
  laserEnabled = [v44 laserEnabled];

  if (laserEnabled)
  {
    v46 = [v124 specifierForID:@"ASTMousePointerCustomization"];
    [v124 removeObject:v46];

    v47 = [v124 specifierForID:@"ASTMouseZoomOptions"];
    [v124 removeObject:v47];
  }

  v48 = +[NSMutableArray array];
  v49 = [PSSpecifier groupSpecifierWithName:0];
  v50 = settingsLocString(@"MOUSE_POINTER_DWELL_CONTROL_FOOTER", @"HandSettings");
  [v49 setProperty:v50 forKey:v126];

  [v49 setIdentifier:@"DwellGroupFooterSpecifier"];
  v114 = v49;
  [v48 addObject:v49];
  v51 = settingsLocString(@"MOUSE_POINTER_DWELL_CONTROL", @"HandSettings");
  v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:selfCopy set:"setDwellControlEnabled:specifier:" get:"dwellControlEnabled:" detail:0 cell:6 edit:0];

  [v52 setIdentifier:@"DwellEnabledSpecifier"];
  v113 = v52;
  [v48 addObject:v52];
  v53 = settingsLocString(@"MOUSE_POINTER_DWELL_AUTOREVERT", @"HandSettings");
  v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:selfCopy set:0 get:"dwellControlAutorevertAction:" detail:objc_opt_class() cell:2 edit:0];

  [v54 setIdentifier:@"DwellAutorevertSpecifier"];
  v112 = v54;
  [v48 addObject:v54];
  v55 = settingsLocString(@"MOUSE_POINTER_DWELL_TOLERANCE", @"HandSettings");
  v56 = [PSSpecifier preferenceSpecifierNamed:v55 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v56 setIdentifier:@"DwellToleranceSpecifier"];
  v111 = v56;
  [v48 addObject:v56];
  v57 = settingsLocString(@"MOUSE_POINTER_DWELL_HOT_CORNERS", @"HandSettings");
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v58 setIdentifier:@"DwellCornersSpecifier"];
  v110 = v58;
  [v48 addObject:v58];
  if ((AXRuntimeCheck_DwellKeyboardKeyTimer() & 1) == 0 && !AXRuntimeCheck_DwellKeyboardSwipe())
  {
    v62 = AXParameterizedLocalizedString();
    v60 = [PSSpecifier preferenceSpecifierNamed:v62 target:selfCopy set:"setUseExtendedKeyboardPredictions:specifier:" get:"useExtendedKeyboardPredictions:" detail:0 cell:6 edit:0];

    v61 = @"DwellExtendedPredictionsSpecifier";
    goto LABEL_23;
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v59 = settingsLocString(@"DWELL_KEYBOARD_SETTINGS", @"Accessibility");
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v61 = @"DwellKeyboardSpecifier";
LABEL_23:
    [v60 setIdentifier:v61];
    [v48 addObject:v60];
  }

  v120 = array;
  v63 = [PSSpecifier ax_stepperSpecifierWithDelegate:selfCopy];
  [v63 setIdentifier:@"DwellTimeoutSpecifier"];
  v109 = v63;
  [v48 addObject:v63];
  v115 = v48;
  [v124 addObjectsFromArray:v48];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obja = obj;
  v64 = [obja countByEnumeratingWithState:&v134 objects:v143 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v135;
    v67 = PSKeyNameKey;
    v130 = PSSliderRightImageKey;
    v128 = PSSliderLeftImageKey;
    v68 = kAXSAssistiveTouchSpeedMax;
    v127 = PSControlMaximumKey;
    v69 = kAXSAssistiveTouchSpeedMin;
    v70 = PSControlMinimumKey;
    do
    {
      for (j = 0; j != v65; j = j + 1)
      {
        if (*v135 != v66)
        {
          objc_enumerationMutation(obja);
        }

        v72 = *(*(&v134 + 1) + 8 * j);
        v73 = [v72 propertyForKey:v67];
        if ([v73 isEqualToString:@"AlwaysShowMenuGroup"])
        {
          [(HandController *)selfCopy _updateASTAlwaysShowMenuGroupSpecifier:v72];
        }

        if ([v73 isEqualToString:@"TouchSpeed"])
        {
          v74 = AXHareImage();
          [v72 setProperty:v74 forKey:v130];

          v75 = AXTortoiseImage();
          [v72 setProperty:v75 forKey:v128];

          LODWORD(v76) = v68;
          v77 = [NSNumber numberWithFloat:v76];
          [v72 setProperty:v77 forKey:v127];

          LODWORD(v78) = v69;
          v79 = [NSNumber numberWithFloat:v78];
          [v72 setProperty:v79 forKey:v70];

          selfCopy = v131;
        }
      }

      v65 = [obja countByEnumeratingWithState:&v134 objects:v143 count:16];
    }

    while (v65);
  }

  v80 = +[PSSpecifier emptyGroupSpecifier];
  v81 = PSIDKey;
  [v80 setProperty:@"SOUND_ACTIONS_GROUP" forKey:PSIDKey];
  v82 = settingsLocString(@"SOUND_ACTION_FOOTER", @"Accessibility");
  [v80 setProperty:v82 forKey:v126];

  [v124 addObject:v80];
  v83 = settingsLocString(@"SOUND_ACTIONS", @"Accessibility");
  v84 = [PSSpecifier preferenceSpecifierNamed:v83 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v84 setProperty:@"SOUND_ACTIONS" forKey:v81];
  [v124 addObject:v84];
  if (AXHasCapability())
  {
    if (AXDeviceIsPad())
    {
      v85 = @"APPLE_PAY_IPAD";
    }

    else
    {
      v85 = @"APPLE_PAY";
    }

    v86 = settingsLocString(v85, @"HandSettings");
    v87 = [PSSpecifier groupSpecifierWithName:v86];

    if (AXDeviceHasTopTouchIDButton())
    {
      v88 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_IPAD_TOUCHID");
      [v87 setName:v88];
    }

    [v87 setIdentifier:@"APPLE_PAY"];
    v89 = +[BiometricKit manager];
    v90 = [v89 identities:0];
    v91 = [v90 count];

    IsPad = AXDeviceIsPad();
    v93 = @"APPLE_PAY_FOOTER";
    if (IsPad)
    {
      v93 = @"APPLE_PAY_FOOTER_IPAD";
    }

    v94 = @"APPLE_PAY_FOOTER_PASSCODE_IPAD";
    if (!IsPad)
    {
      v94 = @"APPLE_PAY_FOOTER_PASSCODE";
    }

    if (!v91)
    {
      v93 = v94;
    }

    v95 = v93;
    v96 = settingsLocString(v95, @"HandSettings");
    if (AXDeviceHasTopTouchIDButton())
    {
      v97 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_FOOTER_PASSCODE_IPAD_TOUCHID");

      v96 = v97;
    }

    if (UIAccessibilityIsSwitchControlRunning())
    {
      v98 = settingsLocString(@"APPLE_PAY_FOOTER_SC_ON_ADDITION", @"HandSettings");
      v142[0] = v96;
      v142[1] = v98;
      v99 = [NSArray arrayWithObjects:v142 count:2];
      v100 = [v99 componentsJoinedByString:@"\n\n"];

      v96 = v100;
    }

    [v87 setProperty:v96 forKey:v126];

    [v124 addObject:v87];
    v101 = settingsLocString(@"APPLE_PAY_LABEL", @"HandSettings");
    v102 = [PSSpecifier preferenceSpecifierNamed:v101 target:selfCopy set:"setPayWithAST:specifier:" get:"payWithAST:" detail:0 cell:6 edit:0];

    [v102 setIdentifier:@"APPLE_PAY_SWITCH"];
    [v124 addObject:v102];
  }

  [(HandController *)selfCopy setupLongTitleSpecifiers:v124];
  if ((AXHasCapability() & 1) == 0)
  {
    v103 = [v124 indexOfSpecifierWithID:@"ASTVirtualTrackpadFooterID"];
    if (v103 < [v124 count])
    {
      [v124 removeObjectAtIndex:v103];
    }

    v104 = [v124 indexOfSpecifierWithID:@"ASTVirtualTrackpadCellID"];
    if (v104 < [v124 count])
    {
      [v124 removeObjectAtIndex:v104];
    }
  }

  v105 = [v124 indexOfSpecifierWithID:@"ASTHandTrackPointerID"];
  if (v105 < [v124 count])
  {
    [v124 removeObjectAtIndex:v105];
  }

  v106 = [v124 indexOfSpecifierWithID:@"ASTHandPointerSettingsGroup"];
  if (v106 < [v124 count])
  {
    [v124 removeObjectAtIndex:v106];
  }

  v107 = *&selfCopy->super.super.AXUISettingsBaseListController_opaque[v122];
  *&selfCopy->super.super.AXUISettingsBaseListController_opaque[v122] = v124;

  v3 = *&selfCopy->super.super.AXUISettingsBaseListController_opaque[v122];
LABEL_62:

  return v3;
}

BOOL __28__HandController_specifiers__block_invoke(id a1, PSSpecifier *a2)
{
  v2 = [(PSSpecifier *)a2 identifier];
  v3 = [v2 isEqualToString:@"EnableAssistiveTouchGroup"];

  return v3;
}

BOOL __28__HandController_specifiers__block_invoke_463(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:PSIDKey, a4];
  v5 = [v4 isEqualToString:@"AssistiveTouchCustomize"];

  return v5;
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = HandController;
  v4 = [(HandController *)&v6 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (void)_updateASTAlwaysShowMenuSpecifiers
{
  v3 = [(HandController *)self specifierForKey:@"AlwaysShowMenu"];
  [(HandController *)self reloadSpecifier:v3];

  v4 = [(HandController *)self specifierForKey:@"AlwaysShowMenuGroup"];
  [(HandController *)self _updateASTAlwaysShowMenuGroupSpecifier:v4];
}

- (void)_updateASTAlwaysShowMenuGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchAlwaysShowMenuEnabled = [v4 assistiveTouchAlwaysShowMenuEnabled];

  if (assistiveTouchAlwaysShowMenuEnabled)
  {
    v6 = @"AlwaysShowMenuEnabledFooterText";
  }

  else
  {
    v6 = @"AlwaysShowMenuDisabledFooterText";
  }

  v7 = settingsLocString(v6, @"HandSettings");
  [specifierCopy setProperty:v7 forKey:PSFooterTextGroupKey];

  [(HandController *)self reloadSpecifier:specifierCopy];
}

- (id)_singleTapAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchSingleTapAction = [v3 assistiveTouchSingleTapAction];

  if (assistiveTouchSingleTapAction)
  {
    v5 = AXUIAssistiveTouchStringForName();
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

- (id)_doubleTapAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchDoubleTapAction = [v3 assistiveTouchDoubleTapAction];

  if (assistiveTouchDoubleTapAction)
  {
    v5 = AXUIAssistiveTouchStringForName();
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

- (id)_longPressAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchLongPressAction = [v3 assistiveTouchLongPressAction];

  if (assistiveTouchLongPressAction)
  {
    v5 = AXUIAssistiveTouchStringForName();
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

- (id)_orbAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchOrbAction = [v3 assistiveTouchOrbAction];

  if (assistiveTouchOrbAction)
  {
    v5 = AXUIAssistiveTouchStringForName();
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

- (id)idleOpacitySummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchIdleOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (id)virtualTrackpadEnabled:(id)enabled
{
  v3 = @"OFF";
  if (AXDeviceSupportsVirtualTrackpad())
  {
    v4 = +[AXSettings sharedInstance];
    if ([v4 assistiveTouchVirtualTrackpadEnabled])
    {
      v3 = @"ON";
    }
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HandController;
  [(AXNamedItemsListController *)&v6 viewDidLoad];
  table = [(HandController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HandController;
  [(CustomGestureController *)&v5 viewWillAppear:appear];
  if (!_AXSInUnitTestMode())
  {
    specifiers = [(HandController *)self specifiers];
    [(HandController *)self _updateAssistiveTouchControlItems:specifiers reload:0];
  }
}

- (void)_updateAssistiveTouchControlItems:(id)items reload:(BOOL)reload
{
  reloadCopy = reload;
  v10 = [(CustomGestureController *)self specifierForKey:@"HandEnabled" withSpecifiers:items];
  v6 = _AXSAssistiveTouchScannerEnabled();
  v7 = [NSNumber numberWithBool:v6 == 0];
  [v10 setProperty:v7 forKey:PSEnabledKey];

  if (reloadCopy)
  {
    [(HandController *)self reloadSpecifier:v10];
  }

  v8 = v6 == 0;
  v9 = [v10 propertyForKey:PSTableCellKey];
  [v9 setCellEnabled:v8];
}

- (void)_handleAssistiveTouchHardwareToggled:(id)toggled
{
  specifiers = [(HandController *)self specifiers];
  [(HandController *)self _updateAssistiveTouchControlItems:specifiers reload:1];
}

- (void)_handleAssistiveTouchToggled:(id)toggled
{
  specifiers = [(HandController *)self specifiers];
  [(HandController *)self _updateAssistiveTouchControlItems:specifiers reload:1];
}

- (void)_handleSettingsChange
{
  v3 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(HandController *)self reloadSpecifiers];
  v4 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table];

  [v4 reloadData];
}

- (id)mouseBehavesLikeFinger:(id)finger
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseBehavesLikeFinger]);

  return v4;
}

- (void)setMouseBehavesLikeFinger:(id)finger specifier:(id)specifier
{
  bOOLValue = [finger BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseBehavesLikeFinger:bOOLValue];
}

- (id)alwaysShowMenuEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchAlwaysShowMenuEnabled]);

  return v4;
}

- (void)setAlwaysShowMenuEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v6 = +[AXSettings sharedInstance];
  assistiveTouchMouseDwellControlCornerCustomization = [v6 assistiveTouchMouseDwellControlCornerCustomization];
  allValues = [assistiveTouchMouseDwellControlCornerCustomization allValues];
  v9 = [allValues containsObject:AXAssistiveTouchIconTypeOpenMenu];

  if ((bOOLValue & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 assistiveTouchMouseDwellControlEnabled], v10, v9 & 1 | ((v11 & 1) == 0)))
  {
    v12 = +[AXSettings sharedInstance];
    [v12 setAssistiveTouchAlwaysShowMenuEnabled:bOOLValue];

    specifiers = [(HandController *)self specifiers];
    [(HandController *)self _updateAssistiveTouchControlItems:specifiers reload:1];
  }

  else
  {

    [(HandController *)self _presentASTAlwaysShowMenuDisabledConfirmationAlert];
  }
}

- (id)mouseClickSoundsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseClickSoundsEnabled]);

  return v4;
}

- (void)setMouseClickSoundsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseClickSoundsEnabled:bOOLValue];
}

- (id)alwaysShowSoftwareKeyboard:(id)keyboard
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled]);

  return v4;
}

- (void)setAlwaysShowSoftwareKeyboard:(id)keyboard specifier:(id)specifier
{
  bOOLValue = [keyboard BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:bOOLValue];
}

- (id)gameControllerEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchGameControllerEnabled]);

  return v4;
}

- (void)setGameControllerEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchGameControllerEnabled:bOOLValue];
}

- (id)handEnabled:(id)enabled
{
  v3 = _AXSAssistiveTouchEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setHandEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  if ([v6 laserEnabled] && (objc_msgSend(enabledCopy, "BOOLValue") & 1) == 0)
  {
    v8 = +[AXSpringBoardServer server];
    currentDevicesHaveAssistiveTouchCustomActions = [v8 currentDevicesHaveAssistiveTouchCustomActions];
  }

  else
  {
    currentDevicesHaveAssistiveTouchCustomActions = 0;
  }

  v9 = ([enabledCopy BOOLValue] & 1) == 0 && _AXSAssistiveTouchEnabled() && _AXSAssistiveTouchHardwareEnabled() != 0;
  if (([enabledCopy BOOLValue] & 1) == 0)
  {
    v13 = +[AXSpringBoardServer server];
    connectedDevicesRequireAssistiveTouch = [v13 connectedDevicesRequireAssistiveTouch];

    if (!currentDevicesHaveAssistiveTouchCustomActions)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = +[AXSpringBoardServer server];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __43__HandController_setHandEnabled_specifier___block_invoke;
    v17[3] = &unk_257688;
    v17[4] = self;
    v18 = enabledCopy;
    [v14 showAlert:23 withHandler:v17];

    v12 = v18;
    goto LABEL_15;
  }

  connectedDevicesRequireAssistiveTouch = 0;
  if (currentDevicesHaveAssistiveTouchCustomActions)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (((v9 | connectedDevicesRequireAssistiveTouch) & 1) == 0)
  {
    -[HandController actualSetHandEnabled:](self, "actualSetHandEnabled:", [enabledCopy BOOLValue]);
    goto LABEL_17;
  }

  v11 = +[AXSpringBoardServer server];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __43__HandController_setHandEnabled_specifier___block_invoke_2;
  v15[3] = &unk_257688;
  v15[4] = self;
  v16 = enabledCopy;
  [v11 showAlert:10 withHandler:v15];

  v12 = v16;
LABEL_15:

LABEL_17:
}

id __43__HandController_setHandEnabled_specifier___block_invoke(id result, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v3 = *(result + 4);

    return [v3 reloadSpecifierID:@"EnableAssistiveTouchSpecifier" animated:1];
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  v4 = *(result + 4);
  v5 = [*(result + 5) BOOLValue];

  return [v4 actualSetHandEnabled:v5];
}

id __43__HandController_setHandEnabled_specifier___block_invoke_2(id result, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = *(result + 4);

      return [v3 reloadSpecifierID:@"EnableAssistiveTouchSpecifier" animated:1];
    }
  }

  else
  {
    v4 = *(result + 4);
    v5 = [*(result + 5) BOOLValue];

    return [v4 actualSetHandEnabled:v5];
  }

  return result;
}

- (void)actualSetHandEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlShowPrompt:enabledCopy];

  _AXSAssistiveTouchSetEnabled();
  _AXSAssistiveTouchSetUIEnabled();
  if (enabledCopy)
  {
    _AXSHomeButtonSetRestingUnlock();
    _AXLogWithFacility();
  }

  [(HandController *)self _handleAssistiveTouchToggled:0];
}

- (id)swaggleOpensMenu
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 assistiveTouchOpenMenuSwaggleEnabled]);

  return v3;
}

- (void)setSwaggleOpensMenu:(id)menu specifier:(id)specifier
{
  menuCopy = menu;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [menuCopy BOOLValue];

  [v6 setAssistiveTouchOpenMenuSwaggleEnabled:bOOLValue];
}

- (id)touchSpeed
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchSpeed];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setTouchSpeed:(id)speed
{
  speedCopy = speed;
  v6 = +[AXSettings sharedInstance];
  [speedCopy floatValue];
  v5 = v4;

  [v6 setAssistiveTouchSpeed:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = HandController;
  v4 = [(HandController *)&v15 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:PSKeyNameKey];
  v7 = [v6 isEqualToString:@"TouchSpeed"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v7)
  {
    control = [v4 control];
    if (!control)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentView = [v4 contentView];
        subviews = [contentView subviews];
        control = [subviews ax_firstObjectUsingBlock:&__block_literal_global_639];
      }

      else
      {
        control = 0;
      }
    }

    [control setEnabled:1];
    [control setContinuous:1];
  }

  identifier = [specifier identifier];
  v12 = [identifier isEqualToString:@"APPLE_PAY_SWITCH"];

  if (v12)
  {
    titleLabel = [v4 titleLabel];
    [titleLabel setNumberOfLines:0];
  }

  return v4;
}

BOOL __50__HandController_tableView_cellForRowAtIndexPath___block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:PSKeyNameKey];

  LOBYTE(specifier) = [v6 isEqualToString:@"TouchSpeed"];
  return specifier ^ 1;
}

- (id)getCurrentActionForHomeActionListController:(id)controller
{
  homeActionType = [controller homeActionType];
  v4 = 0;
  if (homeActionType > 2)
  {
    if (homeActionType == (&dword_0 + 3))
    {
      v5 = +[AXSettings sharedInstance];
      assistiveTouchLongPressAction = [v5 assistiveTouchLongPressAction];
    }

    else
    {
      if (homeActionType != &dword_4)
      {
        goto LABEL_11;
      }

      v5 = +[AXSettings sharedInstance];
      assistiveTouchLongPressAction = [v5 assistiveTouchOrbAction];
    }
  }

  else if (homeActionType == (&dword_0 + 1))
  {
    v5 = +[AXSettings sharedInstance];
    assistiveTouchLongPressAction = [v5 assistiveTouchSingleTapAction];
  }

  else
  {
    if (homeActionType != (&dword_0 + 2))
    {
      goto LABEL_11;
    }

    v5 = +[AXSettings sharedInstance];
    assistiveTouchLongPressAction = [v5 assistiveTouchDoubleTapAction];
  }

  v4 = assistiveTouchLongPressAction;

LABEL_11:

  return v4;
}

- (void)homeActionListController:(id)controller selectedAction:(id)action
{
  actionCopy = action;
  homeActionType = [controller homeActionType];
  if (homeActionType > 2)
  {
    if (homeActionType == (&dword_0 + 3))
    {
      v6 = +[AXSettings sharedInstance];
      [v6 setAssistiveTouchLongPressAction:actionCopy];
    }

    else
    {
      if (homeActionType != &dword_4)
      {
        goto LABEL_11;
      }

      v6 = +[AXSettings sharedInstance];
      [v6 setAssistiveTouchOrbAction:actionCopy];
    }
  }

  else if (homeActionType == (&dword_0 + 1))
  {
    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchSingleTapAction:actionCopy];
  }

  else
  {
    if (homeActionType != (&dword_0 + 2))
    {
      goto LABEL_11;
    }

    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchDoubleTapAction:actionCopy];
  }

LABEL_11:
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMouseDwellControlActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlActivationTimeout:value];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(HandController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
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

- (id)dwellControlAutorevertAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchMouseDwellControlAutorevertEnabled = [v3 assistiveTouchMouseDwellControlAutorevertEnabled];

  if (assistiveTouchMouseDwellControlAutorevertEnabled)
  {
    v5 = +[AXSettings sharedInstance];
    assistiveTouchMouseDwellControlAutorevertAction = [v5 assistiveTouchMouseDwellControlAutorevertAction];

    v7 = AXUIAssistiveTouchStringForName();
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v8 = settingsLocString(@"FEATURE_OFF", @"HandSettings");
  }

  return v8;
}

- (void)setPayWithAST:(id)t specifier:(id)specifier
{
  if ([t BOOLValue])
  {
    if (!self->_localAuthContext)
    {
      v5 = objc_alloc_init(LAContext);
      localAuthContext = self->_localAuthContext;
      self->_localAuthContext = v5;
    }

    v14 = [[SecureIntentViewController alloc] initWithSource:1 context:self->_localAuthContext delegate:self];
    [(HandController *)self presentModalViewController:v14 withTransition:3];
  }

  else
  {
    v7 = settingsLocString(@"APPLE_PAY_DISABLE_ALERT_TITLE", @"HandSettings");
    v8 = settingsLocString(@"APPLE_PAY_DISABLE_ALERT_BODY", @"HandSettings");
    v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = settingsLocString(@"APPLE_PAY_DISABLE_ALERT_ACCEPT", @"HandSettings");
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&__block_literal_global_659];

    v12 = settingsLocString(@"APPLE_PAY_DISABLE_ALERT_CANCEL", @"HandSettings");
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __42__HandController_setPayWithAST_specifier___block_invoke_668;
    v15[3] = &unk_2557A8;
    v15[4] = self;
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v15];

    [v9 addAction:v11];
    [v9 addAction:v13];
    [v9 setPreferredAction:v11];
    [(HandController *)self presentViewController:v9 animated:1 completion:0];
  }
}

void __42__HandController_setPayWithAST_specifier___block_invoke(id a1, UIAlertAction *a2)
{
  v2 = AXLogSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__HandController_setPayWithAST_specifier___block_invoke_cold_1(v2);
  }

  v3 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  [v3 removeObjectForKey:1 completionHandler:&__block_literal_global_664];
}

void __42__HandController_setPayWithAST_specifier___block_invoke_661(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__HandController_setPayWithAST_specifier___block_invoke_661_cold_1(v2, v3);
    }
  }

  else
  {
    _AXSAccessibilitySetSecureIntentProvider();
  }
}

- (id)payWithAST:(id)t
{
  v3 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v10 = 0;
  v4 = [v3 BOOLForKey:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = AXLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HandController *)v5 payWithAST:v6];
    }
  }

  v7 = AXLogSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(HandController *)v4 payWithAST:v7];
  }

  v8 = [NSNumber numberWithBool:v4];

  return v8;
}

- (void)_presentASTAlwaysShowMenuDisabledConfirmationAlert
{
  v3 = settingsLocString(@"IMPORTANT", @"Accessibility");
  v4 = settingsLocString(@"MOUSE_POINTER_DWELL_ALWAYS_SHOW_MENU_DISABLE", @"HandSettings");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = settingsLocString(@"MOUSE_POINTER_DWELL_ALWAYS_SHOW_MENU_DISABLE_CONFIRM", @"HandSettings");
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&__block_literal_global_679];

  [v5 addAction:v7];
  v8 = settingsLocString(@"MOUSE_POINTER_DWELL_ALWAYS_SHOW_MENU_DISABLE_CANCEL", @"HandSettings");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__HandController__presentASTAlwaysShowMenuDisabledConfirmationAlert__block_invoke_2;
  v10[3] = &unk_2557A8;
  v10[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v10];

  [v5 addAction:v9];
  [(HandController *)self presentViewController:v5 animated:1 completion:0];
}

void __68__HandController__presentASTAlwaysShowMenuDisabledConfirmationAlert__block_invoke(id a1, UIAlertAction *a2)
{
  v2 = +[AXSettings sharedInstance];
  [v2 setAssistiveTouchAlwaysShowMenuEnabled:0];
}

- (void)setUseExtendedKeyboardPredictions:(id)predictions specifier:(id)specifier
{
  bOOLValue = [predictions BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchShouldUseExtendedKeyboardPredictions:bOOLValue];
}

- (id)useExtendedKeyboardPredictions:(id)predictions
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchShouldUseExtendedKeyboardPredictions]);

  return v4;
}

void __42__HandController_setPayWithAST_specifier___block_invoke_661_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to un-set LAStorageKeyDoublePressDisabled: %@", &v2, 0xCu);
}

- (void)payWithAST:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to query Local Auth Storage: %@", &v2, 0xCu);
}

- (void)payWithAST:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Local Auth Storage LAStorageKeyDoublePressDisabled: %d", v2, 8u);
}

@end