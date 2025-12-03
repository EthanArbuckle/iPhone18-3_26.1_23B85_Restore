@interface HPRFSessionTrackerAppUnitsOfMeasureController
- (HPRFSessionTrackerAppUnitsOfMeasureController)init;
- (id)_specifierBaseIdForDistanceType:(unint64_t)type;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_distanceTypeForSection:(int64_t)section;
- (void)_caloriesSelected;
- (void)_handleFitnessUnitPreferencesDidChange;
- (void)_kilocaloriesSelected;
- (void)_kilojoulesSelected;
- (void)_loadEnergyUnit:(id)unit;
- (void)_loadPoolLengthUnit:(id)unit;
- (void)_loadTrackWorkoutsUnit:(id)unit;
- (void)_loadUnitForDistanceType:(unint64_t)type specifiers:(id)specifiers;
- (void)_setDistanceUnit:(unint64_t)unit withDistanceType:(unint64_t)type;
- (void)_setEnergyBurnedUnit:(id)unit;
- (void)_trackUnitSelected:(int64_t)selected;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HPRFSessionTrackerAppUnitsOfMeasureController

- (HPRFSessionTrackerAppUnitsOfMeasureController)init
{
  v19.receiver = self;
  v19.super_class = HPRFSessionTrackerAppUnitsOfMeasureController;
  v2 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)&v19 init];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedDevicesMatching:v4];
    firstObject = [v5 firstObject];

    v7 = FIUIHealthStoreForDevice();
    v8 = [[FIUIUnitManager alloc] initWithHealthStore:v7];
    v9 = [[FIUIFormattingManager alloc] initWithUnitManager:v8];
    formattingManager = v2->_formattingManager;
    v2->_formattingManager = v9;

    v11 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v7];
    wheelchairUseCharacteristicCache = v2->_wheelchairUseCharacteristicCache;
    v2->_wheelchairUseCharacteristicCache = v11;

    v2->_activityMoveMode = FIActivityMoveModeWithHealthStore();
    v13 = [HKKeyValueDomain alloc];
    v14 = [v13 initWithCategory:0 domainName:kHKNanolifestylePreferencesDomain healthStore:v7];
    trackValueDomain = v2->_trackValueDomain;
    v2->_trackValueDomain = v14;

    [(HKKeyValueDomain *)v2->_trackValueDomain startObservation:v2];
    v16 = [[HKNanoSyncControl alloc] initWithHealthStore:v7];
    trackSyncControl = v2->_trackSyncControl;
    v2->_trackSyncControl = v16;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache removeObserver:self];
  [(HKKeyValueDomain *)self->_trackValueDomain stopObservation:self];
  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerAppUnitsOfMeasureController;
  [(HPRFSessionTrackerAppUnitsOfMeasureController *)&v4 dealloc];
}

