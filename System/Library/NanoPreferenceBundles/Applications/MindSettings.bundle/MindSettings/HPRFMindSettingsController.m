@interface HPRFMindSettingsController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (HPRFMindSettingsController)init;
- (id)_customReminderSpecifiers;
- (id)_subtitleForCustomReminder:(id)a3;
- (id)applicationGroupSpecifiers;
- (id)getGuidedMeditationPrefetchEnabled:(id)a3;
- (id)getMuteForToday:(id)a3;
- (id)localizedPaneTitle;
- (id)notificationApplicationSpecifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addReminderTapped;
- (void)_manageStateOfMindSettings;
- (void)_mutePreferencesDidChange:(id)a3;
- (void)_reminderTapped:(id)a3;
- (void)_remindersDidChange:(id)a3;
- (void)dealloc;
- (void)setGuidedMeditationPrefetchEnabled:(id)a3 specifier:(id)a4;
- (void)setMuteForToday:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation HPRFMindSettingsController

- (HPRFMindSettingsController)init
{
  v6.receiver = self;
  v6.super_class = HPRFMindSettingsController;
  v2 = [(HPRFMindSettingsController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FIMindfulnessCustomReminderProvider);
    customReminderProvider = v2->_customReminderProvider;
    v2->_customReminderProvider = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = HPRFMindSettingsController;
  [(HPRFMindSettingsController *)&v18 viewDidLoad];
  v3 = [(HPRFMindSettingsController *)self localizedPaneTitle];
  [(HPRFMindSettingsController *)self setTitle:v3];

  objc_initWeak(&location, self);
  v4 = kNLMindPreferencesChangedNotification;
  v5 = &_dispatch_main_q;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_214C;
  v15 = &unk_18A70;
  objc_copyWeak(&v16, &location);
  notify_register_dispatch(v4, &self->_notifyToken, &_dispatch_main_q, &v12);

  v6 = objc_alloc_init(HPRFSeymourSubscriptionProvider);
  seymourSubscriptionProvider = self->_seymourSubscriptionProvider;
  self->_seymourSubscriptionProvider = v6;

  self->_isSubscribed = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_21F0, @"GuidedMeditationPreferencesChangedNotification", 0, 0);
  v9 = [NSNotificationCenter defaultCenter:v12];
  [v9 addObserver:self selector:"_mutePreferencesDidChange:" name:BPSNotificationMuteSettingsMutedForTodayChangedNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[HPRFMindReminderViewController remindersDidChangeNotification];
  [v10 addObserver:self selector:"_remindersDidChange:" name:v11 object:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = HPRFMindSettingsController;
  [(HPRFMindSettingsController *)&v5 dealloc];
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

  [(HPRFMindSettingsController *)self reloadSpecifiers];
}

- (void)_remindersDidChange:(id)a3
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

  [(HPRFMindSettingsController *)self reloadSpecifiers];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_19170 table:@"MindSettings"];

  return v3;
}

- (id)notificationApplicationSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"MindReminderSettings" inBundle:v4 target:self stringsTable:@"MindSettings"];

  [v3 addObjectsFromArray:v5];
  v6 = [(HPRFMindSettingsController *)self _customReminderSpecifiers];
  [v3 addObjectsFromArray:v6];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ADD_REMINDER_LABEL" value:&stru_19170 table:@"MindSettings"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v9 setButtonAction:"_addReminderTapped"];
  [v3 addObject:v9];
  if (_os_feature_enabled_impl())
  {
    v10 = [PSSpecifier preferenceSpecifierNamed:&stru_19170 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v3 addObject:v10];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"MANAGE_STATE_OF_MIND_LABEL" value:&stru_19170 table:@"MindSettings-Chamomile"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v13 setIdentifier:@"ManageStateOfMindSettings"];
    [v13 setButtonAction:"_manageStateOfMindSettings"];
    [v13 setAccessibilityIdentifier:@"ManageStateOfMindSettingsButton"];
    [v3 addObject:v13];
  }

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"MindNotificationSettings" inBundle:v14 target:self stringsTable:@"MindSettings"];

  [v3 addObjectsFromArray:v15];

  return v3;
}

