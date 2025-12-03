@interface CSDefaultAlarmsController
- (CSDefaultAlarmsController)init;
- (id)_alarmTitlesForAllDay:(BOOL)day shortened:(BOOL)shortened;
- (id)_alarmValuesForAllDay:(BOOL)day;
- (id)_enableTravelAdvisoriesForAutomaticBehavior:(id)behavior;
- (id)defaultAlarmOffsetForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_defaultAlarmChanged;
- (void)_setEnableTravelAdvisoriesForAutomaticBehavior:(id)behavior specifier:(id)specifier;
- (void)_travelAdvisoriesEnabledChanged;
- (void)configureTTL;
- (void)locationAuthorizationChanged:(id)changed;
- (void)setDefaultAlarmOffset:(id)offset specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CSDefaultAlarmsController

- (CSDefaultAlarmsController)init
{
  v5.receiver = self;
  v5.super_class = CSDefaultAlarmsController;
  v2 = [(CSDefaultAlarmsController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"locationAuthorizationChanged:" name:CalLocationAuthorizationChangedNotification object:0];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = CSDefaultAlarmsController;
  [(CSDefaultAlarmsController *)&v18 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/defaultAlertTimes"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Default Alert Times" table:@"MobileCalSettings" locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:bundleURL2];

  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  [(CSDefaultAlarmsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];

  [CalDistributedNotificationCenter addObserver:self selector:"_defaultAlarmChanged" name:kCalDefaultAlarmChangedNote];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_defaultBirthdaysAlarmChanged" name:EKEventStoreChangedNotification object:0];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_travelAdvisoriesEnabledChanged" name:CDBPreferences_Notification_enableTravelAdvisoriesForAutomaticBehavior object:0];

  self->_hasEverAppeared = 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSDefaultAlarmsController;
  [(CSDefaultAlarmsController *)&v4 viewWillAppear:appear];
  if (self->_hasEverAppeared)
  {
    [(CSDefaultAlarmsController *)self _defaultAlarmChanged];
    [(CSDefaultAlarmsController *)self _defaultBirthdaysAlarmChanged];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSDefaultAlarmsController;
  [(CSDefaultAlarmsController *)&v6 viewWillDisappear:disappear];
  [CalDistributedNotificationCenter removeObserver:self name:kCalDefaultAlarmChangedNote];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:EKEventStoreChangedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:CDBPreferences_Notification_enableTravelAdvisoriesForAutomaticBehavior object:0];
}

- (void)_defaultAlarmChanged
{
  [(CSDefaultAlarmsController *)self reloadSpecifier:self->_timedEventsAlertSpecifier];
  allDayEventsAlertSpecifier = self->_allDayEventsAlertSpecifier;

  [(CSDefaultAlarmsController *)self reloadSpecifier:allDayEventsAlertSpecifier];
}

- (void)_travelAdvisoriesEnabledChanged
{
  [(CSDefaultAlarmsController *)self configureTTL];
  [(CSDefaultAlarmsController *)self reloadSpecifier:self->_timeToLeaveGroupSpecifier];
  timeToLeaveAlertsSpecifier = self->_timeToLeaveAlertsSpecifier;

  [(CSDefaultAlarmsController *)self reloadSpecifier:timeToLeaveAlertsSpecifier];
}

- (id)_alarmTitlesForAllDay:(BOOL)day shortened:(BOOL)shortened
{
  dayCopy = day;
  v5 = objc_alloc_init(CalendarEventAlarmTable);
  [v5 setUseAllDayAlarms:dayCopy];
  countOfPresets = [v5 countOfPresets];
  v7 = [NSMutableArray arrayWithCapacity:countOfPresets + 1];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"None Alert" value:@"None" table:@"MobileCalSettings"];
  [v7 addObject:v9];

  if (countOfPresets)
  {
    for (i = 0; i != countOfPresets; ++i)
    {
      [v5 intervalForPresetIdentifier:i];
      v11 = CUIKStringForRelativeOffset();
      [v7 addObject:v11];
    }
  }

  return v7;
}

