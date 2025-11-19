@interface SCATScreenSwitchSourceController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATScreenSwitchSourceController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchSwitches];

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      v11 = SCATSwitchSourceScreen;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v23 + 1) + 8 * v12) source];
          v14 = [v13 isEqualToString:v11];

          if (v14)
          {
            v15 = 0;
            goto LABEL_12;
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_12:

    v16 = +[PSSpecifier emptyGroupSpecifier];
    v17 = AXParameterizedLocalizedString();
    [v16 setProperty:v17 forKey:PSFooterTextGroupKey];

    [v5 addObject:v16];
    v18 = AXParameterizedLocalizedString();
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v19 setIdentifier:@"ScreenSwitchIdentifier"];
    v20 = [NSNumber numberWithBool:v15];
    [v19 setProperty:v20 forKey:PSEnabledKey];

    [v5 addObject:v19];
    v21 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = SCATScreenSwitchSourceController;
  v5 = [(SCATScreenSwitchSourceController *)&v16 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 identifier];

  v8 = [AXSwitch switchWithAction:0 name:0 source:SCATSwitchSourceScreen type:SCATSwitchTypeOptional];
  if ([v7 isEqualToString:@"ScreenSwitchIdentifier"])
  {
    v9 = AXParameterizedLocalizedString();
    [v8 setName:v9];
  }

  v10 = +[SCATOnboardingManager sharedInstance];
  if ([v10 inSCATOnboarding])
  {
    v11 = [(SCATScreenSwitchSourceController *)self navigationController];
    [v10 addOnboardingSwitch:v8 navigationController:v11];
  }

  else
  {
    v11 = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
    [(SCATSwitchActionsController *)v11 setParentController:self];
    v12 = [(SCATScreenSwitchSourceController *)self rootController];
    [(SCATSwitchActionsController *)v11 setRootController:v12];

    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)v11 setSpecifier:v14];

    v15 = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)v11 setCompletion:v15];

    [(SCATScreenSwitchSourceController *)self showController:v11 animate:1];
  }
}

@end