- (void)_handleFitnessUnitPreferencesDidChange
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4744;
  v2[3] = &unk_35040;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"UNITS_OF_MEASURE_PANE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (void)_loadEnergyUnit:(id)unit
{
  unitCopy = unit;
  v27 = [unitCopy specifierForID:@"ENERGY_UNITS_GROUP_ID"];
  v4 = [unitCopy specifierForID:@"ENERGY_UNITS_CALORIES_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENERGY_UNITS_CALORIES_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = [NSString stringWithFormat:v6];

  [v4 setName:v7];
  v8 = [unitCopy specifierForID:@"ENERGY_UNITS_KILOCALORIES_ID"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ENERGY_UNITS_KILOCALORIES_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10];

  [v8 setName:v11];
  v12 = [unitCopy specifierForID:@"ENERGY_UNITS_KILOJOULES_ID"];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ENERGY_UNITS_KILOJOULES_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v15 = [NSString stringWithFormat:v14];

  [v12 setName:v15];
  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  userActiveEnergyBurnedUnit = [unitManager userActiveEnergyBurnedUnit];

  v18 = +[HKUnit largeCalorieUnit];
  LOBYTE(v14) = [userActiveEnergyBurnedUnit isEqual:v18];

  v19 = v4;
  if ((v14 & 1) == 0)
  {
    v20 = +[HKUnit kilocalorieUnit];
    v21 = [userActiveEnergyBurnedUnit isEqual:v20];

    v19 = v8;
    if ((v21 & 1) == 0)
    {
      v22 = [HKUnit jouleUnitWithMetricPrefix:9];
      v23 = [userActiveEnergyBurnedUnit isEqual:v22];

      v19 = v12;
      if ((v23 & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR);
        v19 = v12;
        if (v24)
        {
          sub_21D1C();
          v19 = v12;
        }
      }
    }
  }

  v25 = v19;
  [v27 setProperty:v25 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)_loadPoolLengthUnit:(id)unit
{
  unitCopy = unit;
  v18 = [unitCopy specifierForID:@"POOL_LENGTH_GROUP_ID"];
  v4 = [unitCopy specifierForID:@"POOL_LENGTH_YARDS_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"POOL_LENGTH_YARDS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = [NSString stringWithFormat:v6];

  [v4 setName:v7];
  v8 = [unitCopy specifierForID:@"POOL_LENGTH_METERS_ID"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"POOL_LENGTH_METERS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10];

  [v8 setName:v11];
  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  v13 = [unitManager userDistanceUnitForDistanceType:3];

  v14 = 0;
  if (v13 <= 2)
  {
    if (v13 != (&dword_0 + 1))
    {
      if (v13 != (&dword_0 + 2))
      {
        goto LABEL_15;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_21D50();
      }
    }

    v15 = v8;
LABEL_14:
    v14 = v15;
    goto LABEL_15;
  }

  if (v13 == (&dword_4 + 1))
  {
LABEL_7:
    _HKInitializeLogging();
    v16 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR);
    v15 = v4;
    if (v16)
    {
      sub_21DB8();
      v15 = v4;
    }

    goto LABEL_14;
  }

  v15 = v4;
  if (v13 == &dword_4)
  {
    goto LABEL_14;
  }

  if (v13 == (&dword_0 + 3))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_21D84();
    }

    goto LABEL_7;
  }

LABEL_15:
  [v18 setProperty:v14 forKey:{PSRadioGroupCheckedSpecifierKey, self}];
}

- (void)_loadTrackWorkoutsUnit:(id)unit
{
  unitCopy = unit;
  v17 = [unitCopy specifierForID:@"TRACK_WORKOUTS_GROUP_ID"];
  v4 = [unitCopy specifierForID:@"TRACK_WORKOUTS_MILES_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRACK_WORKOUTS_MILES_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = [NSString stringWithFormat:v6];

  [v4 setName:v7];
  v8 = [unitCopy specifierForID:@"TRACK_WORKOUTS_METERS_ID"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TRACK_WORKOUTS_METERS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10];

  [v8 setName:v11];
  trackValueDomain = self->_trackValueDomain;
  v18 = 0;
  v13 = [(HKKeyValueDomain *)trackValueDomain numberForKey:@"WOTrackWorkoutsUnit" error:&v18];
  v14 = v13;
  v15 = v8;
  if (!v18)
  {
    v15 = v8;
    if (v13)
    {
      if ([v13 integerValue] == &dword_0 + 1)
      {
        v15 = v8;
      }

      else
      {
        v15 = v4;
      }
    }
  }

  [v17 setProperty:v15 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)_loadUnitForDistanceType:(unint64_t)type specifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v7 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _specifierBaseIdForDistanceType:type];
  v28 = [NSString stringWithFormat:@"%@%@", v7, @"_GROUP_ID"];
  v27 = [specifiersCopy specifierForID:?];
  v26 = [NSString stringWithFormat:@"%@%@", v7, @"_MILES_ID"];
  v8 = [specifiersCopy specifierForID:?];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"STANDARD_WORKOUTS_MILES_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10];
  [v8 setName:v11];

  v12 = [NSString stringWithFormat:@"%@%@", v7, @"_KILOMETERS_ID"];
  v13 = [specifiersCopy specifierForID:v12];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"STANDARD_WORKOUTS_KILOMETERS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v16 = [NSString stringWithFormat:v15];
  [v13 setName:v16];

  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  v18 = [unitManager userDistanceUnitForDistanceType:type];

  v19 = 0;
  if (v18 <= 2)
  {
    if (v18 == (&dword_0 + 1))
    {
      _HKInitializeLogging();
      v22 = v28;
      v21 = v7;
      v24 = v26;
      v23 = v27;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_21DEC();
      }
    }

    else
    {
      v22 = v28;
      v21 = v7;
      v24 = v26;
      v23 = v27;
      if (v18 != (&dword_0 + 2))
      {
        goto LABEL_16;
      }
    }

    v20 = v13;
    goto LABEL_15;
  }

  v20 = v8;
  v22 = v28;
  v21 = v7;
  v24 = v26;
  v23 = v27;
  if (v18 == (&dword_0 + 3))
  {
LABEL_15:
    v19 = v20;
    goto LABEL_16;
  }

  if (v18 == &dword_4)
  {
LABEL_7:
    _HKInitializeLogging();
    v25 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR);
    v20 = v8;
    if (v25)
    {
      sub_21E54();
      v20 = v8;
    }

    goto LABEL_15;
  }

  if (v18 == (&dword_4 + 1))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_21E20();
    }

    goto LABEL_7;
  }

