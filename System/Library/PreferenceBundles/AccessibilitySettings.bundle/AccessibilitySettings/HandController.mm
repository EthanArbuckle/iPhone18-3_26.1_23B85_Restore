@interface HandController
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (HandController)init;
- (double)valueForSpecifier:(id)a3;
- (id)_doubleTapAction:(id)a3;
- (id)_longPressAction:(id)a3;
- (id)_orbAction:(id)a3;
- (id)_singleTapAction:(id)a3;
- (id)alwaysShowMenuEnabled:(id)a3;
- (id)alwaysShowSoftwareKeyboard:(id)a3;
- (id)dwellControlAutorevertAction:(id)a3;
- (id)dwellControlEnabled:(id)a3;
- (id)gameControllerEnabled:(id)a3;
- (id)getCurrentActionForHomeActionListController:(id)a3;
- (id)handEnabled:(id)a3;
- (id)idleOpacitySummary:(id)a3;
- (id)mouseBehavesLikeFinger:(id)a3;
- (id)mouseClickSoundsEnabled:(id)a3;
- (id)payWithAST:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)swaggleOpensMenu;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)touchSpeed;
- (id)useExtendedKeyboardPredictions:(id)a3;
- (id)virtualTrackpadEnabled:(id)a3;
- (void)_handleAssistiveTouchHardwareToggled:(id)a3;
- (void)_handleAssistiveTouchToggled:(id)a3;
- (void)_handleSettingsChange;
- (void)_presentASTAlwaysShowMenuDisabledConfirmationAlert;
- (void)_updateASTAlwaysShowMenuGroupSpecifier:(id)a3;
- (void)_updateASTAlwaysShowMenuSpecifiers;
- (void)_updateAssistiveTouchControlItems:(id)a3 reload:(BOOL)a4;
- (void)actualSetHandEnabled:(BOOL)a3;
- (void)dealloc;
- (void)homeActionListController:(id)a3 selectedAction:(id)a4;
- (void)setAlwaysShowMenuEnabled:(id)a3 specifier:(id)a4;
- (void)setAlwaysShowSoftwareKeyboard:(id)a3 specifier:(id)a4;
- (void)setDwellControlEnabled:(id)a3 specifier:(id)a4;
- (void)setGameControllerEnabled:(id)a3 specifier:(id)a4;
- (void)setHandEnabled:(id)a3 specifier:(id)a4;
- (void)setMouseBehavesLikeFinger:(id)a3 specifier:(id)a4;
- (void)setMouseClickSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setPayWithAST:(id)a3 specifier:(id)a4;
- (void)setSwaggleOpensMenu:(id)a3 specifier:(id)a4;
- (void)setTouchSpeed:(id)a3;
- (void)setUseExtendedKeyboardPredictions:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v2 = self;
  v3 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_62;
  }

  v122 = OBJC_IVAR___PSListController__specifiers;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(HandController *)v2 loadSpecifiersFromPlistName:@"HandSettings" target:v2 bundle:v4];

  v125 = [v5 ax_firstObjectUsingBlock:&__block_literal_global_34];
  v6 = [v125 propertyForKey:@"content"];
  v7 = [v6 mutableCopy];

  v8 = AXTeachableFeatureAssistiveTouch;
  v9 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureAssistiveTouch];
  v10 = AXValidationManager_ptr;
  v131 = v2;
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
          v18 = [v17 itemTitle];
          v150[0] = v18;
          v149[1] = @"contentLabel";
          v19 = [v17 itemDescription];
          v149[2] = @"alreadyLocalized";
          v150[1] = v19;
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
  v26 = [v10[486] array];
  v27 = settingsLocString(@"ACTIONS_TITLE", @"HandSettings");
  v28 = [PSSpecifier groupSpecifierWithName:v27];

  v29 = settingsLocString(@"ACTIONS_FOOTER", @"HandSettings");
  v126 = PSFooterTextGroupKey;
  [v28 setProperty:v29 forKey:?];

  [v28 setIdentifier:@"ActionsGroupSpecifier"];
  v119 = v28;
  [v26 addObject:v28];
  v30 = settingsLocString(@"SINGLE_TAP_ACTION", @"HandSettings");
  v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:v2 set:0 get:"_singleTapAction:" detail:objc_opt_class() cell:2 edit:0];

  [v31 setProperty:&off_27A1B8 forKey:@"HomeAction"];
  [v31 setIdentifier:@"TapSpecifier"];
  v118 = v31;
  [v26 addObject:v31];
  v32 = settingsLocString(@"DOUBLE_TAP_ACTION", @"HandSettings");
  v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:v2 set:0 get:"_doubleTapAction:" detail:objc_opt_class() cell:2 edit:0];

  v34 = PSSpecifierIsSearchableKey;
  [v33 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
  [v33 setProperty:&off_27A1D0 forKey:@"HomeAction"];
  [v33 setIdentifier:@"DoubleTapSpecifier"];
  v117 = v33;
  [v26 addObject:v33];
  v35 = settingsLocString(@"LONG_PRESS_ACTION", @"HandSettings");
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:v2 set:0 get:"_longPressAction:" detail:objc_opt_class() cell:2 edit:0];

  [v36 setProperty:&__kCFBooleanFalse forKey:v34];
  [v36 setProperty:&off_27A1E8 forKey:@"HomeAction"];
  [v36 setIdentifier:@"LongPressSpecifier"];
  v116 = v36;
  [v26 addObject:v36];
  if (AXHasCapability())
  {
    v37 = settingsLocString(@"FORCE_TOUCH_AST_ACTION_TITLE", @"Accessibility");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:v2 set:0 get:"_orbAction:" detail:objc_opt_class() cell:2 edit:0];
    [v38 setProperty:&off_27A200 forKey:@"HomeAction"];
    [v38 setProperty:&__kCFBooleanFalse forKey:v34];
    [v38 setIdentifier:@"ForceTouchSpecifier"];
    [v26 addObject:v38];
  }

  v39 = [obj indexOfObjectPassingTest:&__block_literal_global_466_0];
  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v39;
    v41 = [(CustomGestureController *)v2 customGestureSpecifiers];
    v42 = [v26 arrayByAddingObjectsFromArray:v41];

    v43 = [obj objectAtIndexedSubscript:v40];
    [v124 ps_insertObjectsFromArray:v42 afterObject:v43];
  }

  v44 = +[AXSettings sharedInstance];
  v45 = [v44 laserEnabled];

  if (v45)
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
  v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:v2 set:"setDwellControlEnabled:specifier:" get:"dwellControlEnabled:" detail:0 cell:6 edit:0];

  [v52 setIdentifier:@"DwellEnabledSpecifier"];
  v113 = v52;
  [v48 addObject:v52];
  v53 = settingsLocString(@"MOUSE_POINTER_DWELL_AUTOREVERT", @"HandSettings");
  v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:v2 set:0 get:"dwellControlAutorevertAction:" detail:objc_opt_class() cell:2 edit:0];

  [v54 setIdentifier:@"DwellAutorevertSpecifier"];
  v112 = v54;
  [v48 addObject:v54];
  v55 = settingsLocString(@"MOUSE_POINTER_DWELL_TOLERANCE", @"HandSettings");
  v56 = [PSSpecifier preferenceSpecifierNamed:v55 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v56 setIdentifier:@"DwellToleranceSpecifier"];
  v111 = v56;
  [v48 addObject:v56];
  v57 = settingsLocString(@"MOUSE_POINTER_DWELL_HOT_CORNERS", @"HandSettings");
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v58 setIdentifier:@"DwellCornersSpecifier"];
  v110 = v58;
  [v48 addObject:v58];
  if ((AXRuntimeCheck_DwellKeyboardKeyTimer() & 1) == 0 && !AXRuntimeCheck_DwellKeyboardSwipe())
  {
    v62 = AXParameterizedLocalizedString();
    v60 = [PSSpecifier preferenceSpecifierNamed:v62 target:v2 set:"setUseExtendedKeyboardPredictions:specifier:" get:"useExtendedKeyboardPredictions:" detail:0 cell:6 edit:0];

    v61 = @"DwellExtendedPredictionsSpecifier";
    goto LABEL_23;
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v59 = settingsLocString(@"DWELL_KEYBOARD_SETTINGS", @"Accessibility");
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v61 = @"DwellKeyboardSpecifier";
LABEL_23:
    [v60 setIdentifier:v61];
    [v48 addObject:v60];
  }

  v120 = v26;
  v63 = [PSSpecifier ax_stepperSpecifierWithDelegate:v2];
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
          [(HandController *)v2 _updateASTAlwaysShowMenuGroupSpecifier:v72];
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

          v2 = v131;
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
  v84 = [PSSpecifier preferenceSpecifierNamed:v83 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

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
    v102 = [PSSpecifier preferenceSpecifierNamed:v101 target:v2 set:"setPayWithAST:specifier:" get:"payWithAST:" detail:0 cell:6 edit:0];

    [v102 setIdentifier:@"APPLE_PAY_SWITCH"];
    [v124 addObject:v102];
  }

  [(HandController *)v2 setupLongTitleSpecifiers:v124];
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

  v107 = *&v2->super.super.AXUISettingsBaseListController_opaque[v122];
  *&v2->super.super.AXUISettingsBaseListController_opaque[v122] = v124;

  v3 = *&v2->super.super.AXUISettingsBaseListController_opaque[v122];
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

