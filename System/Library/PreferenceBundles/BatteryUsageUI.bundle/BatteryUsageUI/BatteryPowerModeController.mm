@interface BatteryPowerModeController
- (BOOL)isBatterySaverModeEnabled;
- (BatteryPowerModeController)init;
- (id)getBatterySaverMode:(id)mode;
- (id)getIBLMNotificationsState:(id)state;
- (id)getIBLMState:(id)state;
- (id)specifiers;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)dealloc;
- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier;
- (void)setIBLMNotificationsState:(id)state withSpecifier:(id)specifier;
- (void)setIBLMState:(id)state withSpecifier:(id)specifier;
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
    sf_inRetailKioskMode = [v8 sf_inRetailKioskMode];

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
      v11 = v28 = sf_inRetailKioskMode;
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

      sf_inRetailKioskMode = v28;
      [v6 addObject:v27];
      [v6 addObject:v12];
      [v6 addObject:v19];

      v7 = v29;
    }

    if (!(sf_inRetailKioskMode & 1 | ((+[PLModelingUtilities isLowPowerModeSupported]& 1) == 0)))
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

- (id)getBatterySaverMode:(id)mode
{
  isBatterySaverModeEnabled = [(BatteryPowerModeController *)self isBatterySaverModeEnabled];

  return [NSNumber numberWithBool:isBatterySaverModeEnabled];
}

- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier
{
  modeCopy = mode;
  v6 = +[_PMLowPowerMode sharedInstance];
  intValue = [modeCopy intValue];

  [v6 setPowerMode:intValue != 0 fromSource:kPMLPMSourceSettings withCompletion:&stru_164FA8];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3BBD8;
  v5[3] = &unk_163EB8;
  notificationCopy = notification;
  selfCopy = self;
  v4 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)getIBLMState:(id)state
{
  v3 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v3 isIBLMCurrentlyEnabled];

  return [NSNumber numberWithBool:isIBLMCurrentlyEnabled];
}

- (void)setIBLMState:(id)state withSpecifier:(id)specifier
{
  bOOLValue = [state BOOLValue];
  AnalyticsSendEventLazy();
  v6 = +[_OSIBLMState sharedInstance];
  [v6 client:@"BatteryUI" setIBLMState:bOOLValue];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"POWER_MODE_CHANGE_NOTIFICATION_NAME" object:0];

  [(BatteryPowerModeController *)self reloadSpecifierID:@"IBLM_NOTIFICATIONS_IDENTIFIER" animated:1];
}

- (id)getIBLMNotificationsState:(id)state
{
  stateCopy = state;
  v5 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v5 isIBLMCurrentlyEnabled];

  v7 = [NSNumber numberWithBool:isIBLMCurrentlyEnabled];
  [stateCopy setProperty:v7 forKey:PSEnabledKey];

  v8 = +[_OSIBLMState sharedInstance];
  isIBLMNotificationsCurrentlyEnabled = [v8 isIBLMNotificationsCurrentlyEnabled];

  [(BatteryPowerModeController *)self animateSwitchSpecifier:stateCopy toState:isIBLMCurrentlyEnabled & isIBLMNotificationsCurrentlyEnabled];

  return [NSNumber numberWithBool:isIBLMCurrentlyEnabled & isIBLMNotificationsCurrentlyEnabled];
}

- (void)setIBLMNotificationsState:(id)state withSpecifier:(id)specifier
{
  bOOLValue = [state BOOLValue];
  v5 = +[_OSIBLMState sharedInstance];
  [v5 client:@"BatteryUI" setIBLMNotificationsState:bOOLValue];
}

@end