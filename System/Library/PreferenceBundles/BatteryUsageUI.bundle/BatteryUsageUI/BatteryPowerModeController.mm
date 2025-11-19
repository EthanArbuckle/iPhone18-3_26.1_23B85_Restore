@interface BatteryPowerModeController
- (BOOL)isBatterySaverModeEnabled;
- (BatteryPowerModeController)init;
- (id)getBatterySaverMode:(id)a3;
- (id)getIBLMNotificationsState:(id)a3;
- (id)getIBLMState:(id)a3;
- (id)specifiers;
- (void)_lowPowerModeChangedNotification:(id)a3;
- (void)dealloc;
- (void)setBatterySaverMode:(id)a3 withSpecifier:(id)a4;
- (void)setIBLMNotificationsState:(id)a3 withSpecifier:(id)a4;
- (void)setIBLMState:(id)a3 withSpecifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation BatteryPowerModeController

- (BatteryPowerModeController)init
{
  v7.receiver = self;
  v7.super_class = BatteryPowerModeController;
  v2 = [(BatteryPowerModeController *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryui.powermode", "");
    if (!v3)
    {
      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v5 = BatteryUILocalization(@"POWER_MODE_TITLE");
    }

    [(BatteryPowerModeController *)v2 setTitle:v5];
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BatteryPowerModeController;
  [(BatteryPowerModeController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = BatteryPowerModeController;
  [(BatteryPowerModeController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = BUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_114784(v3);
  }

  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = +[NSMutableArray array];
    v7 = [PSSpecifier groupSpecifierWithID:0];
    v8 = +[UIDevice currentDevice];
    v9 = [v8 sf_inRetailKioskMode];

    v10 = BUILogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1147C8(v10);
    }

    if (+[_OSIBLMState isIBLMSupported])
    {
      v27 = [PSSpecifier groupSpecifierWithID:0];
      v29 = v7;
      BatteryUILocalization(@"IBLM_TITLE");
      v11 = v28 = v9;
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setIBLMState:withSpecifier:" get:"getIBLMState:" detail:0 cell:6 edit:0];

      [v12 setIdentifier:@"IBLM_CELL_IDENTIFIER"];
      v13 = objc_opt_class();
      v14 = PSCellClassKey;
      [v12 setObject:v13 forKeyedSubscript:PSCellClassKey];
      v15 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      v16 = PSTableCellHeightKey;
      [v12 setObject:v15 forKeyedSubscript:PSTableCellHeightKey];

      v17 = BatteryUILocalization(@"IBLM_FOOTER_TEXT");
      [v27 setProperty:v17 forKey:PSFooterTextGroupKey];

      v18 = BatteryUILocalization(@"IBLM_NOTIFICATIONS_TITLE");
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setIBLMNotificationsState:withSpecifier:" get:"getIBLMNotificationsState:" detail:0 cell:6 edit:0];

      [v19 setIdentifier:@"IBLM_NOTIFICATIONS_IDENTIFIER"];
      [v19 setObject:objc_opt_class() forKeyedSubscript:v14];
      v20 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v19 setObject:v20 forKeyedSubscript:v16];

      v9 = v28;
      [v6 addObject:v27];
      [v6 addObject:v12];
      [v6 addObject:v19];

      v7 = v29;
    }

    if (!(v9 & 1 | ((+[PLModelingUtilities isLowPowerModeSupported]& 1) == 0)))
    {
      v21 = BatteryUILocalization(@"BATTERY_SAVER_MODE");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setBatterySaverMode:withSpecifier:" get:"getBatterySaverMode:" detail:0 cell:6 edit:0];

      [v22 setIdentifier:@"LOW_POWER_MODE_IDENTIFIER"];
      [v22 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v23 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v22 setObject:v23 forKeyedSubscript:PSTableCellHeightKey];

      v24 = +[PLBatteryUIUtilities localizedLPMFooterString];
      [v7 setProperty:v24 forKey:PSFooterTextGroupKey];
      [v6 addObject:v7];
      [v6 addObject:v22];
    }

    v25 = *&self->PSListItemsController_opaque[v4];
    *&self->PSListItemsController_opaque[v4] = v6;

    v5 = *&self->PSListItemsController_opaque[v4];
  }

  return v5;
}

- (id)getBatterySaverMode:(id)a3
{
  v3 = [(BatteryPowerModeController *)self isBatterySaverModeEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setBatterySaverMode:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  v6 = +[_PMLowPowerMode sharedInstance];
  v5 = [v4 intValue];

  [v6 setPowerMode:v5 != 0 fromSource:kPMLPMSourceSettings withCompletion:&stru_164FA8];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)_lowPowerModeChangedNotification:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3BBD8;
  v5[3] = &unk_163EB8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)getIBLMState:(id)a3
{
  v3 = +[_OSIBLMState sharedInstance];
  v4 = [v3 isIBLMCurrentlyEnabled];

  return [NSNumber numberWithBool:v4];
}

- (void)setIBLMState:(id)a3 withSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  AnalyticsSendEventLazy();
  v6 = +[_OSIBLMState sharedInstance];
  [v6 client:@"BatteryUI" setIBLMState:v5];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"POWER_MODE_CHANGE_NOTIFICATION_NAME" object:0];

  [(BatteryPowerModeController *)self reloadSpecifierID:@"IBLM_NOTIFICATIONS_IDENTIFIER" animated:1];
}

- (id)getIBLMNotificationsState:(id)a3
{
  v4 = a3;
  v5 = +[_OSIBLMState sharedInstance];
  v6 = [v5 isIBLMCurrentlyEnabled];

  v7 = [NSNumber numberWithBool:v6];
  [v4 setProperty:v7 forKey:PSEnabledKey];

  v8 = +[_OSIBLMState sharedInstance];
  v9 = [v8 isIBLMNotificationsCurrentlyEnabled];

  [(BatteryPowerModeController *)self animateSwitchSpecifier:v4 toState:v6 & v9];

  return [NSNumber numberWithBool:v6 & v9];
}

- (void)setIBLMNotificationsState:(id)a3 withSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[_OSIBLMState sharedInstance];
  [v5 client:@"BatteryUI" setIBLMNotificationsState:v4];
}

@end