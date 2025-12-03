@interface MONotificationsSettingsController
+ (id)notificationSettingsBundle;
- (MONotificationsSettingsController)init;
- (id)createCustomScheduleSpecifiers;
- (id)defaultJournalApp:(id)app;
- (id)defaultJournalingAppSpecifier;
- (id)getLegacyMomentsdSchedule;
- (id)getLegacyMomentsdScheduleType;
- (id)notificationCustomTime:(id)time;
- (id)specifiers;
- (void)previousScheduleDefaults;
- (void)saveDataIfNeeded;
- (void)setDefaultJournalApp:(id)app specifier:(id)specifier;
- (void)setNotificationCustomScheduleDays:(id)days specifier:(id)specifier;
- (void)setNotificationCustomTime:(id)time specifier:(id)specifier;
- (void)setNotificationScheduleOptionsSetting:(id)setting specifier:(id)specifier;
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
    momentsUIService = [(MONotificationsSettingsController *)v2 momentsUIService];

    if (!momentsUIService)
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

    createCustomScheduleSpecifiers = [(MONotificationsSettingsController *)v3 createCustomScheduleSpecifiers];
    [(MONotificationsSettingsController *)v3 setCustomScheduleSpecifiers:createCustomScheduleSpecifiers];

    [(MONotificationsSettingsController *)v3 setNeedsSaveSchedule:0];
    [(MONotificationsSettingsController *)v3 previousScheduleDefaults];
  }

  return v3;
}

- (void)previousScheduleDefaults
{
  userDefaults = [(MONotificationsSettingsController *)self userDefaults];
  v19 = [userDefaults objectForKey:@"NotificationScheduleType"];

  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v19;
  }

  else
  {
    getLegacyMomentsdScheduleType = [(MONotificationsSettingsController *)self getLegacyMomentsdScheduleType];

    v4 = getLegacyMomentsdScheduleType;
  }

  v20 = v4;
  [(MONotificationsSettingsController *)self setScheduleType:?];
  scheduleType = [(MONotificationsSettingsController *)self scheduleType];
  intValue = [scheduleType intValue];

  if (intValue == 2)
  {
    userDefaults2 = [(MONotificationsSettingsController *)self userDefaults];
    v9 = [userDefaults2 objectForKey:@"NotificationScheduleDayArray"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      getLegacyMomentsdSchedule = 0;
    }

    else
    {
      getLegacyMomentsdSchedule = [(MONotificationsSettingsController *)self getLegacyMomentsdSchedule];
      weekdays = [getLegacyMomentsdSchedule weekdays];
      if (weekdays)
      {
        weekdays2 = [getLegacyMomentsdSchedule weekdays];
      }

      else
      {
        weekdays2 = &__NSArray0__struct;
      }

      v9 = weekdays2;
    }

    [(MONotificationsSettingsController *)self setScheduledDays:v9];
    userDefaults3 = [(MONotificationsSettingsController *)self userDefaults];
    v14 = [userDefaults3 objectForKey:@"NotificationScheduleHour"];

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !getLegacyMomentsdSchedule)
      {
LABEL_20:
        [(MONotificationsSettingsController *)self setScheduledHour:v14];
        userDefaults4 = [(MONotificationsSettingsController *)self userDefaults];
        v17 = [userDefaults4 objectForKey:@"NotificationScheduleMinute"];

        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || !getLegacyMomentsdSchedule)
          {
            goto LABEL_27;
          }
        }

        else if (!getLegacyMomentsdSchedule)
        {
          v17 = 0;
          goto LABEL_27;
        }

        minute = [getLegacyMomentsdSchedule minute];

        v17 = minute;
