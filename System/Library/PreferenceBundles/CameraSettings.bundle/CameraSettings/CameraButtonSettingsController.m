@interface CameraButtonSettingsController
- (BOOL)_visualIntelligenceEnabled;
- (id)_cameraAdjustmentsCustomizeSpecifier;
- (id)_cameraAdjustmentsEnabled:(id)a3;
- (id)_createSpecifiers;
- (id)_isCameraControlRequireScreenOn:(id)a3;
- (id)_isCameraControlVisualIntelligencelEnabled:(id)a3;
- (id)_localizedTitleForGesture:(int64_t)a3;
- (id)specifiers;
- (void)_handleCustomizeControlsSpecifierVisibility;
- (void)_setCameraAdjustmentsEnabled:(id)a3 specifier:(id)a4;
- (void)_setCameraControlRequireScreenOn:(id)a3 specifier:(id)a4;
- (void)_setCameraControlVisualIntelligenceEnabled:(id)a3 specifier:(id)a4;
- (void)_setupAppConfigurationCoordinatorIfNecessary;
- (void)emitNavigationEvent;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CameraButtonSettingsController

- (id)specifiers
{
  [(CameraButtonSettingsController *)self _setupAppConfigurationCoordinatorIfNecessary];
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CameraButtonSettingsController *)self _createSpecifiers];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v5];
    v6 = [v5 copy];
    v7 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v6;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_createSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = sub_747C(@"CAPTURE_BUTTON_LAUNCH_APP_TITLE");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = PSIDKey;
  [v5 setObject:@"CAMAppLaunchGroupSpecifier" forKeyedSubscript:PSIDKey];
  v7 = sub_747C(@"CAMERA_BUTTON_APP_LIST_FOOTER");
  v8 = PSFooterTextGroupKey;
  [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

  v54 = v5;
  [v3 addObject:v5];
  v9 = [*(&self->super + 1) associatedAppBundleID];
  v10 = [CameraSettingsUtilities displayNameForBundleID:v9];

  v53 = v10;
  v11 = self;
  v12 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v12 setIdentifier:@"LAUNCH_CAMERA_BUTTON_SETTINGS"];
  v52 = v12;
  [v3 addObject:v12];
  v13 = [PSSpecifier groupSpecifierWithID:@"CAMAppGestureSelectionGroupSpecifier"];
  [v13 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v13 setObject:@"CAMAppGestureSelectionGroupSpecifier" forKeyedSubscript:v6];
  v14 = sub_747C(@"CAPTURE_BUTTON_APP_LAUNCH_FOOTER");
  v51 = v8;
  [v13 setObject:v14 forKeyedSubscript:v8];

  v15 = v3;
  v55 = v13;
  [v3 addObject:v13];
  v56 = [NSMutableDictionary dictionaryWithCapacity:3];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = [&off_32098 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v58;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(&off_32098);
        }

        v20 = *(*(&v57 + 1) + 8 * i);
        v21 = -[CameraButtonSettingsController _localizedTitleForGesture:](v11, "_localizedTitleForGesture:", [v20 integerValue]);
        v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:0 cell:3 edit:0];
        [v22 setProperty:v20 forKey:@"CAMAppLaunchGestureProperty"];
        [v15 addObject:v22];
        [v56 setObject:v22 forKeyedSubscript:v20];
      }

      v17 = [&off_32098 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v17);
  }

  v23 = [NSNumber numberWithInteger:[(CameraButtonSettingsController *)v11 _selectedLaunchGesture]];
  v24 = [v56 objectForKeyedSubscript:v23];
  [v13 setProperty:v24 forKey:PSRadioGroupCheckedSpecifierKey];

  v25 = [PSSpecifier groupSpecifierWithID:@"CameraControlRequireScreenOnSwitch"];
  v26 = v15;
  [v15 addObject:v25];
  v27 = sub_747C(@"CAPTURE_BUTTON_REQUIRES_SCREEN_ON");
  v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:v11 set:"_setCameraControlRequireScreenOn:specifier:" get:"_isCameraControlRequireScreenOn:" detail:0 cell:6 edit:0];

  [v28 setIdentifier:@"CAPTURE_BUTTON_REQUIRES_SCREEN_ON"];
  v29 = sub_747C(@"CAPTURE_BUTTON_REQUIRES_SCREEN_ON_FOOTER");
  v50 = v25;
  [v25 setProperty:v29 forKey:v51];

  v49 = v28;
  [v15 addObject:v28];
  v30 = sub_747C(@"CAPTURE_BUTTON_CONTROLS_TITLE");
  v31 = [PSSpecifier groupSpecifierWithName:v30];

  [v15 addObject:v31];
  v32 = sub_747C(@"CAMERA_ADJUSTMENTS_FOOTER");
  [v31 setProperty:v32 forKey:v51];

  v33 = sub_747C(@"CAMERA_ADJUSTMENTS");
  v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:v11 set:"_setCameraAdjustmentsEnabled:specifier:" get:"_cameraAdjustmentsEnabled:" detail:0 cell:6 edit:0];

  [v34 setIdentifier:@"CAMERA_BUTTON_ADJUSTMENTS_SWITCH"];
  [v15 addObject:v34];
  -[CameraButtonSettingsController setCameraAdjustmentsCustomizeSpecifierIndex:](v11, "setCameraAdjustmentsCustomizeSpecifierIndex:", [v15 count]);
  if (sub_75E8())
  {
    v35 = [(CameraButtonSettingsController *)v11 _cameraAdjustmentsCustomizeSpecifier];
    [v15 addObject:v35];
  }

  if ((+[CAMCaptureCapabilities isMessagesAppInstalled](CAMCaptureCapabilities, "isMessagesAppInstalled") & 1) != 0 || +[CAMCaptureCapabilities isCameraAppInstalled])
  {
    v36 = sub_747C(@"CAPTURE_BUTTON_LOCK_FOCUS_FOOTER");
    v37 = [PSSpecifier groupSpecifierWithID:@"focusLock"];
    [v37 setProperty:v36 forKey:v51];
    [v15 addObject:v37];
    v38 = sub_747C(@"LOCK_TO_FOCUS");
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:v11 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v39 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v39 setObject:@"systemOverlay.focusLockEnabled" forKeyedSubscript:PSKeyNameKey];
    [v39 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    [v39 setIdentifier:@"CAMERA_BUTTON_LOCK_FOCUS_SWITCH"];
    [v15 addObject:v39];
  }

  if ([(CameraButtonSettingsController *)v11 _visualIntelligenceEnabled])
  {
    v40 = sub_747C(@"CAPTURE_BUTTON_LAUNCH_VISUAL_INTELLIGENCE_TITLE");
    v41 = [PSSpecifier groupSpecifierWithName:v40];

    v42 = sub_747C(@"CAPTURE_BUTTON_LAUNCH_VISUAL_INTELLIGENCE_FOOTER");
    [v41 setObject:v42 forKeyedSubscript:v51];

    [v15 addObject:v41];
    v43 = sub_747C(@"CAPTURE_BUTTON_PRESS_AND_HOLD");
    v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:v11 set:"_setCameraControlVisualIntelligenceEnabled:specifier:" get:"_isCameraControlVisualIntelligencelEnabled:" detail:0 cell:6 edit:0];

    [v44 setIdentifier:@"CAMERA_BUTTON_PRESS_AND_HOLD_SWITCH"];
    [v15 addObject:v44];
  }

  v45 = [PSSpecifier groupSpecifierWithID:@"accessiblityGroup"];
  [v15 addObject:v45];
  v46 = sub_747C(@"CAMERA_BUTTON_ACCESSIBILITY");
  v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:v11 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v47 setIdentifier:@"CAMERA_BUTTON_ACCESSIBILITY"];
  [v26 addObject:v47];

  return v26;
}

