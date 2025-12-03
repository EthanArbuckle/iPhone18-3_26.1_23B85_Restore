@interface MSSSharedLibraryCameraController
- (id)deepLinkURL;
- (id)pathComponentsLocalizedResource;
- (id)shareFromCameraEnabledForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_setCameraAutoShareEnabled:(id)enabled enableAutoshare:(BOOL)autoshare;
- (void)setShareFromCameraEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation MSSSharedLibraryCameraController

- (id)pathComponentsLocalizedResource
{
  v3 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v4 = +[MSSSettingsUtilities sharedLibraryPaneLocalizedResource];
  v8[1] = v4;
  paneTitleLocalizedResource = [(MSSSharedLibraryCameraController *)self paneTitleLocalizedResource];
  v8[2] = paneTitleLocalizedResource;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@/%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow", @"SharedStreamsTitleGroup", @"shareFromCameraGroup"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"shareFromCameraGroup"];
    v7 = PXLocalizedSharedLibraryString();
    v8 = PSFooterTextGroupKey;
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = PXLocalizedSharedLibraryString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setShareFromCameraEnabled:forSpecifier:" get:"shareFromCameraEnabledForSpecifier:" detail:0 cell:6 edit:0];

    v11 = PSDefaultValueKey;
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    v32 = PSAllowMultilineTitleKey;
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
    [v5 addObject:v10];
    v12 = [(MSSSharedLibraryCameraController *)self shareFromCameraEnabledForSpecifier:v10];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = [PSSpecifier groupSpecifierWithID:@"SharedLibraryAutoSelectionGroup"];
      v15 = PXLocalizedSharedLibraryString();
      [v14 setObject:v15 forKeyedSubscript:v8];

      [v5 addObject:v14];
      [v14 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      v16 = PXLocalizedSharedLibraryString();
      [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];
      v17 = v30 = v11;

      PXLocalizedSharedLibraryString();
      v18 = v31 = v6;
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

      LODWORD(v15) = PXPreferencesIsCameraAutoShareEnabled();
      [v17 setControllerLoadAction:"_enableCameraAutoShare:"];
      [v19 setControllerLoadAction:"_disableCameraAutoShare:"];
      if (v15)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      v21 = PSRadioGroupCheckedSpecifierKey;
      v22 = v20;
      [v14 setProperty:v22 forKey:v21];
      [v5 addObject:v17];
      [v5 addObject:v19];

      v23 = [PSSpecifier groupSpecifierWithID:@"shareAtHomeGroup"];
      v24 = PXLocalizedSharedLibraryString();
      [v23 setObject:v24 forKeyedSubscript:v8];

      [v5 addObject:v23];
      v25 = PXLocalizedSharedLibraryString();
      v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

      [v26 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:PSDefaultsKey];
      [v26 setObject:@"CameraShareFromHomeEnabled" forKeyedSubscript:PSKeyNameKey];
      [v26 setObject:&__kCFBooleanFalse forKeyedSubscript:v30];
      [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:v32];
      [v5 addObject:v26];

      v6 = v31;
    }

    v27 = [v5 copy];
    v28 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v27;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_setCameraAutoShareEnabled:(id)enabled enableAutoshare:(BOOL)autoshare
{
  PXPreferencesSetCameraAutoShareEnabled();

  [(MSSSharedLibraryCameraController *)self reloadSpecifiers];
}

- (id)shareFromCameraEnabledForSpecifier:(id)specifier
{
  IsCameraSharingEnabled = PXPreferencesIsCameraSharingEnabled();

  return [NSNumber numberWithBool:IsCameraSharingEnabled];
}

- (void)setShareFromCameraEnabled:(id)enabled forSpecifier:(id)specifier
{
  [enabled BOOLValue];
  PXPreferencesSetCameraSharingEnabled();

  [(MSSSharedLibraryCameraController *)self reloadSpecifiers];
}

@end