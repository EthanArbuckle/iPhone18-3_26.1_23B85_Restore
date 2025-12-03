@interface CSDurationForNewEventsController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CSDurationForNewEventsController

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = CSDurationForNewEventsController;
  [(CSDurationForNewEventsController *)&v16 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/durationForNewEvents"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Duration for New Events" table:@"MobileCalSettings" locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:bundleURL2];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [(CSDurationForNewEventsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];

  [CalDistributedNotificationCenter addObserver:self selector:"_defaultEventDurationChanged" name:CalFoundationPreferencesNotification_DefaultEventDuration];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSDurationForNewEventsController;
  [(CSDurationForNewEventsController *)&v4 viewDidDisappear:disappear];
  [CalDistributedNotificationCenter removeObserver:self name:CalFoundationPreferencesNotification_DefaultEventDuration];
}

@end