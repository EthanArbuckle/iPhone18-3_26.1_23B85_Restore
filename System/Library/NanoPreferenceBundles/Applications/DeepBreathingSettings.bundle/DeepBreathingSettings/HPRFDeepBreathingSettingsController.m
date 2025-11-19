@interface HPRFDeepBreathingSettingsController
- (HPRFDeepBreathingSettingsController)init;
- (id)applicationGroupSpecifiers;
- (id)getMuteForToday:(id)a3;
- (id)localizedPaneTitle;
- (id)notificationApplicationSpecifiers;
- (void)_mutePreferencesDidChange:(id)a3;
- (void)dealloc;
- (void)setMuteForToday:(id)a3;
- (void)viewDidLoad;
@end

@implementation HPRFDeepBreathingSettingsController

- (HPRFDeepBreathingSettingsController)init
{
  v6.receiver = self;
  v6.super_class = HPRFDeepBreathingSettingsController;
  v2 = [(HPRFDeepBreathingSettingsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(HPRFDeepBreathingSettingsController *)v2 localizedPaneTitle];
    [(HPRFDeepBreathingSettingsController *)v3 setTitle:v4];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HPRFDeepBreathingSettingsController;
  [(HPRFDeepBreathingSettingsController *)&v5 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, deepBreathingPreferencesDidChange, kNLDeepBreathingPreferencesChangedNotification, 0, 0);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_mutePreferencesDidChange:" name:BPSNotificationMuteSettingsMutedForTodayChangedNotification object:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFDeepBreathingSettingsController;
  [(HPRFDeepBreathingSettingsController *)&v4 dealloc];
}

- (void)_mutePreferencesDidChange:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Did receive %@; reloading specifiers", &v8, 0xCu);
  }

  [(HPRFDeepBreathingSettingsController *)self reloadSpecifiers];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_8298 table:@"DeepBreathingSettings"];

  return v3;
}

- (id)notificationApplicationSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"DeepBreathingSettings" inBundle:v3 target:self stringsTable:@"DeepBreathingSettings"];

  return v4;
}

- (id)applicationGroupSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"DeepBreathingGroupSettings" inBundle:v3 target:self stringsTable:@"DeepBreathingSettings"];

  return v4;
}

- (id)getMuteForToday:(id)a3
{
  v3 = +[BPSNotificationMuteSettingsManager sharedNotificationMuteSettingsManager];
  v4 = [v3 isMutedForTodaySectionIdentifier:@"com.apple.DeepBreathing"];

  return [NSNumber numberWithBool:v4];
}

- (void)setMuteForToday:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = [NSSet alloc];
  v9 = @"com.apple.DeepBreathing";
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [v4 initWithArray:v5];

  v7 = +[BPSNotificationMuteSettingsManager sharedNotificationMuteSettingsManager];
  v8 = v7;
  if (v3)
  {
    [v7 addSectionIdentifiers:v6];
  }

  else
  {
    [v7 removeSectionIdentifiers:v6];
  }
}

@end