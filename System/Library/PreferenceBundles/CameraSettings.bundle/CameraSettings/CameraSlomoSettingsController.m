@interface CameraSlomoSettingsController
- (id)itemsFromParent;
- (void)emitNavigationEvent;
- (void)viewDidLoad;
@end

@implementation CameraSlomoSettingsController

- (id)itemsFromParent
{
  v5.receiver = self;
  v5.super_class = CameraSlomoSettingsController;
  v2 = [(CameraSlomoSettingsController *)&v5 itemsFromParent];
  v3 = [NSMutableArray arrayWithArray:v2];

  [v3 enumerateObjectsUsingBlock:&stru_2CE30];

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CameraSlomoSettingsController;
  [(CameraSlomoSettingsController *)&v7 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_14F40;
  v16 = sub_14F50;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_14F58;
  v8[3] = &unk_2CA98;
  v11 = &v12;
  v4 = v3;
  v9 = v4;
  v10 = @"CAM_RECORD_SLOMO_TITLE";
  [&off_32200 enumerateObjectsUsingBlock:v8];
  v5 = v10;
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  [(CameraSlomoSettingsController *)self setTitle:v6];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera/CameraSlomoSettingsList"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CAM_RECORD_SLOMO_TITLE" table:@"CameraSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CameraSlomoSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end