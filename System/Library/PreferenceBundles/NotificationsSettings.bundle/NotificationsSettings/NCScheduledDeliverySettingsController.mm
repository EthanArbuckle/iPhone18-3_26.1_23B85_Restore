@interface NCScheduledDeliverySettingsController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (NCScheduledDeliverySettingsController)init;
- (NCScheduledDeliverySettingsControllerDelegate)delegate;
- (id)_activeSectionInfos;
- (id)_appListSpecifiersForGroupSpecifier:(id)specifier;
- (id)_appSelectionListSpecifiers;
- (id)_digestTimeSpecifierAtIndex:(unint64_t)index forScheduleTime:(id)time;
- (id)_frequencyOrderedSectionInfos:(id)infos forRankedDigestSetupResponses:(id)responses;
- (id)_globalScheduledDeliveryTimes;
- (id)_orderedGlobalScheduledDeliveryTimes;
- (id)_scheduleDeliveryTimesSpecifiers;
- (id)_scheduleTimeLabelForIndex:(unint64_t)index;
- (id)_scheduledDeliverySwitchSpecifiers;
- (id)_showNextSummarySwitchSpecifiers;
- (id)_specifierForAddNewScheduledTime;
- (id)_updatesForSpecifiers:(id)specifiers withGlobalScheduledDeliverySetting:(int64_t)setting animated:(BOOL)animated;
- (id)appScheduledDeliveryEnabled:(id)enabled;
- (id)datePickerForSpecifier:(id)specifier;
- (id)globalScheduledDeliverySetting:(id)setting;
- (id)globalShowNextSummarySetting:(id)setting;
- (id)orderType:(id)type;
- (id)specifiers;
- (int64_t)_compareScheduleTime:(id)time withScheduleTime:(id)scheduleTime;
- (int64_t)_globalScheduledDeliverySetting;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)_numberOfNotificationsForSectionIdentifier:(id)identifier;
- (unint64_t)_sectionForScheduleTimes;
- (void)_addDefaultScheduledDeliveryTimes;
- (void)_addNewScheduledTime;
- (void)_loadSortingOrderByNotificationsReceivedIfNecessary;
- (void)_populateDigestTimeSpecifiers;
- (void)_removeScheduledTimeAtIndexPath:(id)path;
- (void)_replaceScheduleDigestTime:(id)time withNewDigestTime:(id)digestTime;
- (void)_setGlobalScheduledDeliveryEnabled:(BOOL)enabled;
- (void)_setGlobalScheduledDeliveryTimes:(id)times;
- (void)datePickerChanged:(id)changed;
- (void)digestOnboardingNavigationController:(id)controller didScheduleDigestDeliveryTimes:(id)times forAppBundleIdentifiers:(id)identifiers;
- (void)setAppScheduledDeliveryEnabled:(id)enabled specifier:(id)specifier;
- (void)setGlobalScheduledDeliverySetting:(id)setting specifier:(id)specifier;
- (void)setGlobalShowNextSummarySetting:(id)setting specifier:(id)specifier;
- (void)setOrderType:(id)type specifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation NCScheduledDeliverySettingsController

