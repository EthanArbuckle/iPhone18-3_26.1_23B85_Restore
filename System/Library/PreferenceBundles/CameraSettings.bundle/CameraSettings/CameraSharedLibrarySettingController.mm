@interface CameraSharedLibrarySettingController
- (id)_isShareAtHomeEnabled:(id)enabled;
- (id)_isShareFromCameraEnabled:(id)enabled;
- (id)specifiers;
- (void)_setShareAtHome:(id)home specifier:(id)specifier;
- (void)_setShareFromCamera:(id)camera specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CameraSharedLibrarySettingController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"shareFromCameraGroup"];
    v7 = sub_98E0(@"SHARED_LIBRARY_SHARE_FROM_CAMERA_FOOTER");
    v8 = PSFooterTextGroupKey;
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = sub_98E0(@"SHARED_LIBRARY_SHARE_FROM_CAMERA_TITLE");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setShareFromCamera:specifier:" get:"_isShareFromCameraEnabled:" detail:0 cell:6 edit:0];

    v11 = PSDefaultValueKey;
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v5 addObject:v10];
    v12 = [(CameraSharedLibrarySettingController *)self _isShareFromCameraEnabled:v10];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v32 = v11;
      v34 = v6;
      v14 = [PSSpecifier groupSpecifierWithID:@"autoShareBehaviorSelectionGroup"];
      v15 = sub_98E0(@"SHARED_LIBRARY_SHARE_SELECTION_FOOTER");
      v33 = v8;
      [v14 setObject:v15 forKeyedSubscript:v8];

      [v5 addObject:v14];
      [v14 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      v16 = sub_98E0(@"SHARED_LIBRARY_SHARE_AUTOMATICALLY");
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v18 = sub_98E0(@"SHARED_LIBRARY_SHARE_MANUALLY");
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

      IsCameraAutoShareEnabled = PXPreferencesIsCameraAutoShareEnabled();
      if (IsCameraAutoShareEnabled)
      {
        v21 = v17;
      }

      else
      {
        v21 = v19;
      }

      v22 = PSRadioGroupCheckedSpecifierKey;
      v23 = v21;
      [v14 setProperty:v23 forKey:v22];
      [v5 addObject:v17];
      [v5 addObject:v19];

      if (IsCameraAutoShareEnabled)
      {
        v24 = [PSSpecifier groupSpecifierWithID:@"shareAtHomeGroup"];
        v25 = sub_98E0(@"SHARED_LIBRARY_SHARE_AT_HOME_FOOTER");
        [v24 setObject:v25 forKeyedSubscript:v33];

        [v5 addObject:v24];
        v26 = sub_98E0(@"SHARED_LIBRARY_SHARE_AT_HOME_TITLE");
        v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"_setShareAtHome:specifier:" get:"_isShareAtHomeEnabled:" detail:0 cell:6 edit:0];

        [v27 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:PSDefaultsKey];
        [v27 setObject:@"CameraShareFromHomeEnabled" forKeyedSubscript:PSKeyNameKey];
        [v27 setObject:&__kCFBooleanFalse forKeyedSubscript:v32];
        v28 = sub_98E0(@"SHARED_LIBRARY_SHARE_AT_HOME_FOOTER");
        [v27 setObject:v28 forKeyedSubscript:v33];

        [v5 addObject:v27];
      }

      v6 = v34;
    }

    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v5];
    v29 = [v5 copy];
    v30 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v29;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = CameraSharedLibrarySettingController;
  [(CameraSharedLibrarySettingController *)&v10 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraSharedLibrarySettingController *)self specifierForID:@"autoShareBehaviorSelectionGroup"];
  if (v7)
  {
    v8 = [(CameraSharedLibrarySettingController *)self indexPathForSpecifier:v7];
    section = [v8 section];
  }

  else
  {
    section = -1;
  }

  if ([pathCopy section] == section)
  {
    [pathCopy row];
    PXPreferencesSetCameraAutoShareEnabled();
    +[CAMUserPreferences removeSharedLibraryAlgorithmsPreferences];
    [(CameraSettingsBaseController *)self reloadSpecifiers];
  }
}

- (void)_setShareFromCamera:(id)camera specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"CameraSharingEnabled", camera, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  +[CAMUserPreferences removeSharedLibraryAlgorithmsPreferences];

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (id)_isShareFromCameraEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CameraSharingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)_setShareAtHome:(id)home specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"CameraShareFromHomeEnabled", home, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  +[CAMUserPreferences removeSharedLibraryAlgorithmsPreferences];

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (id)_isShareAtHomeEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  v3 = [NSNumber numberWithBool:CFPreferencesGetAppBooleanValue(@"CameraShareFromHomeEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0];

  return v3;
}

@end