- (id)applicationGroupSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"MindAppSettings" inBundle:v3 target:self stringsTable:@"MindSettings"];
  v5 = [v4 mutableCopy];

  LODWORD(v4) = self->_isSubscribed;
  v6 = [v5 specifierForID:@"GUIDED_MEDITATION_PREFETCH_FOOTER_ID"];
  if (v4 == 1)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"GUIDED_MEDITATION_PREFETCH_FOOTER" value:&stru_19170 table:@"MindSettings-Huckleberry"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"GUIDED_MEDITATION_PREFETCH_TITLE" value:&stru_19170 table:@"MindSettings-Huckleberry"];
    [v6 setName:v10];

    v11 = [v5 specifierForID:@"GUIDED_MEDITATION_PREFETCH_LABEL_ID"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"GUIDED_MEDITATION_PREFETCH_LABEL" value:&stru_19170 table:@"MindSettings-Huckleberry"];
    [v11 setName:v13];

    [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  }

  else
  {
    [v5 removeObject:v6];

    v6 = [v5 specifierForID:@"GUIDED_MEDITATION_PREFETCH_LABEL_ID"];
    [v5 removeObject:v6];
  }

  return v5;
}

- (id)getGuidedMeditationPrefetchEnabled:(id)a3
{
  v3 = FIUIIsGuidedMeditationPrefetchEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setGuidedMeditationPrefetchEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  _FIUISetGuidedMeditationPrefetchEnabled(v4);
}

- (id)getMuteForToday:(id)a3
{
  v3 = +[BPSNotificationMuteSettingsManager sharedNotificationMuteSettingsManager];
  v4 = [v3 isMutedForTodaySectionIdentifier:@"com.apple.Mind"];

  return [NSNumber numberWithBool:v4];
}

- (void)setMuteForToday:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = [NSSet alloc];
  v9 = @"com.apple.Mind";
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

- (void)_addReminderTapped
{
  _HKInitializeLogging();
  v3 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Adding new reminder", v6, 2u);
  }

  v4 = [[HPRFMindReminderViewController alloc] initWithReminderProvider:self->_customReminderProvider currentReminder:0];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [(HPRFMindSettingsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_reminderTapped:(id)a3
{
  v4 = [a3 propertyForKey:@"HPRFMindSubtitleCellReminderSpecifierKey"];
  _HKInitializeLogging();
  v5 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Editing reminder %@", &v9, 0xCu);
  }

  v6 = [[HPRFMindReminderViewController alloc] initWithReminderProvider:self->_customReminderProvider currentReminder:v4];
  v7 = [[UINavigationController alloc] initWithRootViewController:v6];
  v8 = [(HPRFMindSettingsController *)self navigationController];
  [v8 presentViewController:v7 animated:1 completion:0];
}

- (void)_manageStateOfMindSettings
{
  v3 = +[_TtC12MindSettings18MindfulnessRouting HPRFMindfulnessRoutingStateOfMindOptionsRoute];
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:v3 withCompletionHandler:&stru_18AD8];
}

- (id)_customReminderSpecifiers
{
  v3 = [(FIMindfulnessCustomReminderProvider *)self->_customReminderProvider reminders];
  v4 = [v3 allObjects];

  v5 = [v4 sortedArrayUsingComparator:&stru_18B18];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_33A4;
  v11[3] = &unk_18B40;
  v11[4] = self;
  v6 = [v5 hk_map:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = v8;

  return v8;
}

- (id)_subtitleForCustomReminder:(id)a3
{
  v3 = a3;
  if ([v3 enabled])
  {
    if ([v3 customWeekdaySelection])
    {
      [v3 customWeekdaySelection];
      v4 = +[NSCalendar currentCalendar];
      v5 = FIUIMindfulnessLocalizedWeekdaySelection();
      goto LABEL_7;
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v6;
    v7 = @"REMINDER_NON_REPEATING_LABEL";
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v6;
    v7 = @"REMINDER_OFF_LABEL";
  }

  v5 = [v6 localizedStringForKey:v7 value:&stru_19170 table:@"MindSettings"];
LABEL_7:
  v8 = v5;

  return v8;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(HPRFMindSettingsController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:@"HPRFMindSubtitleCellReminderSpecifierKey"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(HPRFMindSettingsController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:@"HPRFMindSubtitleCellReminderSpecifierKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v12 = [(HPRFMindSettingsController *)self specifierAtIndexPath:a5];
    v7 = [v12 objectForKeyedSubscript:@"HPRFMindSubtitleCellReminderSpecifierKey"];
    if (v7)
    {
      self->_shouldSkipNextReload = 1;
      v8 = [(FIMindfulnessCustomReminderProvider *)self->_customReminderProvider reminders];
      v9 = [v8 mutableCopy];

      [v9 removeObject:v7];
      customReminderProvider = self->_customReminderProvider;
      v11 = [v9 copy];
      [(FIMindfulnessCustomReminderProvider *)customReminderProvider updateReminders:v11];

      [(HPRFMindSettingsController *)self removeSpecifier:v12 animated:1];
    }
  }
}

@end