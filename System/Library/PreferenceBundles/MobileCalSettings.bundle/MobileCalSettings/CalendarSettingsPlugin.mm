@interface CalendarSettingsPlugin
- (BOOL)_shouldShowDefaultCalendarSpecifier;
- (CalendarSettingsPlugin)init;
- (double)_defaultEventDurationForIdentifier:(id)identifier;
- (id)_accountStore;
- (id)_defaultEventDurationLocalizedStrings;
- (id)_eventStore;
- (id)_localeSpecificLocalizedMonthSyncTitleWithBundle:(id)bundle months:(unint64_t)months;
- (id)_localeSpecificLocalizedTwoWeeksSyncTitleWithBundle:(id)bundle;
- (id)_titlesForCalendarIdentifiers:(id)identifiers;
- (id)_titlesForDaysToSync;
- (id)_titlesForWeekDays:(id)days;
- (id)accountsSupportingDelegation;
- (id)daysToSync:(id)sync;
- (id)defaultCalendarName:(id)name;
- (id)defaultEventDuration:(id)duration;
- (id)helpkitURLString;
- (id)immediateAlarmCreation:(id)creation;
- (id)overlayCalendarID:(id)d;
- (id)showInviteeDeclinesEnabled:(id)enabled;
- (id)showWeekNumbers:(id)numbers;
- (id)specifiers;
- (id)suggestEventLocations:(id)locations;
- (id)timeZoneSupportEnabled:(id)enabled;
- (id)weekStart:(id)start;
- (id)weekViewStartsOnToday:(id)today;
- (id)writableEnabledIdentities;
- (int64_t)_countOfAccountsSyncingCalendars;
- (void)_applicationDidRemoveDeactivationReasonNotification:(id)notification;
- (void)_applicationWillAddDeactivationReasonNotification:(id)notification;
- (void)_authenticateIfRequired;
- (void)_cancelAuthentication;
- (void)_createAllCommonSpecifiers;
- (void)_eventStoreChanged:(id)changed;
- (void)_freeSpecifiers;
- (void)_restrictToShield;
- (void)reloadSpecifiers:(id)specifiers;
- (void)setDaysToSync:(id)sync specifier:(id)specifier;
- (void)setDefaultCalendar:(id)calendar specifier:(id)specifier;
- (void)setDefaultEventDuration:(id)duration specifier:(id)specifier;
- (void)setImmediateAlarmCreation:(id)creation specifier:(id)specifier;
- (void)setOverlayCalendarID:(id)d specifier:(id)specifier;
- (void)setShowInviteeDeclinesEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowWeekNumbers:(id)numbers specifier:(id)specifier;
- (void)setSuggestEventLocations:(id)locations specifier:(id)specifier;
- (void)setWeekViewStartsOnToday:(id)today specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CalendarSettingsPlugin

