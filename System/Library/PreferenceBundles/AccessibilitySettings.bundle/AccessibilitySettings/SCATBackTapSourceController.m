@interface SCATBackTapSourceController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATBackTapSourceController

- (id)specifiers
{
  v2 = self;
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
    v6 = [v5 assistiveTouchSwitches];

    v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v28 = v3;
      v29 = v2;
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
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 source];
          v16 = [v15 isEqualToString:v12];

          if (v16)
          {
            v9 |= [v14 accessibilityEventUsage] == &dword_0 + 1;
            v10 |= [v14 accessibilityEventUsage] == &dword_0 + 2;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
      v17 = (v9 & 1) == 0;
      v30 = (v10 & 1) == 0;
      v3 = v28;
      v2 = v29;
    }

    else
    {
      v17 = 1;
      v30 = 1;
    }

    v18 = +[PSSpecifier emptyGroupSpecifier];
    [v31 addObject:v18];
    v19 = settingsLocString(@"DOUBLE_TAP", @"Accessibility");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v2 set:0 get:0 detail:0 cell:1 edit:0];

    v21 = [NSNumber numberWithInt:v17];
    v22 = PSEnabledKey;
    [v20 setProperty:v21 forKey:PSEnabledKey];

    [v20 setIdentifier:@"DoubleTap"];
    [v31 addObject:v20];
    v23 = settingsLocString(@"TRIPLE_TAP", @"Accessibility");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:v2 set:0 get:0 detail:0 cell:1 edit:0];

    v25 = [NSNumber numberWithInt:v30];
    [v24 setProperty:v25 forKey:v22];

    [v24 setIdentifier:@"TripleTap"];
    [v31 addObject:v24];
    v26 = *&v2->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&v2->super.AXUISettingsSetupCapableListController_opaque[v3] = v31;

    v4 = *&v2->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19.receiver = self;
  v19.super_class = SCATBackTapSourceController;
  v5 = [(SCATBackTapSourceController *)&v19 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 name];
  v8 = [AXSwitch switchWithAction:0 name:v7 source:SCATSwitchSourceBackTap type:SCATSwitchTypeOptional];

  v9 = 1;
  [v8 setAccessibilityEventUsagePage:1];
  v10 = [v6 identifier];
  v11 = [v10 isEqualToString:@"DoubleTap"];

  if (v11)
  {
    goto LABEL_4;
  }

  v12 = [v6 identifier];
  v13 = [v12 isEqualToString:@"TripleTap"];

  if (v13)
  {
    v9 = 2;
LABEL_4:
    [v8 setAccessibilityEventUsage:v9];
  }

  v14 = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
  [(SCATSwitchActionsController *)v14 setParentController:self];
  v15 = [(SCATBackTapSourceController *)self rootController];
  [(SCATSwitchActionsController *)v14 setRootController:v15];

  v16 = AXParameterizedLocalizedString();
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATSwitchActionsController *)v14 setSpecifier:v17];

  v18 = [(SCATSettingsCompletionController *)self completion];
  [(SCATSettingsCompletionController *)v14 setCompletion:v18];

  [(SCATBackTapSourceController *)self showController:v14 animate:1];
}

@end