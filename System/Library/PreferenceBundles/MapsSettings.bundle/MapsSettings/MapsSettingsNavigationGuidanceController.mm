@interface MapsSettingsNavigationGuidanceController
- (id)_pauseSpokenAudio:(id)a3;
- (id)_specifierIDForVoiceVolume:(id)a3;
- (id)_useHFP:(id)a3;
- (id)specifiers;
- (void)_setPauseSpokenAudio:(id)a3 specifier:(id)a4;
- (void)_setUseHFP:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MapsSettingsNavigationGuidanceController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MapsSettingsNavigationGuidanceController;
  [(MapsSettingsNavigationGuidanceController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Spoken Directions Label [Settings]" value:@"localized string not found" table:0];

  [(MapsSettingsNavigationGuidanceController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MapsSettingsNavigationGuidanceController;
  [(MapsSettingsNavigationGuidanceController *)&v9 viewDidAppear:a3];
  v4 = MapsSettingsSpokenDirectionsTitle();
  v5 = AppsSettingsTitle();
  v10[0] = v5;
  v6 = MapsSettingsRootTitle();
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps/NavigationGuidanceLinkPreferenceID"];
  [(MapsSettingsNavigationGuidanceController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v7 deepLink:v8];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = objc_alloc_init(NSMutableSet);
  v5 = *(&self->super + 1);
  *(&self->super + 1) = v4;

  v6 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v7 = [v6 localizedStringForKey:@"Voice Volume [Settings]" value:@"localized string not found" table:0];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v62 = v8;
  [v3 addObject:v8];
  v9 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v10 = [v9 localizedStringForKey:@"Voice Volume Soft [Settings]" value:@"localized string not found" table:0];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v12 = PSIDKey;
  [v11 setProperty:@"NavigationVoiceVolumeSoftID" forKey:PSIDKey];
  v13 = PSValueKey;
  [v11 setProperty:&off_8B608 forKey:PSValueKey];
  [v3 addObject:v11];
  [*(&self->super + 1) addObject:v11];
  v14 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v15 = [v14 localizedStringForKey:@"Voice Volume Normal [Settings]" value:@"localized string not found" table:0];
  v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v16 setProperty:@"NavigationVoiceVolumeNormalID" forKey:v12];
  [v16 setProperty:&off_8B620 forKey:v13];
  [v3 addObject:v16];
  [*(&self->super + 1) addObject:v16];
  v17 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v18 = [v17 localizedStringForKey:@"Voice Volume Loud [Settings]" value:@"localized string not found" table:0];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v60 = v12;
  [v19 setProperty:@"NavigationVoiceVolumeLoudID" forKey:v12];
  v64 = v13;
  [v19 setProperty:&off_8B638 forKey:v13];
  [v3 addObject:v19];
  [*(&self->super + 1) addObject:v19];
  v20 = [PSSpecifier groupSpecifierWithID:@"PauseSpokenAudioGroupID"];
  v63 = v3;
  [v3 addObject:v20];
  v21 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v22 = [v21 localizedStringForKey:@"Pause Spoken Audio Footer [Settings]" value:@"localized string not found" table:0];
  v61 = v20;
  v58 = PSFooterTextGroupKey;
  [v20 setProperty:v22 forKey:?];

  v23 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v24 = [v23 localizedStringForKey:@"Pause Spoken Audio Label [Settings]" value:@"localized string not found" table:0];
  v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"_setPauseSpokenAudio:specifier:" get:"_pauseSpokenAudio:" detail:0 cell:6 edit:0];

  if (qword_96D08 != -1)
  {
    sub_3B5AC();
  }

  v26 = [qword_96D00 path];
  v27 = _CFPreferencesCopyAppValueWithContainer();

  if (v27)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v27 BOOLValue];
      GEOConfigSetBOOL();
    }

    v28 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v28 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    BOOL = [v27 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v30 = BOOL;

  v31 = [NSNumber numberWithBool:v30];
  [v25 setProperty:v31 forKey:v64];

  v32 = PSAllowMultilineTitleKey;
  [v25 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v63 addObject:v25];
  v33 = [PSSpecifier groupSpecifierWithID:@"LockscreenSettingsGroupID"];
  [v63 addObject:v33];
  v34 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v35 = [v34 localizedStringForKey:@"Directions Wake Device Footer [Settings]" value:@"localized string not found" table:0];
  v59 = v33;
  [v33 setProperty:v35 forKey:v58];

  v36 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v37 = [v36 localizedStringForKey:@"Directions Wake Device Label [Settings]" value:@"localized string not found" table:0];
  v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"_setEnableScreenWakes:specifier:" get:"_enableScreenWakes:" detail:0 cell:6 edit:0];

  [v38 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v57 = v32;
  [v38 setProperty:&__kCFBooleanTrue forKey:v32];
  [v38 setProperty:@"NavigationPromptsUndimScreen" forKey:v60];
  [v38 setProperty:@"NavigationPromptsUndimScreen" forKey:v64];
  [v38 setProperty:GEODefaultsDomain() forKey:@"MapsSettingsSpecifierBundleID"];
  [v63 addObject:v38];
  v39 = [PSSpecifier groupSpecifierWithID:@"UseHFPWhenAvailableGroupSpec"];
  [v63 addObject:v39];
  v40 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v41 = [v40 localizedStringForKey:@"Directions on Radio Footer [Settings]" value:@"localized string not found" table:0];
  [v39 setProperty:v41 forKey:v58];

  v42 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v43 = [v42 localizedStringForKey:@"Directions on Radio Label [Settings]" value:@"localized string not found" table:0];
  v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:self set:"_setUseHFP:specifier:" get:"_useHFP:" detail:0 cell:6 edit:0];

  if (qword_96D08 != -1)
  {
    sub_3B5AC();
  }

  v45 = [qword_96D00 path];
  v46 = _CFPreferencesCopyAppValueWithContainer();

  if (v46)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v46 BOOLValue];
      GEOConfigSetBOOL();
    }

    v47 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v47 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    v48 = [v46 BOOLValue];
  }

  else
  {
    v48 = GEOConfigGetBOOL();
  }

  v49 = v48;

  v50 = [NSNumber numberWithBool:v49];
  [v44 setProperty:v50 forKey:v64];

  [v44 setProperty:&__kCFBooleanTrue forKey:v57];
  [v63 addObject:v44];
  [(MapsSettingsNavigationGuidanceController *)self setSpecifiers:v63];
  v51 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v52 = [v51 localizedStringForKey:@"Navigation Guidance" value:@"localized string not found" table:0];

  v53 = [NSNumber numberWithInteger:GEOConfigGetInteger()];
  v54 = [(MapsSettingsNavigationGuidanceController *)self _specifierIDForVoiceVolume:v53];
  v55 = [(MapsSettingsNavigationGuidanceController *)self specifierForID:v54];
  [v62 setProperty:v55 forKey:PSRadioGroupCheckedSpecifierKey];

  return v63;
}

