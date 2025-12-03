@interface SCATHeadGesturesSourceController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = SCATHeadGesturesSourceController;
  v5 = [(SCATHeadGesturesSourceController *)&v17 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  name = [specifier name];
  v8 = [AXSwitch switchWithAction:0 name:name source:SCATSwitchSourceHeadGesture type:SCATSwitchTypeOptional];

  [v8 setAccessibilityEventUsagePage:7];
  v9 = [specifier propertyForKey:PSValueKey];
  v10 = v9;
  if (v9)
  {
    [v8 setAccessibilityEventUsage:{objc_msgSend(v9, "intValue")}];
  }

  v11 = +[SCATOnboardingManager sharedInstance];
  if ([v11 inSCATOnboarding])
  {
    navigationController = [(SCATHeadGesturesSourceController *)self navigationController];
    [v11 addOnboardingSwitch:v8 navigationController:navigationController];
  }

  else
  {
    navigationController = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
    [(SCATSwitchActionsController *)navigationController setParentController:self];
    rootController = [(SCATHeadGesturesSourceController *)self rootController];
    [(SCATSwitchActionsController *)navigationController setRootController:rootController];

    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)navigationController setSpecifier:v15];

    completion = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)navigationController setCompletion:completion];

    [(SCATHeadGesturesSourceController *)self showController:navigationController animate:1];
  }
}

@end