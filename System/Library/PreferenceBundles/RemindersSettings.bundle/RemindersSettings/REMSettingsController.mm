@interface REMSettingsController
+ (id)specifierForDefaultListWithTarget:(id)target;
- (BOOL)saveAppBadgeCountCriteriaIfNeeded;
- (BOOL)saveTodayNotificationFireTimeIfNeeded;
- (BOOL)shouldHideGrocerySectionIfNeeded;
- (REMSettingsController)init;
- (id)_accountSpecifiers;
- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)specifier;
- (id)clearCategorizationDetailText;
- (id)datePickerForSpecifier:(id)specifier;
- (id)defaultListName:(id)name;
- (id)disableAssignmentNotifications:(id)notifications;
- (id)enableAutoCompleteReminders:(id)reminders;
- (id)localizedPlacardSubtitle;
- (id)localizedPlacardTitle;
- (id)placardSpecifiersWithTitle:(id)title subtitle:(id)subtitle applicationIdentifier:(id)identifier;
- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)count;
- (id)showRemindersAsOverdue:(id)overdue;
- (id)specifiers;
- (id)timeZoneOverrideState:(id)state;
- (id)todayNotificationFooterText;
- (id)todayNotificationTimeSet:(id)set;
- (id)todayNotificationTimeString;
- (void)clearCategorizationButtonDidTapped:(id)tapped;
- (void)datePickerChanged:(id)changed;
- (void)datePickerEditingDidEnd:(id)end;
- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)picker;
- (void)didTapTodayNotificationTimeButton:(id)button;
- (void)performClearAction;
- (void)queryTimeZoneOverrideName;
- (void)refreshExternallyModifiableSpecifiers;
- (void)saveAndWakeDaemon;
- (void)setDisableAssignmentNotifications:(id)notifications specifier:(id)specifier;
- (void)setEnableAutoCompleteReminders:(id)reminders specifier:(id)specifier;
- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)count specifier:(id)specifier;
- (void)setShowRemindersAsOverdue:(id)overdue specifier:(id)specifier;
- (void)setTodayNotificationTimeSet:(id)set specifier:(id)specifier;
@end

@implementation REMSettingsController

