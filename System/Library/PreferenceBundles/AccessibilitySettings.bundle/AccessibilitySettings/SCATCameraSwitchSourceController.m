@interface SCATCameraSwitchSourceController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATCameraSwitchSourceController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:1 edit:0];

    v9 = PSEnabledKey;
    [v8 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v8 setIdentifier:@"HeadGesturesIdentifier"];
    [v5 addObject:v8];
    if (_os_feature_enabled_impl() && AXRuntimeCheck_isANEDeviceH13plus())
    {
      v10 = AXParameterizedLocalizedString();
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v11 setIdentifier:@"HandGesturesIdentifier"];
      [v11 setProperty:&__kCFBooleanTrue forKey:v9];
      [v5 addObject:v11];
    }

    v12 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = SCATCameraSwitchSourceController;
  v5 = [(SCATCameraSwitchSourceController *)&v13 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 identifier];

  if (([v7 isEqualToString:@"HeadGesturesIdentifier"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"HandGesturesIdentifier"))
  {
    v8 = objc_opt_new();
    [v8 setParentController:self];
    v9 = [(SCATCameraSwitchSourceController *)self rootController];
    [v8 setRootController:v9];

    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v8 setSpecifier:v11];

    [(SCATCameraSwitchSourceController *)self showController:v8 animate:1];
    if (v8)
    {
      v12 = [(SCATSettingsCompletionController *)self completion];
      [v8 setCompletion:v12];
    }
  }
}

@end