- (CalendarSettingsPlugin)init
{
  v4.receiver = self;
  v4.super_class = CalendarSettingsPlugin;
  v2 = [(CalendarSettingsPlugin *)&v4 init];
  v2->_isActive = 1;
  CSLogInitialize();
  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CalendarSettingsPlugin;
  [(CalendarSettingsPlugin *)&v10 viewDidLoad];
  v3 = [APApplication applicationWithBundleIdentifier:kCalCalendarBundleIdentifier];
  calApplication = self->calApplication;
  self->calApplication = v3;

  v5 = [[APBaseShieldView alloc] initWithApplication:self->calApplication];
  shieldView = self->shieldView;
  self->shieldView = v5;

  view = [(CalendarSettingsPlugin *)self view];
  [view bounds];
  [(APBaseShieldView *)self->shieldView setFrame:?];

  [(APBaseShieldView *)self->shieldView setAutoresizingMask:18];
  [(APBaseShieldView *)self->shieldView setDelegate:self];
  [(APBaseShieldView *)self->shieldView setShieldStyle:1];
  view2 = [(CalendarSettingsPlugin *)self view];
  [view2 addSubview:self->shieldView];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v9 addObserver:self selector:"_applicationDidEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
  [v9 addObserver:self selector:"_applicationDidResignActive" name:UIApplicationWillResignActiveNotification object:0];
  [v9 addObserver:self selector:"_applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
  [v9 addObserver:self selector:"_applicationWillAddDeactivationReasonNotification:" name:_UIApplicationWillAddDeactivationReasonNotification object:0];
  [v9 addObserver:self selector:"_applicationDidRemoveDeactivationReasonNotification:" name:_UIApplicationDidRemoveDeactivationReasonNotification object:0];
  [(CalendarSettingsPlugin *)self _authenticateIfRequired];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CalendarSettingsPlugin;
  [(CalendarSettingsPlugin *)&v4 viewWillAppear:appear];
  if (([(CalendarSettingsPlugin *)self isMovingToParentViewController]& 1) == 0)
  {
    [(CalendarSettingsPlugin *)self reloadSpecifiers];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = CalendarSettingsPlugin;
  [(CalendarSettingsPlugin *)&v13 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v6 bundleURL:bundleURL];

  [(CalendarSettingsPlugin *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:&__NSArray0__struct deepLink:v4];
  localize = [v9 localize];
  [(CalendarSettingsPlugin *)self setTitle:localize];

  v11 = +[NSNotificationCenter defaultCenter];
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  [v11 addObserver:self selector:"_eventStoreChanged:" name:EKEventStoreChangedNotification object:_eventStore];

  [v11 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
  [v11 addObserver:self selector:"_alternativeCalendarChanged" name:CUIKPreferencesNotification_OverlayCalendarID object:0];
  [v11 addObserver:self selector:"_syncDurationChanged" name:CDBPreferences_Notification_kCalPreferredDaysToSyncKey object:0];
  [v11 addObserver:self selector:"_weekStartChanged" name:CUIKPreferencesNotification_WeekStart object:0];
  [v11 addObserver:self selector:"_showWeekNumbersChanged" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];
  [v11 addObserver:self selector:"_weekViewStartsOnTodayChanged" name:CUIKPreferencesNotification_WeekViewStartsOnToday object:0];
  [v11 addObserver:self selector:"_locationSuggestionsChanged" name:CDBPreferences_Notification_suggestEventLocations object:0];
  [CalDistributedNotificationCenter addObserver:self selector:"_defaultEventDurationChanged" name:CalFoundationPreferencesNotification_DefaultEventDuration];
  [CalDistributedNotificationCenter addObserver:self selector:"_showInviteeDeclinesChanged" name:kCalAlertPrefChangedNotification];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CalendarSettingsPlugin;
  [(CalendarSettingsPlugin *)&v6 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  [v4 removeObserver:self name:EKEventStoreChangedNotification object:_eventStore];

  [v4 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v4 removeObserver:self name:CUIKPreferencesNotification_OverlayCalendarID object:0];
  [v4 removeObserver:self name:CDBPreferences_Notification_kCalPreferredDaysToSyncKey object:0];
  [v4 removeObserver:self name:CUIKPreferencesNotification_WeekStart object:0];
  [v4 removeObserver:self name:CUIKPreferencesNotification_ShowWeekNumbers object:0];
  [v4 removeObserver:self name:CUIKPreferencesNotification_WeekViewStartsOnToday object:0];
  [v4 removeObserver:self name:CDBPreferences_Notification_suggestEventLocations object:0];
  [(CalendarSettingsPlugin *)self _cancelAuthentication];
  [CalDistributedNotificationCenter removeObserver:self name:CalFoundationPreferencesNotification_DefaultEventDuration];
  [CalDistributedNotificationCenter removeObserver:self name:kCalAlertPrefChangedNotification];
}

- (id)_titlesForWeekDays:(id)days
{
  daysCopy = days;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(daysCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = daysCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v16 + 1) + 8 * i) integerValue])
        {
          v10 = CUIKStringForDayOfWeek();
          [v4 addObject:v10];
        }

        else
        {
          v10 = [NSBundle bundleForClass:objc_opt_class()];
          v11 = +[NSCalendar currentCalendar];
          v12 = [v10 localizedStringForKey:@"System setting week start" value:@"%@ (System Setting)" table:@"MobileCalSettings"];
          [v11 firstWeekday];
          v13 = CUIKStringForDayOfWeek();
          v14 = [NSString localizedStringWithFormat:v12, v13];

          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_titlesForCalendarIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_619C;
  v9[3] = &unk_20AA0;
  v9[4] = self;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v10 = v5;
  [identifiersCopy enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)_createAllCommonSpecifiers
{
  if (!self->_timeZoneSupportSpecifier)
  {
    v64 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v64 localizedStringForKey:@"Show Invitee Declines" value:&stru_210B8 table:@"MobileCalSettings"];
    v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setShowInviteeDeclinesEnabled:specifier:" get:"showInviteeDeclinesEnabled:" detail:0 cell:6 edit:0];
    showInviteeDeclinesSpecifier = self->_showInviteeDeclinesSpecifier;
    self->_showInviteeDeclinesSpecifier = v4;

    [(PSSpecifier *)self->_showInviteeDeclinesSpecifier setIdentifier:@"showInviteeDeclines"];
    v63 = [v64 localizedStringForKey:@"Time Zone Override" value:@"Time Zone Override" table:@"MobileCalSettings"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v63 target:self set:0 get:"timeZoneSupportEnabled:" detail:objc_opt_class() cell:2 edit:0];
    timeZoneSupportSpecifier = self->_timeZoneSupportSpecifier;
    self->_timeZoneSupportSpecifier = v6;

    [(PSSpecifier *)self->_timeZoneSupportSpecifier setProperty:kCalTimeZoneCityArrayPrefKey forKey:PSKeyNameKey];
    [(PSSpecifier *)self->_timeZoneSupportSpecifier setProperty:@"com.apple.mobilecal" forKey:PSDefaultsKey];
    [(PSSpecifier *)self->_timeZoneSupportSpecifier setIdentifier:@"timeZoneOverride"];
    v8 = +[NSLocale currentLocale];
    localeIdentifier = [v8 localeIdentifier];
    v10 = [IntlUtility lunarCalendarsForLocaleID:localeIdentifier];
    v11 = [&off_225E8 arrayByAddingObjectsFromArray:v10];

    v12 = [v64 localizedStringForKey:@"Alternate Calendars" value:&stru_210B8 table:@"MobileCalSettings"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setOverlayCalendarID:specifier:" get:"overlayCalendarID:" detail:objc_opt_class() cell:2 edit:0];
    overlayCalendarSpecifier = self->_overlayCalendarSpecifier;
    self->_overlayCalendarSpecifier = v13;

    [(PSSpecifier *)self->_overlayCalendarSpecifier setIdentifier:@"alternateCalendars"];
    v15 = self->_overlayCalendarSpecifier;
    v62 = v11;
    v16 = [(CalendarSettingsPlugin *)self _titlesForCalendarIdentifiers:v11];
    [(PSSpecifier *)v15 setValues:v11 titles:v16];

    v17 = [v64 localizedStringForKey:@"Week Numbers" value:&stru_210B8 table:@"MobileCalSettings"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"setShowWeekNumbers:specifier:" get:"showWeekNumbers:" detail:0 cell:6 edit:0];
    showWeekNumbersSpecifier = self->_showWeekNumbersSpecifier;
    self->_showWeekNumbersSpecifier = v18;

    [(PSSpecifier *)self->_showWeekNumbersSpecifier setIdentifier:@"weekNumbers"];
    v20 = [v64 localizedStringForKey:@"Week View Starts On Today" value:&stru_210B8 table:@"MobileCalSettings"];
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setWeekViewStartsOnToday:specifier:" get:"weekViewStartsOnToday:" detail:0 cell:6 edit:0];
    weekViewStartsOnTodaySpecifier = self->_weekViewStartsOnTodaySpecifier;
    self->_weekViewStartsOnTodaySpecifier = v21;

    [(PSSpecifier *)self->_weekViewStartsOnTodaySpecifier setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [(PSSpecifier *)self->_weekViewStartsOnTodaySpecifier setIdentifier:@"weekViewStartsOnToday"];
    v61 = [v64 localizedStringForKey:@"Sync Specifier Name" value:@"Sync" table:@"MobileCalSettings"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v61 target:self set:"setDaysToSync:specifier:" get:"daysToSync:" detail:objc_opt_class() cell:2 edit:0];
    syncDaysSpecifier = self->_syncDaysSpecifier;
    self->_syncDaysSpecifier = v23;

    v25 = self->_syncDaysSpecifier;
    v26 = [NSNumber numberWithInt:14];
    v27 = [NSNumber numberWithInt:31];
    v28 = [NSNumber numberWithInt:92];
    v29 = [NSNumber numberWithInt:183];
    v30 = [NSNumber numberWithInt:0];
    v31 = [NSArray arrayWithObjects:v26, v27, v28, v29, v30, 0];
    _titlesForDaysToSync = [(CalendarSettingsPlugin *)self _titlesForDaysToSync];
    [(PSSpecifier *)v25 setValues:v31 titles:_titlesForDaysToSync];

    [(PSSpecifier *)self->_syncDaysSpecifier setProperty:kCFBooleanTrue forKey:PSDeferItemSelectionKey];
    [(PSSpecifier *)self->_syncDaysSpecifier setIdentifier:@"syncDuration"];
    v33 = [v64 localizedStringForKey:@"Default Calendar" value:&stru_210B8 table:@"MobileCalSettings"];
    v34 = objc_opt_class();
    v35 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"setDefaultCalendar:specifier:" get:"defaultCalendarName:" detail:v34 cell:2 edit:NSClassFromString(@"CSDefaultCalendarPane")];
    defaultCalendarSpecifier = self->_defaultCalendarSpecifier;
    self->_defaultCalendarSpecifier = v35;

    [(PSSpecifier *)self->_defaultCalendarSpecifier setProperty:0 forKey:@"CSSourceKey"];
    [(PSSpecifier *)self->_defaultCalendarSpecifier setIdentifier:@"defaultCalendar"];
    v37 = [v64 localizedStringForKey:@"Start Week On" value:&stru_210B8 table:@"MobileCalSettings"];
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:0 get:"weekStart:" detail:objc_opt_class() cell:2 edit:0];

    _numbersForWeekdays = [(CalendarSettingsPlugin *)self _numbersForWeekdays];
    v39 = [(CalendarSettingsPlugin *)self _titlesForWeekDays:_numbersForWeekdays];
    [v38 setValues:_numbersForWeekdays titles:v39];

    [v38 setIdentifier:@"startWeekOn"];
    weekStartSpecifier = self->_weekStartSpecifier;
    self->_weekStartSpecifier = v38;
    v59 = v38;

    _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
    self->_numTotalCalendars = [_eventStore readWriteCalendarCountForEntityType:0] != 0;

    v42 = [v64 localizedStringForKey:@"Default Alert Times" value:&stru_210B8 table:@"MobileCalSettings"];
    v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    defaultAlarmsSpecifier = self->_defaultAlarmsSpecifier;
    self->_defaultAlarmsSpecifier = v43;

    [(PSSpecifier *)self->_defaultAlarmsSpecifier setProperty:self->_eventStore forKey:@"EKEventStore"];
    [(PSSpecifier *)self->_defaultAlarmsSpecifier setIdentifier:@"defaultAlertTimes"];
    v45 = [v64 localizedStringForKey:@"Location Suggestions" value:&stru_210B8 table:@"MobileCalSettings"];
    v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:"setSuggestEventLocations:specifier:" get:"suggestEventLocations:" detail:0 cell:6 edit:0];
    suggestedLocationsSpecifier = self->_suggestedLocationsSpecifier;
    self->_suggestedLocationsSpecifier = v46;

    [(PSSpecifier *)self->_suggestedLocationsSpecifier setIdentifier:@"locationSuggestions"];
    v48 = [v64 localizedStringForKey:@"Delegate Calendars" value:&stru_210B8 table:@"MobileCalSettings"];
    v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    showAccountsSupportingDelegationSpecifier = self->_showAccountsSupportingDelegationSpecifier;
    self->_showAccountsSupportingDelegationSpecifier = v49;

    [(PSSpecifier *)self->_showAccountsSupportingDelegationSpecifier setIdentifier:@"DELEGATE_CALENDARS"];
    v51 = [v64 localizedStringForKey:@"Delegate Calendars" value:&stru_210B8 table:@"MobileCalSettings"];
    v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    showSingleAccountSupportingDelegationSpecifier = self->_showSingleAccountSupportingDelegationSpecifier;
    self->_showSingleAccountSupportingDelegationSpecifier = v52;

    [(PSSpecifier *)self->_showSingleAccountSupportingDelegationSpecifier setIdentifier:@"DELEGATE_CALENDARS"];
    _defaultEventDurationIdentifiers = [(CalendarSettingsPlugin *)self _defaultEventDurationIdentifiers];
    _defaultEventDurationLocalizedStrings = [(CalendarSettingsPlugin *)self _defaultEventDurationLocalizedStrings];
    v56 = [v64 localizedStringForKey:@"Duration for New Events" value:&stru_210B8 table:@"MobileCalSettings"];
    v57 = [PSSpecifier preferenceSpecifierNamed:v56 target:self set:"setDefaultEventDuration:specifier:" get:"defaultEventDuration:" detail:objc_opt_class() cell:2 edit:0];
    defaultEventDurationSpecifier = self->_defaultEventDurationSpecifier;
    self->_defaultEventDurationSpecifier = v57;

    [(PSSpecifier *)self->_defaultEventDurationSpecifier setValues:_defaultEventDurationIdentifiers titles:_defaultEventDurationLocalizedStrings];
    [(PSSpecifier *)self->_defaultEventDurationSpecifier setIdentifier:@"durationForNewEvents"];
  }
}

- (id)_titlesForDaysToSync
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(CalendarSettingsPlugin *)self _localeSpecificLocalizedTwoWeeksSyncTitleWithBundle:v3];
  v5 = [(CalendarSettingsPlugin *)self _localeSpecificLocalizedMonthSyncTitleWithBundle:v3 months:1];
  v6 = [(CalendarSettingsPlugin *)self _localeSpecificLocalizedMonthSyncTitleWithBundle:v3 months:3];
  v7 = [(CalendarSettingsPlugin *)self _localeSpecificLocalizedMonthSyncTitleWithBundle:v3 months:6];
  v8 = [(CalendarSettingsPlugin *)self _localizedNoLimitSyncTitleInBundle:v3];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:5];

  return v9;
}

