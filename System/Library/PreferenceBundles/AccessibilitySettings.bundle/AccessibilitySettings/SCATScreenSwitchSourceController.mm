@interface SCATScreenSwitchSourceController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    assistiveTouchSwitches = [v6 assistiveTouchSwitches];

    v8 = [assistiveTouchSwitches countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(assistiveTouchSwitches);
          }

          source = [*(*(&v23 + 1) + 8 * v12) source];
          v14 = [source isEqualToString:v11];

          if (v14)
          {
            v15 = 0;
            goto LABEL_12;
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [assistiveTouchSwitches countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = SCATScreenSwitchSourceController;
  v5 = [(SCATScreenSwitchSourceController *)&v16 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  identifier = [specifier identifier];

  v8 = [AXSwitch switchWithAction:0 name:0 source:SCATSwitchSourceScreen type:SCATSwitchTypeOptional];
  if ([identifier isEqualToString:@"ScreenSwitchIdentifier"])
  {
    v9 = AXParameterizedLocalizedString();
    [v8 setName:v9];
  }

  v10 = +[SCATOnboardingManager sharedInstance];
  if ([v10 inSCATOnboarding])
  {
    navigationController = [(SCATScreenSwitchSourceController *)self navigationController];
    [v10 addOnboardingSwitch:v8 navigationController:navigationController];
  }

  else
  {
    navigationController = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
    [(SCATSwitchActionsController *)navigationController setParentController:self];
    rootController = [(SCATScreenSwitchSourceController *)self rootController];
    [(SCATSwitchActionsController *)navigationController setRootController:rootController];

    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)navigationController setSpecifier:v14];

    completion = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)navigationController setCompletion:completion];

    [(SCATScreenSwitchSourceController *)self showController:navigationController animate:1];
  }
}

@end