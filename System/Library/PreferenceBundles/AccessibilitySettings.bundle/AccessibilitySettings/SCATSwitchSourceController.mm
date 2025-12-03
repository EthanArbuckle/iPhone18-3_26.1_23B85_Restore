@interface SCATSwitchSourceController
- (BOOL)_shouldEnableCameraSource;
- (BOOL)_shouldEnableSoundSource;
- (id)specifiers;
- (void)soundActionsAssetDidUpdate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATSwitchSourceController

- (void)soundActionsAssetDidUpdate
{
  v4 = [(SCATSwitchSourceController *)self specifierForID:@"SoundSwitchSourceIdentifier"];
  v3 = [NSNumber numberWithBool:[(SCATSwitchSourceController *)self _shouldEnableSoundSource]];
  [v4 setProperty:v3 forKey:PSEnabledKey];

  [(SCATSwitchSourceController *)self reloadSpecifier:v4];
}

- (BOOL)_shouldEnableSoundSource
{
  soundActionslocalURL = [(SCATSwitchSourceController *)self soundActionslocalURL];
  v3 = soundActionslocalURL != 0;

  return v3;
}

- (BOOL)_shouldEnableCameraSource
{
  if (_shouldEnableCameraSource_onceToken[0] != -1)
  {
    [SCATSwitchSourceController _shouldEnableCameraSource];
  }

  return _shouldEnableCameraSource_shouldEnableCameraSource;
}

void __55__SCATSwitchSourceController__shouldEnableCameraSource__block_invoke(id a1)
{
  v4[0] = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v4[1] = AVCaptureDeviceTypeBuiltInTelephotoCamera;
  v4[2] = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  v4[3] = AVCaptureDeviceTypeBuiltInDualCamera;
  v4[4] = AVCaptureDeviceTypeBuiltInDualWideCamera;
  v4[5] = AVCaptureDeviceTypeBuiltInTripleCamera;
  v4[6] = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v1 = [NSArray arrayWithObjects:v4 count:7];
  v2 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v1 mediaType:AVMediaTypeVideo position:2];
  v3 = [v2 devices];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_306];
}

void __55__SCATSwitchSourceController__shouldEnableCameraSource__block_invoke_2(id a1, AVCaptureDevice *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if ([(AVCaptureDevice *)v5 position]== &dword_0 + 2 && [(AVCaptureDevice *)v5 isFaceDetectionSupported])
  {
    _shouldEnableCameraSource_shouldEnableCameraSource = 1;
    *a4 = 1;
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    v8 = AXParameterizedLocalizedString();
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v7];
    if ([(SCATSwitchSourceController *)self _shouldEnableExternalSource])
    {
      v9 = AXParameterizedLocalizedString();
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v10 setIdentifier:@"ExternalSwitchSourceIdentifier"];
      [v10 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v5 addObject:v10];
    }

    if ([(SCATSwitchSourceController *)self _shouldEnableScreenSource])
    {
      v11 = AXParameterizedLocalizedString();
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v12 setIdentifier:@"ScreenSwitchSourceIdentifier"];
      [v12 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v5 addObject:v12];
    }

    if ([(SCATSwitchSourceController *)self _shouldEnableCameraSource])
    {
      v13 = AXParameterizedLocalizedString();
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v14 setIdentifier:@"CameraSwitchSourceIdentifier"];
      [v14 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v5 addObject:v14];
    }

    if (AXDeviceSupportsBackTap())
    {
      v15 = settingsLocString(@"BACK_TAP", @"Accessibility");
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v16 setIdentifier:@"BackTapSwitchSourceIdentifier"];
      [v16 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v5 addObject:v16];
    }

    if (AXDeviceSupportsVoiceTriggers())
    {
      v17 = settingsLocString(@"SOUND_ACTION", @"Accessibility");
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v18 setIdentifier:@"SoundSwitchSourceIdentifier"];
      v19 = [NSNumber numberWithBool:(AXRuntimeCheck_SoundRecognitionMedinaSupportEnabled() | [(SCATSwitchSourceController *)self _shouldEnableSoundSource]) & 1];
      [v18 setProperty:v19 forKey:PSEnabledKey];

      [v18 setObject:&__kCFBooleanFalse forKeyedSubscript:AXInBuddySetupKey];
      [v5 addObject:v18];
    }

    if (AXDeviceSupportsAirPodsHeadGestures())
    {
      v20 = AXParameterizedLocalizedString();
      v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:1 edit:0];
      [v21 setIdentifier:@"HeadGesturesSwitchSourceIdentifier"];
      [v21 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v21 setObject:&__kCFBooleanFalse forKeyedSubscript:AXInBuddySetupKey];
      [v5 addObject:v21];
    }

    v22 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = SCATSwitchSourceController;
  v5 = [(SCATSwitchSourceController *)&v17 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  identifier = [specifier identifier];

  if ([identifier isEqualToString:@"ExternalSwitchSourceIdentifier"] || objc_msgSend(identifier, "isEqualToString:", @"ScreenSwitchSourceIdentifier") || objc_msgSend(identifier, "isEqualToString:", @"CameraSwitchSourceIdentifier"))
  {
    v8 = objc_opt_new();
    [v8 setParentController:self];
    rootController = [(SCATSwitchSourceController *)self rootController];
    [v8 setRootController:rootController];

    specifier2 = AXParameterizedLocalizedString();
    name = [PSSpecifier preferenceSpecifierNamed:specifier2 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v8 setSpecifier:name];
    goto LABEL_6;
  }

  if (![identifier isEqualToString:@"BackTapSwitchSourceIdentifier"])
  {
    if ([identifier isEqualToString:@"SoundSwitchSourceIdentifier"])
    {
      v8 = objc_opt_new();
      soundActionslocalURL = [(SCATSwitchSourceController *)self soundActionslocalURL];
      [v8 setAssetURL:soundActionslocalURL];

      v13 = v8;
      goto LABEL_13;
    }

    if (![identifier isEqualToString:@"HeadGesturesSwitchSourceIdentifier"])
    {
      goto LABEL_8;
    }
  }

  v13 = objc_opt_new();
  v8 = v13;
LABEL_13:
  [v13 setParentController:self];
  rootController2 = [(SCATSwitchSourceController *)self rootController];
  [v8 setRootController:rootController2];

  specifier2 = [v5 specifier];
  name = [specifier2 name];
  v16 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v8 setSpecifier:v16];

LABEL_6:
  [(SCATSwitchSourceController *)self showController:v8 animate:1];
  if (v8)
  {
    completion = [(SCATSettingsCompletionController *)self completion];
    [v8 setCompletion:completion];
  }

LABEL_8:
}

@end