@interface SCATBackTapSourceController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATBackTapSourceController

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v31 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v5 assistiveTouchSwitches];

    v7 = [assistiveTouchSwitches countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v28 = v3;
      v29 = selfCopy;
      v9 = 0;
      v10 = 0;
      v11 = *v33;
      v12 = SCATSwitchSourceBackTap;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(assistiveTouchSwitches);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          source = [v14 source];
          v16 = [source isEqualToString:v12];

          if (v16)
          {
            v9 |= [v14 accessibilityEventUsage] == &dword_0 + 1;
            v10 |= [v14 accessibilityEventUsage] == &dword_0 + 2;
          }
        }

        v8 = [assistiveTouchSwitches countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
      v17 = (v9 & 1) == 0;
      v30 = (v10 & 1) == 0;
      v3 = v28;
      selfCopy = v29;
    }

    else
    {
      v17 = 1;
      v30 = 1;
    }

    v18 = +[PSSpecifier emptyGroupSpecifier];
    [v31 addObject:v18];
    v19 = settingsLocString(@"DOUBLE_TAP", @"Accessibility");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:selfCopy set:0 get:0 detail:0 cell:1 edit:0];

    v21 = [NSNumber numberWithInt:v17];
    v22 = PSEnabledKey;
    [v20 setProperty:v21 forKey:PSEnabledKey];

    [v20 setIdentifier:@"DoubleTap"];
    [v31 addObject:v20];
    v23 = settingsLocString(@"TRIPLE_TAP", @"Accessibility");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:selfCopy set:0 get:0 detail:0 cell:1 edit:0];

    v25 = [NSNumber numberWithInt:v30];
    [v24 setProperty:v25 forKey:v22];

    [v24 setIdentifier:@"TripleTap"];
    [v31 addObject:v24];
    v26 = *&selfCopy->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&selfCopy->super.AXUISettingsSetupCapableListController_opaque[v3] = v31;

    v4 = *&selfCopy->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = SCATBackTapSourceController;
  v5 = [(SCATBackTapSourceController *)&v19 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  name = [specifier name];
  v8 = [AXSwitch switchWithAction:0 name:name source:SCATSwitchSourceBackTap type:SCATSwitchTypeOptional];

  v9 = 1;
  [v8 setAccessibilityEventUsagePage:1];
  identifier = [specifier identifier];
  v11 = [identifier isEqualToString:@"DoubleTap"];

  if (v11)
  {
    goto LABEL_4;
  }

  identifier2 = [specifier identifier];
  v13 = [identifier2 isEqualToString:@"TripleTap"];

  if (v13)
  {
    v9 = 2;
LABEL_4:
    [v8 setAccessibilityEventUsage:v9];
  }

  v14 = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
  [(SCATSwitchActionsController *)v14 setParentController:self];
  rootController = [(SCATBackTapSourceController *)self rootController];
  [(SCATSwitchActionsController *)v14 setRootController:rootController];

  v16 = AXParameterizedLocalizedString();
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATSwitchActionsController *)v14 setSpecifier:v17];

  completion = [(SCATSettingsCompletionController *)self completion];
  [(SCATSettingsCompletionController *)v14 setCompletion:completion];

  [(SCATBackTapSourceController *)self showController:v14 animate:1];
}

@end