LABEL_16:
  [v23 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self loadSpecifiersFromPlistName:@"SessionTrackerUnitsOfMeasureSettings" target:self];
    v6 = v5;
    if (self->_activityMoveMode == 2)
    {
      v7 = [v5 specifierForID:@"ENERGY_UNITS_CALORIES_ID"];
      [v6 removeObject:v7];

      v8 = [v6 specifierForID:@"ENERGY_UNITS_KILOCALORIES_ID"];
      [v6 removeObject:v8];

      v9 = [v6 specifierForID:@"ENERGY_UNITS_KILOJOULES_ID"];
      [v6 removeObject:v9];
    }

    else
    {
      [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadEnergyUnit:v5];
    }

    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadPoolLengthUnit:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadTrackWorkoutsUnit:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:1 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:2 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:6 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:7 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:8 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:9 specifiers:v6];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _loadUnitForDistanceType:10 specifiers:v6];
    localizedPaneTitle = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self localizedPaneTitle];
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self setTitle:localizedPaneTitle];

    v11 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v6;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (id)_specifierBaseIdForDistanceType:(unint64_t)type
{
  if (type > 0xA)
  {
    return @"WALKING_AND_RUNNING_WORKOUTS";
  }

  else
  {
    return *(&off_350A0 + type);
  }
}

