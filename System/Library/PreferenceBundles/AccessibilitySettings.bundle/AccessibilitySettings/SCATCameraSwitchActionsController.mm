@interface SCATCameraSwitchActionsController
- (SCATCameraSwitchActionsController)initWithSwitch:(id)switch;
- (id)_actionSpecifiersWithActions:(id)actions;
- (id)_rootSwitchesController;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATCameraSwitchActionsController

- (SCATCameraSwitchActionsController)initWithSwitch:(id)switch
{
  switchCopy = switch;
  v7.receiver = self;
  v7.super_class = SCATCameraSwitchActionsController;
  v5 = [(SCATSwitchActionsController *)&v7 initWithSwitch:switchCopy];
  if (v5)
  {
    -[SCATCameraSwitchActionsController setCameraSwitchType:](v5, "setCameraSwitchType:", [switchCopy cameraSwitch]);
  }

  return v5;
}

- (id)_rootSwitchesController
{
  navigationController = [(SCATCameraSwitchActionsController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v27 = viewControllers;
    v25 = *v33;
    while (2)
    {
      v9 = 0;
      v26 = v7;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        parentController3 = *(*(&v32 + 1) + 8 * v9);
        parentController = [(SCATCameraSwitchActionsController *)self parentController];
        v12 = [parentController3 isMemberOfClass:objc_opt_class()];

        if (v12)
        {
          v24 = parentController3;
LABEL_21:

          viewControllers = v27;
          goto LABEL_22;
        }

        childViewControllers = [parentController3 childViewControllers];
        v14 = [childViewControllers count];

        if (v14)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          childViewControllers2 = [parentController3 childViewControllers];
          v16 = [childViewControllers2 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                  objc_enumerationMutation(childViewControllers2);
                }

                v20 = *(*(&v28 + 1) + 8 * i);
                parentController2 = [(SCATCameraSwitchActionsController *)self parentController];
                LOBYTE(v20) = [v20 isMemberOfClass:objc_opt_class()];

                if (v20)
                {
                  v22 = parentController3;

                  goto LABEL_21;
                }
              }

              v17 = [childViewControllers2 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
      viewControllers = v27;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  parentController3 = [(SCATCameraSwitchActionsController *)self parentController];
LABEL_22:

  return parentController3;
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
    footerText = [(SCATCameraSwitchActionsController *)self footerText];

    if (footerText)
    {
      footerText2 = [(SCATCameraSwitchActionsController *)self footerText];
      v10 = PSFooterTextGroupKey;
      v11 = v7;
      v12 = footerText2;
    }

    else
    {
      footerTextSpecifier = [(SCATSwitchActionsController *)self footerTextSpecifier];
      v14 = PSFooterTextGroupKey;
      footerText2 = [footerTextSpecifier propertyForKey:PSFooterTextGroupKey];

      v11 = v7;
      v12 = footerText2;
      v10 = v14;
    }

    [v11 setProperty:v12 forKey:v10];

    [(SCATSwitchActionsController *)self setFooterTextSpecifier:v7];
    [v6 addObject:v7];
    v33.receiver = self;
    v33.super_class = SCATCameraSwitchActionsController;
    specifiers = [(SCATSwitchActionsController *)&v33 specifiers];
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

      storedSwitch = [(SCATSwitchActionsController *)self storedSwitch];
      [v17 setProperty:storedSwitch forKey:@"StoredCameraSwitch"];

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
    [v6 axSafelyAddObjectsFromArray:specifiers];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATCameraSwitchActionsController;
  [(SCATCameraSwitchActionsController *)&v4 viewWillAppear:appear];
  [(SCATCameraSwitchActionsController *)self reloadSpecifiers];
}

- (id)_actionSpecifiersWithActions:(id)actions
{
  actionsCopy = actions;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [actionsCopy count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __66__SCATCameraSwitchActionsController__actionSpecifiersWithActions___block_invoke;
  v9[3] = &unk_257CD0;
  v5 = v9[4] = self;
  v10 = v5;
  [actionsCopy enumerateObjectsUsingBlock:v9];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = SCATCameraSwitchActionsController;
  v4 = [(SCATSwitchActionsController *)&v11 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = PSIDKey;
  v7 = [specifier propertyForKey:PSIDKey];
  if ([v7 isEqualToString:@"CameraSwitchActionDwellOptions"])
  {
  }

  else
  {
    v8 = [specifier propertyForKey:v6];
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