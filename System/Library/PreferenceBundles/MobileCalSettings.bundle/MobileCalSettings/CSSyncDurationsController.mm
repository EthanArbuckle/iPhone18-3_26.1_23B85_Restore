@interface CSSyncDurationsController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CSSyncDurationsController

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CSSyncDurationsController;
  [(CSSyncDurationsController *)&v17 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/syncDuration"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Sync Specifier Name" table:@"MobileCalSettings" locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:bundleURL2];

  v18 = v14;
  v15 = [NSArray arrayWithObjects:&v18 count:1];
  [(CSSyncDurationsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_syncDurationChanged" name:CDBPreferences_Notification_kCalPreferredDaysToSyncKey object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CSSyncDurationsController;
  [(CSSyncDurationsController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CDBPreferences_Notification_kCalPreferredDaysToSyncKey object:0];
}

@end