- (REMSettingsController)init
{
  v10.receiver = self;
  v10.super_class = REMSettingsController;
  v2 = [(REMSettingsController *)&v10 init];
  if (v2)
  {
    v3 = [PSSystemPolicyForApp alloc];
    v4 = [v3 initWithBundleIdentifier:REMAppBundleIdentifier];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v4;

    v6 = v2->_appPolicy;
    if (objc_opt_respondsToSelector())
    {
      [(PSSystemPolicyForApp *)v2->_appPolicy setDelegate:v2];
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_36;
  }

  v120 = OBJC_IVAR___PSListController__specifiers;
  v4 = +[REMUserDefaults daemonUserDefaults];
  [(REMSettingsController *)self setDaemonUserDefaults:v4];

  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  todayNotificationFireTime = [daemonUserDefaults todayNotificationFireTime];
  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:todayNotificationFireTime];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  -[REMSettingsController setInitialShouldIncludeRemindersDueTodayInBadgeCount:](self, "setInitialShouldIncludeRemindersDueTodayInBadgeCount:", [daemonUserDefaults2 shouldIncludeRemindersDueTodayInBadgeCount]);

  [(REMSettingsController *)self setTitle:0];
  v8 = objc_opt_new();
  traitCollection = [(REMSettingsController *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    _accountSpecifiers = [(REMSettingsController *)self _accountSpecifiers];
    v12 = [_accountSpecifiers specifierForID:@"ACCOUNTS"];
    if (v12)
    {
      v13 = v12;
      v14 = REMSettingsBundleGet();
      v15 = [v14 localizedStringForKey:@"Reminders Accounts" value:&stru_35EE8 table:0];
      [v13 setName:v15];
    }

    else
    {
      v13 = [_accountSpecifiers specifierForID:@"ADD_ACCOUNT"];
    }

    localizedPlacardTitle = [(REMSettingsController *)self localizedPlacardTitle];
    localizedPlacardSubtitle = [(REMSettingsController *)self localizedPlacardSubtitle];
    v18 = [(REMSettingsController *)self placardSpecifiersWithTitle:localizedPlacardTitle subtitle:localizedPlacardSubtitle applicationIdentifier:@"com.apple.reminders"];
    [v8 addObjectsFromArray:v18];

    [v8 addObject:v13];
    v19 = [(REMSettingsController *)self _appPolicySpecifiersShouldIncludeAccountSpecifier:0];
    if ([v19 count])
    {
      [v8 addObjectsFromArray:v19];
    }
  }

  else
  {
    _accountSpecifiers = [(REMSettingsController *)self _appPolicySpecifiersShouldIncludeAccountSpecifier:1];
    if ([_accountSpecifiers count])
    {
      [v8 addObjectsFromArray:_accountSpecifiers];
    }
  }

  v20 = REMSettingsBundleGet();
  v21 = [v20 localizedStringForKey:@"Reminders created outside of a specific list are placed in this list." value:&stru_35EE8 table:0];
  v22 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v21];

  v23 = [REMSettingsController specifierForDefaultListWithTarget:self];
  [v23 setIdentifier:REMSettingsDefaultListIdentifier];
  [(REMSettingsController *)self setDefaultListSpecifier:v23];
  v128[0] = v22;
  v128[1] = v23;
  v24 = [NSArray arrayWithObjects:v128 count:2];
  [v8 addObjectsFromArray:v24];

  v25 = REMSettingsBundleGet();
  v26 = [v25 localizedStringForKey:@"All-Day Reminders" value:&stru_35EE8 table:0];
  todayNotificationFooterText = [(REMSettingsController *)self todayNotificationFooterText];
  v28 = [REMSettingsUtilities groupSpecifierWithHeader:v26 footer:todayNotificationFooterText];
  [(REMSettingsController *)self setTodayNotificationGroup:v28];

  v29 = REMSettingsBundleGet();
  v30 = [v29 localizedStringForKey:@"Today Notification" value:&stru_35EE8 table:0];
  v31 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v30 target:self cell:6 detail:0 keyName:@"todayNotificationFireTime" defaultValue:&__kCFBooleanTrue scope:0 set:"setTodayNotificationTimeSet:specifier:" get:"todayNotificationTimeSet:"];
  [(REMSettingsController *)self setTodayNotificationEnabledSwitch:v31];

  v32 = REMSettingsTodayNotificationIdentifier;
  todayNotificationEnabledSwitch = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  [todayNotificationEnabledSwitch setIdentifier:v32];

  v34 = REMSettingsBundleGet();
  v35 = [v34 localizedStringForKey:@"Time" value:&stru_35EE8 table:0];
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:"todayNotificationTimeString" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimeButton:v36];

  todayNotificationTimeButton = [(REMSettingsController *)self todayNotificationTimeButton];
  [todayNotificationTimeButton setButtonAction:"didTapTodayNotificationTimeButton:"];

  v38 = objc_opt_class();
  todayNotificationTimeButton2 = [(REMSettingsController *)self todayNotificationTimeButton];
  v40 = PSCellClassKey;
  [todayNotificationTimeButton2 setObject:v38 forKeyedSubscript:PSCellClassKey];

  v41 = [PSSpecifier preferenceSpecifierNamed:&stru_35EE8 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimePicker:v41];

  v42 = objc_opt_class();
  todayNotificationTimePicker = [(REMSettingsController *)self todayNotificationTimePicker];
  v119 = v40;
  [todayNotificationTimePicker setObject:v42 forKeyedSubscript:v40];

  +[PSDateTimePickerCell preferredHeight];
  v44 = [NSNumber numberWithDouble:?];
  todayNotificationTimePicker2 = [(REMSettingsController *)self todayNotificationTimePicker];
  [todayNotificationTimePicker2 setObject:v44 forKeyedSubscript:PSTableCellHeightKey];

  todayNotificationTimePicker3 = [(REMSettingsController *)self todayNotificationTimePicker];
  [todayNotificationTimePicker3 setTarget:self];

  todayNotificationGroup = [(REMSettingsController *)self todayNotificationGroup];
  v127[0] = todayNotificationGroup;
  todayNotificationEnabledSwitch2 = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  v127[1] = todayNotificationEnabledSwitch2;
  v49 = [NSArray arrayWithObjects:v127 count:2];
  [v8 addObjectsFromArray:v49];

  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    todayNotificationTimeButton3 = [(REMSettingsController *)self todayNotificationTimeButton];
    [v8 addObject:todayNotificationTimeButton3];
  }

  if ([(REMSettingsController *)self todayNotificationTimePickerVisible])
  {
    todayNotificationTimePicker4 = [(REMSettingsController *)self todayNotificationTimePicker];
    [v8 addObject:todayNotificationTimePicker4];
  }

  v53 = REMSettingsBundleGet();
  v54 = [v53 localizedStringForKey:@"Show all-day reminders as overdue starting on the next day." value:&stru_35EE8 table:0];
  v55 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v54];

  v56 = REMSettingsBundleGet();
  v57 = [v56 localizedStringForKey:@"Show as Overdue" value:&stru_35EE8 table:0];
  v58 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v57 target:self cell:6 detail:0 keyName:@"showRemindersAsOverdue" defaultValue:&__kCFBooleanTrue scope:0 set:"setShowRemindersAsOverdue:specifier:" get:"showRemindersAsOverdue:"];

  [v58 setIdentifier:REMSettingsShowAsOverdueIdentifier];
  [(REMSettingsController *)self setShowAsOverdue:v58];
  v126[0] = v55;
  v126[1] = v58;
  v59 = [NSArray arrayWithObjects:v126 count:2];
  [v8 addObjectsFromArray:v59];

  if (rem_feature_enabled())
  {
    v60 = REMSettingsBundleGet();
    v61 = [v60 localizedStringForKey:@"Set the time zone used to display and create reminders." value:&stru_35EE8 table:0];
    v62 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v61];

    v63 = REMSettingsBundleGet();
    v64 = [v63 localizedStringForKey:@"Time Zone" value:&stru_35EE8 table:0];

    v65 = [REMSettingsUtilities linkListPreferenceSpecifierNamed:v64 target:self keyName:@"timeZoneOverride" detail:NSClassFromString(@"RemindersSettings.TTRITimeZoneOverrideController") scope:0 get:"timeZoneOverrideState:"];
    [v65 setIdentifier:REMSettingsTimeZoneOverrideIdentifier];
    v66 = REMSettingsBundleGet();
    v67 = [v66 localizedStringForKey:@"Set the time zone used to display and create reminders." value:&stru_35EE8 table:0];
    [v65 setProperty:v67 forKey:PSFooterCellClassGroupKey];

    [(REMSettingsController *)self setTimeZoneOverride:v65];
    v125[0] = v62;
    v125[1] = v65;
    v68 = [NSArray arrayWithObjects:v125 count:2];
    [v8 addObjectsFromArray:v68];
  }

  v69 = REMSettingsBundleGet();
  v70 = [v69 localizedStringForKey:@"Badge Count" value:&stru_35EE8 table:0];
  v71 = REMSettingsBundleGet();
  v72 = [v71 localizedStringForKey:@"Include both overdue and due today items in badge count." value:&stru_35EE8 table:0];
  v73 = [REMSettingsUtilities groupSpecifierWithHeader:v70 footer:v72];

  v74 = REMSettingsBundleGet();
  v75 = [v74 localizedStringForKey:@"Include Due Today" value:&stru_35EE8 table:0];
  v76 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v75 target:self cell:6 detail:0 keyName:@"shouldIncludeRemindersDueTodayInBadgeCount" defaultValue:&__kCFBooleanFalse scope:0 set:"setShouldIncludeRemindersDueTodayInBadgeCount:specifier:" get:"shouldIncludeRemindersDueTodayInBadgeCount:"];

  v118 = PSAllowMultilineTitleKey;
  [v76 setProperty:&__kCFBooleanTrue forKey:?];
  [v76 setIdentifier:REMSettingsIncludeDueTodayIdentifier];
  [(REMSettingsController *)self setIncludeRemindersDueTodayInBadgeCount:v76];
  v124[0] = v73;
  v124[1] = v76;
  v77 = [NSArray arrayWithObjects:v124 count:2];
  [v8 addObjectsFromArray:v77];

  v78 = REMSettingsBundleGet();
  v79 = [v78 localizedStringForKey:@"Assigned Reminders" value:&stru_35EE8 table:0];
  v80 = [REMSettingsUtilities groupSpecifierWithHeader:v79 footer:0];

  v81 = REMSettingsBundleGet();
  v82 = [v81 localizedStringForKey:@"Mute Notifications" value:&stru_35EE8 table:0];
  v83 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v82 target:self cell:6 detail:0 keyName:@"disableAssignmentNotifications:" defaultValue:&__kCFBooleanFalse scope:0 set:"setDisableAssignmentNotifications:specifier:" get:"disableAssignmentNotifications:"];

  [v83 setIdentifier:REMSettingsMuteNotificationsIdentifier];
  [(REMSettingsController *)self setDisableAssignmentNotifications:v83];
  v123[0] = v80;
  v123[1] = v83;
  v84 = [NSArray arrayWithObjects:v123 count:2];
  [v8 addObjectsFromArray:v84];

  v85 = REMSettingsBundleGet();
  v86 = [v85 localizedStringForKey:@"When Adding Reminders" value:&stru_35EE8 table:0];

  v87 = [REMSettingsUtilities groupSpecifierWithHeader:v86 footer:0];
  v88 = REMSettingsBundleGet();
  v89 = [v88 localizedStringForKey:@"Show Suggestions" value:&stru_35EE8 table:0];
  v90 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v89 target:self cell:6 detail:0 keyName:@"enableAutoCompleteReminders:" defaultValue:&__kCFBooleanTrue scope:0 set:"setEnableAutoCompleteReminders:specifier:" get:"enableAutoCompleteReminders:"];

  [v90 setIdentifier:REMSettingsShowSuggestionsIdentifier];
  [(REMSettingsController *)self setEnableAutoCompleteReminders:v90];
  v122[0] = v87;
  v122[1] = v90;
  v91 = [NSArray arrayWithObjects:v122 count:2];
  [v8 addObjectsFromArray:v91];

  if (rem_feature_enabled())
  {
    v92 = +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels];
    if (![(REMSettingsController *)self shouldHideGrocerySectionIfNeeded])
    {
      if (v92)
      {
        v93 = @"Categorization";
      }

      else
      {
        v93 = @"Grocery Categorization";
      }

      goto LABEL_24;
    }
  }

  else
  {
    v92 = 0;
    if (![(REMSettingsController *)self shouldHideGrocerySectionIfNeeded])
    {
      v93 = @"Grocery Categorization";
LABEL_24:
      v94 = REMSettingsBundleGet();
      v95 = [v94 localizedStringForKey:v93 value:&stru_35EE8 table:0];

      v96 = REMSettingsBundleGet();
      v97 = [v96 localizedStringForKey:@"Add an additional language to automatically place grocery items into categories." value:&stru_35EE8 table:0];
      v98 = [REMSettingsUtilities groupSpecifierWithHeader:v95 footer:v97];

      [v8 addObject:v98];
      v99 = NSClassFromString(@"RemindersSettings.TTRIGroceryAddLanguageController");
      if (v99)
      {
        v100 = v99;
        v101 = REMSettingsBundleGet();
        v102 = [v101 localizedStringForKey:@"Add Language" value:&stru_35EE8 table:0];
        v103 = [PSSpecifier preferenceSpecifierNamed:v102 target:self set:0 get:0 detail:v100 cell:2 edit:v100];

        v104 = REMSettingsBundleGet();
        v105 = [v104 localizedStringForKey:@"Add an additional language to automatically place grocery items into categories." value:&stru_35EE8 table:0];
        [v103 setProperty:v105 forKey:PSFooterCellClassGroupKey];

        [v103 setProperty:&__kCFBooleanTrue forKey:v118];
        [v103 setIdentifier:REMSettingsGroceryAddLanguageIdentifier];
        [v8 addObject:v103];
      }
    }
  }

  if (![(REMSettingsController *)self shouldHideGrocerySectionIfNeeded]|| v92)
  {
    clearCategorizationDetailText = [(REMSettingsController *)self clearCategorizationDetailText];
    v107 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:clearCategorizationDetailText];

    if (v92)
    {
      v108 = REMSettingsBundleGet();
      v109 = v108;
      v110 = @"Reset Categories";
    }

    else
    {
      v111 = rem_feature_enabled();
      v108 = REMSettingsBundleGet();
      v109 = v108;
      if (v111)
      {
        v110 = @"Reset Grocery Categories";
      }

      else
      {
        v110 = @"Clear Categorization History";
      }
    }

    v112 = [v108 localizedStringForKey:v110 value:&stru_35EE8 table:0];

    v113 = [REMSettingsUtilities standardButtonSpecifierNamed:v112 target:self selector:"clearCategorizationButtonDidTapped:"];
    [v113 setObject:NSClassFromString(@"RemindersSettings.TTRIClearCategorizationHistoryCell") forKeyedSubscript:v119];
    [v113 setIdentifier:REMSettingsGroceryResetCategoriesIdentifier];
    v121[0] = v107;
    v121[1] = v113;
    v114 = [NSArray arrayWithObjects:v121 count:2];
    [v8 addObjectsFromArray:v114];
  }

  v115 = [v8 copy];
  v116 = *&self->PSListController_opaque[v120];
  *&self->PSListController_opaque[v120] = v115;

  v3 = *&self->PSListController_opaque[v120];
