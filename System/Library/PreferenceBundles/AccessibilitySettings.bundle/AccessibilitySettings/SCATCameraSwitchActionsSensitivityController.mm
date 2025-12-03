@interface SCATCameraSwitchActionsSensitivityController
- (BOOL)_belongsToTopLevelASTHeadTracking;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_saveSensitivityToHeadTrackingSettings:(unint64_t)settings;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATCameraSwitchActionsSensitivityController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _belongsToTopLevelASTHeadTracking = [(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking];
    specifier = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
    v7 = specifier;
    v26 = v3;
    if (_belongsToTopLevelASTHeadTracking)
    {
      v8 = [specifier propertyForKey:@"TopLevelHeadTrackingExpression"];

      if (v8)
      {
        [(SCATCameraSwitchActionsSensitivityController *)self setExpression:v8];
      }
    }

    else
    {
      v8 = [specifier propertyForKey:@"SCATCameraExpressionType"];

      if (v8)
      {
        -[SCATCameraSwitchActionsSensitivityController setCameraSwitchType:](self, "setCameraSwitchType:", [v8 unsignedIntegerValue]);
      }

      specifier2 = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
      v10 = [specifier2 propertyForKey:@"StoredCameraSwitch"];
      [(SCATCameraSwitchActionsSensitivityController *)self setStoredSwitch:v10];

      storedSwitch = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
      if (![storedSwitch expressionSensitivity])
      {
        [storedSwitch setExpressionSensitivity:2];
        [(SCATCameraSwitchActionsSensitivityController *)self _saveSwitchToSettings:storedSwitch];
      }
    }

    v12 = objc_opt_new();
    v13 = +[PSSpecifier emptyGroupSpecifier];
    v14 = AXParameterizedLocalizedString();
    [v13 setProperty:v14 forKey:PSFooterTextGroupKey];

    v25 = v13;
    [v12 addObject:v13];
    v15 = +[AXSSMotionTracker supportedExpressionSensitivitiesAscending];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          [v20 unsignedIntegerValue];
          v21 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpressionSensitivity();
          v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v22 setProperty:v20 forKey:@"CameraExpressionSensitivity"];
          [v12 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

    v23 = *&self->AXUISettingsBaseListController_opaque[v26];
    *&self->AXUISettingsBaseListController_opaque[v26] = v12;

    v4 = *&self->AXUISettingsBaseListController_opaque[v26];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATCameraSwitchActionsSensitivityController;
  [(SCATCameraSwitchActionsSensitivityController *)&v4 viewWillAppear:appear];
  [(SCATCameraSwitchActionsSensitivityController *)self reloadSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = SCATCameraSwitchActionsSensitivityController;
  pathCopy = path;
  v7 = [(SCATCameraSwitchActionsSensitivityController *)&v21 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATCameraSwitchActionsSensitivityController *)self specifierAtIndexPath:pathCopy, v21.receiver, v21.super_class];

  v9 = [v8 propertyForKey:@"CameraExpressionSensitivity"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  if ([(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking])
  {
    expression = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v12 = [expression isEqualToString:AXAssistiveTouchHeadTrackingExpressionNone];

    if (v12)
    {
      goto LABEL_12;
    }

    v13 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingExpressionToSensitivityMapping = [v13 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
    expression2 = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v16 = [assistiveTouchHeadTrackingExpressionToSensitivityMapping objectForKey:expression2];

    if (v16)
    {
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];
LABEL_7:
      v19 = unsignedIntegerValue2;
      goto LABEL_10;
    }

    v19 = 2;
    [(SCATCameraSwitchActionsSensitivityController *)self _saveSensitivityToHeadTrackingSettings:2];
  }

  else
  {
    storedSwitch = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
    v16 = storedSwitch;
    if (storedSwitch)
    {
      unsignedIntegerValue2 = [storedSwitch expressionSensitivity];
      goto LABEL_7;
    }

    v19 = 0;
  }

LABEL_10:

  if (v19)
  {
    [v7 setChecked:v19 == unsignedIntegerValue];
  }

LABEL_12:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = SCATCameraSwitchActionsSensitivityController;
  [(SCATCameraSwitchActionsSensitivityController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(SCATCameraSwitchActionsSensitivityController *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"CameraExpressionSensitivity"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if ([(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking])
  {
    v10 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingExpressionToSensitivityMapping = [v10 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
    expression = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v13 = [assistiveTouchHeadTrackingExpressionToSensitivityMapping objectForKey:expression];

    unsignedIntegerValue2 = [v13 unsignedIntegerValue];
    if (v13)
    {
      if (!unsignedIntegerValue || unsignedIntegerValue2 == unsignedIntegerValue)
      {
        goto LABEL_11;
      }
    }

    else if (!unsignedIntegerValue)
    {
      goto LABEL_11;
    }

    [(SCATCameraSwitchActionsSensitivityController *)self _saveSensitivityToHeadTrackingSettings:unsignedIntegerValue];
    goto LABEL_11;
  }

  storedSwitch = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
  v13 = storedSwitch;
  if (storedSwitch && [storedSwitch expressionSensitivity] != unsignedIntegerValue)
  {
    [v13 setExpressionSensitivity:unsignedIntegerValue];
    [(SCATCameraSwitchActionsSensitivityController *)self _saveSwitchToSettings:v13];
  }

LABEL_11:

  [(SCATCameraSwitchActionsSensitivityController *)self updateTableCheckedSelection:pathCopy];
}

- (void)_saveSensitivityToHeadTrackingSettings:(unint64_t)settings
{
  v5 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingExpressionToSensitivityMapping = [v5 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
  v11 = [NSMutableDictionary dictionaryWithDictionary:assistiveTouchHeadTrackingExpressionToSensitivityMapping];

  v7 = [NSNumber numberWithUnsignedInteger:settings];
  expression = [(SCATCameraSwitchActionsSensitivityController *)self expression];
  [v11 setObject:v7 forKey:expression];

  v9 = [v11 copy];
  v10 = +[AXSettings sharedInstance];
  [v10 setAssistiveTouchHeadTrackingExpressionToSensitivityMapping:v9];
}

- (BOOL)_belongsToTopLevelASTHeadTracking
{
  specifier = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
  v3 = [specifier propertyForKey:@"BelongsToTopLevelHeadTracking"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end