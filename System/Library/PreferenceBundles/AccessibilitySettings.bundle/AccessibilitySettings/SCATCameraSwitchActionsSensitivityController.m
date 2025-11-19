@interface SCATCameraSwitchActionsSensitivityController
- (BOOL)_belongsToTopLevelASTHeadTracking;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_saveSensitivityToHeadTrackingSettings:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATCameraSwitchActionsSensitivityController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking];
    v6 = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
    v7 = v6;
    v26 = v3;
    if (v5)
    {
      v8 = [v6 propertyForKey:@"TopLevelHeadTrackingExpression"];

      if (v8)
      {
        [(SCATCameraSwitchActionsSensitivityController *)self setExpression:v8];
      }
    }

    else
    {
      v8 = [v6 propertyForKey:@"SCATCameraExpressionType"];

      if (v8)
      {
        -[SCATCameraSwitchActionsSensitivityController setCameraSwitchType:](self, "setCameraSwitchType:", [v8 unsignedIntegerValue]);
      }

      v9 = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
      v10 = [v9 propertyForKey:@"StoredCameraSwitch"];
      [(SCATCameraSwitchActionsSensitivityController *)self setStoredSwitch:v10];

      v11 = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
      if (![v11 expressionSensitivity])
      {
        [v11 setExpressionSensitivity:2];
        [(SCATCameraSwitchActionsSensitivityController *)self _saveSwitchToSettings:v11];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATCameraSwitchActionsSensitivityController;
  [(SCATCameraSwitchActionsSensitivityController *)&v4 viewWillAppear:a3];
  [(SCATCameraSwitchActionsSensitivityController *)self reloadSpecifiers];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = SCATCameraSwitchActionsSensitivityController;
  v6 = a4;
  v7 = [(SCATCameraSwitchActionsSensitivityController *)&v21 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SCATCameraSwitchActionsSensitivityController *)self specifierAtIndexPath:v6, v21.receiver, v21.super_class];

  v9 = [v8 propertyForKey:@"CameraExpressionSensitivity"];
  v10 = [v9 unsignedIntegerValue];

  if ([(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking])
  {
    v11 = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v12 = [v11 isEqualToString:AXAssistiveTouchHeadTrackingExpressionNone];

    if (v12)
    {
      goto LABEL_12;
    }

    v13 = +[AXSettings sharedInstance];
    v14 = [v13 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
    v15 = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v16 = [v14 objectForKey:v15];

    if (v16)
    {
      v17 = [v16 unsignedIntegerValue];
LABEL_7:
      v19 = v17;
      goto LABEL_10;
    }

    v19 = 2;
    [(SCATCameraSwitchActionsSensitivityController *)self _saveSensitivityToHeadTrackingSettings:2];
  }

  else
  {
    v18 = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
    v16 = v18;
    if (v18)
    {
      v17 = [v18 expressionSensitivity];
      goto LABEL_7;
    }

    v19 = 0;
  }

LABEL_10:

  if (v19)
  {
    [v7 setChecked:v19 == v10];
  }

LABEL_12:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SCATCameraSwitchActionsSensitivityController;
  [(SCATCameraSwitchActionsSensitivityController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(SCATCameraSwitchActionsSensitivityController *)self specifierAtIndexPath:v6];
  v8 = [v7 propertyForKey:@"CameraExpressionSensitivity"];
  v9 = [v8 unsignedIntegerValue];

  if ([(SCATCameraSwitchActionsSensitivityController *)self _belongsToTopLevelASTHeadTracking])
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
    v12 = [(SCATCameraSwitchActionsSensitivityController *)self expression];
    v13 = [v11 objectForKey:v12];

    v14 = [v13 unsignedIntegerValue];
    if (v13)
    {
      if (!v9 || v14 == v9)
      {
        goto LABEL_11;
      }
    }

    else if (!v9)
    {
      goto LABEL_11;
    }

    [(SCATCameraSwitchActionsSensitivityController *)self _saveSensitivityToHeadTrackingSettings:v9];
    goto LABEL_11;
  }

  v15 = [(SCATCameraSwitchActionsSensitivityController *)self storedSwitch];
  v13 = v15;
  if (v15 && [v15 expressionSensitivity] != v9)
  {
    [v13 setExpressionSensitivity:v9];
    [(SCATCameraSwitchActionsSensitivityController *)self _saveSwitchToSettings:v13];
  }

LABEL_11:

  [(SCATCameraSwitchActionsSensitivityController *)self updateTableCheckedSelection:v6];
}

- (void)_saveSensitivityToHeadTrackingSettings:(unint64_t)a3
{
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchHeadTrackingExpressionToSensitivityMapping];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [(SCATCameraSwitchActionsSensitivityController *)self expression];
  [v11 setObject:v7 forKey:v8];

  v9 = [v11 copy];
  v10 = +[AXSettings sharedInstance];
  [v10 setAssistiveTouchHeadTrackingExpressionToSensitivityMapping:v9];
}

- (BOOL)_belongsToTopLevelASTHeadTracking
{
  v2 = [(SCATCameraSwitchActionsSensitivityController *)self specifier];
  v3 = [v2 propertyForKey:@"BelongsToTopLevelHeadTracking"];
  v4 = [v3 BOOLValue];

  return v4;
}

@end