LABEL_27:
        [(MONotificationsSettingsController *)self setScheduledMinute:v17];

        goto LABEL_28;
      }
    }

    else if (!getLegacyMomentsdSchedule)
    {
      v14 = 0;
      goto LABEL_20;
    }

    hour = [getLegacyMomentsdSchedule hour];

    v14 = hour;
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
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  v8 = +[MONotificationsSettingsController notificationSettingsBundle];
  v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_SCHEDULE_OPTION_GROUP_ID"];
  [v5 addObject:v9];
  if (!userInterfaceIdiom)
  {
    if ([(MONotificationsSettingsController *)self noEligibleApps])
    {
      v10 = @"To receive notifications, you’ll need to redownload Journal from the App Store, or use another journaling app configured for Journaling Suggestions notifications.";
    }

    else
    {
      scheduleType = [(MONotificationsSettingsController *)self scheduleType];
      intValue = [scheduleType intValue];

      if (intValue == 1)
      {
        v10 = @"Your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }

      else
      {
        scheduleType2 = [(MONotificationsSettingsController *)self scheduleType];
        intValue2 = [scheduleType2 intValue];

        if (intValue2)
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
  scheduleType3 = [(MONotificationsSettingsController *)self scheduleType];
  if ([scheduleType3 intValue] == 2)
  {
    noEligibleApps = [(MONotificationsSettingsController *)self noEligibleApps];

    if (noEligibleApps)
    {
      goto LABEL_18;
    }

    scheduleType3 = [(MONotificationsSettingsController *)self customScheduleSpecifiers];
    [v5 addObjectsFromArray:scheduleType3];
  }

LABEL_18:
  if (![(MONotificationsSettingsController *)self noEligibleApps])
  {
    orderedDefaultApplications = [(MONotificationsSettingsController *)self orderedDefaultApplications];
    v21 = [orderedDefaultApplications count];

    if (v21 >= 2)
    {
      v22 = [PSSpecifier groupSpecifierWithID:@"PREFERRED_JOURNAL_APP_GROUP"];
      [v22 setTarget:self];
      [v5 addObject:v22];
      defaultJournalingAppSpecifier = [(MONotificationsSettingsController *)self defaultJournalingAppSpecifier];
      [v5 addObject:defaultJournalingAppSpecifier];
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
  orderedDefaultApplications = [(MONotificationsSettingsController *)self orderedDefaultApplications];
  v6 = [orderedDefaultApplications countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(orderedDefaultApplications);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        bundleID = [v10 bundleID];
        [v4 addObject:bundleID];

        localizedName = [v10 localizedName];
        [v3 addObject:localizedName];
      }

      v7 = [orderedDefaultApplications countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)setDefaultJournalApp:(id)app specifier:(id)specifier
{
  appCopy = app;
  momentsdUserDefaults = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  [momentsdUserDefaults setObject:appCopy forKey:@"ChosenDefaultApplication"];

  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __68__MONotificationsSettingsController_setDefaultJournalApp_specifier___block_invoke;
  v9[3] = &unk_C570;
  objc_copyWeak(&v12, &location);
  v10 = appCopy;
  selfCopy = self;
  v8 = appCopy;
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

- (id)defaultJournalApp:(id)app
{
  chosenApp = [(MONotificationsSettingsController *)self chosenApp];
  if (chosenApp)
  {
    chosenApp2 = [(MONotificationsSettingsController *)self chosenApp];
  }

  else
  {
    orderedDefaultApplications = [(MONotificationsSettingsController *)self orderedDefaultApplications];
    firstObject = [orderedDefaultApplications firstObject];
    chosenApp2 = [firstObject bundleID];
  }

  return chosenApp2;
}

- (void)setNotificationScheduleOptionsSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  specifierCopy = specifier;
  if (settingCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = settingCopy;
      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      v10 = +[MONotificationsSettingsController notificationSettingsBundle];
      [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
      [(MONotificationsSettingsController *)self setSavePhase:0];
      [(MONotificationsSettingsController *)self setScheduleType:v7];
      if (userInterfaceIdiom)
      {
LABEL_11:
        [(MONotificationsSettingsController *)self reloadSpecifiers];

        goto LABEL_12;
      }

      v11 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"NOTIFICATION_SCHEDULE_OPTION_GROUP_ID"];
      scheduleType = [(MONotificationsSettingsController *)self scheduleType];
      intValue = [scheduleType intValue];

      if (intValue == 1)
      {
        v14 = @"Your routine and location will determine when you’ll be notified it’s time to write, or when there are new journaling suggestions. You can also create a custom schedule.";
      }

      else
      {
        scheduleType2 = [(MONotificationsSettingsController *)self scheduleType];
        intValue2 = [scheduleType2 intValue];

        if (intValue2)
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

- (void)setNotificationCustomScheduleDays:(id)days specifier:(id)specifier
{
  daysCopy = days;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = [daysCopy allObjects];
    [(MONotificationsSettingsController *)self setScheduledDays:allObjects];
    [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
    [(MONotificationsSettingsController *)self setSavePhase:0];
  }
}

- (void)setNotificationCustomTime:(id)time specifier:(id)specifier
{
  timeCopy = time;
  v5 = +[NSCalendar currentCalendar];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 component:32 fromDate:timeCopy]);
    [(MONotificationsSettingsController *)self setScheduledHour:v6];

    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 component:64 fromDate:timeCopy]);
    [(MONotificationsSettingsController *)self setScheduledMinute:v7];

    [(MONotificationsSettingsController *)self setNeedsSaveSchedule:1];
    [(MONotificationsSettingsController *)self setSavePhase:0];
  }
}

- (id)notificationCustomTime:(id)time
{
  v4 = +[NSCalendar currentCalendar];
  scheduledHour = [(MONotificationsSettingsController *)self scheduledHour];
  intValue = [scheduledHour intValue];
  scheduledMinute = [(MONotificationsSettingsController *)self scheduledMinute];
  intValue2 = [scheduledMinute intValue];
  v9 = +[NSDate now];
  v10 = [v4 dateBySettingHour:intValue minute:intValue2 second:0 ofDate:v9 options:1];

  return v10;
}

- (void)saveDataIfNeeded
{
  if ([(MONotificationsSettingsController *)self needsSaveSchedule]|| ![(MONotificationsSettingsController *)self savePhase])
  {
    v3 = [NotificationScheduleItem alloc];
    scheduleType = [(MONotificationsSettingsController *)self scheduleType];
    scheduledHour = [(MONotificationsSettingsController *)self scheduledHour];
    scheduledMinute = [(MONotificationsSettingsController *)self scheduledMinute];
    scheduledDays = [(MONotificationsSettingsController *)self scheduledDays];
    v8 = [v3 initScheduleWithType:scheduleType hour:scheduledHour minute:scheduledMinute weekdays:scheduledDays];

    if (v8)
    {
      userDefaults = [(MONotificationsSettingsController *)self userDefaults];
      scheduleType2 = [(MONotificationsSettingsController *)self scheduleType];
      [userDefaults setObject:scheduleType2 forKey:@"NotificationScheduleType"];

      scheduledDays2 = [(MONotificationsSettingsController *)self scheduledDays];

      if (scheduledDays2)
      {
        userDefaults2 = [(MONotificationsSettingsController *)self userDefaults];
        scheduledDays3 = [(MONotificationsSettingsController *)self scheduledDays];
        [userDefaults2 setObject:scheduledDays3 forKey:@"NotificationScheduleDayArray"];
      }

      scheduledHour2 = [(MONotificationsSettingsController *)self scheduledHour];

      if (scheduledHour2)
      {
        userDefaults3 = [(MONotificationsSettingsController *)self userDefaults];
        scheduledHour3 = [(MONotificationsSettingsController *)self scheduledHour];
        [userDefaults3 setObject:scheduledHour3 forKey:@"NotificationScheduleHour"];
      }

      scheduledMinute2 = [(MONotificationsSettingsController *)self scheduledMinute];

      if (scheduledMinute2)
      {
        userDefaults4 = [(MONotificationsSettingsController *)self userDefaults];
        scheduledMinute3 = [(MONotificationsSettingsController *)self scheduledMinute];
        [userDefaults4 setObject:scheduledMinute3 forKey:@"NotificationScheduleMinute"];
      }

      objc_initWeak(&location, self);
      queue = self->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __53__MONotificationsSettingsController_saveDataIfNeeded__block_invoke;
      v21[3] = &unk_C570;
      objc_copyWeak(&v24, &location);
      v22 = v8;
      selfCopy = self;
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
  momentsdUserDefaults = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  v3 = [momentsdUserDefaults objectForKey:@"UserNotificationScheduleInMinutesArray"];

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
  momentsdUserDefaults = [(MONotificationsSettingsController *)self momentsdUserDefaults];
  v3 = [momentsdUserDefaults objectForKey:@"UserNotificationScheduleInMinutesArray"];

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

          intValue = [*(*(&v23 + 1) + 8 * i) intValue];
          if (intValue >> 5 <= 0x13A)
          {
            v13 = intValue;
            v14 = intValue;
            v15 = intValue / 0x5A0u;
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