- (id)_localeSpecificLocalizedTwoWeeksSyncTitleWithBundle:(id)bundle
{
  v3 = [bundle localizedStringForKey:@"2 Week Sync Title" value:@"Events 2 Weeks Back" table:@"MobileCalSettings"];
  v4 = [NSString localizedStringWithFormat:v3, 2];

  return v4;
}

- (id)_localeSpecificLocalizedMonthSyncTitleWithBundle:(id)bundle months:(unint64_t)months
{
  v5 = [bundle localizedStringForKey:@"Month Sync Title" value:@"Events %ld Months Back" table:@"MobileCalSettings"];
  months = [NSString localizedStringWithFormat:v5, months];

  return months;
}

- (void)_freeSpecifiers
{
  showInviteeDeclinesSpecifier = self->_showInviteeDeclinesSpecifier;
  self->_showInviteeDeclinesSpecifier = 0;

  syncDaysSpecifier = self->_syncDaysSpecifier;
  self->_syncDaysSpecifier = 0;

  timeZoneSupportSpecifier = self->_timeZoneSupportSpecifier;
  self->_timeZoneSupportSpecifier = 0;

  defaultCalendarSpecifier = self->_defaultCalendarSpecifier;
  self->_defaultCalendarSpecifier = 0;

  identityListSpecifier = self->_identityListSpecifier;
  self->_identityListSpecifier = 0;

  defaultAlarmsSpecifier = self->_defaultAlarmsSpecifier;
  self->_defaultAlarmsSpecifier = 0;

  overlayCalendarSpecifier = self->_overlayCalendarSpecifier;
  self->_overlayCalendarSpecifier = 0;

  showWeekNumbersSpecifier = self->_showWeekNumbersSpecifier;
  self->_showWeekNumbersSpecifier = 0;

  weekViewStartsOnTodaySpecifier = self->_weekViewStartsOnTodaySpecifier;
  self->_weekViewStartsOnTodaySpecifier = 0;

  weekStartSpecifier = self->_weekStartSpecifier;
  self->_weekStartSpecifier = 0;

  suggestedLocationsSpecifier = self->_suggestedLocationsSpecifier;
  self->_suggestedLocationsSpecifier = 0;

  showAccountsSupportingDelegationSpecifier = self->_showAccountsSupportingDelegationSpecifier;
  self->_showAccountsSupportingDelegationSpecifier = 0;

  showSingleAccountSupportingDelegationSpecifier = self->_showSingleAccountSupportingDelegationSpecifier;
  self->_showSingleAccountSupportingDelegationSpecifier = 0;

  defaultEventDurationSpecifier = self->_defaultEventDurationSpecifier;
  self->_defaultEventDurationSpecifier = 0;
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  [(CalendarSettingsPlugin *)self _freeSpecifiers];
  [(CalendarSettingsPlugin *)self _createAllCommonSpecifiers];
  traitCollection = [(CalendarSettingsPlugin *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v6 setIdentifier:@"PLACARD_GROUP"];
    [v3 addObject:v6];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CalendarSettingsPlacard_Calendar" value:@"Calendar" table:@"MobileCalSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v9 setIdentifier:@"PLACARD"];
    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v10 = [v7 localizedStringForKey:@"Add or remove accounts value:manage Siri & Search table:{and customize how your calendar appears. [Learn more…](%@)", &stru_210B8, @"MobileCalSettings"}];
    helpkitURLString = [(CalendarSettingsPlugin *)self helpkitURLString];
    v12 = [NSString localizedStringWithFormat:v10, helpkitURLString];

    [v9 setProperty:v12 forKey:PSTableCellSubtitleTextKey];
    [v9 setProperty:kCalCalendarBundleIdentifier forKey:PSLazyIconAppID];
    [v3 addObject:v9];
  }

  else
  {
    v9 = 0;
  }

  if (!self->_appPolicy)
  {
    v13 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.mobilecal"];
    appPolicy = self->_appPolicy;
    self->_appPolicy = v13;

    [(PSSystemPolicyForApp *)self->_appPolicy setDelegate:self];
  }

  v15 = self->_appPolicy;
  if (v9)
  {
    v16 = [(PSSystemPolicyForApp *)v15 specifiersForPolicyOptions:41943040 force:0];
    v17 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:0x8000000 force:0];
    v18 = [v17 specifierForID:@"ACCOUNTS"];
    if (v18)
    {
      v19 = v18;
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"Calendar Accounts" value:&stru_210B8 table:@"MobileCalSettings"];
      [v19 setName:v21];
    }

    else
    {
      v19 = [v17 specifierForID:@"ADD_ACCOUNT"];
    }

    [v3 ps_insertObject:v19 afterObject:v9];
  }

  else
  {
    v16 = [(PSSystemPolicyForApp *)v15 specifiersForPolicyOptions:176160768 force:0];
  }

  [v3 addObjectsFromArray:v16];
  v22 = [PSSpecifier preferenceSpecifierNamed:&stru_210B8 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:v22];
  [v3 addObject:self->_timeZoneSupportSpecifier];
  [v3 addObject:self->_overlayCalendarSpecifier];
  [v3 addObject:self->_showWeekNumbersSpecifier];
  v23 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v23 userInterfaceIdiom];

  if ((EKUIUseLargeFormatPhoneUI() & 1) != 0 || userInterfaceIdiom)
  {
    [v3 addObject:self->_weekViewStartsOnTodaySpecifier];
  }

  [v3 addObject:self->_showInviteeDeclinesSpecifier];
  if ([(CalendarSettingsPlugin *)self _countOfAccountsSyncingCalendars]>= 1)
  {
    [v3 addObject:self->_syncDaysSpecifier];
  }

  [v3 addObject:self->_defaultAlarmsSpecifier];
  [v3 addObject:self->_defaultEventDurationSpecifier];
  weekStartSpecifier = [(CalendarSettingsPlugin *)self weekStartSpecifier];
  [v3 addObject:weekStartSpecifier];

  if ([(CalendarSettingsPlugin *)self _shouldShowDefaultCalendarSpecifier])
  {
    [v3 addObject:self->_defaultCalendarSpecifier];
  }

  accountsSupportingDelegation = [(CalendarSettingsPlugin *)self accountsSupportingDelegation];
  v27 = [accountsSupportingDelegation count];
  if (v27)
  {
    if (v27 == &def_F7BC + 1)
    {
      p_showSingleAccountSupportingDelegationSpecifier = &self->_showSingleAccountSupportingDelegationSpecifier;
      showSingleAccountSupportingDelegationSpecifier = self->_showSingleAccountSupportingDelegationSpecifier;
      firstObject = [accountsSupportingDelegation firstObject];
      [(PSSpecifier *)showSingleAccountSupportingDelegationSpecifier setProperty:firstObject forKey:@"CSSourceKey"];

      [(PSSpecifier *)self->_showSingleAccountSupportingDelegationSpecifier setProperty:&__kCFBooleanFalse forKey:@"CSPresentedFromDisambiguationControllerKey"];
    }

    else
    {
      p_showSingleAccountSupportingDelegationSpecifier = &self->_showAccountsSupportingDelegationSpecifier;
    }

    [v3 addObject:*p_showSingleAccountSupportingDelegationSpecifier];
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  self->_delegationSpecifierShowing = v31;
  [v3 addObject:self->_suggestedLocationsSpecifier];
  [(CalendarSettingsPlugin *)self setSpecifiers:v3];

  return v3;
}