LABEL_36:

  return v3;
}

- (id)placardSpecifiersWithTitle:(id)title subtitle:(id)subtitle applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  subtitleCopy = subtitle;
  titleCopy = title;
  v11 = +[NSMutableArray array];
  v12 = +[PSSpecifier emptyGroupSpecifier];
  v13 = PSIDKey;
  [v12 setProperty:@"PLACARD_GROUP" forKey:PSIDKey];
  [v11 addObject:v12];
  v14 = [PSSpecifier preferenceSpecifierNamed:titleCopy target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v14 setProperty:@"PLACARD" forKey:v13];
  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:subtitleCopy forKey:PSTableCellSubtitleTextKey];

  [v14 setProperty:identifierCopy forKey:PSLazyIconAppID];
  [v11 addObject:v14];
  v15 = [v11 copy];

  return v15;
}

- (id)localizedPlacardTitle
{
  v2 = REMSettingsBundleGet();
  v3 = [v2 localizedStringForKey:@"Reminders" value:&stru_35EE8 table:0];

  return v3;
}

- (id)localizedPlacardSubtitle
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];
  v4 = @"helpkit://open?topic=f898416824ef";
  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v4 = @"helpkit://open?topic=ipad3cd77052";
  }

  v5 = v4;

  v6 = REMSettingsBundleGet();
  v7 = [v6 localizedStringForKey:@"Add or remove accounts value:manage Siri & Search and location access table:{and customize how your reminders work. [Learn more…](%@)", &stru_35EE8, 0}];
  v8 = [NSString stringWithFormat:v7, v5];

  return v8;
}