- (id)_alarmValuesForAllDay:(BOOL)day
{
  dayCopy = day;
  v4 = objc_alloc_init(CalendarEventAlarmTable);
  [v4 setUseAllDayAlarms:dayCopy];
  countOfPresets = [v4 countOfPresets];
  v6 = [NSMutableArray arrayWithCapacity:countOfPresets + 1];
  v7 = [NSNumber numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
  [v6 addObject:v7];

  if (countOfPresets)
  {
    for (i = 0; i != countOfPresets; ++i)
    {
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intervalForPresetIdentifier:i]);
      [v6 addObject:v9];
    }
  }

  return v6;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = objc_alloc_init(NSMutableArray);
    v6 = [v5 localizedStringForKey:@"Birthday Calendar" value:@"Birthdays" table:@"MobileCalSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setDefaultAlarmOffset:specifier:" get:"defaultAlarmOffsetForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    birthdaysAlertSpecifier = self->_birthdaysAlertSpecifier;
    self->_birthdaysAlertSpecifier = v7;
    v9 = v7;

    v10 = [(CSDefaultAlarmsController *)self _alarmValuesForAllDay:1];
    v11 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:1 shortened:0];
    v12 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:1 shortened:1];
    [(PSSpecifier *)v9 setValues:v10 titles:v11 shortTitles:v12];

    v13 = [NSNumber numberWithInt:2];
    [(PSSpecifier *)v9 setProperty:v13 forKey:@"DefaultAlarmType"];

    [(PSSpecifier *)v9 setIdentifier:@"birthdaysDefaultAlertTimes"];
    [v36 addObject:v9];
    v14 = [v5 localizedStringForKey:@"Timed Event" value:@"Events" table:@"MobileCalSettings"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setDefaultAlarmOffset:specifier:" get:"defaultAlarmOffsetForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    timedEventsAlertSpecifier = self->_timedEventsAlertSpecifier;
    self->_timedEventsAlertSpecifier = v15;
    v17 = v15;

    v18 = [(CSDefaultAlarmsController *)self _alarmValuesForAllDay:0];
    v19 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:0 shortened:0];
    v20 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:0 shortened:1];
    [(PSSpecifier *)v17 setValues:v18 titles:v19 shortTitles:v20];

    v21 = v5;
    v22 = [NSNumber numberWithInt:0];
    [(PSSpecifier *)v17 setProperty:v22 forKey:@"DefaultAlarmType"];

    [(PSSpecifier *)v17 setIdentifier:@"timedEventsDefaultAlertTimes"];
    [v36 addObject:v17];
    v23 = [v5 localizedStringForKey:@"All-Day Events" value:&stru_210B8 table:@"MobileCalSettings"];
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"setDefaultAlarmOffset:specifier:" get:"defaultAlarmOffsetForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    objc_storeStrong(&self->_allDayEventsAlertSpecifier, v24);
    v25 = [(CSDefaultAlarmsController *)self _alarmValuesForAllDay:1];
    v26 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:1 shortened:0];
    v27 = [(CSDefaultAlarmsController *)self _alarmTitlesForAllDay:1 shortened:1];
    [v24 setValues:v25 titles:v26 shortTitles:v27];

    v28 = [NSNumber numberWithInt:1];
    [v24 setProperty:v28 forKey:@"DefaultAlarmType"];

    [v24 setIdentifier:@"allDayEventsDefaultAlertTimes"];
    [v36 addObject:v24];
    if (+[EKFeatureSet isTravelAdvisorySupported])
    {
      v29 = [PSSpecifier groupSpecifierWithName:0];
      timeToLeaveGroupSpecifier = self->_timeToLeaveGroupSpecifier;
      self->_timeToLeaveGroupSpecifier = v29;

      v31 = [v21 localizedStringForKey:@"Time to Leave" value:&stru_210B8 table:@"MobileCalSettings"];
      v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"_setEnableTravelAdvisoriesForAutomaticBehavior:specifier:" get:"_enableTravelAdvisoriesForAutomaticBehavior:" detail:0 cell:6 edit:0];
      timeToLeaveAlertsSpecifier = self->_timeToLeaveAlertsSpecifier;
      self->_timeToLeaveAlertsSpecifier = v32;

      self->currentTTLStatus = +[CalLocationAuthorization ttlLocationStatus];
      [(CSDefaultAlarmsController *)self configureTTL];
      [v36 addObject:self->_timeToLeaveGroupSpecifier];
      [v36 addObject:self->_timeToLeaveAlertsSpecifier];
    }

    v34 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v36;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)configureTTL
{
  v6 = [CUIKTimeToLeaveDescriptionGenerator explanatoryTextForTTLStatus:self->currentTTLStatus];
  [(PSSpecifier *)self->_timeToLeaveGroupSpecifier setProperty:v6 forKey:PSFooterTextGroupKey];
  ttlAlertsEffectivelyDisabledDueToLocationAuthorization = [(CSDefaultAlarmsController *)self ttlAlertsEffectivelyDisabledDueToLocationAuthorization];
  timeToLeaveAlertsSpecifier = self->_timeToLeaveAlertsSpecifier;
  v5 = [NSNumber numberWithBool:ttlAlertsEffectivelyDisabledDueToLocationAuthorization ^ 1];
  [(PSSpecifier *)timeToLeaveAlertsSpecifier setProperty:v5 forKey:PSEnabledKey];

  [(PSSpecifier *)self->_timeToLeaveAlertsSpecifier setIdentifier:@"timeToLeaveAlerts"];
}

