@interface REMSettingsController
+ (id)specifierForDefaultListWithTarget:(id)a3;
- (BOOL)saveAppBadgeCountCriteriaIfNeeded;
- (BOOL)saveTodayNotificationFireTimeIfNeeded;
- (BOOL)shouldHideGrocerySectionIfNeeded;
- (REMSettingsController)init;
- (id)_accountSpecifiers;
- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)a3;
- (id)clearCategorizationDetailText;
- (id)datePickerForSpecifier:(id)a3;
- (id)defaultListName:(id)a3;
- (id)disableAssignmentNotifications:(id)a3;
- (id)enableAutoCompleteReminders:(id)a3;
- (id)localizedPlacardSubtitle;
- (id)localizedPlacardTitle;
- (id)placardSpecifiersWithTitle:(id)a3 subtitle:(id)a4 applicationIdentifier:(id)a5;
- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)a3;
- (id)showRemindersAsOverdue:(id)a3;
- (id)specifiers;
- (id)timeZoneOverrideState:(id)a3;
- (id)todayNotificationFooterText;
- (id)todayNotificationTimeSet:(id)a3;
- (id)todayNotificationTimeString;
- (void)clearCategorizationButtonDidTapped:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)datePickerEditingDidEnd:(id)a3;
- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)a3;
- (void)didTapTodayNotificationTimeButton:(id)a3;
- (void)performClearAction;
- (void)queryTimeZoneOverrideName;
- (void)refreshExternallyModifiableSpecifiers;
- (void)saveAndWakeDaemon;
- (void)setDisableAssignmentNotifications:(id)a3 specifier:(id)a4;
- (void)setEnableAutoCompleteReminders:(id)a3 specifier:(id)a4;
- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)a3 specifier:(id)a4;
- (void)setShowRemindersAsOverdue:(id)a3 specifier:(id)a4;
- (void)setTodayNotificationTimeSet:(id)a3 specifier:(id)a4;
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

  v5 = [(REMSettingsController *)self daemonUserDefaults];
  v6 = [v5 todayNotificationFireTime];
  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v6];

  v7 = [(REMSettingsController *)self daemonUserDefaults];
  -[REMSettingsController setInitialShouldIncludeRemindersDueTodayInBadgeCount:](self, "setInitialShouldIncludeRemindersDueTodayInBadgeCount:", [v7 shouldIncludeRemindersDueTodayInBadgeCount]);

  [(REMSettingsController *)self setTitle:0];
  v8 = objc_opt_new();
  v9 = [(REMSettingsController *)self traitCollection];
  v10 = [v9 pe_isSettingsFeatureDescriptionCellSupported];

  if (v10)
  {
    v11 = [(REMSettingsController *)self _accountSpecifiers];
    v12 = [v11 specifierForID:@"ACCOUNTS"];
    if (v12)
    {
      v13 = v12;
      v14 = REMSettingsBundleGet();
      v15 = [v14 localizedStringForKey:@"Reminders Accounts" value:&stru_35EE8 table:0];
      [v13 setName:v15];
    }

    else
    {
      v13 = [v11 specifierForID:@"ADD_ACCOUNT"];
    }

    v16 = [(REMSettingsController *)self localizedPlacardTitle];
    v17 = [(REMSettingsController *)self localizedPlacardSubtitle];
    v18 = [(REMSettingsController *)self placardSpecifiersWithTitle:v16 subtitle:v17 applicationIdentifier:@"com.apple.reminders"];
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
    v11 = [(REMSettingsController *)self _appPolicySpecifiersShouldIncludeAccountSpecifier:1];
    if ([v11 count])
    {
      [v8 addObjectsFromArray:v11];
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
  v27 = [(REMSettingsController *)self todayNotificationFooterText];
  v28 = [REMSettingsUtilities groupSpecifierWithHeader:v26 footer:v27];
  [(REMSettingsController *)self setTodayNotificationGroup:v28];

  v29 = REMSettingsBundleGet();
  v30 = [v29 localizedStringForKey:@"Today Notification" value:&stru_35EE8 table:0];
  v31 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v30 target:self cell:6 detail:0 keyName:@"todayNotificationFireTime" defaultValue:&__kCFBooleanTrue scope:0 set:"setTodayNotificationTimeSet:specifier:" get:"todayNotificationTimeSet:"];
  [(REMSettingsController *)self setTodayNotificationEnabledSwitch:v31];

  v32 = REMSettingsTodayNotificationIdentifier;
  v33 = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  [v33 setIdentifier:v32];

  v34 = REMSettingsBundleGet();
  v35 = [v34 localizedStringForKey:@"Time" value:&stru_35EE8 table:0];
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:"todayNotificationTimeString" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimeButton:v36];

  v37 = [(REMSettingsController *)self todayNotificationTimeButton];
  [v37 setButtonAction:"didTapTodayNotificationTimeButton:"];

  v38 = objc_opt_class();
  v39 = [(REMSettingsController *)self todayNotificationTimeButton];
  v40 = PSCellClassKey;
  [v39 setObject:v38 forKeyedSubscript:PSCellClassKey];

  v41 = [PSSpecifier preferenceSpecifierNamed:&stru_35EE8 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimePicker:v41];

  v42 = objc_opt_class();
  v43 = [(REMSettingsController *)self todayNotificationTimePicker];
  v119 = v40;
  [v43 setObject:v42 forKeyedSubscript:v40];

  +[PSDateTimePickerCell preferredHeight];
  v44 = [NSNumber numberWithDouble:?];
  v45 = [(REMSettingsController *)self todayNotificationTimePicker];
  [v45 setObject:v44 forKeyedSubscript:PSTableCellHeightKey];

  v46 = [(REMSettingsController *)self todayNotificationTimePicker];
  [v46 setTarget:self];

  v47 = [(REMSettingsController *)self todayNotificationGroup];
  v127[0] = v47;
  v48 = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  v127[1] = v48;
  v49 = [NSArray arrayWithObjects:v127 count:2];
  [v8 addObjectsFromArray:v49];

  v50 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (v50)
  {
    v51 = [(REMSettingsController *)self todayNotificationTimeButton];
    [v8 addObject:v51];
  }

  if ([(REMSettingsController *)self todayNotificationTimePickerVisible])
  {
    v52 = [(REMSettingsController *)self todayNotificationTimePicker];
    [v8 addObject:v52];
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
    v106 = [(REMSettingsController *)self clearCategorizationDetailText];
    v107 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v106];

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

