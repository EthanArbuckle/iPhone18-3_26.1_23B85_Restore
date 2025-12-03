@interface CameraVFRSettingsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraVFRSettingsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraVFRSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_65C0(@"CAM_AUTO_FPS_TITLE");
  [(CameraVFRSettingsController *)self setTitle:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"vfrGroupSpecifier"];
    v7 = sub_65C0(@"CAM_AUTO_FPS_VFR_RADIO_FOOTER");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v6 setProperty:@"vfrGroupSpecifier" forKey:PSIDKey];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v8 = sub_65C0(@"CAM_AUTO_FPS_VFR_OFF");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v10 = sub_65C0(@"CAM_AUTO_FPS_VFR_30");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v12 = sub_65C0(@"CAM_AUTO_FPS_VFR_30&60");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceVFRMode", @"com.apple.camera", 0);
    v15 = v9;
    if (AppIntegerValue)
    {
      if (AppIntegerValue == 2)
      {
        v15 = v13;
      }

      else
      {
        v16 = 0;
        v15 = v11;
        if (AppIntegerValue != 1)
        {
          goto LABEL_8;
        }
      }
    }

    v16 = v15;
LABEL_8:
    [v6 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];
    [v5 addObject:v6];
    [v5 addObject:v9];
    [v5 addObject:v11];
    [v5 addObject:v13];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v5];
    v17 = [v5 copy];
    v18 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v17;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CameraVFRSettingsController;
  [(CameraVFRSettingsController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraVFRSettingsController *)self specifierForID:@"vfrGroupSpecifier"];
  if (v7)
  {
    v8 = [(CameraVFRSettingsController *)self indexPathForSpecifier:v7];
    section = [v8 section];
  }

  else
  {
    section = -1;
  }

  if ([pathCopy section] == section)
  {
    v10 = [pathCopy row];
    if (v10 == &dword_0 + 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == &dword_0 + 1;
    }

    CFPreferencesSetAppValue(@"CAMUserPreferenceVFRMode", [NSNumber numberWithInteger:v11], @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }
}

@end