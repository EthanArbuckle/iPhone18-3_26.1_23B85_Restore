@interface SCATHeadGesturesSourceController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATHeadGesturesSourceController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[_TtC21AccessibilitySettings38SCATHeadGesturesSourceControllerHelper specifiers];
    v6 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17.receiver = self;
  v17.super_class = SCATHeadGesturesSourceController;
  v5 = [(SCATHeadGesturesSourceController *)&v17 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 name];
  v8 = [AXSwitch switchWithAction:0 name:v7 source:SCATSwitchSourceHeadGesture type:SCATSwitchTypeOptional];

  [v8 setAccessibilityEventUsagePage:7];
  v9 = [v6 propertyForKey:PSValueKey];
  v10 = v9;
  if (v9)
  {
    [v8 setAccessibilityEventUsage:{objc_msgSend(v9, "intValue")}];
  }

  v11 = +[SCATOnboardingManager sharedInstance];
  if ([v11 inSCATOnboarding])
  {
    v12 = [(SCATHeadGesturesSourceController *)self navigationController];
    [v11 addOnboardingSwitch:v8 navigationController:v12];
  }

  else
  {
    v12 = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
    [(SCATSwitchActionsController *)v12 setParentController:self];
    v13 = [(SCATHeadGesturesSourceController *)self rootController];
    [(SCATSwitchActionsController *)v12 setRootController:v13];

    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)v12 setSpecifier:v15];

    v16 = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)v12 setCompletion:v16];

    [(SCATHeadGesturesSourceController *)self showController:v12 animate:1];
  }
}

@end