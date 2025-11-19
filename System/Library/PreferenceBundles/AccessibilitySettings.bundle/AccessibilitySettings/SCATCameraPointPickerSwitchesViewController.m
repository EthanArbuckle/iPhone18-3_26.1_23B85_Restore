@interface SCATCameraPointPickerSwitchesViewController
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)stepValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)_actionForSpecifier:(id)a3;
- (id)_axSwitchWithType:(unint64_t)a3;
- (id)_customizationSpecifiers;
- (id)_setupSpecifiersForExpressions:(id)a3;
- (id)cameraSwitchEnabled:(id)a3;
- (id)modeSummary:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)setCameraSwitchEnabled:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATCameraPointPickerSwitchesViewController

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SCATCameraPointPickerSwitchesViewController;
  [(SCATCameraPointPickerSwitchesViewController *)&v6 viewWillAppear:a3];
  v4 = AXParameterizedLocalizedString();
  v5 = [(SCATCameraPointPickerSwitchesViewController *)self navigationItem];
  [v5 setTitle:v4];

  [(SCATCameraPointPickerSwitchesViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"SCATCameraPointPickerGroupIdentifier"];
    v7 = AXParameterizedLocalizedString();
    v33 = PSFooterTextGroupKey;
    [v6 setProperty:v7 forKey:?];

    v36 = v6;
    [v5 addObject:v6];
    v8 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setCameraSwitchEnabled:specifier:" get:"cameraSwitchEnabled:" detail:0 cell:6 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"CameraPointPickerSwitcher" forKey:PSIDKey];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [(SCATCameraPointPickerSwitchesViewController *)self setCameraSwitchSpecifier:v9];
    [v5 addObject:v9];
    v11 = AXParameterizedLocalizedString();
    v12 = [PSSpecifier groupSpecifierWithName:v11];

    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"modeSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v14 setProperty:@"CameraPointPickerMode" forKey:v10];
    v34 = v14;
    v35 = v12;
    v38[0] = v12;
    v38[1] = v14;
    v15 = [NSArray arrayWithObjects:v38 count:2];
    [(SCATCameraPointPickerSwitchesViewController *)self setModeSpecifiers:v15];

    v16 = +[AXSwitch expressionToSwitchTypeMapping];
    v17 = [(SCATCameraPointPickerSwitchesViewController *)self _setupSpecifiersForExpressions:v16];

    v18 = AXParameterizedLocalizedString();
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"_actionForSpecifier:" detail:0 cell:2 edit:0];

    v20 = [(SCATCameraPointPickerSwitchesViewController *)self _axSwitchWithType:9];
    [v19 setProperty:v20 forKey:@"SCATCameraSwitch"];

    [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v17 addObject:v19];
    if ([v17 count])
    {
      v21 = AXParameterizedLocalizedString();
      v22 = [PSSpecifier groupSpecifierWithID:@"SCATCameraActionsGroupIdentifier" name:v21];

      [v17 insertObject:v22 atIndex:0];
      [(SCATCameraPointPickerSwitchesViewController *)self setActionSpecifiers:v17];
    }

    v23 = AXParameterizedLocalizedString();
    v24 = [PSSpecifier groupSpecifierWithName:v23];

    v25 = AXParameterizedLocalizedString();
    [v24 setProperty:v25 forKey:v33];

    v26 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:"stringValueForSpecifier:" detail:0 cell:4 edit:0];
    [v26 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v26 setProperty:@"CameraPointPickerSensitivity" forKey:v10];
    v37[0] = v24;
    v37[1] = v26;
    v27 = [NSArray arrayWithObjects:v37 count:2];
    [(SCATCameraPointPickerSwitchesViewController *)self setSensitivitySpecifiers:v27];

    v28 = +[AXSettings sharedInstance];
    v29 = [v28 switchControlUseCameraForPointMode];

    if (v29)
    {
      v30 = [(SCATCameraPointPickerSwitchesViewController *)self _customizationSpecifiers];
      [v5 addObjectsFromArray:v30];
    }

    v31 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)_setupSpecifiersForExpressions:(id)a3
{
  v4 = a3;
  v24 = +[NSMutableArray array];
  v5 = +[AXSSMotionTracker supportedExpressions];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingSelector:"compare:"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v23 = PSEnabledKey;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 unsignedIntValue];
        v14 = [v4 objectForKeyedSubscript:v12];

        if (v14)
        {
          v15 = [v4 objectForKeyedSubscript:v12];
          v16 = [v15 unsignedIntValue];

          v17 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
          v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:"_actionForSpecifier:" detail:0 cell:2 edit:0];

          v19 = [(SCATCameraPointPickerSwitchesViewController *)self _axSwitchWithType:v16];
          [v18 setProperty:v19 forKey:@"SCATCameraSwitch"];

          v20 = [NSNumber numberWithUnsignedInteger:v13];
          [v18 setProperty:v20 forKey:@"SCATCameraExpressionType"];

          [v18 setProperty:&__kCFBooleanTrue forKey:v23];
          [v24 addObject:v18];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v24;
}