+ (id)specifierForDefaultListWithTarget:(id)target
{
  targetCopy = target;
  v4 = REMSettingsBundleGet();
  v5 = [v4 localizedStringForKey:@"Default List" value:&stru_35EE8 table:0];

  v6 = [REMSettingsUtilities linkListPreferenceSpecifierNamed:v5 target:targetCopy keyName:@"preferredDefaultListID" detail:objc_opt_class() scope:0 get:"defaultListName:"];

  return v6;
}

- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)specifier
{
  if (specifier)
  {
    v3 = 176226305;
  }

  else
  {
    v3 = 42008577;
  }

  appPolicy = [(REMSettingsController *)self appPolicy];
  v5 = [appPolicy specifiersForPolicyOptions:v3 force:0];

  return v5;
}

- (id)_accountSpecifiers
{
  appPolicy = [(REMSettingsController *)self appPolicy];
  v3 = [appPolicy specifiersForPolicyOptions:0x8000000 force:0];

  return v3;
}

- (void)saveAndWakeDaemon
{
  saveTodayNotificationFireTimeIfNeeded = [(REMSettingsController *)self saveTodayNotificationFireTimeIfNeeded];
  saveAppBadgeCountCriteriaIfNeeded = [(REMSettingsController *)self saveAppBadgeCountCriteriaIfNeeded];
  if ((saveTodayNotificationFireTimeIfNeeded & 1) != 0 || saveAppBadgeCountCriteriaIfNeeded)
  {
    v6 = objc_alloc_init(REMStore);
    v5 = [v6 fetchDefaultListWithError:0];
  }
}