- (id)placardSpecifiersWithTitle:(id)a3 subtitle:(id)a4 applicationIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSMutableArray array];
  v12 = +[PSSpecifier emptyGroupSpecifier];
  v13 = PSIDKey;
  [v12 setProperty:@"PLACARD_GROUP" forKey:PSIDKey];
  [v11 addObject:v12];
  v14 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v14 setProperty:@"PLACARD" forKey:v13];
  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:v9 forKey:PSTableCellSubtitleTextKey];

  [v14 setProperty:v8 forKey:PSLazyIconAppID];
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
  v3 = [v2 userInterfaceIdiom];
  v4 = @"helpkit://open?topic=f898416824ef";
  if (v3 == &dword_0 + 1)
  {
    v4 = @"helpkit://open?topic=ipad3cd77052";
  }

  v5 = v4;

  v6 = REMSettingsBundleGet();
  v7 = [v6 localizedStringForKey:@"Add or remove accounts value:manage Siri & Search and location access table:{and customize how your reminders work. [Learn more…](%@)", &stru_35EE8, 0}];
  v8 = [NSString stringWithFormat:v7, v5];

  return v8;
}

+ (id)specifierForDefaultListWithTarget:(id)a3
{
  v3 = a3;
  v4 = REMSettingsBundleGet();
  v5 = [v4 localizedStringForKey:@"Default List" value:&stru_35EE8 table:0];

  v6 = [REMSettingsUtilities linkListPreferenceSpecifierNamed:v5 target:v3 keyName:@"preferredDefaultListID" detail:objc_opt_class() scope:0 get:"defaultListName:"];

  return v6;
}

- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 176226305;
  }

  else
  {
    v3 = 42008577;
  }

  v4 = [(REMSettingsController *)self appPolicy];
  v5 = [v4 specifiersForPolicyOptions:v3 force:0];

  return v5;
}

- (id)_accountSpecifiers
{
  v2 = [(REMSettingsController *)self appPolicy];
  v3 = [v2 specifiersForPolicyOptions:0x8000000 force:0];

  return v3;
}