- (id)helpkitURLString
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v4 = @"ipad581be0bc";
  }

  else
  {
    v4 = @"iphc37be2016";
  }

  return [@"helpkit://open?topic=" stringByAppendingString:v4];
}

- (BOOL)_shouldShowDefaultCalendarSpecifier
{
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  sources = [_eventStore sources];
  v4 = [NSPredicate predicateWithBlock:&stru_20AE0];
  v5 = [sources filteredArrayUsingPredicate:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [*(*(&v15 + 1) + 8 * v11) readWriteCalendarsForEntityType:{0, v15}];
      v9 += [v12 count];
      v13 = [v12 count];

      if (v13 > 1)
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 > 1;
}

- (void)setShowInviteeDeclinesEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  _CalSetAlertInviteeDeclines(bOOLValue);
}

- (id)showInviteeDeclinesEnabled:(id)enabled
{
  v3 = CalAlertInviteeDeclines() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setShowWeekNumbers:(id)numbers specifier:(id)specifier
{
  bOOLValue = [numbers BOOLValue];
  v5 = +[CUIKPreferences sharedPreferences];
  [v5 setShowWeekNumbers:bOOLValue];
}

- (id)showWeekNumbers:(id)numbers
{
  v3 = +[CUIKPreferences sharedPreferences];
  showWeekNumbers = [v3 showWeekNumbers];

  return [NSNumber numberWithBool:showWeekNumbers];
}

- (void)setWeekViewStartsOnToday:(id)today specifier:(id)specifier
{
  bOOLValue = [today BOOLValue];
  v5 = +[CUIKPreferences sharedPreferences];
  [v5 setWeekViewStartsOnToday:bOOLValue];
}

- (id)weekViewStartsOnToday:(id)today
{
  v3 = +[CUIKPreferences sharedPreferences];
  weekViewStartsOnToday = [v3 weekViewStartsOnToday];

  return [NSNumber numberWithBool:weekViewStartsOnToday];
}

- (void)setSuggestEventLocations:(id)locations specifier:(id)specifier
{
  bOOLValue = [locations BOOLValue];
  v5 = +[CDBPreferences shared];
  [v5 set_suggestEventLocations:bOOLValue];
}

- (id)suggestEventLocations:(id)locations
{
  v3 = +[CDBPreferences shared];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 get_suggestEventLocations]);

  return v4;
}

