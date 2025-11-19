@interface MONotificationsSettingsController
+ (id)notificationSettingsBundle;
- (MONotificationsSettingsController)init;
- (id)createCustomScheduleSpecifiers;
- (id)defaultJournalApp:(id)a3;
- (id)defaultJournalingAppSpecifier;
- (id)getLegacyMomentsdSchedule;
- (id)getLegacyMomentsdScheduleType;
- (id)notificationCustomTime:(id)a3;
- (id)specifiers;
- (void)previousScheduleDefaults;
- (void)saveDataIfNeeded;
- (void)setDefaultJournalApp:(id)a3 specifier:(id)a4;
- (void)setNotificationCustomScheduleDays:(id)a3 specifier:(id)a4;
- (void)setNotificationCustomTime:(id)a3 specifier:(id)a4;
- (void)setNotificationScheduleOptionsSetting:(id)a3 specifier:(id)a4;
@end

@implementation MONotificationsSettingsController

- (MONotificationsSettingsController)init
{
  v13.receiver = self;
  v13.super_class = MONotificationsSettingsController;
  v2 = [(MONotificationsSettingsController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MONotificationsSettingsController *)v2 momentsUIService];

    if (!v4)
    {
      v5 = objc_alloc_init(_TtC9MomentsUI26ProcessingServerConnection);
      [(MONotificationsSettingsController *)v3 setMomentsUIService:v5];
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("NotificationSettings", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    [(MONotificationsSettingsController *)v3 setNoEligibleApps:0];
    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.momentsui"];
    [(MONotificationsSettingsController *)v3 setUserDefaults:v9];

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.momentsd"];
    [(MONotificationsSettingsController *)v3 setMomentsdUserDefaults:v10];

    v11 = [(MONotificationsSettingsController *)v3 createCustomScheduleSpecifiers];
    [(MONotificationsSettingsController *)v3 setCustomScheduleSpecifiers:v11];

    [(MONotificationsSettingsController *)v3 setNeedsSaveSchedule:0];
    [(MONotificationsSettingsController *)v3 previousScheduleDefaults];
  }

  return v3;
}

- (void)previousScheduleDefaults
{
  v3 = [(MONotificationsSettingsController *)self userDefaults];
  v19 = [v3 objectForKey:@"NotificationScheduleType"];

  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v19;
  }

  else
  {
    v5 = [(MONotificationsSettingsController *)self getLegacyMomentsdScheduleType];

    v4 = v5;
  }

  v20 = v4;
  [(MONotificationsSettingsController *)self setScheduleType:?];
  v6 = [(MONotificationsSettingsController *)self scheduleType];
  v7 = [v6 intValue];

  if (v7 == 2)
  {
    v8 = [(MONotificationsSettingsController *)self userDefaults];
    v9 = [v8 objectForKey:@"NotificationScheduleDayArray"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = [(MONotificationsSettingsController *)self getLegacyMomentsdSchedule];
      v11 = [v10 weekdays];
      if (v11)
      {
        v12 = [v10 weekdays];
      }

      else
      {
        v12 = &__NSArray0__struct;
      }

      v9 = v12;
    }

    [(MONotificationsSettingsController *)self setScheduledDays:v9];
    v13 = [(MONotificationsSettingsController *)self userDefaults];
    v14 = [v13 objectForKey:@"NotificationScheduleHour"];

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !v10)
      {
LABEL_20:
        [(MONotificationsSettingsController *)self setScheduledHour:v14];
        v16 = [(MONotificationsSettingsController *)self userDefaults];
        v17 = [v16 objectForKey:@"NotificationScheduleMinute"];

        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || !v10)
          {
            goto LABEL_27;
          }
        }

        else if (!v10)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v18 = [v10 minute];

        v17 = v18;
LABEL_27:
        [(MONotificationsSettingsController *)self setScheduledMinute:v17];

        goto LABEL_28;
      }
    }

    else if (!v10)
    {
      v14 = 0;
      goto LABEL_20;
    }

    v15 = [v10 hour];

    v14 = v15;
    goto LABEL_20;
  }

LABEL_28:
}

void __52__MONotificationsSettingsController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained momentsUIService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __52__MONotificationsSettingsController_viewWillAppear___block_invoke_2;
  v5[3] = &unk_C4F8;
  v4 = *(a1 + 32);
  v5[4] = WeakRetained;
  v5[5] = v4;
  [v3 getAuthorizedAppsForNotificationServicingWithHandler:v5];
}