- (id)selectSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HandController;
  v4 = [(HandController *)&v6 selectSpecifier:a3];
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

- (void)_updateASTAlwaysShowMenuGroupSpecifier:(id)a3
{
  v8 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchAlwaysShowMenuEnabled];

  if (v5)
  {
    v6 = @"AlwaysShowMenuEnabledFooterText";
  }

  else
  {
    v6 = @"AlwaysShowMenuDisabledFooterText";
  }

  v7 = settingsLocString(v6, @"HandSettings");
  [v8 setProperty:v7 forKey:PSFooterTextGroupKey];

  [(HandController *)self reloadSpecifier:v8];
}

- (id)_singleTapAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchSingleTapAction];

  if (v4)
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

- (id)_doubleTapAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchDoubleTapAction];

  if (v4)
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

- (id)_longPressAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchLongPressAction];

  if (v4)
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

- (id)_orbAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchOrbAction];

  if (v4)
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

- (id)idleOpacitySummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchIdleOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (id)virtualTrackpadEnabled:(id)a3
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
  v3 = [(HandController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HandController;
  [(CustomGestureController *)&v5 viewWillAppear:a3];
  if (!_AXSInUnitTestMode())
  {
    v4 = [(HandController *)self specifiers];
    [(HandController *)self _updateAssistiveTouchControlItems:v4 reload:0];
  }
}

- (void)_updateAssistiveTouchControlItems:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v10 = [(CustomGestureController *)self specifierForKey:@"HandEnabled" withSpecifiers:a3];
  v6 = _AXSAssistiveTouchScannerEnabled();
  v7 = [NSNumber numberWithBool:v6 == 0];
  [v10 setProperty:v7 forKey:PSEnabledKey];

  if (v4)
  {
    [(HandController *)self reloadSpecifier:v10];
  }

  v8 = v6 == 0;
  v9 = [v10 propertyForKey:PSTableCellKey];
  [v9 setCellEnabled:v8];
}

