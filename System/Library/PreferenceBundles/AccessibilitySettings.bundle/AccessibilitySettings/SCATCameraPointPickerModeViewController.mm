@interface SCATCameraPointPickerModeViewController
- (BOOL)_belongsToTopLevelASTHeadTracking;
- (double)_movementToleranceInJoystickMode;
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)stepValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)_headTrackingMode;
- (void)_updateFooterTextForMode:(unint64_t)mode;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation SCATCameraPointPickerModeViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATCameraPointPickerModeViewController;
  [(SCATCameraPointPickerModeViewController *)&v4 viewWillAppear:appear];
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
    selfCopy = self;
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

          unsignedIntegerValue = [*(*(&v34 + 1) + 8 * i) unsignedIntegerValue];
          v12 = AXSSHumanReadableDescriptionForMotionTrackingMode();
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v14 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
          [v13 setProperty:v14 forKey:@"CameraPointPickerMode"];

          [v6 axSafelyAddObject:v13];
          v15 = AXSSHumanReadableExplanationForMotionTrackingMode();
          if (v15)
          {
            v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
            [v33 setObject:v15 forKey:v16];
          }
        }

        v8 = [&off_27CB90 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v17 = [v33 copy];
    [(SCATCameraPointPickerModeViewController *)selfCopy setModeToFooterTextExplanation:v17];

    [(SCATCameraPointPickerModeViewController *)selfCopy setTrackingModeGroup:v30];
    v18 = [v6 copy];
    [(SCATCameraPointPickerModeViewController *)selfCopy setModesSpecifiers:v18];

    modesSpecifiers = [(SCATCameraPointPickerModeViewController *)selfCopy modesSpecifiers];
    [v29 addObjectsFromArray:modesSpecifiers];

    v20 = +[NSMutableArray array];
    v21 = AXParameterizedLocalizedString();
    v22 = [PSSpecifier groupSpecifierWithName:v21];

    v23 = AXParameterizedLocalizedString();
    [v22 setProperty:v23 forKey:PSFooterTextGroupKey];

    [v20 addObject:v22];
    v24 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:"stringValueForSpecifier:" detail:0 cell:4 edit:0];
    [v24 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v24 setProperty:@"CameraPointPickerMovementTolerance" forKey:PSIDKey];
    [v20 addObject:v24];
    v25 = [v20 copy];
    [(SCATCameraPointPickerModeViewController *)selfCopy setMovementToleranceSpecifiers:v25];

    if ([(SCATCameraPointPickerModeViewController *)selfCopy _headTrackingMode]== &dword_0 + 1)
    {
      movementToleranceSpecifiers = [(SCATCameraPointPickerModeViewController *)selfCopy movementToleranceSpecifiers];
      [v29 addObjectsFromArray:movementToleranceSpecifiers];
    }

    v27 = *&selfCopy->AXUISettingsBaseListController_opaque[v31];
    *&selfCopy->AXUISettingsBaseListController_opaque[v31] = v29;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v31];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SCATCameraPointPickerModeViewController;
  v5 = [(SCATCameraPointPickerModeViewController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  v7 = [specifier propertyForKey:@"CameraPointPickerMode"];
  v8 = v7;
  if (v7)
  {
    [v5 setChecked:{-[SCATCameraPointPickerModeViewController _headTrackingMode](self, "_headTrackingMode") == objc_msgSend(v7, "integerValue")}];
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SCATCameraPointPickerModeViewController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"CameraPointPickerMode"];
  if (v9)
  {
    [(SCATCameraPointPickerModeViewController *)self beginUpdates];
    v20.receiver = self;
    v20.super_class = SCATCameraPointPickerModeViewController;
    [(SCATCameraPointPickerModeViewController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    integerValue = [v9 integerValue];
    [(SCATCameraPointPickerModeViewController *)self _updateFooterTextForMode:integerValue];
    v11 = [(SCATCameraPointPickerModeViewController *)self _headTrackingMode]!= &dword_0 + 1 && integerValue == &dword_0 + 1;
    v12 = [(SCATCameraPointPickerModeViewController *)self _headTrackingMode]== &dword_0 + 1 && integerValue != &dword_0 + 1;
    _belongsToTopLevelASTHeadTracking = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
    v14 = +[AXSettings sharedInstance];
    v15 = v14;
    if (_belongsToTopLevelASTHeadTracking)
    {
      [v14 setAssistiveTouchHeadTrackingMode:integerValue];
    }

    else
    {
      [v14 setSwitchControlCameraPointPickerMode:integerValue];
    }

    [(SCATCameraPointPickerModeViewController *)self updateTableCheckedSelection:pathCopy];
    if (v11)
    {
      movementToleranceSpecifiers = [(SCATCameraPointPickerModeViewController *)self movementToleranceSpecifiers];
      movementToleranceSpecifiers2 = [NSArray axArrayWithPossiblyNilArrays:1, movementToleranceSpecifiers];

      modesSpecifiers = [(SCATCameraPointPickerModeViewController *)self modesSpecifiers];
      lastObject = [modesSpecifiers lastObject];
      [(SCATCameraPointPickerModeViewController *)self insertContiguousSpecifiers:movementToleranceSpecifiers2 afterSpecifier:lastObject animated:1];
    }

    else
    {
      if (!v12)
      {
LABEL_16:
        [(SCATCameraPointPickerModeViewController *)self endUpdates];
        goto LABEL_17;
      }

      movementToleranceSpecifiers2 = [(SCATCameraPointPickerModeViewController *)self movementToleranceSpecifiers];
      [(SCATCameraPointPickerModeViewController *)self removeContiguousSpecifiers:movementToleranceSpecifiers2 animated:1];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_updateFooterTextForMode:(unint64_t)mode
{
  modeToFooterTextExplanation = [(SCATCameraPointPickerModeViewController *)self modeToFooterTextExplanation];
  v6 = [NSNumber numberWithUnsignedInteger:mode];
  v9 = [modeToFooterTextExplanation objectForKey:v6];

  trackingModeGroup = [(SCATCameraPointPickerModeViewController *)self trackingModeGroup];
  [trackingModeGroup setProperty:v9 forKey:PSFooterTextGroupKey];

  trackingModeGroup2 = [(SCATCameraPointPickerModeViewController *)self trackingModeGroup];
  [(SCATCameraPointPickerModeViewController *)self reloadSpecifier:trackingModeGroup2 animated:1];
}

- (double)valueForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:PSIDKey];
  v5 = [v4 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = 0.0;
  if (v5)
  {
    [(SCATCameraPointPickerModeViewController *)self _movementToleranceInJoystickMode];
    return switchControlUserPreferenceForNormalizedHeadTrackingMovementToleranceInJoystickMode();
  }

  return result;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v6 = [specifier propertyForKey:PSIDKey];
  v7 = [v6 isEqualToString:@"CameraPointPickerMovementTolerance"];

  if (v7)
  {
    [(SCATCameraPointPickerModeViewController *)self _movementToleranceInJoystickMode];
    if (switchControlUserPreferenceForNormalizedHeadTrackingMovementToleranceInJoystickMode() != value)
    {
      switchControlNormalizedHeadTrackingMovementToleranceInJoystickModeForUserPreference();
      v9 = v8;
      _belongsToTopLevelASTHeadTracking = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
      v11 = +[AXSettings sharedInstance];
      v12 = v11;
      if (_belongsToTopLevelASTHeadTracking)
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

- (double)stepValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = 0.0;
  if (v4)
  {
    return 5.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = kSwitchControlHeadTrackingMovementToleranceInJoystickModeMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"CameraPointPickerMovementTolerance"];

  result = kSwitchControlHeadTrackingMovementToleranceInJoystickModeMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(SCATCameraPointPickerModeViewController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (BOOL)_belongsToTopLevelASTHeadTracking
{
  specifier = [(SCATCameraPointPickerModeViewController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"ASTHeadTrackingMode"];

  return v4;
}

- (double)_movementToleranceInJoystickMode
{
  _belongsToTopLevelASTHeadTracking = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
  v3 = +[AXSettings sharedInstance];
  v4 = v3;
  if (_belongsToTopLevelASTHeadTracking)
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
  _belongsToTopLevelASTHeadTracking = [(SCATCameraPointPickerModeViewController *)self _belongsToTopLevelASTHeadTracking];
  v3 = +[AXSettings sharedInstance];
  v4 = v3;
  if (_belongsToTopLevelASTHeadTracking)
  {
    assistiveTouchHeadTrackingMode = [v3 assistiveTouchHeadTrackingMode];
  }

  else
  {
    assistiveTouchHeadTrackingMode = [v3 switchControlCameraPointPickerMode];
  }

  v6 = assistiveTouchHeadTrackingMode;

  return v6;
}

@end