void __52__MONotificationsSettingsController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52__MONotificationsSettingsController_viewWillAppear___block_invoke_3;
    block[3] = &unk_C4D0;
    block[4] = *(a1 + 32);
    v7 = v5;
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void __52__MONotificationsSettingsController_viewWillAppear___block_invoke_3(id *a1)
{
  v2 = [a1[5] applications];
  [a1[4] setOrderedDefaultApplications:v2];

  v3 = [a1[5] applications];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [a1[5] applications];
    v6 = [v5 count];

    if (v6 < 2)
    {
      return;
    }
  }

  else
  {
    [a1[6] setNoEligibleApps:1];
  }

  v7 = a1[4];

  [v7 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_22;
  }

  v5 = objc_opt_new();
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = +[MONotificationsSettingsController notificationSettingsBundle];
  v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_SCHEDULE_OPTION_GROUP_ID"];
  [v5 addObject:v9];
  if (!v7)
  {
    if ([(MONotificationsSettingsController *)self noEligibleApps])
    {
      v10 = @"To receive notifications, you’ll need to redownload Journal from the App Store, or use another journaling app configured for Journaling Suggestions notifications.";
    }

    else
    {
      v11 = [(MONotificationsSettingsController *)self scheduleType];
      v12 = [v11 intValue];

      if (v12 == 1)
      {
        v10 = @"Your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }

      else
      {
        v13 = [(MONotificationsSettingsController *)self scheduleType];
        v14 = [v13 intValue];

        if (v14)
        {
          v15 = &stru_C5D8;
LABEL_11:
          [v9 setProperty:v15 forKey:PSFooterTextGroupKey];

          goto LABEL_12;
        }

        v10 = @"Choose the smart schedule, and your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }
    }

    v15 = [v8 localizedStringForKey:v10 value:&stru_C5D8 table:0];
    goto LABEL_11;
  }

LABEL_12:
  v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setNotificationScheduleOptionsSetting:specifier:" get:"notificationScheduleOptionSetting:" detail:0 cell:-1 edit:0];
  v17 = objc_opt_new();
  [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if ([(MONotificationsSettingsController *)self noEligibleApps])
  {
    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:@"disableScheduleSetting"];
    [v16 setUserInfo:v17];
  }

  [v16 setIdentifier:@"NOTIFICATION_SCHEDULE_OPTIONS_CELL"];
  [v5 addObject:v16];
  v18 = [(MONotificationsSettingsController *)self scheduleType];
  if ([v18 intValue] == 2)
  {
    v19 = [(MONotificationsSettingsController *)self noEligibleApps];

    if (v19)
    {
      goto LABEL_18;
    }

    v18 = [(MONotificationsSettingsController *)self customScheduleSpecifiers];
    [v5 addObjectsFromArray:v18];
  }

LABEL_18:
  if (![(MONotificationsSettingsController *)self noEligibleApps])
  {
    v20 = [(MONotificationsSettingsController *)self orderedDefaultApplications];
    v21 = [v20 count];

    if (v21 >= 2)
    {
      v22 = [PSSpecifier groupSpecifierWithID:@"PREFERRED_JOURNAL_APP_GROUP"];
      [v22 setTarget:self];
      [v5 addObject:v22];
      v23 = [(MONotificationsSettingsController *)self defaultJournalingAppSpecifier];
      [v5 addObject:v23];
      v24 = [v8 localizedStringForKey:@"Choose an app to open journaling notifications." value:&stru_C5D8 table:0];
      [v22 setObject:v24 forKeyedSubscript:PSFooterTextGroupKey];
    }
  }

  v25 = *&self->PSListController_opaque[v3];
  *&self->PSListController_opaque[v3] = v5;

  v4 = *&self->PSListController_opaque[v3];
LABEL_22:

  return v4;
}

+ (id)notificationSettingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)defaultJournalingAppSpecifier
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(MONotificationsSettingsController *)self orderedDefaultApplications];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 bundleID];
        [v4 addObject:v11];

        v12 = [v10 localizedName];
        [v3 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = +[MONotificationsSettingsController notificationSettingsBundle];
  v14 = [v13 localizedStringForKey:@"Open Notifications With" value:&stru_C5D8 table:0];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setDefaultJournalApp:specifier:" get:"defaultJournalApp:" detail:objc_opt_class() cell:2 edit:0];

  [v15 setIdentifier:@"PREFERRED_JOURNAL_APP"];
  [v15 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v15 setValues:v4 titles:v3];

  return v15;
}