- (id)_useHFP:(id)a3
{
  v3 = a3;
  if (qword_96D08 != -1)
  {
    sub_3B5AC();
  }

  v4 = [qword_96D00 path];
  v5 = _CFPreferencesCopyAppValueWithContainer();

  if (v5)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v5 BOOLValue];
      GEOConfigSetBOOL();
    }

    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v6 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    BOOL = [v5 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v8 = BOOL;

  v9 = [NSNumber numberWithBool:v8];

  return v9;
}

- (void)_setUseHFP:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_pauseSpokenAudio:(id)a3
{
  v3 = a3;
  if (qword_96D08 != -1)
  {
    sub_3B5AC();
  }

  v4 = [qword_96D00 path];
  v5 = _CFPreferencesCopyAppValueWithContainer();

  if (v5)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v5 BOOLValue];
      GEOConfigSetBOOL();
    }

    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v6 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    BOOL = [v5 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v8 = BOOL;

  v9 = [NSNumber numberWithBool:v8];

  return v9;
}

- (void)_setPauseSpokenAudio:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_specifierIDForVoiceVolume:(id)a3
{
  v3 = [a3 integerValue];
  v4 = @"NavigationVoiceVolumeNormalID";
  if (v3 == &dword_0 + 2)
  {
    v4 = @"NavigationVoiceVolumeLoudID";
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return @"NavigationVoiceVolumeSoftID";
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MapsSettingsNavigationGuidanceController;
  [(MapsSettingsNavigationGuidanceController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(MapsSettingsNavigationGuidanceController *)self indexForIndexPath:v6];
  v8 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndexedSubscript:v7];
  v9 = [v8 propertyForKey:PSValueKey];
  if ([*(&self->super + 1) containsObject:v8])
  {
    [MapsSettings setValue:v9 forDefaultsKey:@"NavVolumeSettingSpokenVoiceVolume" bundleID:0 syncToNano:0];
    [v6 row];
    GEOConfigSetInteger();
  }
}

@end