- (id)_localizedTitleForGesture:(int64_t)a3
{
  if (!a3)
  {
    v4 = @"CAPTURE_BUTTON_LAUNCH_SINGLE_CLICK";
LABEL_5:
    v5 = sub_747C(v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = @"CAPTURE_BUTTON_LAUNCH_DOUBLE_CLICK";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_setupAppConfigurationCoordinatorIfNecessary
{
  if (!*(&self->super + 1))
  {
    v3 = [CameraSettingsUtilities appConfigurationCoordinatorForController:self];
    v4 = *(&self->super + 1);
    *(&self->super + 1) = v3;

    v5 = *(&self->super + 1);

    [v5 addObserver:self];
  }
}

- (id)_cameraAdjustmentsEnabled:(id)a3
{
  v3 = sub_75E8();

  return [NSNumber numberWithBool:v3];
}

- (void)_setCameraAdjustmentsEnabled:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(CAMUserPreferenceCameraAdjustmentsEnabled, a3, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");

  [(CameraButtonSettingsController *)self _handleCustomizeControlsSpecifierVisibility];
}

- (void)_handleCustomizeControlsSpecifierVisibility
{
  [(CameraButtonSettingsController *)self beginUpdates];
  if (sub_75E8())
  {
    v3 = [(CameraButtonSettingsController *)self _cameraAdjustmentsCustomizeSpecifier];
    [(CameraButtonSettingsController *)self insertSpecifier:v3 atIndex:[(CameraButtonSettingsController *)self cameraAdjustmentsCustomizeSpecifierIndex] animated:1];
  }

  else
  {
    v3 = [(CameraButtonSettingsController *)self specifierForID:@"kCameraCaptureButtonCustomizeControlsID"];
    [(CameraButtonSettingsController *)self removeSpecifier:v3 animated:1];
  }

  [(CameraButtonSettingsController *)self endUpdates];
}

- (id)_cameraAdjustmentsCustomizeSpecifier
{
  v3 = sub_747C(@"CAMERA_ADJUSTMENTS_CUSTOMIZE");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v4 setIdentifier:@"kCameraCaptureButtonCustomizeControlsID"];

  return v4;
}

- (void)_setCameraControlRequireScreenOn:(id)a3 specifier:(id)a4
{
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 BOOLValue] ^ 1);
  CFPreferencesSetAppValue(@"SBCaptureButtonDisableWakeWhenDim", v4, @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
}

- (id)_isCameraControlRequireScreenOn:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"SBCaptureButtonDisableWakeWhenDim", @"com.apple.springboard", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (void)_setCameraControlVisualIntelligenceEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AFPreferences sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setVisualIntelligenceCameraControlEnabled:v5];
}

