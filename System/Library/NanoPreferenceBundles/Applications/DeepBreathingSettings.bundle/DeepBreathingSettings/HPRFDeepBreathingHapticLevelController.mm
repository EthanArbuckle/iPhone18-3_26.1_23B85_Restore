@interface HPRFDeepBreathingHapticLevelController
+ (id)deepBreathingHapticLevel;
- (HPRFDeepBreathingHapticLevelController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFDeepBreathingHapticLevelController

+ (id)deepBreathingHapticLevel
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HapticLevel", kNLDeepBreathingPreferencesDomain, &keyExistsAndHasValidFormat);
  v3 = 2;
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  v4 = @"PROMINENT_ID";
  if (v3 == 3)
  {
    v4 = @"MINIMAL_ID";
  }

  if (v3 == 1)
  {
    v5 = @"NONE_ID";
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_1668(v5);

  return v6;
}

- (HPRFDeepBreathingHapticLevelController)init
{
  v6.receiver = self;
  v6.super_class = HPRFDeepBreathingHapticLevelController;
  v2 = [(HPRFDeepBreathingHapticLevelController *)&v6 init];
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
  v4.super_class = HPRFDeepBreathingHapticLevelController;
  [(HPRFDeepBreathingHapticLevelController *)&v4 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, deepBreathingHapticLevelDidChange, kNLDeepBreathingPreferencesChangedNotification, 0, 0);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFDeepBreathingHapticLevelController;
  [(HPRFDeepBreathingHapticLevelController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_8298 table:@"DeepBreathingHapticLevel"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v24 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"DEEP_BREATHING_HAPTIC_LEVEL_GROUP_ID"];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v23 = v5;
    [v4 addObject:v5];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v30[0] = @"NONE_ID";
    v30[1] = @"MINIMAL_ID";
    v30[2] = @"PROMINENT_ID";
    v6 = [NSArray arrayWithObjects:v30 count:3];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = sub_1668(v11);
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setIdentifier:v11];
          [v4 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    v14 = *&self->BPSNotificationAppController_opaque[v24];
    *&self->BPSNotificationAppController_opaque[v24] = v4;
    v15 = v4;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HapticLevel", kNLDeepBreathingPreferencesDomain, &keyExistsAndHasValidFormat);
    v17 = 2;
    if (keyExistsAndHasValidFormat)
    {
      v17 = AppIntegerValue;
    }

    v18 = @"MINIMAL_ID";
    if (v17 != 3)
    {
      v18 = @"PROMINENT_ID";
    }

    if (v17 == 1)
    {
      v19 = @"NONE_ID";
    }

    else
    {
      v19 = v18;
    }

    v20 = [*&self->BPSNotificationAppController_opaque[v24] specifierForID:v19];

    [v23 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
    v21 = [(HPRFDeepBreathingHapticLevelController *)self localizedPaneTitle];
    [(HPRFDeepBreathingHapticLevelController *)self setTitle:v21];

    v3 = *&self->BPSNotificationAppController_opaque[v24];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HPRFDeepBreathingHapticLevelController *)self indexForIndexPath:v7];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v34[0] = @"NONE_ID";
  v34[1] = @"MINIMAL_ID";
  v34[2] = @"PROMINENT_ID";
  v10 = [NSArray arrayWithObjects:v34 count:3];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = v6;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v9 identifier];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          v18 = v15;
          if ([v18 isEqualToString:@"NONE_ID"])
          {
            v19 = 1;
            v6 = v27;
            v20 = &FIUIDeepBreathingReminderFrequencyOptions_ptr;
          }

          else
          {
            v6 = v27;
            v20 = &FIUIDeepBreathingReminderFrequencyOptions_ptr;
            if ([v18 isEqualToString:@"MINIMAL_ID"])
            {
              v19 = 3;
            }

            else
            {
              [v18 isEqualToString:@"PROMINENT_ID"];
              v19 = 2;
            }
          }

          v21 = [NSNumber numberWithInteger:v19];
          v22 = kNLDeepBreathingPreferencesDomain;
          CFPreferencesSetAppValue(@"HapticLevel", v21, kNLDeepBreathingPreferencesDomain);

          CFPreferencesAppSynchronize(v22);
          syncManager = self->_syncManager;
          v33 = @"HapticLevel";
          v10 = [v20[59] arrayWithObjects:&v33 count:1];
          v24 = [NSSet setWithArray:v10];
          [(NPSManager *)syncManager synchronizeUserDefaultsDomain:v22 keys:v24];

          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v6 = v27;
  }

LABEL_16:

  [(HPRFDeepBreathingHapticLevelController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v26 = [(HPRFDeepBreathingHapticLevelController *)self specifier];
  [WeakRetained reloadSpecifier:v26];

  v28.receiver = self;
  v28.super_class = HPRFDeepBreathingHapticLevelController;
  [(HPRFDeepBreathingHapticLevelController *)&v28 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(HPRFDeepBreathingHapticLevelController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end