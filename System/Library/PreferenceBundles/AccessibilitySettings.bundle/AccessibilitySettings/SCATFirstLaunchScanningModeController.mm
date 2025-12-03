@interface SCATFirstLaunchScanningModeController
- (SCATFirstLaunchScanningModeController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATFirstLaunchScanningModeController

- (SCATFirstLaunchScanningModeController)init
{
  v8.receiver = self;
  v8.super_class = SCATFirstLaunchScanningModeController;
  v2 = [(SCATFirstLaunchScanningModeController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __45__SCATFirstLaunchScanningModeController_init__block_invoke;
    v5[3] = &unk_255388;
    objc_copyWeak(&v6, &location);
    [v3 registerUpdateBlock:v5 forRetrieveSelector:"switchControlFirstLaunchScanningMode" withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__SCATFirstLaunchScanningModeController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v37 = +[PSSpecifier emptyGroupSpecifier];
    v5 = +[NSMutableString string];
    v6 = +[NSMutableArray array];
    [v6 addObject:v37];
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 switchControlLocStringForFirstLaunchScanningMode:0];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"FIRST_LAUNCH_SCANNING_MODE_ITEM" forKey:PSIDKey];
    v36 = v9;
    [v9 setProperty:&off_27B610 forKey:@"ScanningMode"];
    v11 = AXParameterizedLocalizedString();
    v12 = [NSString stringWithFormat:@"%@", v11];
    v13 = v5;
    [v5 appendString:v12];

    [v6 addObject:v9];
    v14 = +[AXSettings sharedInstance];
    v15 = [v14 switchControlLocStringForFirstLaunchScanningMode:1];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:@"FIRST_LAUNCH_SCANNING_MODE_GLIDING_CURSOR" forKey:v10];
    [v16 setProperty:&off_27B628 forKey:@"ScanningMode"];
    v17 = AXParameterizedLocalizedString();
    v18 = [NSString stringWithFormat:@"\n\n%@", v17];
    v19 = v13;
    [v13 appendString:v18];

    [v6 addObject:v16];
    v20 = +[AXSettings sharedInstance];
    v21 = [v20 switchControlLocStringForFirstLaunchScanningMode:3];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v23 = v10;
    [v22 setProperty:@"FIRST_LAUNCH_SCANNING_MODE_HEAD_TRACKING" forKey:v10];
    [v22 setProperty:&off_27B640 forKey:@"ScanningMode"];
    v24 = AXParameterizedLocalizedString();
    v25 = [NSString stringWithFormat:@"\n\n%@", v24];
    v26 = v19;
    [v19 appendString:v25];

    [v6 addObject:v22];
    v27 = +[AXSettings sharedInstance];
    v28 = [v27 switchControlLocStringForFirstLaunchScanningMode:5];
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v29 setProperty:@"FIRST_LAUNCH_SCANNING_MODE_EYE_TRACKING" forKey:v23];
    [v29 setProperty:&off_27B658 forKey:@"ScanningMode"];
    v30 = AXParameterizedLocalizedString();
    v31 = [NSString stringWithFormat:@"\n\n%@", v30];
    [v26 appendString:v31];

    [v6 addObject:v29];
    v32 = [v26 copy];
    [v37 setProperty:v32 forKey:PSFooterTextGroupKey];

    v33 = [v6 copy];
    v34 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v33;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = SCATFirstLaunchScanningModeController;
  pathCopy = path;
  v7 = [(SCATFirstLaunchScanningModeController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATFirstLaunchScanningModeController *)self specifierAtIndexPath:pathCopy, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:@"ScanningMode"];
  integerValue = [v9 integerValue];

  v11 = +[AXSettings sharedInstance];
  [v7 setChecked:{objc_msgSend(v11, "switchControlFirstLaunchScanningMode") == integerValue}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = SCATFirstLaunchScanningModeController;
  pathCopy = path;
  [(SCATFirstLaunchScanningModeController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(SCATFirstLaunchScanningModeController *)self specifierAtIndexPath:pathCopy, v11.receiver, v11.super_class];
  v8 = [v7 propertyForKey:@"ScanningMode"];
  integerValue = [v8 integerValue];

  v10 = +[AXSettings sharedInstance];
  [v10 setSwitchControlFirstLaunchScanningMode:integerValue];

  [(SCATFirstLaunchScanningModeController *)self updateTableCheckedSelection:pathCopy];
}

@end