- (NCScheduledDeliverySettingsController)init
{
  v5.receiver = self;
  v5.super_class = NCScheduledDeliverySettingsController;
  v2 = [(NCScheduledDeliverySettingsController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_orderedByNumberOfNotifications = 1;
    v2->_loadedSortOrderByNumberOfNotifications = 0;
    v2->_numberOfDaysForNotificationCount = 1;
    [(NCScheduledDeliverySettingsController *)v2 _loadSortingOrderByNotificationsReceivedIfNecessary];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NCScheduledDeliverySettingsController;
  [(NCScheduledDeliverySettingsController *)&v6 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEditing:1 animated:0];
  [*&self->PSListController_opaque[v3] setAllowsSelectionDuringEditing:1];
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v5 = [v4 localizedStringForKey:@"SCHEDULED_DELIVERY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCScheduledDeliverySettingsController *)self setTitle:v5];
}

- (NCScheduledDeliverySettingsControllerDelegate)delegate
{
  specifier = [(NCScheduledDeliverySettingsController *)self specifier];
  v3 = [specifier propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NCScheduledDeliverySettingsController;
  [(NCScheduledDeliverySettingsController *)&v5 viewDidAppear:appear];
  specifier = [(NCScheduledDeliverySettingsController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:specifier viewController:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _orderedGlobalScheduledDeliveryTimes = [(NCScheduledDeliverySettingsController *)self _orderedGlobalScheduledDeliveryTimes];
    v6 = [NSMutableArray arrayWithArray:_orderedGlobalScheduledDeliveryTimes];
    orderedScheduledDeliveryTimes = self->_orderedScheduledDeliveryTimes;
    self->_orderedScheduledDeliveryTimes = v6;

    v8 = objc_alloc_init(NSMutableArray);
    _scheduledDeliverySwitchSpecifiers = [(NCScheduledDeliverySettingsController *)self _scheduledDeliverySwitchSpecifiers];
    [v8 addObjectsFromArray:_scheduledDeliverySwitchSpecifiers];

    _globalScheduledDeliverySetting = [(NCScheduledDeliverySettingsController *)self _globalScheduledDeliverySetting];
    self->_globalScheduledDeliveryEnabled = _globalScheduledDeliverySetting == 2;
    v11 = [(NCScheduledDeliverySettingsController *)self _updatesForSpecifiers:v8 withGlobalScheduledDeliverySetting:_globalScheduledDeliverySetting animated:0];
    currentSpecifiers = [v11 currentSpecifiers];
    [v8 setArray:currentSpecifiers];

    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v8;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_updatesForSpecifiers:(id)specifiers withGlobalScheduledDeliverySetting:(int64_t)setting animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiersCopy = specifiers;
  v9 = [PSSpecifierUpdates updatesWithSpecifiers:specifiersCopy];
  if (setting == 2)
  {
    if (![(NSMutableArray *)self->_orderedScheduledDeliveryTimes count])
    {
      [(NCScheduledDeliverySettingsController *)self _addDefaultScheduledDeliveryTimes];
    }

    v10 = objc_alloc_init(NSMutableArray);
    _scheduleDeliveryTimesSpecifiers = [(NCScheduledDeliverySettingsController *)self _scheduleDeliveryTimesSpecifiers];
    [v10 addObjectsFromArray:_scheduleDeliveryTimesSpecifiers];

    _showNextSummarySwitchSpecifiers = [(NCScheduledDeliverySettingsController *)self _showNextSummarySwitchSpecifiers];
    [v10 addObjectsFromArray:_showNextSummarySwitchSpecifiers];

    _appSelectionListSpecifiers = [(NCScheduledDeliverySettingsController *)self _appSelectionListSpecifiers];
    [v10 addObjectsFromArray:_appSelectionListSpecifiers];

    [v9 insertContiguousSpecifiers:v10 atIndex:{objc_msgSend(specifiersCopy, "count")}];
  }

  else
  {
    v14 = [specifiersCopy indexOfSpecifierWithID:@"SCHEDULE_DELIVERY_TIMES_GROUP_ID"];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 removeSpecifiersInRange:{v14, objc_msgSend(specifiersCopy, "count") - v14}];
    }
  }

  context = [v9 context];
  [context setAnimated:animatedCopy];

  return v9;
}

- (id)_scheduledDeliverySwitchSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"SCHEDULED_DELIVERY_SWITCH_GROUP_ID"];
  [v3 addObject:v4];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"SCHEDULED_DELIVERY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setGlobalScheduledDeliverySetting:specifier:" get:"globalScheduledDeliverySetting:" detail:0 cell:6 edit:0];

  [v7 setIdentifier:@"SCHEDULED_DELIVERY_SWITCH_ID"];
  [v3 addObject:v7];

  return v3;
}

- (id)_scheduleDeliveryTimesSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v5 = [v4 localizedStringForKey:@"SCHEDULED_DELIVERY_SCHEDULE" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  [v6 setIdentifier:@"SCHEDULE_DELIVERY_TIMES_GROUP_ID"];
  [v3 addObject:v6];
  orderedDigestTimeSpecifiers = [(NCScheduledDeliverySettingsController *)self orderedDigestTimeSpecifiers];
  if (orderedDigestTimeSpecifiers)
  {
    [v3 addObjectsFromArray:orderedDigestTimeSpecifiers];
    if ([orderedDigestTimeSpecifiers count] > 0xB)
    {
      goto LABEL_6;
    }

    _specifierForAddNewScheduledTime = [(NCScheduledDeliverySettingsController *)self _specifierForAddNewScheduledTime];
    [v3 addObject:_specifierForAddNewScheduledTime];
  }

  else
  {
    _specifierForAddNewScheduledTime = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [_specifierForAddNewScheduledTime setIdentifier:@"SCHEDULE_DELIVERY_TIMES_LOAD_SPINNER_ID"];
    [v3 addObject:_specifierForAddNewScheduledTime];
    [(NCScheduledDeliverySettingsController *)self _populateDigestTimeSpecifiers];
  }

LABEL_6:

  return v3;
}

- (id)_showNextSummarySwitchSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"NEXT_SUMMARY_SWITCH_GROUP_ID"];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"SCHEDULED_DELIVERY_SHOW_NEXT_SUMMARY_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v8 = [v7 localizedStringForKey:@"SCHEDULED_DELIVERY_SHOW_NEXT_SUMMARY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setGlobalShowNextSummarySetting:specifier:" get:"globalShowNextSummarySetting:" detail:0 cell:6 edit:0];

  [v9 setIdentifier:@"SHOW_NEXT_SUMMARY_SWITCH_ID"];
  [v3 addObject:v9];

  return v3;
}