- (void)setImmediateAlarmCreation:(id)creation specifier:(id)specifier
{
  bOOLValue = [creation BOOLValue];
  v5 = +[CUIKPreferences sharedPreferences];
  [v5 setImmediateAlarmCreation:bOOLValue];
}

- (id)immediateAlarmCreation:(id)creation
{
  v3 = +[CUIKPreferences sharedPreferences];
  immediateAlarmCreation = [v3 immediateAlarmCreation];

  return [NSNumber numberWithBool:immediateAlarmCreation];
}

- (void)setDaysToSync:(id)sync specifier:(id)specifier
{
  syncCopy = sync;
  specifierCopy = specifier;
  if (syncCopy)
  {
    v7 = kCSLogHandle;
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v11 = 134217984;
      integerValue = [syncCopy integerValue];
      _os_log_impl(&def_F7BC, v8, OS_LOG_TYPE_DEFAULT, "Set days to sync: [%ld].", &v11, 0xCu);
    }

    integerValue2 = [syncCopy integerValue];
    v10 = +[CDBPreferences shared];
    [v10 set_kCalPreferredDaysToSyncKey:integerValue2];
  }
}

- (id)daysToSync:(id)sync
{
  v3 = +[CDBPreferences shared];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 get_kCalPreferredDaysToSyncKey]);

  return v4;
}

