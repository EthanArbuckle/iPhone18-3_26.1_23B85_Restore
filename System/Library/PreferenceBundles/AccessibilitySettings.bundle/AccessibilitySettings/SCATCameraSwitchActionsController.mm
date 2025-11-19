@interface SCATCameraSwitchActionsController
- (SCATCameraSwitchActionsController)initWithSwitch:(id)a3;
- (id)_actionSpecifiersWithActions:(id)a3;
- (id)_rootSwitchesController;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATCameraSwitchActionsController

- (SCATCameraSwitchActionsController)initWithSwitch:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SCATCameraSwitchActionsController;
  v5 = [(SCATSwitchActionsController *)&v7 initWithSwitch:v4];
  if (v5)
  {
    -[SCATCameraSwitchActionsController setCameraSwitchType:](v5, "setCameraSwitchType:", [v4 cameraSwitch]);
  }

  return v5;
}

- (id)_rootSwitchesController
{
  v3 = [(SCATCameraSwitchActionsController *)self navigationController];
  v4 = [v3 viewControllers];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v27 = v4;
    v25 = *v33;
    while (2)
    {
      v9 = 0;
      v26 = v7;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = [(SCATCameraSwitchActionsController *)self parentController];
        v12 = [v10 isMemberOfClass:objc_opt_class()];

        if (v12)
        {
          v24 = v10;
LABEL_21:

          v4 = v27;
          goto LABEL_22;
        }

        v13 = [v10 childViewControllers];
        v14 = [v13 count];

        if (v14)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = [v10 childViewControllers];
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v28 + 1) + 8 * i);
                v21 = [(SCATCameraSwitchActionsController *)self parentController];
                LOBYTE(v20) = [v20 isMemberOfClass:objc_opt_class()];

                if (v20)
                {
                  v22 = v10;

                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v8 = v25;
          v7 = v26;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v4 = v27;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [(SCATCameraSwitchActionsController *)self parentController];
LABEL_22:

  return v10;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [PSSpecifier groupSpecifierWithID:@"SCATCameraActionsTopGroup"];
    v8 = [(SCATCameraSwitchActionsController *)self footerText];

    if (v8)
    {
      v9 = [(SCATCameraSwitchActionsController *)self footerText];
      v10 = PSFooterTextGroupKey;
      v11 = v7;
      v12 = v9;
    }

    else
    {
      v13 = [(SCATSwitchActionsController *)self footerTextSpecifier];
      v14 = PSFooterTextGroupKey;
      v9 = [v13 propertyForKey:PSFooterTextGroupKey];

      v11 = v7;
      v12 = v9;
      v10 = v14;
    }

    [v11 setProperty:v12 forKey:v10];

    [(SCATSwitchActionsController *)self setFooterTextSpecifier:v7];
    [v6 addObject:v7];
    v33.receiver = self;
    v33.super_class = SCATCameraSwitchActionsController;
    v15 = [(SCATSwitchActionsController *)&v33 specifiers];
    if ([(SCATCameraSwitchActionsController *)self cameraSwitchType]== &dword_8 + 1)
    {
      v16 = AXParameterizedLocalizedString();
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v17 setProperty:@"CameraSwitchActionDwellOptions" forKey:PSIDKey];
      v35 = v17;
      v18 = &v35;
    }

    else
    {
      v19 = AXParameterizedLocalizedString();
      v17 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v17 setProperty:@"CameraSwitchActionSensitivity" forKey:PSIDKey];
      v20 = [NSNumber numberWithUnsignedInteger:[(SCATCameraSwitchActionsController *)self cameraSwitchType]];
      [v17 setProperty:v20 forKey:@"SCATCameraExpressionType"];

      v21 = [(SCATSwitchActionsController *)self storedSwitch];
      [v17 setProperty:v21 forKey:@"StoredCameraSwitch"];

      v34 = v17;
      v18 = &v34;
    }

    v22 = [NSArray arrayWithObjects:v18 count:1];
    [v6 addObjectsFromArray:v22];

    v23 = [PSSpecifier groupSpecifierWithID:@"SCATCameraActionsNoneGroup"];
    [v6 addObject:v23];
    v24 = AXParameterizedLocalizedString();
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v25 setProperty:&off_27B058 forKey:@"ActionKey"];
    [v25 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v6 addObject:v25];
    [v6 axSafelyAddObjectsFromArray:v15];
    v26 = AXParameterizedLocalizedString();
    v27 = [PSSpecifier groupSpecifierWithName:v26];

    [v6 addObject:v27];
    v28 = SCATHeadTrackingSwitchActions();
    v29 = [(SCATCameraSwitchActionsController *)self _actionSpecifiersWithActions:v28];

    [v6 addObjectsFromArray:v29];
    v30 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v2];
    *&self->super.super.AXUISettingsSetupCapableListController_opaque[v2] = v6;
    v31 = v6;

    v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v2];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATCameraSwitchActionsController;
  [(SCATCameraSwitchActionsController *)&v4 viewWillAppear:a3];
  [(SCATCameraSwitchActionsController *)self reloadSpecifiers];
}

- (id)_actionSpecifiersWithActions:(id)a3
{
  v4 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __66__SCATCameraSwitchActionsController__actionSpecifiersWithActions___block_invoke;
  v9[3] = &unk_257CD0;
  v5 = v9[4] = self;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __66__SCATCameraSwitchActionsController__actionSpecifiersWithActions___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) disallowedActions];
  v4 = [v3 containsObject:v7];

  if ((v4 & 1) == 0)
  {
    [v7 integerValue];
    v5 = SCATLocStringForAction();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

    [v6 setProperty:v7 forKey:@"ActionKey"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [*(a1 + 40) addObject:v6];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = SCATCameraSwitchActionsController;
  v4 = [(SCATSwitchActionsController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = PSIDKey;
  v7 = [v5 propertyForKey:PSIDKey];
  if ([v7 isEqualToString:@"CameraSwitchActionDwellOptions"])
  {
  }

  else
  {
    v8 = [v5 propertyForKey:v6];
    v9 = [v8 isEqualToString:@"CameraSwitchActionSensitivity"];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [v4 setAccessoryType:1];
LABEL_5:

  return v4;
}

@end