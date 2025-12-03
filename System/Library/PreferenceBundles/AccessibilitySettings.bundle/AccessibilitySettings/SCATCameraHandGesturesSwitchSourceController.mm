@interface SCATCameraHandGesturesSwitchSourceController
- (BOOL)_shouldEnableHandSwitch:(int64_t)switch;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATCameraHandGesturesSwitchSourceController

- (BOOL)_shouldEnableHandSwitch:(int64_t)switch
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v4 assistiveTouchSwitches];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __72__SCATCameraHandGesturesSwitchSourceController__shouldEnableHandSwitch___block_invoke;
  v7[3] = &unk_256ED8;
  v7[4] = &v8;
  v7[5] = switch;
  [assistiveTouchSwitches enumerateObjectsUsingBlock:v7];
  LOBYTE(switch) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return switch;
}

void __72__SCATCameraHandGesturesSwitchSourceController__shouldEnableHandSwitch___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 source];
  if ([v5 isEqual:SCATSwitchSourceCameraHandGesture])
  {
    v6 = [v8 accessibilityEventUsage];
    v7 = *(a1 + 40);

    if (v6 == v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  else
  {
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXParameterizedLocalizedString();
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v9 setIdentifier:@"LeftIndexFingerPinchSwitchIdentifier"];
    v10 = [NSNumber numberWithBool:[(SCATCameraHandGesturesSwitchSourceController *)self _shouldEnableHandSwitch:1]];
    v11 = PSEnabledKey;
    [v9 setProperty:v10 forKey:PSEnabledKey];

    [v5 addObject:v9];
    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v13 setIdentifier:@"RightIndexFingerPinchSwitchIdentifier"];
    v14 = [NSNumber numberWithBool:[(SCATCameraHandGesturesSwitchSourceController *)self _shouldEnableHandSwitch:2]];
    [v13 setProperty:v14 forKey:v11];

    [v5 addObject:v13];
    v15 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = SCATCameraHandGesturesSwitchSourceController;
  v5 = [(SCATCameraHandGesturesSwitchSourceController *)&v17 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  identifier = [specifier identifier];

  v8 = [AXSwitch switchWithAction:0 name:0 source:SCATSwitchSourceCameraHandGesture type:SCATSwitchTypeOptional];
  [v8 setAccessibilityEventUsagePage:8];
  if ([identifier isEqualToString:@"LeftIndexFingerPinchSwitchIdentifier"])
  {
    v9 = 1;
  }

  else
  {
    if (![identifier isEqualToString:@"RightIndexFingerPinchSwitchIdentifier"])
    {
      goto LABEL_6;
    }

    v9 = 2;
  }

  [v8 setAccessibilityEventUsage:v9];
  v10 = AXParameterizedLocalizedString();
  [v8 setName:v10];

LABEL_6:
  v11 = +[SCATOnboardingManager sharedInstance];
  if ([v11 inSCATOnboarding])
  {
    navigationController = [(SCATCameraHandGesturesSwitchSourceController *)self navigationController];
    [v11 addOnboardingSwitch:v8 navigationController:navigationController];
  }

  else
  {
    navigationController = [[SCATSwitchActionsController alloc] initWithSwitch:v8];
    [(SCATSwitchActionsController *)navigationController setParentController:self];
    rootController = [(SCATCameraHandGesturesSwitchSourceController *)self rootController];
    [(SCATSwitchActionsController *)navigationController setRootController:rootController];

    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)navigationController setSpecifier:v15];

    completion = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)navigationController setCompletion:completion];

    [(SCATCameraHandGesturesSwitchSourceController *)self showController:navigationController animate:1];
  }
}

@end