- (id)_appSelectionListSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v5 = [v4 localizedStringForKey:@"SCHEDULED_DELIVERY_APPS_IN_SUMMARY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  [v3 addObject:v6];
  v7 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setOrderType:specifier:" get:"orderType:" detail:0 cell:9 edit:0];
  v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v9 = [v8 localizedStringForKey:@"SCHEDULED_DELIVERY_SORT_WEEKLY_AVG" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v15[0] = v9;
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v11 = [v10 localizedStringForKey:@"SCHEDULED_DELIVERY_SORT_ALPHABETICAL" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  [v7 setValues:&off_515E8 titles:v12];
  [v3 addObject:v7];
  v13 = [(NCScheduledDeliverySettingsController *)self _appListSpecifiersForGroupSpecifier:v6];
  [v3 addObjectsFromArray:v13];

  return v3;
}

- (id)_appListSpecifiersForGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v47 = objc_alloc_init(NSMutableArray);
  _activeSectionInfos = [(NCScheduledDeliverySettingsController *)self _activeSectionInfos];
  rankedDigestSetupResponses = [(NCScheduledDeliverySettingsController *)self rankedDigestSetupResponses];
  selfCopy = self;
  v36 = _activeSectionInfos;
  v37 = specifierCopy;
  if (!rankedDigestSetupResponses)
  {
    if ([(NCScheduledDeliverySettingsController *)self isOrderedByNumberOfNotifications])
    {
LABEL_11:
      if ([(NCScheduledDeliverySettingsController *)self hasLoadedSortOrderByNumberOfNotifications])
      {
        v12 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v13 = [v12 localizedStringForKey:@"SCHEDULED_DELIVERY_NO_DATA" value:&stru_4E3F0 table:@"NotificationsSettings"];
        [specifierCopy setProperty:v13 forKey:PSFooterTextGroupKey];

        [specifierCopy setProperty:&off_513A8 forKey:PSFooterAlignmentGroupKey];
      }

      else
      {
        v14 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
        [v47 addObject:v14];
      }

      v46 = 0;
      v11 = 0;
      selfCopy4 = self;
      goto LABEL_15;
    }

    v46 = 0;
LABEL_10:
    selfCopy4 = self;
    v11 = [(NCScheduledDeliverySettingsController *)self _alphabeticallyOrderedSectionInfos:_activeSectionInfos];
    goto LABEL_15;
  }

  v7 = rankedDigestSetupResponses;
  rankedDigestSetupResponses2 = [(NCScheduledDeliverySettingsController *)self rankedDigestSetupResponses];
  if ([rankedDigestSetupResponses2 count])
  {
    v46 = [(NCScheduledDeliverySettingsController *)self maximumAverageNumberOfNotifications]!= 0;
  }

  else
  {
    v46 = 0;
  }

  if (![(NCScheduledDeliverySettingsController *)self isOrderedByNumberOfNotifications])
  {
    goto LABEL_10;
  }

  if (!v46)
  {
    goto LABEL_11;
  }

  selfCopy4 = self;
  rankedDigestSetupResponses3 = [(NCScheduledDeliverySettingsController *)self rankedDigestSetupResponses];
  v11 = [(NCScheduledDeliverySettingsController *)self _frequencyOrderedSectionInfos:_activeSectionInfos forRankedDigestSetupResponses:rankedDigestSetupResponses3];

  v46 = 1;
LABEL_15:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v48)
  {
    goto LABEL_33;
  }

  v45 = *v50;
  v44 = PSIconImageKey;
  v40 = PSLazyIconLoading;
  v39 = PSLazyIconAppID;
  v38 = PSIconUTTypeIdentifierKey;
  v41 = PSCellClassKey;
  do
  {
    v15 = 0;
    do
    {
      if (*v50 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v49 + 1) + 8 * v15);
      v17 = BBSettingsDisplayNameForBBSection(v16);
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:selfCopy4 set:"setAppScheduledDeliveryEnabled:specifier:" get:"appScheduledDeliveryEnabled:" detail:0 cell:6 edit:0];

      [v18 setIdentifier:@"APP_SPECIFIER_ID"];
      [v18 setProperty:v16 forKey:@"BBSECTION_INFO_KEY"];
      icon = [v16 icon];
      v20 = [icon _bestVariantForFormat:1];

      applicationIdentifier = [v20 applicationIdentifier];
      v22 = [v20 uti];
      nc_settingsIconImage = [v16 nc_settingsIconImage];
      if (nc_settingsIconImage)
      {
        v24 = v18;
        v25 = nc_settingsIconImage;
        v26 = v44;
LABEL_26:
        [v24 setProperty:v25 forKey:v26];
        goto LABEL_27;
      }

      if ([applicationIdentifier length])
      {
        [v18 setProperty:&__kCFBooleanTrue forKey:v40];
        v24 = v18;
        v25 = applicationIdentifier;
        v26 = v39;
        goto LABEL_26;
      }

      if ([v22 length])
      {
        [v18 setProperty:v22 forKey:v38];
        v24 = v18;
        v25 = &__kCFBooleanTrue;
        v26 = v40;
        goto LABEL_26;
      }

      [v18 setProperty:&__kCFBooleanTrue forKey:v40];
      sectionID = [v16 sectionID];
      v33 = [sectionID copy];
      [v18 setProperty:v33 forKey:v39];

      selfCopy4 = selfCopy;
LABEL_27:
      if (v46)
      {
        [v18 setProperty:objc_opt_class() forKey:v41];
        sectionID2 = [v16 sectionID];
        v28 = [(NCScheduledDeliverySettingsController *)selfCopy4 _numberOfNotificationsForSectionIdentifier:sectionID2];

        v29 = v28;
        selfCopy4 = selfCopy;
        v30 = [NSNumber numberWithUnsignedInteger:v29];
        [v18 setProperty:v30 forKey:@"SCHEDULED_DELIVERY_APP_COUNT_KEY"];

        v31 = [NSNumber numberWithUnsignedInteger:[(NCScheduledDeliverySettingsController *)selfCopy maximumAverageNumberOfNotifications]];
        [v18 setProperty:v31 forKey:@"SCHEDULED_DELIVERY_MAX_COUNT_KEY"];
      }

      [v47 bs_safeAddObject:v18];

      v15 = v15 + 1;
    }

    while (v48 != v15);
    v34 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v48 = v34;
  }

  while (v34);