- (void)saveAndWakeDaemon
{
  v3 = [(REMSettingsController *)self saveTodayNotificationFireTimeIfNeeded];
  v4 = [(REMSettingsController *)self saveAppBadgeCountCriteriaIfNeeded];
  if ((v3 & 1) != 0 || v4)
  {
    v6 = objc_alloc_init(REMStore);
    v5 = [v6 fetchDefaultListWithError:0];
  }
}

- (id)defaultListName:(id)a3
{
  v3 = objc_alloc_init(REMStore);
  v10 = 0;
  v4 = [v3 fetchDefaultListWithError:&v10];
  v5 = [v4 displayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_35EE8;
  }

  v8 = v7;

  return v7;
}

- (id)todayNotificationTimeSet:(id)a3
{
  v3 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  v4 = v3 != 0;

  return [NSNumber numberWithBool:v4];
}

- (void)setTodayNotificationTimeSet:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  v9 = [NSString stringWithFormat:@"%@#TODAY_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v10 = [NSURL URLWithString:v9];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Toggle Today Notifications Settings" table:0 locale:v12 bundleURL:v14];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5560;
  v20[3] = &unk_352B0;
  v20[4] = self;
  v16 = v8;
  v21 = v16;
  v17 = v6;
  v22 = v17;
  v18 = objc_retainBlock(v20);
  [(REMSettingsController *)self pe_registerUndoActionName:v15 associatedDeepLink:v10 undoAction:v18];
  LODWORD(v13) = [v7 BOOLValue];

  v19 = 0;
  if (v13)
  {
    v19 = [REMDaemonUserDefaults todayNotificationFireTimeFromStorageNumber:0];
  }

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v19];
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:0];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (void)didTapTodayNotificationTimeButton:(id)a3
{
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:[(REMSettingsController *)self todayNotificationTimePickerVisible]^ 1];

  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = objc_alloc_init(UIDatePicker);
  [v4 setDatePickerMode:0];
  [v4 setMinuteInterval:5];
  [v4 setPreferredDatePickerStyle:1];
  [v4 setRoundsToMinuteInterval:0];
  v5 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (v5)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 dateFromComponents:v5];

    if (v7)
    {
      [v4 setDate:v7];
      [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v4];
    }
  }

  [v4 addTarget:self action:"datePickerEditingDidEnd:" forControlEvents:0x40000];

  return v4;
}

- (void)datePickerChanged:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v8 = REMCheckedDynamicCast();

  v5 = [v8 date];
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:96 fromDate:v5];

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v7];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:0];
}

- (void)datePickerEditingDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = REMCheckedDynamicCast();

  [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v5];
}

- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)a3
{
  v6 = a3;
  if ([v6 minuteInterval] != &dword_0 + 1)
  {
    v3 = [v6 date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 component:64 fromDate:v3];

    if (v5 % [v6 minuteInterval])
    {
      [v6 setMinuteInterval:1];
    }
  }
}

- (BOOL)saveTodayNotificationFireTimeIfNeeded
{
  v3 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  v4 = [(REMSettingsController *)self daemonUserDefaults];
  v5 = [v4 todayNotificationFireTime];

  if (v3 != v5)
  {
    v6 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
    v7 = [(REMSettingsController *)self daemonUserDefaults];
    [v7 setTodayNotificationFireTime:v6];
  }

  return v3 != v5;
}

- (id)todayNotificationTimeString
{
  v2 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (v2)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setTimeStyle:1];
    [v3 setDateStyle:0];
    v4 = +[NSCalendar currentCalendar];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    v6 = [v4 dateBySettingHour:objc_msgSend(v2 minute:"hour") second:objc_msgSend(v2 ofDate:"minute") options:{0, v5, 0}];
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
    v3 = [(REMSettingsController *)self defaultListSpecifier];
    [(REMSettingsController *)self reloadSpecifier:v3];
  }
}