- (void)setDefaultJournalApp:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  [v6 setObject:v5 forKey:@"ChosenDefaultApplication"];

  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __68__MONotificationsSettingsController_setDefaultJournalApp_specifier___block_invoke;
  v9[3] = &unk_C570;
  objc_copyWeak(&v12, &location);
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__MONotificationsSettingsController_setDefaultJournalApp_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained momentsUIService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __68__MONotificationsSettingsController_setDefaultJournalApp_specifier___block_invoke_2;
  v5[3] = &unk_C548;
  v4 = *(a1 + 32);
  v6 = vextq_s8(v4, v4, 8uLL);
  [v3 handleDefaultAppChangeToBundleID:v4.i64[0] handler:v5];
}

- (id)defaultJournalApp:(id)a3
{
  v4 = [(MONotificationsSettingsController *)self chosenApp];
  if (v4)
  {
    v5 = [(MONotificationsSettingsController *)self chosenApp];
  }

  else
  {
    v6 = [(MONotificationsSettingsController *)self orderedDefaultApplications];
    v7 = [v6 firstObject];
    v5 = [v7 bundleID];
  }

  return v5;
}

- (void)setNotificationScheduleOptionsSetting:(id)a3 specifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v18;
      v8 = +[UIDevice currentDevice];
      v9 = [v8 userInterfaceIdiom];

      v10 = +[MONotificationsSettingsController notificationSettingsBundle];
      [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
      [(MONotificationsSettingsController *)self setSavePhase:0];
      [(MONotificationsSettingsController *)self setScheduleType:v7];
      if (v9)
      {
LABEL_11:
        [(MONotificationsSettingsController *)self reloadSpecifiers];

        goto LABEL_12;
      }

      v11 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"NOTIFICATION_SCHEDULE_OPTION_GROUP_ID"];
      v12 = [(MONotificationsSettingsController *)self scheduleType];
      v13 = [v12 intValue];

      if (v13 == 1)
      {
        v14 = @"Your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }

      else
      {
        v15 = [(MONotificationsSettingsController *)self scheduleType];
        v16 = [v15 intValue];

        if (v16)
        {
          [v11 removePropertyForKey:PSFooterTextGroupKey];
LABEL_10:

          goto LABEL_11;
        }

        v14 = @"Choose the smart schedule, and your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }

      v17 = [v10 localizedStringForKey:v14 value:&stru_C5D8 table:0];
      [v11 setProperty:v17 forKey:PSFooterTextGroupKey];

      goto LABEL_10;
    }
  }

LABEL_12:
}

- (id)createCustomScheduleSpecifiers
{
  v3 = objc_opt_new();
  v4 = +[MONotificationsSettingsController notificationSettingsBundle];
  v5 = [PSSpecifier alloc];
  v6 = [v4 localizedStringForKey:@"Time" value:&stru_C5D8 table:0];
  v7 = [v5 initWithName:v6 target:self set:"setNotificationCustomTime:specifier:" get:"notificationCustomTime:" detail:0 cell:-1 edit:0];

  [v7 setIdentifier:@"SCHEDULE_TIME"];
  v8 = objc_opt_class();
  v9 = PSCellClassKey;
  [v7 setProperty:v8 forKey:PSCellClassKey];
  [v3 addObject:v7];
  v10 = [[PSSpecifier alloc] initWithName:0 target:self set:"setNotificationCustomScheduleDays:specifier:" get:"notificationCustomScheduleDays:" detail:0 cell:-1 edit:0];
  [v10 setProperty:objc_opt_class() forKey:v9];
  [v10 setIdentifier:@"SCHEDULE_DAYS"];
  [v3 addObject:v10];
  v11 = [v3 copy];

  return v11;
}

- (void)setNotificationCustomScheduleDays:(id)a3 specifier:(id)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 allObjects];
    [(MONotificationsSettingsController *)self setScheduledDays:v5];
    [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
    [(MONotificationsSettingsController *)self setSavePhase:0];
  }
}

- (void)setNotificationCustomTime:(id)a3 specifier:(id)a4
{
  v8 = a3;
  v5 = +[NSCalendar currentCalendar];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 component:32 fromDate:v8]);
    [(MONotificationsSettingsController *)self setScheduledHour:v6];

    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 component:64 fromDate:v8]);
    [(MONotificationsSettingsController *)self setScheduledMinute:v7];

    [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
    [(MONotificationsSettingsController *)self setSavePhase:0];
  }
}