- (id)defaultListName:(id)name
{
  v3 = objc_alloc_init(REMStore);
  v10 = 0;
  v4 = [v3 fetchDefaultListWithError:&v10];
  displayName = [v4 displayName];
  v6 = displayName;
  if (displayName)
  {
    v7 = displayName;
  }

  else
  {
    v7 = &stru_35EE8;
  }

  v8 = v7;

  return v7;
}

- (id)todayNotificationTimeSet:(id)set
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  v4 = unsavedTodayNotificationFireTime != 0;

  return [NSNumber numberWithBool:v4];
}

- (void)setTodayNotificationTimeSet:(id)set specifier:(id)specifier
{
  specifierCopy = specifier;
  setCopy = set;
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#TODAY_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v10 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Toggle Today Notifications Settings" table:0 locale:v12 bundleURL:bundleURL];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5560;
  v20[3] = &unk_352B0;
  v20[4] = self;
  v16 = unsavedTodayNotificationFireTime;
  v21 = v16;
  v17 = specifierCopy;
  v22 = v17;
  v18 = objc_retainBlock(v20);
  [(REMSettingsController *)self pe_registerUndoActionName:v15 associatedDeepLink:v10 undoAction:v18];
  LODWORD(v13) = [setCopy BOOLValue];

  v19 = 0;
  if (v13)
  {
    v19 = [REMDaemonUserDefaults todayNotificationFireTimeFromStorageNumber:0];
  }

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v19];
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:0];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (void)didTapTodayNotificationTimeButton:(id)button
{
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:[(REMSettingsController *)self todayNotificationTimePickerVisible]^ 1];

  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (id)datePickerForSpecifier:(id)specifier
{
  v4 = objc_alloc_init(UIDatePicker);
  [v4 setDatePickerMode:0];
  [v4 setMinuteInterval:5];
  [v4 setPreferredDatePickerStyle:1];
  [v4 setRoundsToMinuteInterval:0];
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 dateFromComponents:unsavedTodayNotificationFireTime];

    if (v7)
    {
      [v4 setDate:v7];
      [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v4];
    }
  }

  [v4 addTarget:self action:"datePickerEditingDidEnd:" forControlEvents:0x40000];

  return v4;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  v8 = REMCheckedDynamicCast();

  date = [v8 date];
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:96 fromDate:date];

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v7];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:0];
}