- (id)timeZoneOverrideState:(id)a3
{
  v4 = [(REMSettingsController *)self daemonUserDefaults];
  v5 = [v4 timeZoneOverrideEnabled];

  v6 = REMSettingsBundleGet();
  v7 = [v6 localizedStringForKey:@"Automatic" value:&stru_35EE8 table:0];

  if (v5)
  {
    v8 = [(REMSettingsController *)self timeZoneOverrideName];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (void)queryTimeZoneOverrideName
{
  v3 = [(REMSettingsController *)self daemonUserDefaults];
  v4 = [v3 timeZoneOverride];

  v5 = [NSTimeZone timeZoneWithName:v4];
  v6 = [GEORegionStore alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithLocale:v7];

  objc_initWeak(&location, self);
  v9 = [v5 name];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5FA4;
  v10[3] = &unk_352D8;
  objc_copyWeak(&v11, &location);
  [v8 regionsWithTimeZoneName:v9 types:8 sort:2 cursor:v10 finished:&stru_35318];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)disableAssignmentNotifications:(id)a3
{
  v3 = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 enableAssignmentNotifications] ^ 1);

  return v4;
}

- (void)setDisableAssignmentNotifications:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(REMSettingsController *)self daemonUserDefaults];
  v7 = [v6 enableAssignmentNotifications];

  v8 = [NSString stringWithFormat:@"%@#MUTE_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Mute Notifications Settings" table:0 locale:v11 bundleURL:v13];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_62C4;
  v17[3] = &unk_35340;
  v17[4] = self;
  v18 = v7;
  v15 = objc_retainBlock(v17);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  LODWORD(v11) = [v5 BOOLValue];

  v16 = [(REMSettingsController *)self daemonUserDefaults];
  [v16 setEnableAssignmentNotifications:v11 ^ 1];
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

- (void)clearCategorizationButtonDidTapped:(id)a3
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == &dword_0 + 1)
  {
    v5 = [(REMSettingsController *)self clearCategorizationDetailText];
  }

  else
  {
    v5 = 0;
  }

  v6 = [UIAlertController alertControllerWithTitle:0 message:v5 preferredStyle:0];
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

- (id)showRemindersAsOverdue:(id)a3
{
  v3 = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 showRemindersAsOverdue]);

  return v4;
}

- (void)setShowRemindersAsOverdue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(REMSettingsController *)self daemonUserDefaults];
  v7 = [v6 showRemindersAsOverdue];

  v8 = [NSString stringWithFormat:@"%@#SHOW_AS_OVERDUE", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show As Overdue Settings" table:0 locale:v11 bundleURL:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_693C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = v7;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  v16 = [v5 BOOLValue];

  v17 = [(REMSettingsController *)self daemonUserDefaults];
  [v17 setShowRemindersAsOverdue:v16];
}

- (id)enableAutoCompleteReminders:(id)a3
{
  v3 = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 enableAutoCompleteReminders]);

  return v4;
}

- (void)setEnableAutoCompleteReminders:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(REMSettingsController *)self daemonUserDefaults];
  v7 = [v6 enableAutoCompleteReminders];

  v8 = [NSString stringWithFormat:@"%@#SHOW_SUGGESTIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show Suggestions Settings" table:0 locale:v11 bundleURL:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6BC4;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = v7;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  v16 = [v5 BOOLValue];

  v17 = [(REMSettingsController *)self daemonUserDefaults];
  [v17 setEnableAutoCompleteReminders:v16];
}

- (BOOL)saveAppBadgeCountCriteriaIfNeeded
{
  v3 = [(REMSettingsController *)self initialShouldIncludeRemindersDueTodayInBadgeCount];
  v4 = [(REMSettingsController *)self daemonUserDefaults];
  v5 = [v4 shouldIncludeRemindersDueTodayInBadgeCount];

  return v3 ^ v5;
}

- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)a3
{
  v3 = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldIncludeRemindersDueTodayInBadgeCount]);

  return v4;
}

- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(REMSettingsController *)self daemonUserDefaults];
  v7 = [v6 shouldIncludeRemindersDueTodayInBadgeCount];

  v8 = [NSString stringWithFormat:@"%@#INCLUDE_DUE_TODAY", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Include Due Today Settings" table:0 locale:v11 bundleURL:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6E9C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = v7;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  v16 = [v5 BOOLValue];

  v17 = [(REMSettingsController *)self daemonUserDefaults];
  [v17 setShouldIncludeRemindersDueTodayInBadgeCount:v16];
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
  v9 = [v8 preferredLocalizations];
  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[NSLocale currentLocale];
    v12 = [v13 localeIdentifier];
  }

  v6 = [_TtC19ReminderKitInternal20REMGroceryDummyModel isGrocerySupportedForLocaleWithIdentifier:v12]^ 1;
LABEL_10:

  return v6;
}

@end