- (id)_customizationSpecifiers
{
  v3 = [(SCATCameraPointPickerSwitchesViewController *)self actionSpecifiers];
  v4 = [(SCATCameraPointPickerSwitchesViewController *)self modeSpecifiers];
  v5 = [(SCATCameraPointPickerSwitchesViewController *)self sensitivitySpecifiers];
  v6 = [NSArray axArrayWithPossiblyNilArrays:3, v3, v4, v5];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATCameraPointPickerSwitchesViewController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"SCATCameraSwitch"];
  if (v9)
  {
    v10 = [[SCATCameraSwitchActionsController alloc] initWithSwitch:v9];
    [(SCATCameraSwitchActionsController *)v10 setParentController:self];
    v11 = [(SCATCameraPointPickerSwitchesViewController *)self rootController];
    [(SCATCameraSwitchActionsController *)v10 setRootController:v11];

    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATCameraSwitchActionsController *)v10 setSpecifier:v13];

    v14 = [v8 propertyForKey:@"SCATCameraExpressionType"];

    if (v14)
    {
      v15 = [v8 propertyForKey:@"SCATCameraExpressionType"];
      [v15 unsignedIntegerValue];

      v16 = AXSSHumanReadableExplanationForMotionTrackingFacialExpression();
    }

    else
    {
      if ([v9 cameraSwitch] != &dword_8 + 1)
      {
LABEL_9:
        v20 = [[UINavigationController alloc] initWithRootViewController:v10];
        objc_initWeak(&location, self);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = __81__SCATCameraPointPickerSwitchesViewController_tableView_didSelectRowAtIndexPath___block_invoke;
        v24[3] = &unk_255818;
        objc_copyWeak(&v26, &location);
        v21 = v20;
        v25 = v21;
        [(SCATSettingsCompletionController *)v10 setCompletion:v24];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = __81__SCATCameraPointPickerSwitchesViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
        v23[3] = &unk_2553B0;
        v23[4] = self;
        [(SCATCameraPointPickerSwitchesViewController *)self presentViewController:v21 animated:1 completion:v23];

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);

        goto LABEL_10;
      }

      v16 = AXParameterizedLocalizedString();
    }

    v19 = v16;
    [(SCATCameraSwitchActionsController *)v10 setFooterText:v16];

    goto LABEL_9;
  }

  v17 = [v8 propertyForKey:PSIDKey];
  v18 = [v17 isEqualToString:@"CameraPointPickerMode"];

  if (v18)
  {
    v22.receiver = self;
    v22.super_class = SCATCameraPointPickerSwitchesViewController;
    [(SCATCameraPointPickerSwitchesViewController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
  }

LABEL_10:
}

void __81__SCATCameraPointPickerSwitchesViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifierID:@"SCATCameraActionsGroupIdentifier"];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (id)_actionForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"SCATCameraSwitch"];
  v4 = [v3 shortcutIdentifier];

  if (v4)
  {
    v5 = +[AXSiriShortcutsManager sharedManager];
    v6 = [v3 shortcutIdentifier];
    v7 = [v5 shortcutForIdentifier:v6];
    v8 = [v7 shortcutName];
  }

  else
  {
    if ([v3 action])
    {
      SCATLocStringForAction();
    }

    else
    {
      AXParameterizedLocalizedString();
    }
    v8 = ;
  }

  return v8;
}

- (id)_axSwitchWithType:(unint64_t)a3
{
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchCameraPointPickerSwitches];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = SCATSwitchSourceMotionTracker;
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v13 = [v12 source];
      if ([v13 isEqualToString:v8])
      {
        v14 = [v12 cameraSwitch];

        if (v14 == a3)
        {
          v15 = v12;

          if (v15)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_14:
  v15 = [AXSwitch switchWithAction:0 name:0 source:v8 type:SCATSwitchTypeOptional, v17];
  [v15 setCameraSwitch:a3];
  [v15 setExpressionSensitivity:2];
LABEL_15:

  return v15;
}

- (id)cameraSwitchEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlUseCameraForPointMode]);

  return v4;
}

- (void)setCameraSwitchEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 switchControlUseCameraForPointMode];

  if (v5 != v7)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setSwitchControlUseCameraForPointMode:v5];

    v10 = [(SCATCameraPointPickerSwitchesViewController *)self _customizationSpecifiers];
    if (v5)
    {
      v9 = [(SCATCameraPointPickerSwitchesViewController *)self cameraSwitchSpecifier];
      [(SCATCameraPointPickerSwitchesViewController *)self insertContiguousSpecifiers:v10 afterSpecifier:v9 animated:1];
    }

    else
    {
      [(SCATCameraPointPickerSwitchesViewController *)self removeContiguousSpecifiers:v10 animated:1];
    }
  }
}

- (id)modeSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlCameraPointPickerMode];
  v4 = AXSSHumanReadableDescriptionForMotionTrackingMode();

  return v4;
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerSensitivity"];

  v5 = 0.0;
  if (v4)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 switchControlCameraPointPickerSensitivity];
    v5 = switchControlUserPreferenceForNormalizedHeadTrackingSensitivity();
  }

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v5 = [a3 propertyForKey:PSIDKey];
  v6 = [v5 isEqualToString:@"CameraPointPickerSensitivity"];

  if (v6)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 switchControlCameraPointPickerSensitivity];
    v8 = switchControlUserPreferenceForNormalizedHeadTrackingSensitivity();

    if (v8 != a4)
    {
      switchControlNormalizedHeadTrackingSensitivityForUserPreference();
      v10 = v9;
      v11 = +[AXSettings sharedInstance];
      [v11 setSwitchControlCameraPointPickerSensitivity:v10];
    }
  }
}

- (double)stepValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerSensitivity"];

  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerSensitivity"];

  result = kSwitchControlHeadTrackingSensitivityMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerSensitivity"];

  result = kSwitchControlHeadTrackingSensitivityMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATCameraPointPickerSwitchesViewController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end