- (void)setDefaultCalendar:(id)calendar specifier:(id)specifier
{
  specifierCopy = specifier;
  if (calendar)
  {
    calendarCopy = calendar;
    _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
    v8 = [_eventStore calendarWithID:calendarCopy];

    _eventStore2 = [(CalendarSettingsPlugin *)self _eventStore];
    [_eventStore2 setDefaultCalendarForNewEvents:v8];
  }

  [(CalendarSettingsPlugin *)self reloadSpecifier:specifierCopy];
}

- (id)defaultCalendarName:(id)name
{
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  defaultCalendarForNewEvents = [_eventStore defaultCalendarForNewEvents];
  v5 = CUIKDisplayedTitleForCalendar();

  return v5;
}

- (id)weekStart:(id)start
{
  v3 = +[CUIKPreferences sharedPreferences];
  weekStart = [v3 weekStart];

  return weekStart;
}

- (id)timeZoneSupportEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = CalCopyDefaultTimeZoneSetting();
  if (v4)
  {
    v5 = v4;
    v6 = PSCityForSpecifier();
    if (v6 || (PSCityForTimeZone(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      name = [v6 name];
    }

    else
    {
      name = CFTimeZoneGetName(v5);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    name = [v9 localizedStringForKey:@"Time Zone Support Off" value:@"Off" table:@"MobileCalSettings"];
  }

  return name;
}

- (void)setOverlayCalendarID:(id)d specifier:(id)specifier
{
  if (d)
  {
    dCopy = d;
    v5 = +[CUIKPreferences sharedPreferences];
    [v5 setOverlayCalendarID:dCopy];
  }
}

- (id)overlayCalendarID:(id)d
{
  v3 = +[CUIKPreferences sharedPreferences];
  overlayCalendarID = [v3 overlayCalendarID];

  return overlayCalendarID;
}

- (void)setDefaultEventDuration:(id)duration specifier:(id)specifier
{
  if (duration)
  {
    [(CalendarSettingsPlugin *)self _defaultEventDurationForIdentifier:duration, specifier];
    v5 = v4;
    v6 = +[CalFoundationPreferences shared];
    [v6 setDefaultEventDuration:v5];
  }
}

- (id)defaultEventDuration:(id)duration
{
  v3 = +[CalFoundationPreferences shared];
  [v3 defaultEventDuration];
  v5 = v4;

  return [NSNumber numberWithDouble:v5 / 60.0];
}

- (void)_authenticateIfRequired
{
  if ([(APApplication *)self->calApplication isLocked])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_82B0;
    block[3] = &unk_209D0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v3 = +[APGuard sharedGuard];
    calApplication = self->calApplication;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_82C8;
    v6[3] = &unk_20B08;
    v6[4] = self;
    [v3 authenticateForSubject:calApplication completion:v6];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_8400;
    v5[3] = &unk_209D0;
    v5[4] = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)_cancelAuthentication
{
  v2 = +[APGuard sharedGuard];
  [v2 abortOngoingAuthWithCompletion:&stru_20B48];
}

- (void)_restrictToShield
{
  v3 = [APApplication applicationWithBundleIdentifier:kCalCalendarBundleIdentifier];
  calApplication = self->calApplication;
  self->calApplication = v3;

  if ([(APApplication *)self->calApplication isLocked])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_85D4;
    block[3] = &unk_209D0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_applicationWillAddDeactivationReasonNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  longLongValue = [v5 longLongValue];

  if (longLongValue == 3 && !self->_isActive)
  {

    [(CalendarSettingsPlugin *)self _restrictToShield];
  }
}

- (void)_applicationDidRemoveDeactivationReasonNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  longLongValue = [v5 longLongValue];

  if (longLongValue == 3 && self->_isActive)
  {

    [(CalendarSettingsPlugin *)self _authenticateIfRequired];
  }
}

- (id)accountsSupportingDelegation
{
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  sources = [_eventStore sources];
  v4 = [NSPredicate predicateWithBlock:&stru_20B68];
  v5 = [sources filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)writableEnabledIdentities
{
  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  delegateSources = [_eventStore delegateSources];
  v4 = [NSPredicate predicateWithBlock:&stru_20B88];
  v5 = [delegateSources filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)reloadSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  specifiers = [(CalendarSettingsPlugin *)self specifiers];
  [(CalendarSettingsPlugin *)self updateSpecifiers:specifiersCopy withSpecifiers:specifiers];
}

- (id)_eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v4 = [[EKEventStore alloc] initWithEKOptions:128];
    v5 = self->_eventStore;
    self->_eventStore = v4;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)_eventStoreChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:EKEventStoreChangedObjectIDsUserInfoKey];

  if ([v5 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([v11 entityType] == &dword_4 + 2 || objc_msgSend(v11, "entityType") == &def_F7BC + 1)
          {
            v12 = 1;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v12 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 1;
  }

  _eventStore = [(CalendarSettingsPlugin *)self _eventStore];
  v14 = [_eventStore readWriteCalendarCountForEntityType:0];
  numTotalCalendars = self->_numTotalCalendars;

  delegationSpecifierShowing = self->_delegationSpecifierShowing;
  accountsSupportingDelegation = [(CalendarSettingsPlugin *)self accountsSupportingDelegation];
  v18 = [accountsSupportingDelegation count];

  if (v12)
  {
    if (v14 != numTotalCalendars || delegationSpecifierShowing != (v18 != 0))
    {
      [(CalendarSettingsPlugin *)self reloadSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
    }
  }
}

- (int64_t)_countOfAccountsSyncingCalendars
{
  _accountStore = [(CalendarSettingsPlugin *)self _accountStore];
  v3 = [_accountStore accountIdentifiersEnabledToSyncDataclass:kAccountDataclassCalendars];

  v4 = [v3 count];
  return v4;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)_defaultEventDurationLocalizedStrings
{
  _defaultEventDurationIdentifiers = [(CalendarSettingsPlugin *)self _defaultEventDurationIdentifiers];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_defaultEventDurationIdentifiers count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = _defaultEventDurationIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CalendarSettingsPlugin *)self _defaultEventDurationForIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        v10 = CUIKDurationStringForTimeInterval();
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11 == [v5 count])
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)_defaultEventDurationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _defaultEventDurationIdentifiers = [(CalendarSettingsPlugin *)self _defaultEventDurationIdentifiers];
  if ([_defaultEventDurationIdentifiers containsObject:identifierCopy])
  {
    [identifierCopy doubleValue];
    v7 = v6 * 60.0;
  }

  else
  {
    v7 = 3600.0;
  }

  return v7;
}

@end