- (void)locationAuthorizationChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4768;
  block[3] = &unk_209D0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setEnableTravelAdvisoriesForAutomaticBehavior:(id)behavior specifier:(id)specifier
{
  bOOLValue = [behavior BOOLValue];
  ttlAlertsEffectivelyDisabledDueToLocationAuthorization = [(CSDefaultAlarmsController *)self ttlAlertsEffectivelyDisabledDueToLocationAuthorization];
  v7 = kCSLogHandle;
  if (ttlAlertsEffectivelyDisabledDueToLocationAuthorization)
  {
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (bOOLValue)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&def_F7BC, v7, OS_LOG_TYPE_INFO, "Refusing to set 'enableTravelAdvisoriesForAutomaticBehavior' to [%@] because we don't have location access", &v15, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
    {
      if (bOOLValue)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&def_F7BC, v7, OS_LOG_TYPE_DEBUG, "Setting 'enableTravelAdvisoriesForAutomaticBehavior' to [%@]", &v15, 0xCu);
    }

    v10 = +[CDBPreferences shared];
    [v10 set_enableTravelAdvisoriesForAutomaticBehavior:bOOLValue];

    v11 = kCSLogHandle;
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = +[CDBPreferences shared];
      if ([v13 get_enableTravelAdvisoriesForAutomaticBehavior])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&def_F7BC, v12, OS_LOG_TYPE_DEBUG, "'enableTravelAdvisoriesForAutomaticBehavior' is now set to [%@]", &v15, 0xCu);
    }
  }
}

- (id)_enableTravelAdvisoriesForAutomaticBehavior:(id)behavior
{
  if ([(CSDefaultAlarmsController *)self ttlAlertsEffectivelyDisabledDueToLocationAuthorization])
  {
    v3 = &__kCFBooleanFalse;
  }

  else
  {
    v4 = +[CDBPreferences shared];
    get_enableTravelAdvisoriesForAutomaticBehavior = [v4 get_enableTravelAdvisoriesForAutomaticBehavior];

    v6 = kCSLogHandle;
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      if (get_enableTravelAdvisoriesForAutomaticBehavior)
      {
        v7 = @"YES";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&def_F7BC, v6, OS_LOG_TYPE_DEBUG, "The value of 'enableTravelAdvisoriesForAutomaticBehavior' is: [%@]", &v9, 0xCu);
    }

    v3 = [NSNumber numberWithBool:get_enableTravelAdvisoriesForAutomaticBehavior];
  }

  return v3;
}

- (id)defaultAlarmOffsetForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"DefaultAlarmType"];
  intValue = [v4 intValue];

  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"EKEventStore"];
  v7 = [CUIKDefaultAlarmPreferences defaultAlarmOffsetForAlarmType:intValue eventStore:v6];

  return v7;
}

- (void)setDefaultAlarmOffset:(id)offset specifier:(id)specifier
{
  offsetCopy = offset;
  v7 = [specifier propertyForKey:@"DefaultAlarmType"];
  intValue = [v7 intValue];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"EKEventStore"];
  [CUIKDefaultAlarmPreferences setDefaultAlarmOffset:offsetCopy forAlarmType:intValue eventStore:v9];
}

@end