LABEL_33:

  return v47;
}

- (void)_populateDigestTimeSpecifiers
{
  if (![(NCScheduledDeliverySettingsController *)self isPopulatingDigestTimeSpecifiers])
  {
    [(NCScheduledDeliverySettingsController *)self setPopulatingDigestTimeSpecifiers:1];
    if (!self->_queue)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("com.apple.NotificationSettings.NCScheduledDeliverySettingsController", v3);
      queue = self->_queue;
      self->_queue = v4;
    }

    objc_initWeak(&location, self);
    v6 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3830;
    block[3] = &unk_4D0B0;
    objc_copyWeak(&v8, &location);
    block[4] = self;
    dispatch_async(v6, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)_digestTimeSpecifierAtIndex:(unint64_t)index forScheduleTime:(id)time
{
  timeCopy = time;
  v7 = [(NCScheduledDeliverySettingsController *)self _scheduleTimeLabelForIndex:index + 1];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setIdentifier:v7];
  [v8 setProperty:&__kCFBooleanTrue forKey:PSDatePickerInlineKey];
  +[PSDateTimePickerCell preferredHeight];
  v9 = [NSNumber numberWithDouble:?];
  [v8 setProperty:v9 forKey:PSTableCellHeightKey];

  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:timeCopy forKey:@"SCHEDULE_TIME_KEY"];

  return v8;
}