- (void)datePickerEditingDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  v5 = REMCheckedDynamicCast();

  [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v5];
}

- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)picker
{
  pickerCopy = picker;
  if ([pickerCopy minuteInterval] != &dword_0 + 1)
  {
    date = [pickerCopy date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 component:64 fromDate:date];

    if (v5 % [pickerCopy minuteInterval])
    {
      [pickerCopy setMinuteInterval:1];
    }
  }
}

- (BOOL)saveTodayNotificationFireTimeIfNeeded
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  todayNotificationFireTime = [daemonUserDefaults todayNotificationFireTime];

  if (unsavedTodayNotificationFireTime != todayNotificationFireTime)
  {
    unsavedTodayNotificationFireTime2 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
    daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
    [daemonUserDefaults2 setTodayNotificationFireTime:unsavedTodayNotificationFireTime2];
  }

  return unsavedTodayNotificationFireTime != todayNotificationFireTime;
}

- (id)todayNotificationTimeString
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setTimeStyle:1];
    [v3 setDateStyle:0];
    v4 = +[NSCalendar currentCalendar];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    v6 = [v4 dateBySettingHour:objc_msgSend(unsavedTodayNotificationFireTime minute:"hour") second:objc_msgSend(unsavedTodayNotificationFireTime ofDate:"minute") options:{0, v5, 0}];
    v7 = [v3 stringFromDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)todayNotificationFooterText
{
  v2 = REMSettingsBundleGet();
  v3 = [v2 localizedStringForKey:@"Set a time to show a notification when there are all-day reminders (with no specified time)." value:&stru_35EE8 table:0];

  return v3;
}

