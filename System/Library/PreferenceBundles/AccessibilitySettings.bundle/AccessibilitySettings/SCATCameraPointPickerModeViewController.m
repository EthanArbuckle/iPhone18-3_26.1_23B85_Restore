@interface SCATCameraPointPickerModeViewController
- (BOOL)_belongsToTopLevelASTHeadTracking;
- (double)_movementToleranceInJoystickMode;
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)stepValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_headTrackingMode;
- (void)_updateFooterTextForMode:(unint64_t)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation SCATCameraPointPickerModeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATCameraPointPickerModeViewController;
  [(SCATCameraPointPickerModeViewController *)&v4 viewWillAppear:a3];
  [(SCATCameraPointPickerModeViewController *)self _updateFooterTextForMode:[(SCATCameraPointPickerModeViewController *)self _headTrackingMode]];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = SCATCameraPointPickerModeViewController;
  [(SCATCameraPointPickerModeViewController *)&v3 willBecomeActive];
  [(SCATCameraPointPickerModeViewController *)self _updateFooterTextForMode:[(SCATCameraPointPickerModeViewController *)self _headTrackingMode]];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v31 = OBJC_IVAR___PSListController__specifiers;
    v32 = self;
    v29 = +[NSMutableArray array];
    v4 = AXParameterizedLocalizedString();
    v5 = [PSSpecifier groupSpecifierWithName:v4];

    v30 = v5;
    v6 = [NSMutableArray arrayWithObject:v5];
    v33 = +[NSMutableDictionary dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [&off_27CB90 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(&off_27CB90);
          }

          v11 = [*(*(&v34 + 1) + 8 * i) unsignedIntegerValue];
          v12 = AXSSHumanReadableDescriptionForMotionTrackingMode();
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v14 = [NSNumber numberWithUnsignedInteger:v11];
          [v13 setProperty:v14 forKey:@"CameraPointPickerMode"];

          [v6 axSafelyAddObject:v13];
          v15 = AXSSHumanReadableExplanationForMotionTrackingMode();
          if (v15)
          {
            v16 = [NSNumber numberWithUnsignedInteger:v11];
            [v33 setObject:v15 forKey:v16];
          }
        }

        v8 = [&off_27CB90 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v17 = [v33 copy];
    [(SCATCameraPointPickerModeViewController *)v32 setModeToFooterTextExplanation:v17];

    [(SCATCameraPointPickerModeViewController *)v32 setTrackingModeGroup:v30];
    v18 = [v6 copy];
    [(SCATCameraPointPickerModeViewController *)v32 setModesSpecifiers:v18];

    v19 = [(SCATCameraPointPickerModeViewController *)v32 modesSpecifiers];
    [v29 addObjectsFromArray:v19];

    v20 = +[NSMutableArray array];
    v21 = AXParameterizedLocalizedString();
    v22 = [PSSpecifier groupSpecifierWithName:v21];

    v23 = AXParameterizedLocalizedString();
    [v22 setProperty:v23 forKey:PSFooterTextGroupKey];

    [v20 addObject:v22];
    v24 = [PSSpecifier preferenceSpecifierNamed:0 target:v32 set:0 get:"stringValueForSpecifier:" detail:0 cell:4 edit:0];
    [v24 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v24 setProperty:@"CameraPointPickerMovementTolerance" forKey:PSIDKey];
    [v20 addObject:v24];
    v25 = [v20 copy];
    [(SCATCameraPointPickerModeViewController *)v32 setMovementToleranceSpecifiers:v25];

    if ([(SCATCameraPointPickerModeViewController *)v32 _headTrackingMode]== &dword_0 + 1)
    {
      v26 = [(SCATCameraPointPickerModeViewController *)v32 movementToleranceSpecifiers];
      [v29 addObjectsFromArray:v26];
    }

    v27 = *&v32->AXUISettingsBaseListController_opaque[v31];
    *&v32->AXUISettingsBaseListController_opaque[v31] = v29;

    v3 = *&v32->AXUISettingsBaseListController_opaque[v31];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SCATCameraPointPickerModeViewController;
  v5 = [(SCATCameraPointPickerModeViewController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 propertyForKey:@"CameraPointPickerMode"];
  v8 = v7;
  if (v7)
  {
    [v5 setChecked:{-[SCATCameraPointPickerModeViewController _headTrackingMode](self, "_headTrackingMode") == objc_msgSend(v7, "integerValue")}];
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATCameraPointPickerModeViewController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"CameraPointPickerMode"];
  if (v9)
  {
    [(SCATCameraPointPickerModeViewController *)self beginUpdates];
    v20.receiver = self;
    v20.super_class = SCATCameraPointPickerModeViewController;
    [(SCATCameraPointPickerModeViewController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
    v10 = [v9 integerValue];
    [(SCATCameraPointPickerModeViewController *)self _updateFooterTextForMode:v10];
    v11 = [(SCATCameraPointPickerModeViewController *)self _headTrackingMode]!= &dword_0 + 1 && v10 == &dword_0 + 1;
    v12 = [(SCATCameraPointPickerModeViewController *)self _headTrackingMode]== &dword_0 + 1 && v10 != &dword_0 + 1;
    v13 = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
    v14 = +[AXSettings sharedInstance];
    v15 = v14;
    if (v13)
    {
      [v14 setAssistiveTouchHeadTrackingMode:v10];
    }

    else
    {
      [v14 setSwitchControlCameraPointPickerMode:v10];
    }

    [(SCATCameraPointPickerModeViewController *)self updateTableCheckedSelection:v7];
    if (v11)
    {
      v16 = [(SCATCameraPointPickerModeViewController *)self movementToleranceSpecifiers];
      v17 = [NSArray axArrayWithPossiblyNilArrays:1, v16];

      v18 = [(SCATCameraPointPickerModeViewController *)self modesSpecifiers];
      v19 = [v18 lastObject];
      [(SCATCameraPointPickerModeViewController *)self insertContiguousSpecifiers:v17 afterSpecifier:v19 animated:1];
    }

    else
    {
      if (!v12)
      {
LABEL_16:
        [(SCATCameraPointPickerModeViewController *)self endUpdates];
        goto LABEL_17;
      }

      v17 = [(SCATCameraPointPickerModeViewController *)self movementToleranceSpecifiers];
      [(SCATCameraPointPickerModeViewController *)self removeContiguousSpecifiers:v17 animated:1];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_updateFooterTextForMode:(unint64_t)a3
{
  v5 = [(SCATCameraPointPickerModeViewController *)self modeToFooterTextExplanation];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [v5 objectForKey:v6];

  v7 = [(SCATCameraPointPickerModeViewController *)self trackingModeGroup];
  [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  v8 = [(SCATCameraPointPickerModeViewController *)self trackingModeGroup];
  [(SCATCameraPointPickerModeViewController *)self reloadSpecifier:v8 animated:1];
}

- (double)valueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:PSIDKey];
  v5 = [v4 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = 0.0;
  if (v5)
  {
    [(SCATCameraPointPickerModeViewController *)self _movementToleranceInJoystickMode];
    return switchControlUserPreferenceForNormalizedHeadTrackingMovementToleranceInJoystickMode();
  }

  return result;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = [a3 propertyForKey:PSIDKey];
  v7 = [v6 isEqualToString:@"CameraPointPickerMovementTolerance"];

  if (v7)
  {
    [(SCATCameraPointPickerModeViewController *)self _movementToleranceInJoystickMode];
    if (switchControlUserPreferenceForNormalizedHeadTrackingMovementToleranceInJoystickMode() != a4)
    {
      switchControlNormalizedHeadTrackingMovementToleranceInJoystickModeForUserPreference();
      v9 = v8;
      v10 = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
      v11 = +[AXSettings sharedInstance];
      v12 = v11;
      if (v10)
      {
        [v11 setAssistiveTouchHeadTrackingMovementToleranceInJoystickMode:v9];
      }

      else
      {
        [v11 setSwitchControlCameraPointPickerMovementToleranceInJoystickMode:v9];
      }
    }
  }
}

- (double)stepValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = 0.0;
  if (v4)
  {
    return 5.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = kSwitchControlHeadTrackingMovementToleranceInJoystickModeMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = kSwitchControlHeadTrackingMovementToleranceInJoystickModeMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATCameraPointPickerModeViewController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (BOOL)_belongsToTopLevelASTHeadTracking
{
  v2 = [(SCATCameraPointPickerModeViewController *)self specifier];
  v3 = [v2 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTHeadTrackingMode"];

  return v4;
}

- (double)_movementToleranceInJoystickMode
{
  v2 = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
  v3 = +[AXSettings sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 assistiveTouchHeadTrackingMovementToleranceInJoystickMode];
  }

  else
  {
    [v3 switchControlCameraPointPickerMovementToleranceInJoystickMode];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)_headTrackingMode
{
  v2 = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
  v3 = +[AXSettings sharedInstance];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 assistiveTouchHeadTrackingMode];
  }

  else
  {
    v5 = [v3 switchControlCameraPointPickerMode];
  }

  v6 = v5;

  return v6;
}

@end