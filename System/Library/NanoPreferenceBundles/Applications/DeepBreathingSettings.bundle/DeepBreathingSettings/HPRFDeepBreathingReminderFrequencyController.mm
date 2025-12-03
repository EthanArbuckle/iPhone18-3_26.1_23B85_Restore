@interface HPRFDeepBreathingReminderFrequencyController
+ (id)deepBreathingReminderFrequency;
+ (int64_t)_selectedReminderFrequency;
+ (int64_t)_selectedRemindersPerDay;
- (HPRFDeepBreathingReminderFrequencyController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HPRFDeepBreathingReminderFrequencyController

+ (id)deepBreathingReminderFrequency
{
  if (+[_HKBehavior activePairedWatchHasSmartFitnessCoaching])
  {
    _selectedRemindersPerDay = [self _selectedRemindersPerDay];
  }

  else
  {
    _selectedRemindersPerDay = [self _selectedReminderFrequency];
  }

  v4 = [NSNumber numberWithInteger:_selectedRemindersPerDay];
  v5 = [NSString stringWithFormat:@"%@", v4];
  v6 = sub_280C(v5, 1);

  return v6;
}

+ (int64_t)_selectedReminderFrequency
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReminderFrequency", kNLDeepBreathingPreferencesDomain, &keyExistsAndHasValidFormat);
  v3 = FIUIDeepBreathingReminderFrequencyOptions();
  v4 = [NSNumber numberWithInteger:AppIntegerValue];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 18000;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v6;
  }

  else
  {
    return 18000;
  }
}

+ (int64_t)_selectedRemindersPerDay
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RemindersPerDay", kNLDeepBreathingPreferencesDomain, &keyExistsAndHasValidFormat);
  v3 = FIUIDeepBreathingRemindersPerDayOptions();
  v4 = [NSNumber numberWithInteger:AppIntegerValue];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

- (HPRFDeepBreathingReminderFrequencyController)init
{
  v6.receiver = self;
  v6.super_class = HPRFDeepBreathingReminderFrequencyController;
  v2 = [(HPRFDeepBreathingReminderFrequencyController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HPRFDeepBreathingReminderFrequencyController;
  [(HPRFDeepBreathingReminderFrequencyController *)&v4 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, deepBreathingReminderFrequencyDidChange, kNLDeepBreathingPreferencesChangedNotification, 0, 0);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFDeepBreathingReminderFrequencyController;
  [(HPRFDeepBreathingReminderFrequencyController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DEEP_BREATHING_REMINDER_PANE_TITLE" value:&stru_8298 table:@"DeepBreathingReminderFrequency"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"DEEP_BREATHING_REMINDER_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v5 addObject:v6];
    v24 = v3;
    selfCopy = self;
    v23 = v6;
    if ((+[_HKBehavior activePairedWatchHasSmartFitnessCoaching]& 1) != 0)
    {
      FIUIDeepBreathingRemindersPerDayOptions();
    }

    else
    {
      FIUIDeepBreathingReminderFrequencyOptions();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [NSString stringWithFormat:@"%@", *(*(&v27 + 1) + 8 * i)];
          v12 = sub_280C(v11, 0);
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setIdentifier:v11];
          [v5 addObject:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&selfCopy->BPSNotificationAppController_opaque[v24], v5);
    v14 = +[_HKBehavior activePairedWatchHasSmartFitnessCoaching];
    v15 = objc_opt_class();
    if (v14)
    {
      _selectedRemindersPerDay = [v15 _selectedRemindersPerDay];
    }

    else
    {
      _selectedRemindersPerDay = [v15 _selectedReminderFrequency];
    }

    v17 = *&selfCopy->BPSNotificationAppController_opaque[v24];
    v18 = [NSNumber numberWithInteger:_selectedRemindersPerDay];
    v19 = [NSString stringWithFormat:@"%@", v18];
    v20 = [v17 specifierForID:v19];

    [v23 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
    localizedPaneTitle = [(HPRFDeepBreathingReminderFrequencyController *)selfCopy localizedPaneTitle];
    [(HPRFDeepBreathingReminderFrequencyController *)selfCopy setTitle:localizedPaneTitle];

    v4 = *&selfCopy->BPSNotificationAppController_opaque[v24];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HPRFDeepBreathingReminderFrequencyController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  if (!+[_HKBehavior activePairedWatchHasSmartFitnessCoaching])
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    obj = FIUIDeepBreathingReminderFrequencyOptions();
    v19 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      selfCopy2 = self;
      v35 = pathCopy;
      v36 = viewCopy;
      v21 = *v40;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v23 = [NSString stringWithFormat:@"%@", v14];
          identifier = [v9 identifier];
          v25 = [v23 isEqualToString:identifier];

          if (v25)
          {
            v27 = kNLDeepBreathingPreferencesDomain;
            v26 = @"ReminderFrequency";
LABEL_23:
            CFPreferencesSetAppValue(v26, v14, v27);
            v18 = 0;
            goto LABEL_24;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
        v18 = 1;
        if (v20)
        {
          continue;
        }

        goto LABEL_19;
      }
    }

LABEL_20:
    v26 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  v45 = 0uLL;
  v46 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  obj = FIUIDeepBreathingRemindersPerDayOptions();
  v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  selfCopy2 = self;
  v35 = pathCopy;
  v36 = viewCopy;
  v12 = *v44;
  while (2)
  {
    for (j = 0; j != v11; j = j + 1)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v43 + 1) + 8 * j);
      v15 = [NSString stringWithFormat:@"%@", v14];
      identifier2 = [v9 identifier];
      v17 = [v15 isEqualToString:identifier2];

      if (v17)
      {
        v27 = kNLDeepBreathingPreferencesDomain;
        v26 = @"RemindersPerDay";
        goto LABEL_23;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    v18 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_19:
  v26 = 0;
LABEL_24:
  pathCopy = v35;
  viewCopy = v36;
  self = selfCopy2;
LABEL_25:

  if ((v18 & 1) == 0)
  {
    v28 = kNLDeepBreathingPreferencesDomain;
    CFPreferencesAppSynchronize(kNLDeepBreathingPreferencesDomain);
    syncManager = self->_syncManager;
    v47 = v26;
    v30 = [NSArray arrayWithObjects:&v47 count:1];
    v31 = [NSSet setWithArray:v30];
    [(NPSManager *)syncManager synchronizeUserDefaultsDomain:v28 keys:v31];
  }

  [(HPRFDeepBreathingReminderFrequencyController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(HPRFDeepBreathingReminderFrequencyController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v38.receiver = self;
  v38.super_class = HPRFDeepBreathingReminderFrequencyController;
  [(HPRFDeepBreathingReminderFrequencyController *)&v38 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFDeepBreathingReminderFrequencyController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end