- (void)refreshExternallyModifiableSpecifiers
{
  if (*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    defaultListSpecifier = [(REMSettingsController *)self defaultListSpecifier];
    [(REMSettingsController *)self reloadSpecifier:defaultListSpecifier];
  }
}

- (id)timeZoneOverrideState:(id)state
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  timeZoneOverrideEnabled = [daemonUserDefaults timeZoneOverrideEnabled];

  v6 = REMSettingsBundleGet();
  v7 = [v6 localizedStringForKey:@"Automatic" value:&stru_35EE8 table:0];

  if (timeZoneOverrideEnabled)
  {
    timeZoneOverrideName = [(REMSettingsController *)self timeZoneOverrideName];
  }

  else
  {
    timeZoneOverrideName = v7;
  }

  v9 = timeZoneOverrideName;

  return v9;
}

- (void)queryTimeZoneOverrideName
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  timeZoneOverride = [daemonUserDefaults timeZoneOverride];

  v5 = [NSTimeZone timeZoneWithName:timeZoneOverride];
  v6 = [GEORegionStore alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithLocale:v7];

  objc_initWeak(&location, self);
  name = [v5 name];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5FA4;
  v10[3] = &unk_352D8;
  objc_copyWeak(&v11, &location);
  [v8 regionsWithTimeZoneName:name types:8 sort:2 cursor:v10 finished:&stru_35318];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)disableAssignmentNotifications:(id)notifications
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [daemonUserDefaults enableAssignmentNotifications] ^ 1);

  return v4;
}

- (void)setDisableAssignmentNotifications:(id)notifications specifier:(id)specifier
{
  notificationsCopy = notifications;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  enableAssignmentNotifications = [daemonUserDefaults enableAssignmentNotifications];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#MUTE_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Mute Notifications Settings" table:0 locale:v11 bundleURL:bundleURL];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_62C4;
  v17[3] = &unk_35340;
  v17[4] = self;
  v18 = enableAssignmentNotifications;
  v15 = objc_retainBlock(v17);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  LODWORD(v11) = [notificationsCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setEnableAssignmentNotifications:v11 ^ 1];
}

- (id)clearCategorizationDetailText
{
  if (rem_feature_enabled())
  {
    v2 = +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels];
    v3 = REMSettingsBundleGet();
    v4 = v3;
    if (v2)
    {
      v5 = @"If you manually moved items in your grocery or auto-categorized lists, you can clear the learned categorization for new items you add. Lists shared with you won’t be affected.";
    }

    else
    {
      v5 = @"If you manually moved items in your grocery lists, you can clear the learned categorization for new items you add. Lists shared with you won’t be affected.";
    }
  }

  else
  {
    v3 = REMSettingsBundleGet();
    v4 = v3;
    v5 = @"Clearing manual categorization for your grocery lists applies to all of your devices and grocery lists you’ve shared. Lists shared with you will not be affected";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_35EE8 table:0];

  return v6;
}