- (id)_specifierForAddNewScheduledTime
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v3 = [v2 localizedStringForKey:@"SCHEDULED_DELIVERY_ADD_SUMMARY" value:&stru_4E3F0 table:@"NotificationsSettings"];

  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setIdentifier:@"SCHEDULED_DELIVERY_ADD_SUMMARY_ID"];

  return v4;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  calendar = [changedCopy calendar];
  date = [changedCopy date];
  v6 = [calendar components:96 fromDate:date];

  v7 = [(NSMapTable *)self->_datePickersToSpecifiersMapTable objectForKey:changedCopy];
  v8 = [(NSMutableArray *)self->_orderedDigestTimeSpecifiers indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    if (v8 < [(NSMutableArray *)self->_orderedScheduledDeliveryTimes count])
    {
      v10 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes objectAtIndex:v9];
      if ([(NSMutableArray *)self->_orderedScheduledDeliveryTimes containsObject:v6])
      {
        [v6 setMinute:1];
        calendar2 = [changedCopy calendar];
        v12 = [calendar2 dateFromComponents:v6];
        [changedCopy setDate:v12];
      }

      [v7 setProperty:v6 forKey:@"SCHEDULE_TIME_KEY"];
      [(NCScheduledDeliverySettingsController *)self _replaceScheduleDigestTime:v10 withNewDigestTime:v6];
    }
  }
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (!self->_datePickersToSpecifiersMapTable)
  {
    v5 = +[NSMapTable mapTableWithWeakToWeakObjects];
    datePickersToSpecifiersMapTable = self->_datePickersToSpecifiersMapTable;
    self->_datePickersToSpecifiersMapTable = v5;
  }

  v7 = objc_alloc_init(UIDatePicker);
  [v7 setDatePickerMode:0];
  [v7 setPreferredDatePickerStyle:3];
  v8 = [specifierCopy propertyForKey:@"SCHEDULE_TIME_KEY"];
  calendar = [v7 calendar];
  v10 = [calendar dateFromComponents:v8];
  [v7 setDate:v10];

  [(NSMapTable *)self->_datePickersToSpecifiersMapTable setObject:specifierCopy forKey:v7];

  return v7;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(NCScheduledDeliverySettingsController *)self isGlobalScheduledDeliveryEnabled])
  {
    section = [pathCopy section];
    v7 = section == [(NCScheduledDeliverySettingsController *)self _sectionForScheduleTimes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy)
  {
    if (style == 1)
    {
      [(NCScheduledDeliverySettingsController *)self _removeScheduledTimeAtIndexPath:pathCopy];
    }

    else if (style == 2)
    {
      [(NCScheduledDeliverySettingsController *)self _addNewScheduledTime];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(NCScheduledDeliverySettingsController *)self isGlobalScheduledDeliveryEnabled])
  {
    v6 = [(NCScheduledDeliverySettingsController *)self specifierAtIndexPath:pathCopy];
    identifier = [v6 identifier];
    v8 = [identifier isEqualToString:@"SCHEDULED_DELIVERY_ADD_SUMMARY_ID"];

    if (v8)
    {
      v9 = 2;
    }

    else
    {
      section = [pathCopy section];
      v9 = section == -[NCScheduledDeliverySettingsController _sectionForScheduleTimes](self, "_sectionForScheduleTimes") && [pathCopy row] != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setGlobalScheduledDeliverySetting:(id)setting specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [setting BOOLValue];
  if ([(NCScheduledDeliverySettingsController *)self _globalScheduledDeliverySetting]== -1)
  {
    if (bOOLValue)
    {
      v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v9 = [v8 localizedStringForKey:@"SCHEDULED_DELIVERY_ONBOARDING_DEFER_SETUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v10 = [NCDigestOnboardingNavigationController navigationControllerWithOnboardingDelegate:self deferButtonText:v9];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_42B8;
      v11[3] = &unk_4D0D8;
      v11[4] = self;
      v12 = specifierCopy;
      [(NCScheduledDeliverySettingsController *)self presentViewController:v10 animated:1 completion:v11];
    }
  }

  else
  {
    [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryEnabled:bOOLValue];
  }
}

- (id)globalScheduledDeliverySetting:(id)setting
{
  if ([(NCScheduledDeliverySettingsController *)self _globalScheduledDeliverySetting]== &dword_0 + 2)
  {
    v3 = &__kCFBooleanTrue;
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (int64_t)_globalScheduledDeliverySetting
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliverySetting = [v2 effectiveGlobalScheduledDeliverySetting];

  return effectiveGlobalScheduledDeliverySetting;
}

- (id)_globalScheduledDeliveryTimes
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliveryTimes = [v2 effectiveGlobalScheduledDeliveryTimes];

  return effectiveGlobalScheduledDeliveryTimes;
}

- (void)_setGlobalScheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  v5 = +[NCSettingsGatewayController sharedInstance];
  [v5 setEffectiveGlobalScheduledDeliveryTimes:timesCopy];

  delegate = [(NCScheduledDeliverySettingsController *)self delegate];
  [delegate scheduledDeliverySettingsControllerDidChangeGlobalScheduledDeliverySettings:self];
}

- (void)_setGlobalScheduledDeliveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = +[NCSettingsGatewayController sharedInstance];
  [v6 setEffectiveGlobalScheduledDeliverySetting:v5];

  [(NCScheduledDeliverySettingsController *)self setGlobalScheduledDeliveryEnabled:enabledCopy];
  v8 = [(NCScheduledDeliverySettingsController *)self _updatesForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] withGlobalScheduledDeliverySetting:v5 animated:1];
  [(NCScheduledDeliverySettingsController *)self performSpecifierUpdates:v8];
  delegate = [(NCScheduledDeliverySettingsController *)self delegate];
  [delegate scheduledDeliverySettingsControllerDidChangeGlobalScheduledDeliverySettings:self];
}

