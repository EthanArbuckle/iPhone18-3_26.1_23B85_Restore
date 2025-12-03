@interface CSDefaultBirthdayAlarmsController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CSDefaultBirthdayAlarmsController

- (void)viewDidAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = CSDefaultBirthdayAlarmsController;
  [(CSDefaultBirthdayAlarmsController *)&v22 viewDidAppear:appear];
  v21 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/defaultAlertTimes/birthdaysDefaultAlertTimes"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"Birthday Calendar" table:@"MobileCalSettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v10 bundleURL:bundleURL2];

  v14 = [_NSLocalizedStringResource alloc];
  v15 = +[NSLocale currentLocale];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL3 = [v16 bundleURL];
  v18 = [v14 initWithKey:@"Default Alert Times" table:@"MobileCalSettings" locale:v15 bundleURL:bundleURL3];

  v23[0] = v13;
  v23[1] = v18;
  v19 = [NSArray arrayWithObjects:v23 count:2];
  [(CSDefaultBirthdayAlarmsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v8 localizedNavigationComponents:v19 deepLink:v21];

  v20 = +[NSNotificationCenter defaultCenter];
  [v20 addObserver:self selector:"_defaultBirthdaysAlarmChanged" name:EKEventStoreChangedNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CSDefaultBirthdayAlarmsController;
  [(CSDefaultBirthdayAlarmsController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:EKEventStoreChangedNotification object:0];
}

@end