- (void)clearCategorizationButtonDidTapped:(id)tapped
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == &dword_0 + 1)
  {
    clearCategorizationDetailText = [(REMSettingsController *)self clearCategorizationDetailText];
  }

  else
  {
    clearCategorizationDetailText = 0;
  }

  v6 = [UIAlertController alertControllerWithTitle:0 message:clearCategorizationDetailText preferredStyle:0];
  if (rem_feature_enabled() && +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels])
  {
    v7 = REMSettingsBundleGet();
    v8 = v7;
    v9 = @"Reset Categories";
  }

  else
  {
    v10 = rem_feature_enabled();
    v7 = REMSettingsBundleGet();
    v8 = v7;
    if (v10)
    {
      v9 = @"Reset Grocery Categories";
    }

    else
    {
      v9 = @"Clear Categorization History";
    }
  }

  v11 = [v7 localizedStringForKey:v9 value:&stru_35EE8 table:0];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_6614;
  v16[3] = &unk_35368;
  v16[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:2 handler:v16];
  [v6 addAction:v12];

  v13 = REMSettingsBundleGet();
  v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_35EE8 table:0];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:&stru_353A8];
  [v6 addAction:v15];

  [(REMSettingsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)performClearAction
{
  v2 = objc_alloc_init(REMStore);
  [v2 clearAutoCategorizationLocalCorrectionsOfListsOwnedByCurrentUserWithCompletionHandler:&stru_353C8];
}

- (id)showRemindersAsOverdue:(id)overdue
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults showRemindersAsOverdue]);

  return v4;
}

- (void)setShowRemindersAsOverdue:(id)overdue specifier:(id)specifier
{
  overdueCopy = overdue;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  showRemindersAsOverdue = [daemonUserDefaults showRemindersAsOverdue];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#SHOW_AS_OVERDUE", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show As Overdue Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_693C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = showRemindersAsOverdue;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [overdueCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setShowRemindersAsOverdue:bOOLValue];
}

- (id)enableAutoCompleteReminders:(id)reminders
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults enableAutoCompleteReminders]);

  return v4;
}

- (void)setEnableAutoCompleteReminders:(id)reminders specifier:(id)specifier
{
  remindersCopy = reminders;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  enableAutoCompleteReminders = [daemonUserDefaults enableAutoCompleteReminders];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#SHOW_SUGGESTIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show Suggestions Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6BC4;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = enableAutoCompleteReminders;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [remindersCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setEnableAutoCompleteReminders:bOOLValue];
}

- (BOOL)saveAppBadgeCountCriteriaIfNeeded
{
  initialShouldIncludeRemindersDueTodayInBadgeCount = [(REMSettingsController *)self initialShouldIncludeRemindersDueTodayInBadgeCount];
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  shouldIncludeRemindersDueTodayInBadgeCount = [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount];

  return initialShouldIncludeRemindersDueTodayInBadgeCount ^ shouldIncludeRemindersDueTodayInBadgeCount;
}

- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)count
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount]);

  return v4;
}

- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)count specifier:(id)specifier
{
  countCopy = count;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  shouldIncludeRemindersDueTodayInBadgeCount = [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#INCLUDE_DUE_TODAY", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Include Due Today Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6E9C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = shouldIncludeRemindersDueTodayInBadgeCount;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [countCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setShouldIncludeRemindersDueTodayInBadgeCount:bOOLValue];
}

- (BOOL)shouldHideGrocerySectionIfNeeded
{
  v2 = objc_alloc_init(REMStore);
  v15 = 0;
  v3 = [v2 fetchAccountsWithError:&v15];
  v4 = v15;
  if (v4)
  {
    v5 = +[REMLog utility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_234B8(v4, v5);
    }

    goto LABEL_4;
  }

  v7 = [NSPredicate predicateWithBlock:&stru_35408];
  v5 = [v3 filteredArrayUsingPredicate:v7];

  if (![v5 count])
  {
LABEL_4:
    LOBYTE(v6) = 1;
    goto LABEL_10;
  }

  v8 = +[REMUserDefaults daemonUserDefaults];
  preferredLocalizations = [v8 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v11 = firstObject;
  if (firstObject)
  {
    localeIdentifier = firstObject;
  }

  else
  {
    v13 = +[NSLocale currentLocale];
    localeIdentifier = [v13 localeIdentifier];
  }

  v6 = [_TtC19ReminderKitInternal20REMGroceryDummyModel isGrocerySupportedForLocaleWithIdentifier:localeIdentifier]^ 1;
LABEL_10:

  return v6;
}

@end