- (unint64_t)_distanceTypeForSection:(int64_t)section
{
  if (section > 9)
  {
    return 3;
  }

  else
  {
    return qword_30AE8[section];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 2;
  }

  if (self->_activityMoveMode == 2)
  {
    return 0;
  }

  return 3;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser];
  v7 = 0;
  if (section > 4)
  {
    if (section <= 6)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      if (section == 5)
      {
        v9 = v8;
        v10 = @"CROSS_COUNTRY_SKIING_WORKOUTS_TITLE";
      }

      else
      {
        v9 = v8;
        v10 = @"DOWNHILL_SNOW_SPORTS_WORKOUTS_TITLE";
      }
    }

    else
    {
      switch(section)
      {
        case 7:
          v8 = [NSBundle bundleForClass:objc_opt_class()];
          v9 = v8;
          v10 = @"ROWING_WORKOUTS_TITLE";
          break;
        case 8:
          v8 = [NSBundle bundleForClass:objc_opt_class()];
          v9 = v8;
          v10 = @"PADDLE_SPORTS_WORKOUTS_TITLE";
          break;
        case 9:
          v8 = [NSBundle bundleForClass:objc_opt_class()];
          v9 = v8;
          v10 = @"SKATING_SPORTS_WORKOUTS_TITLE";
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else if (section <= 1)
  {
    if (section)
    {
      if (section != 1)
      {
        goto LABEL_26;
      }

      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"POOL_LENGTH_TITLE";
    }

    else
    {
      if (self->_activityMoveMode == 2)
      {
        v7 = 0;
        goto LABEL_26;
      }

      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"ENERGY_UNITS_TITLE";
    }
  }

  else if (section == 2)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"CYCLING_WORKOUTS_TITLE";
  }

  else if (section == 3)
  {
    v11 = isWheelchairUser;
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v11)
    {
      v10 = @"WALKING_RUNNING_WORKOUTS_TITLE_WHEELCHAIR";
    }

    else
    {
      v10 = @"WALKING_RUNNING_WORKOUTS_TITLE";
    }
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"TRACK_WORKOUTS_TITLE";
  }

  v7 = [v8 localizedStringForKey:v10 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

LABEL_26:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  section = [pathCopy section];
  if (section > 9)
  {
LABEL_13:
    if (!section)
    {
      identifier = [v9 identifier];
      v24 = [identifier isEqualToString:@"ENERGY_UNITS_CALORIES_ID"];

      if (v24)
      {
        [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _caloriesSelected];
      }

      else
      {
        identifier2 = [v9 identifier];
        v32 = [identifier2 isEqualToString:@"ENERGY_UNITS_KILOCALORIES_ID"];

        if (v32)
        {
          [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _kilocaloriesSelected];
        }

        else
        {
          identifier3 = [v9 identifier];
          v34 = [identifier3 isEqualToString:@"ENERGY_UNITS_KILOJOULES_ID"];

          if (v34)
          {
            [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _kilojoulesSelected];
          }
        }
      }
    }

    goto LABEL_8;
  }

  if (((1 << section) & 0x3EC) != 0)
  {
    v11 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _distanceTypeForSection:section];
    v12 = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _specifierBaseIdForDistanceType:v11];
    v13 = [NSString stringWithFormat:@"%@%@", v12, @"_MILES_ID"];
    v14 = [NSString stringWithFormat:@"%@%@", v12, @"_KILOMETERS_ID"];
    identifier4 = [v9 identifier];
    v16 = [identifier4 isEqualToString:v13];

    if (v16)
    {
      [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _milesSelected:v11];
    }

    else
    {
      identifier5 = [v9 identifier];
      v18 = [identifier5 isEqualToString:v14];

      if (v18)
      {
        [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _kilometersSelected:v11];
      }
    }

    goto LABEL_8;
  }

  if (section != 1)
  {
    if (section == 4)
    {
      identifier6 = [v9 identifier];
      v20 = [identifier6 isEqualToString:@"TRACK_WORKOUTS_MILES_ID"];

      if (v20)
      {
        selfCopy2 = self;
        v22 = 0;
      }

      else
      {
        identifier7 = [v9 identifier];
        v28 = [identifier7 isEqualToString:@"TRACK_WORKOUTS_METERS_ID"];

        if (!v28)
        {
          goto LABEL_8;
        }

        selfCopy2 = self;
        v22 = 1;
      }

      [(HPRFSessionTrackerAppUnitsOfMeasureController *)selfCopy2 _trackUnitSelected:v22];
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  identifier8 = [v9 identifier];
  v26 = [identifier8 isEqualToString:@"POOL_LENGTH_YARDS_ID"];

  if (v26)
  {
    [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _yardsSelected:3];
  }

  else
  {
    identifier9 = [v9 identifier];
    v30 = [identifier9 isEqualToString:@"POOL_LENGTH_METERS_ID"];

    if (v30)
    {
      [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _metersSelected:3];
    }
  }

LABEL_8:
  v35.receiver = self;
  v35.super_class = HPRFSessionTrackerAppUnitsOfMeasureController;
  [(HPRFSessionTrackerAppUnitsOfMeasureController *)&v35 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFSessionTrackerAppUnitsOfMeasureController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (void)_setEnergyBurnedUnit:(id)unit
{
  formattingManager = self->_formattingManager;
  unitCopy = unit;
  unitManager = [(FIUIFormattingManager *)formattingManager unitManager];
  [unitManager setUserActiveEnergyBurnedUnit:unitCopy];
}

- (void)_caloriesSelected
{
  v3 = +[HKUnit largeCalorieUnit];
  [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _setEnergyBurnedUnit:v3];
}

- (void)_kilocaloriesSelected
{
  v3 = +[HKUnit kilocalorieUnit];
  [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _setEnergyBurnedUnit:v3];
}

- (void)_kilojoulesSelected
{
  v3 = [HKUnit jouleUnitWithMetricPrefix:9];
  [(HPRFSessionTrackerAppUnitsOfMeasureController *)self _setEnergyBurnedUnit:v3];
}

- (void)_setDistanceUnit:(unint64_t)unit withDistanceType:(unint64_t)type
{
  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  [unitManager setUserDistanceUnit:unit forDistanceType:type];
}

- (void)_trackUnitSelected:(int64_t)selected
{
  trackValueDomain = self->_trackValueDomain;
  v6 = [NSNumber numberWithInteger:?];
  v9 = 0;
  [(HKKeyValueDomain *)trackValueDomain setNumber:v6 forKey:@"WOTrackWorkoutsUnit" error:&v9];
  v7 = v9;

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_21E88(v8, v7, selected);
    }
  }

  else
  {
    [(HKNanoSyncControl *)self->_trackSyncControl forceNanoSyncWithOptions:0 completion:&stru_35080];
  }
}

@end