- (id)notificationCustomTime:(id)a3
{
  v4 = +[NSCalendar currentCalendar];
  v5 = [(MONotificationsSettingsController *)self scheduledHour];
  v6 = [v5 intValue];
  v7 = [(MONotificationsSettingsController *)self scheduledMinute];
  v8 = [v7 intValue];
  v9 = +[NSDate now];
  v10 = [v4 dateBySettingHour:v6 minute:v8 second:0 ofDate:v9 options:1];

  return v10;
}

- (void)saveDataIfNeeded
{
  if ([(MONotificationsSettingsController *)self needsSaveSchedule]|| ![(MONotificationsSettingsController *)self savePhase])
  {
    v3 = [NotificationScheduleItem alloc];
    v4 = [(MONotificationsSettingsController *)self scheduleType];
    v5 = [(MONotificationsSettingsController *)self scheduledHour];
    v6 = [(MONotificationsSettingsController *)self scheduledMinute];
    v7 = [(MONotificationsSettingsController *)self scheduledDays];
    v8 = [v3 initScheduleWithType:v4 hour:v5 minute:v6 weekdays:v7];

    if (v8)
    {
      v9 = [(MONotificationsSettingsController *)self userDefaults];
      v10 = [(MONotificationsSettingsController *)self scheduleType];
      [v9 setObject:v10 forKey:@"NotificationScheduleType"];

      v11 = [(MONotificationsSettingsController *)self scheduledDays];

      if (v11)
      {
        v12 = [(MONotificationsSettingsController *)self userDefaults];
        v13 = [(MONotificationsSettingsController *)self scheduledDays];
        [v12 setObject:v13 forKey:@"NotificationScheduleDayArray"];
      }

      v14 = [(MONotificationsSettingsController *)self scheduledHour];

      if (v14)
      {
        v15 = [(MONotificationsSettingsController *)self userDefaults];
        v16 = [(MONotificationsSettingsController *)self scheduledHour];
        [v15 setObject:v16 forKey:@"NotificationScheduleHour"];
      }

      v17 = [(MONotificationsSettingsController *)self scheduledMinute];

      if (v17)
      {
        v18 = [(MONotificationsSettingsController *)self userDefaults];
        v19 = [(MONotificationsSettingsController *)self scheduledMinute];
        [v18 setObject:v19 forKey:@"NotificationScheduleMinute"];
      }

      objc_initWeak(&location, self);
      queue = self->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __53__MONotificationsSettingsController_saveDataIfNeeded__block_invoke;
      v21[3] = &unk_C570;
      objc_copyWeak(&v24, &location);
      v22 = v8;
      v23 = self;
      dispatch_async(queue, v21);

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

void __53__MONotificationsSettingsController_saveDataIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained momentsUIService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __53__MONotificationsSettingsController_saveDataIfNeeded__block_invoke_112;
  v5[3] = &unk_C598;
  v4 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v3 setNotificationSettingWithScheduleItem:v4 shouldUpdateDefaults:&off_CA98 completionHandler:v5];
}

id __53__MONotificationsSettingsController_saveDataIfNeeded__block_invoke_112(uint64_t a1)
{
  [*(a1 + 32) setNeedsSaveSchedule:0];
  v2 = *(a1 + 32);

  return [v2 setSavePhase:2];
}

- (id)getLegacyMomentsdScheduleType
{
  v2 = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  v3 = [v2 objectForKey:@"UserNotificationScheduleInMinutesArray"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = &off_CAF8;
    if ([v3 count])
    {
      v5 = [v3 isEqualToArray:&off_CB88];
      v6 = &off_CB10;
      if (v5)
      {
        v6 = &off_CAF8;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = &off_CAF8;
  }

  return v4;
}

- (id)getLegacyMomentsdSchedule
{
  v2 = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  v3 = [v2 objectForKey:@"UserNotificationScheduleInMinutesArray"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v4 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(*(&v23 + 1) + 8 * i) intValue];
          if (v12 >> 5 <= 0x13A)
          {
            v13 = v12;
            v14 = v12;
            v15 = v12 / 0x5A0u;
            v16 = [NSNumber numberWithInt:v15 + 1];
            [v4 addObject:v16];

            v9 = (v13 - 1440 * v15) / 0x3Cu;
            v8 = v14 % 0x3Cu;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v19 = [NotificationScheduleItem alloc];
    v20 = [NSNumber numberWithInt:v9];
    v21 = [NSNumber numberWithInt:v8];
    v17 = [v19 initScheduleWithType:&off_CB28 hour:v20 minute:v21 weekdays:v4];

    v3 = v22;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end