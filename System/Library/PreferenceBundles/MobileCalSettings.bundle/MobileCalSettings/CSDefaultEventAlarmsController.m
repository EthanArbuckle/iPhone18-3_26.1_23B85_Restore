@interface CSDefaultEventAlarmsController
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CSDefaultEventAlarmsController

- (void)viewDidAppear:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = CSDefaultEventAlarmsController;
  [(CSDefaultEventAlarmsController *)&v21 viewDidAppear:a3];
  v20 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/defaultAlertTimes/timedEventsDefaultAlertTimes"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"Events" table:@"MobileCalSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v10 bundleURL:v12];

  v14 = [_NSLocalizedStringResource alloc];
  v15 = +[NSLocale currentLocale];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 bundleURL];
  v18 = [v14 initWithKey:@"Default Alert Times" table:@"MobileCalSettings" locale:v15 bundleURL:v17];

  v22[0] = v13;
  v22[1] = v18;
  v19 = [NSArray arrayWithObjects:v22 count:2];
  [(CSDefaultEventAlarmsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v8 localizedNavigationComponents:v19 deepLink:v20];

  [CalDistributedNotificationCenter addObserver:self selector:"_defaultAlarmChanged" name:kCalDefaultAlarmChangedNote];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDefaultEventAlarmsController;
  [(CSDefaultEventAlarmsController *)&v4 viewDidDisappear:a3];
  [CalDistributedNotificationCenter removeObserver:self name:kCalDefaultAlarmChangedNote];
}

@end