- (id)appScheduledDeliveryEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 scheduledDeliverySetting] == &dword_0 + 2);

  return v4;
}

- (void)setAppScheduledDeliveryEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  v12 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  v7 = [v12 copy];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setScheduledDeliverySetting:v9];
  [specifierCopy setProperty:v7 forKey:@"BBSECTION_INFO_KEY"];

  v10 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v12 sectionID];
  [v10 setSectionInfo:v7 forSectionID:sectionID];
}

- (void)setGlobalShowNextSummarySetting:(id)setting specifier:(id)specifier
{
  if ([setting BOOLValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = +[NCSettingsGatewayController sharedInstance];
  [v5 setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:v4];
}

- (id)globalShowNextSummarySetting:(id)setting
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliveryShowNextSummarySetting = [v3 effectiveGlobalScheduledDeliveryShowNextSummarySetting];

  if (effectiveGlobalScheduledDeliveryShowNextSummarySetting == &dword_0 + 2)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)_replaceScheduleDigestTime:(id)time withNewDigestTime:(id)digestTime
{
  timeCopy = time;
  digestTimeCopy = digestTime;
  if (timeCopy != digestTimeCopy)
  {
    v7 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes indexOfObject:?];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_orderedScheduledDeliveryTimes removeObject:timeCopy];
    }

    if (([(NSMutableArray *)self->_orderedScheduledDeliveryTimes containsObject:digestTimeCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_orderedScheduledDeliveryTimes insertObject:digestTimeCopy atIndex:v7];
    }

    v8 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes copy];
    [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryTimes:v8];
  }
}

- (void)_addDefaultScheduledDeliveryTimes
{
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setHour:8];
  [v5 setMinute:0];
  v3 = objc_alloc_init(NSDateComponents);
  [v3 setHour:18];
  [v3 setMinute:0];
  [(NSMutableArray *)self->_orderedScheduledDeliveryTimes addObject:v5];
  [(NSMutableArray *)self->_orderedScheduledDeliveryTimes addObject:v3];
  v4 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes copy];
  [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryTimes:v4];
}

