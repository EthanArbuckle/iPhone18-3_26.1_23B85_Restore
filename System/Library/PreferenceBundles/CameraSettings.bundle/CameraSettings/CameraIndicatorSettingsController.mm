@interface CameraIndicatorSettingsController
- (id)_createSpecifiers;
- (id)specifiers;
- (void)_addPhotoSpecifiers:(id)a3;
- (void)_addVideoSpecifiers:(id)a3;
- (void)viewDidLoad;
@end

@implementation CameraIndicatorSettingsController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CameraIndicatorSettingsController;
  [(CameraSettingsBaseController *)&v7 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_88E8;
  v16 = sub_88F8;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8900;
  v8[3] = &unk_2CA98;
  v11 = &v12;
  v4 = v3;
  v9 = v4;
  v10 = @"CAM_INDICATORS_TITLE";
  [&off_320C8 enumerateObjectsUsingBlock:v8];
  v5 = v10;
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  [(CameraIndicatorSettingsController *)self setTitle:v6];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CameraIndicatorSettingsController *)self _createSpecifiers];
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
  if (!+[CameraSettingsUtilities isIPad])
  {
    [(CameraIndicatorSettingsController *)self _addPhotoSpecifiers:v3];
  }

  [(CameraIndicatorSettingsController *)self _addVideoSpecifiers:v3];

  return v3;
}

- (void)_addPhotoSpecifiers:(id)a3
{
  v4 = a3;
  v7 = [(CameraSettingsBaseController *)self groupSpecifierWithTitle:@"CAM_INDICATORS_PHOTO_TITLE" footer:0 identifier:0];
  v5 = [(CameraSettingsBaseController *)self switchSpecifierWithLabel:@"CAM_INDICATORS_FLASH" key:CAMUserPreferenceAlwaysShowFlashIndicator defaultValue:CAMUserPreferenceAlwaysShowFlashIndicatorDefaultValue];
  v6 = [(CameraSettingsBaseController *)self switchSpecifierWithLabel:@"CAM_INDICATORS_LIVE_PHOTO" key:CAMUserPreferenceAlwaysShowLivePhotoIndicator defaultValue:CAMUserPreferenceAlwaysShowLivePhotoIndicatorDefaultValue];
  [v4 addObject:v7];
  [v4 addObject:v5];
  [v4 addObject:v6];
}

- (void)_addVideoSpecifiers:(id)a3
{
  v12 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[CameraSettingsBaseController capabilities];
  v6 = [v5 isActionModeControlSupported];

  if (v6)
  {
    v7 = [(CameraSettingsBaseController *)self switchSpecifierWithLabel:@"CAM_INDICATORS_ACTION_MODE" key:CAMUserPreferenceAlwaysShowActionModeIndicator defaultValue:CAMUserPreferenceAlwaysShowActionModeIndicatorDefaultValue];
    [v4 addObject:v7];
  }

  v8 = +[CameraSettingsBaseController capabilities];
  v9 = [v8 isFrontRearSimultaneousVideoSupported];

  if (v9)
  {
    v10 = [(CameraSettingsBaseController *)self switchSpecifierWithLabel:@"CAM_INDICATORS_FRSV" key:CAMUserPreferenceAlwaysShowFrontPIPIndicator defaultValue:CAMUserPreferenceAlwaysShowFrontPIPIndicatorDefaultValue];
    [v4 addObject:v10];
  }

  if ([v4 count])
  {
    v11 = [(CameraSettingsBaseController *)self groupSpecifierWithTitle:@"CAM_INDICATORS_VIDEO_TITLE" footer:0 identifier:0];
    [v12 addObject:v11];
    [v12 addObjectsFromArray:v4];
  }
}

@end