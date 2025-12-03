@interface CSDefaultCalendarController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CSDefaultCalendarController

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = CSDefaultCalendarController;
  [(CSDefaultCalendarController *)&v16 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/defaultCalendar"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Default Calendar" table:@"MobileCalSettings" locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:bundleURL2];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [(CSDefaultCalendarController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

@end