- (void)_addNewScheduledTime
{
  lastObject = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes lastObject];
  v3 = objc_alloc_init(NSDateComponents);
  hour = [lastObject hour] + 1;
  if (hour >= 0x18)
  {
    hour = [lastObject hour];
    v5 = ([lastObject minute] + 1) % 60;
  }

  else
  {
    v5 = 0;
  }

  [v3 setHour:hour];
  [v3 setMinute:v5];
  [(NSMutableArray *)self->_orderedScheduledDeliveryTimes addObject:v3];
  v6 = [(NCScheduledDeliverySettingsController *)self _digestTimeSpecifierAtIndex:[(NSMutableArray *)self->_orderedDigestTimeSpecifiers count] forScheduleTime:v3];
  orderedDigestTimeSpecifiers = [(NCScheduledDeliverySettingsController *)self orderedDigestTimeSpecifiers];
  [orderedDigestTimeSpecifiers addObject:v6];

  v8 = [(NCScheduledDeliverySettingsController *)self specifierForID:@"SCHEDULED_DELIVERY_ADD_SUMMARY_ID"];
  [(NCScheduledDeliverySettingsController *)self insertSpecifier:v6 atIndex:[(NCScheduledDeliverySettingsController *)self indexOfSpecifier:v8] animated:1];
  if ([(NSMutableArray *)self->_orderedScheduledDeliveryTimes count]>= 0xC)
  {
    [(NCScheduledDeliverySettingsController *)self removeSpecifier:v8 animated:1];
  }

  v9 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes copy];
  [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryTimes:v9];
}

- (void)_removeScheduledTimeAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(NCScheduledDeliverySettingsController *)self _sectionForScheduleTimes])
  {
    v5 = [(NCScheduledDeliverySettingsController *)self specifierAtIndexPath:pathCopy];
    v6 = [(NSMutableArray *)self->_orderedDigestTimeSpecifiers count];
    [(NSMutableArray *)self->_orderedDigestTimeSpecifiers removeObject:v5];
    -[NSMutableArray removeObjectAtIndex:](self->_orderedScheduledDeliveryTimes, "removeObjectAtIndex:", [pathCopy row]);
    [(NCScheduledDeliverySettingsController *)self removeSpecifier:v5 animated:1];
    if (v6 == &dword_C)
    {
      _specifierForAddNewScheduledTime = [(NCScheduledDeliverySettingsController *)self _specifierForAddNewScheduledTime];
      [(NCScheduledDeliverySettingsController *)self insertSpecifier:_specifierForAddNewScheduledTime atEndOfGroup:[(NCScheduledDeliverySettingsController *)self _sectionForScheduleTimes] animated:1];
    }

    v8 = [pathCopy row];
    while (v8 < [(NSMutableArray *)self->_orderedScheduledDeliveryTimes count])
    {
      v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v8, [pathCopy section]);
      v10 = [(NCScheduledDeliverySettingsController *)self specifierAtIndexPath:v9];
      ++v8;
      if (v9)
      {
        v11 = [(NCScheduledDeliverySettingsController *)self _scheduleTimeLabelForIndex:v8];
        [v10 setName:v11];

        [(NCScheduledDeliverySettingsController *)self reloadSpecifier:v10 animated:1];
      }
    }

    v12 = [(NSMutableArray *)self->_orderedScheduledDeliveryTimes copy];
    [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryTimes:v12];
  }

  _objc_release_x1();
}

- (unint64_t)_sectionForScheduleTimes
{
  v3 = [(NCScheduledDeliverySettingsController *)self specifierForID:@"SCHEDULE_DELIVERY_TIMES_GROUP_ID"];
  v4 = [(NCScheduledDeliverySettingsController *)self indexPathForSpecifier:v3];
  section = [v4 section];

  return section;
}

- (id)orderType:(id)type
{
  isOrderedByNumberOfNotifications = [(NCScheduledDeliverySettingsController *)self isOrderedByNumberOfNotifications];

  return [NSNumber numberWithBool:isOrderedByNumberOfNotifications];
}

- (void)setOrderType:(id)type specifier:(id)specifier
{
  -[NCScheduledDeliverySettingsController setOrderedByNumberOfNotifications:](self, "setOrderedByNumberOfNotifications:", [type BOOLValue]);

  [(NCScheduledDeliverySettingsController *)self reloadSpecifiers];
}