- (id)_isCameraControlVisualIntelligencelEnabled:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 visualIntelligenceCameraControlEnabled]);

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = CameraButtonSettingsController;
  [(CameraButtonSettingsController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CameraButtonSettingsController *)self specifierAtIndexPath:v6];
  v8 = [(CameraButtonSettingsController *)self specifierForID:@"CAMAppGestureSelectionGroupSpecifier"];
  if (v8)
  {
    v9 = [v6 section];
    v10 = [(CameraButtonSettingsController *)self indexPathForSpecifier:v8];
    v11 = [v10 section];

    if (v9 == v11)
    {
      v12 = [v7 propertyForKey:@"CAMAppLaunchGestureProperty"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 integerValue];
        if (v14)
        {
          v15 = 2 * (v14 == &dword_0 + 1);
        }

        else
        {
          v15 = 1;
        }

        CFPreferencesSetAppValue(@"SBCaptureButtonClickCount", [NSNumber numberWithInteger:v15], @"com.apple.springboard");
        CFPreferencesAppSynchronize(@"com.apple.springboard");
      }
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraButtonSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_747C(@"CAMERA_BUTTON_TITLE");
  [(CameraButtonSettingsController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera/CAMERA_BUTTON_SETTINGS"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CAMERA_CONTROL_TITLE" table:@"CameraSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CameraButtonSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (BOOL)_visualIntelligenceEnabled
{
  v2 = [GMAvailabilityWrapper currentWithUseCaseIdentifiers:&__NSArray0__struct language:0];
  if (v2 < 3)
  {
    return 1u >> (v2 & 7);
  }

  else
  {
    return 0;
  }
}

@end