- (void)_handleAssistiveTouchHardwareToggled:(id)a3
{
  v4 = [(HandController *)self specifiers];
  [(HandController *)self _updateAssistiveTouchControlItems:v4 reload:1];
}

- (void)_handleAssistiveTouchToggled:(id)a3
{
  v4 = [(HandController *)self specifiers];
  [(HandController *)self _updateAssistiveTouchControlItems:v4 reload:1];
}

- (void)_handleSettingsChange
{
  v3 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(HandController *)self reloadSpecifiers];
  v4 = *&self->super.super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table];

  [v4 reloadData];
}

- (id)mouseBehavesLikeFinger:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseBehavesLikeFinger]);

  return v4;
}

- (void)setMouseBehavesLikeFinger:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseBehavesLikeFinger:v4];
}

- (id)alwaysShowMenuEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchAlwaysShowMenuEnabled]);

  return v4;
}

- (void)setAlwaysShowMenuEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 assistiveTouchMouseDwellControlCornerCustomization];
  v8 = [v7 allValues];
  v9 = [v8 containsObject:AXAssistiveTouchIconTypeOpenMenu];

  if ((v5 & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 assistiveTouchMouseDwellControlEnabled], v10, v9 & 1 | ((v11 & 1) == 0)))
  {
    v12 = +[AXSettings sharedInstance];
    [v12 setAssistiveTouchAlwaysShowMenuEnabled:v5];

    v13 = [(HandController *)self specifiers];
    [(HandController *)self _updateAssistiveTouchControlItems:v13 reload:1];
  }

  else
  {

    [(HandController *)self _presentASTAlwaysShowMenuDisabledConfirmationAlert];
  }
}

- (id)mouseClickSoundsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseClickSoundsEnabled]);

  return v4;
}

- (void)setMouseClickSoundsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseClickSoundsEnabled:v4];
}

- (id)alwaysShowSoftwareKeyboard:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled]);

  return v4;
}

- (void)setAlwaysShowSoftwareKeyboard:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:v4];
}

- (id)gameControllerEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchGameControllerEnabled]);

  return v4;
}

- (void)setGameControllerEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchGameControllerEnabled:v4];
}