- (void)_loadSortingOrderByNotificationsReceivedIfNecessary
{
  if (![(NCScheduledDeliverySettingsController *)self hasLoadedSortOrderByNumberOfNotifications])
  {
    if (!self->_queue)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("com.apple.NotificationSettings.NCScheduledDeliverySettingsController", v3);
      queue = self->_queue;
      self->_queue = v4;
    }

    objc_initWeak(&location, self);
    v6 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4E38;
    block[3] = &unk_4D0B0;
    objc_copyWeak(&v8, &location);
    block[4] = self;
    dispatch_async(v6, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)_activeSectionInfos
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  activeSectionInfo = [v2 activeSectionInfo];

  v4 = [activeSectionInfo bs_filter:&stru_4D168];

  return v4;
}

- (id)_frequencyOrderedSectionInfos:(id)infos forRankedDigestSetupResponses:(id)responses
{
  infosCopy = infos;
  responsesCopy = responses;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_52AC;
  v12[3] = &unk_4D1F8;
  v13 = infosCopy;
  v7 = objc_alloc_init(NSMutableArray);
  v14 = v7;
  v8 = infosCopy;
  [responsesCopy enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (unint64_t)_numberOfNotificationsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rankedDigestSetupResponses = [(NCScheduledDeliverySettingsController *)self rankedDigestSetupResponses];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5500;
  v13[3] = &unk_4D220;
  v6 = identifierCopy;
  v14 = v6;
  v7 = [rankedDigestSetupResponses indexOfObjectPassingTest:v13];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    rankedDigestSetupResponses2 = [(NCScheduledDeliverySettingsController *)self rankedDigestSetupResponses];
    v10 = [rankedDigestSetupResponses2 objectAtIndex:v7];

    v11 = 7 * [v10 numBasicNotifications];
    v8 = v11 / [(NCScheduledDeliverySettingsController *)self numberOfDaysForNotificationCount];
  }

  return v8;
}

- (int64_t)_compareScheduleTime:(id)time withScheduleTime:(id)scheduleTime
{
  timeCopy = time;
  scheduleTimeCopy = scheduleTime;
  hour = [timeCopy hour];
  if (hour >= [scheduleTimeCopy hour])
  {
    hour2 = [timeCopy hour];
    if (hour2 == [scheduleTimeCopy hour])
    {
      minute = [timeCopy minute];
      if (minute < [scheduleTimeCopy minute])
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)_orderedGlobalScheduledDeliveryTimes
{
  _globalScheduledDeliveryTimes = [(NCScheduledDeliverySettingsController *)self _globalScheduledDeliveryTimes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5694;
  v6[3] = &unk_4D248;
  v6[4] = self;
  v4 = [_globalScheduledDeliveryTimes sortedArrayUsingComparator:v6];

  return v4;
}

- (id)_scheduleTimeLabelForIndex:(unint64_t)index
{
  if (index - 1 > 0xB)
  {
    v5 = &stru_4E3F0;
  }

  else
  {
    v3 = *(&off_4D268 + index - 1);
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_4E3F0 table:@"NotificationsSettings"];
  }

  return v5;
}

- (void)digestOnboardingNavigationController:(id)controller didScheduleDigestDeliveryTimes:(id)times forAppBundleIdentifiers:(id)identifiers
{
  timesCopy = times;
  identifiersCopy = identifiers;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [timesCopy countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(timesCopy);
        }

        [(NSMutableArray *)self->_orderedScheduledDeliveryTimes addObject:*(*(&v40 + 1) + 8 * i)];
      }

      v10 = [timesCopy countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryEnabled:1];
  v13 = [timesCopy copy];
  [(NCScheduledDeliverySettingsController *)self _setGlobalScheduledDeliveryTimes:v13];

  v14 = objc_alloc_init(NSMutableDictionary);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = +[NCSettingsGatewayController sharedInstance];
  activeSectionInfo = [v15 activeSectionInfo];

  v17 = [activeSectionInfo countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(activeSectionInfo);
        }

        v21 = *(*(&v36 + 1) + 8 * j);
        sectionID = [v21 sectionID];
        [v14 setObject:v21 forKey:sectionID];
      }

      v18 = [activeSectionInfo countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v18);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = identifiersCopy;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * k);
        v29 = [v14 objectForKey:{v28, v32}];
        v30 = v29;
        if (v29)
        {
          [v29 setScheduledDeliverySetting:2];
          v31 = +[NCSettingsGatewayController sharedInstance];
          [v31 setSectionInfo:v30 forSectionID:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v25);
  }

  [(NCScheduledDeliverySettingsController *)self reloadSpecifiers];
}

@end