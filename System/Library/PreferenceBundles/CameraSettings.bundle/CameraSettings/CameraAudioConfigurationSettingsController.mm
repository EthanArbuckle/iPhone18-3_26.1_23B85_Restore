@interface CameraAudioConfigurationSettingsController
+ (id)titleForSelectedAudioConfiguration;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraAudioConfigurationSettingsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraAudioConfigurationSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_DD30(@"CAM_AUDIO_CONFIGURATION_TITLE");
  [(CameraAudioConfigurationSettingsController *)self setTitle:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_23;
  }

  v5 = +[CameraSettingsBaseController capabilities];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [PSSpecifier groupSpecifierWithID:@"AudioConfigurationGroupSpecifierID"];
  [v7 setProperty:@"AudioConfigurationGroupSpecifierID" forKey:PSIDKey];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v8 = sub_DD30(@"CAM_AUDIO_CONFIGURATION_CINEMATIC");
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v10 = PSValueKey;
  [v9 setProperty:&off_323C8 forKey:PSValueKey];
  v11 = sub_DD30(@"CAM_AUDIO_CONFIGURATION_STEREO");
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v12 setProperty:&off_323E0 forKey:v10];
  v13 = sub_DD30(@"CAM_AUDIO_CONFIGURATION_MONO");
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setProperty:&off_323F8 forKey:v10];
  [v6 addObject:v7];
  if ([v5 isCinematicAudioSupported])
  {
    [v6 addObject:v9];
  }

  if ([v5 isStereoAudioRecordingSupported])
  {
    [v6 addObject:v12];
  }

  [v6 addObject:v14];
  if ([v5 isCinematicAudioSupported])
  {
    if ([v5 isCinematicModeSupported])
    {
      v15 = @"CAM_AUDIO_CONFIGURATION_CINEMATIC_FOOTER";
    }

    else
    {
      v15 = @"CAM_AUDIO_CONFIGURATION_NO_CINEMATIC_FOOTER";
    }

    v16 = sub_DD30(v15);
    [v7 setProperty:v16 forKey:PSFooterTextGroupKey];
  }

  v17 = [objc_opt_class() selectedAudioConfigurationForCapabilities:v5];
  v18 = v17;
  v19 = v14;
  if (v17 == &dword_0 + 1)
  {
    goto LABEL_16;
  }

  if (v17 == &dword_0 + 3)
  {
    v19 = v9;
    goto LABEL_16;
  }

  v19 = v12;
  if (v17 == &dword_0 + 2)
  {
LABEL_16:
    v20 = v19;
    goto LABEL_17;
  }

  v20 = 0;
LABEL_17:
  [v7 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
  v38 = v14;
  v39 = v9;
  if ([v5 isMixAudioWithOthersSupported])
  {
    v21 = v20;
    [PSSpecifier groupSpecifierWithID:@"AllowAudioPlaybackGroupID"];
    v22 = v37 = v7;
    v23 = sub_DD30(@"CAM_VIDEO_RECORDING_MIX_AUDIO_WITH_OTHERS_FOOTER");
    [v22 setProperty:v23 forKey:PSFooterTextGroupKey];

    sub_DD30(@"CAM_VIDEO_RECORDING_MIX_AUDIO_WITH_OTHERS_TITLE");
    v25 = v24 = v12;
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v12 = v24;
    v20 = v21;
    v14 = v38;
    [v26 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v26 setObject:CAMUserPreferenceMixAudioWithOthers forKeyedSubscript:PSKeyNameKey];
    [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v26 setIdentifier:@"CAM_VIDEO_RECORDING_MIX_AUDIO_WITH_OTHERS"];
    [v6 addObject:v22];
    [v6 addObject:v26];

    v9 = v39;
    v7 = v37;
  }

  isWindRemovalSupported = [v5 isWindRemovalSupported];
  if (v18 != &dword_0 + 1 && isWindRemovalSupported)
  {
    v28 = v20;
    v29 = [PSSpecifier groupSpecifierWithID:@"WindRemovalGroupSpecifierID"];
    v30 = sub_DD30(@"CAM_AUDIO_WIND_REMOVAL_FOOTER");
    [v29 setProperty:v30 forKey:PSFooterTextGroupKey];

    sub_DD30(@"CAM_AUDIO_WIND_REMOVAL_TITLE");
    v32 = v31 = v12;
    v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v12 = v31;
    v20 = v28;
    v14 = v38;
    [v33 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v33 setObject:CAMUserPreferenceAudioWindRemoval forKeyedSubscript:PSKeyNameKey];
    [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v33 setIdentifier:@"CAM_AUDIO_WIND_REMOVAL"];
    [v6 addObject:v29];
    [v6 addObject:v33];

    v9 = v39;
  }

  [objc_opt_class() allowMultilineTitlesForSpecifiers:v6];
  v34 = [v6 copy];
  v35 = *&self->super.PSListController_opaque[v3];
  *&self->super.PSListController_opaque[v3] = v34;

  v4 = *&self->super.PSListController_opaque[v3];
LABEL_23:

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CameraAudioConfigurationSettingsController;
  [(CameraAudioConfigurationSettingsController *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraAudioConfigurationSettingsController *)self specifierForID:@"AudioConfigurationGroupSpecifierID"];
  if (v7)
  {
    v8 = [(CameraAudioConfigurationSettingsController *)self indexPathForSpecifier:v7];
    section = [v8 section];
  }

  else
  {
    section = -1;
  }

  if ([pathCopy section] == section)
  {
    v10 = [(CameraAudioConfigurationSettingsController *)self specifierAtIndexPath:pathCopy];
    v11 = [v10 propertyForKey:PSValueKey];
    integerValue = [v11 integerValue];
    CFPreferencesSetAppValue(CAMUserPreferenceAudioConfiguration, [NSNumber numberWithUnsignedInteger:integerValue], @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
    [(CameraSettingsBaseController *)self reloadSpecifiers];
  }
}

+ (id)titleForSelectedAudioConfiguration
{
  v2 = +[CameraSettingsBaseController capabilities];
  v3 = [objc_opt_class() selectedAudioConfigurationForCapabilities:v2] - 1;
  if (v3 > 2)
  {
    v4 = &stru_2DB58;
  }

  else
  {
    v4 = sub_DD30(off_2CDD0[v3]);
  }

  return v4;
}

@end