- (id)handEnabled:(id)a3
{
  v3 = _AXSAssistiveTouchEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setHandEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  if ([v6 laserEnabled] && (objc_msgSend(v5, "BOOLValue") & 1) == 0)
  {
    v8 = +[AXSpringBoardServer server];
    v7 = [v8 currentDevicesHaveAssistiveTouchCustomActions];
  }

  else
  {
    v7 = 0;
  }

  v9 = ([v5 BOOLValue] & 1) == 0 && _AXSAssistiveTouchEnabled() && _AXSAssistiveTouchHardwareEnabled() != 0;
  if (([v5 BOOLValue] & 1) == 0)
  {
    v13 = +[AXSpringBoardServer server];
    v10 = [v13 connectedDevicesRequireAssistiveTouch];

    if (!v7)
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
    v18 = v5;
    [v14 showAlert:23 withHandler:v17];

    v12 = v18;
    goto LABEL_15;
  }

  v10 = 0;
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (((v9 | v10) & 1) == 0)
  {
    -[HandController actualSetHandEnabled:](self, "actualSetHandEnabled:", [v5 BOOLValue]);
    goto LABEL_17;
  }

  v11 = +[AXSpringBoardServer server];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __43__HandController_setHandEnabled_specifier___block_invoke_2;
  v15[3] = &unk_257688;
  v15[4] = self;
  v16 = v5;
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

- (void)actualSetHandEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlShowPrompt:v3];

  _AXSAssistiveTouchSetEnabled();
  _AXSAssistiveTouchSetUIEnabled();
  if (v3)
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

- (void)setSwaggleOpensMenu:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setAssistiveTouchOpenMenuSwaggleEnabled:v5];
}

- (id)touchSpeed
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchSpeed];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setTouchSpeed:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchSpeed:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = HandController;
  v4 = [(HandController *)&v15 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 propertyForKey:PSKeyNameKey];
  v7 = [v6 isEqualToString:@"TouchSpeed"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v7)
  {
    v8 = [v4 control];
    if (!v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v4 contentView];
        v10 = [v9 subviews];
        v8 = [v10 ax_firstObjectUsingBlock:&__block_literal_global_639];
      }

      else
      {
        v8 = 0;
      }
    }

    [v8 setEnabled:1];
    [v8 setContinuous:1];
  }

  v11 = [v5 identifier];
  v12 = [v11 isEqualToString:@"APPLE_PAY_SWITCH"];

  if (v12)
  {
    v13 = [v4 titleLabel];
    [v13 setNumberOfLines:0];
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

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 propertyForKey:PSKeyNameKey];

  LOBYTE(v5) = [v6 isEqualToString:@"TouchSpeed"];
  return v5 ^ 1;
}

- (id)getCurrentActionForHomeActionListController:(id)a3
{
  v3 = [a3 homeActionType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == (&dword_0 + 3))
    {
      v5 = +[AXSettings sharedInstance];
      v6 = [v5 assistiveTouchLongPressAction];
    }

    else
    {
      if (v3 != &dword_4)
      {
        goto LABEL_11;
      }

      v5 = +[AXSettings sharedInstance];
      v6 = [v5 assistiveTouchOrbAction];
    }
  }

  else if (v3 == (&dword_0 + 1))
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 assistiveTouchSingleTapAction];
  }

  else
  {
    if (v3 != (&dword_0 + 2))
    {
      goto LABEL_11;
    }

    v5 = +[AXSettings sharedInstance];
    v6 = [v5 assistiveTouchDoubleTapAction];
  }

  v4 = v6;

LABEL_11:

  return v4;
}

- (void)homeActionListController:(id)a3 selectedAction:(id)a4
{
  v7 = a4;
  v5 = [a3 homeActionType];
  if (v5 > 2)
  {
    if (v5 == (&dword_0 + 3))
    {
      v6 = +[AXSettings sharedInstance];
      [v6 setAssistiveTouchLongPressAction:v7];
    }

    else
    {
      if (v5 != &dword_4)
      {
        goto LABEL_11;
      }

      v6 = +[AXSettings sharedInstance];
      [v6 setAssistiveTouchOrbAction:v7];
    }
  }

  else if (v5 == (&dword_0 + 1))
  {
    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchSingleTapAction:v7];
  }

  else
  {
    if (v5 != (&dword_0 + 2))
    {
      goto LABEL_11;
    }

    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchDoubleTapAction:v7];
  }

LABEL_11:
}

- (double)valueForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMouseDwellControlActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlActivationTimeout:a4];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(HandController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (id)dwellControlEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseDwellControlEnabled]);

  return v4;
}

- (void)setDwellControlEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchAlwaysShowMenuEnabled] | v4;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchAlwaysShowMenuEnabled:v6 & 1];

  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchMouseDwellControlShowPrompt:1];

  v9 = +[AXSettings sharedInstance];
  [v9 setAssistiveTouchMouseDwellControlEnabled:v4];
}

- (id)dwellControlAutorevertAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseDwellControlAutorevertEnabled];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 assistiveTouchMouseDwellControlAutorevertAction];

    v7 = AXUIAssistiveTouchStringForName();
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v8 = settingsLocString(@"FEATURE_OFF", @"HandSettings");
  }

  return v8;
}

- (void)setPayWithAST:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
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

- (id)payWithAST:(id)a3
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

- (void)setUseExtendedKeyboardPredictions:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchShouldUseExtendedKeyboardPredictions:v4];
}

- (id)useExtendedKeyboardPredictions:(id)a3
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