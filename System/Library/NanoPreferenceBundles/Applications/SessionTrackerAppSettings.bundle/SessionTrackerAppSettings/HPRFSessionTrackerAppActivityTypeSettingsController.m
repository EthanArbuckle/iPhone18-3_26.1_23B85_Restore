@interface HPRFSessionTrackerAppActivityTypeSettingsController
- (BOOL)metricEnabledForType:(unint64_t)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (HPRFSessionTrackerAppActivityTypeSettingsController)init;
- (id)_metricSpecifiersForSettingSection:(unint64_t)a3;
- (id)_specifierForMetricType:(unint64_t)a3;
- (id)metricEnabledForSpecifier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_handleFitnessUnitPreferencesDidChange;
- (void)dealloc;
- (void)setMetricEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation HPRFSessionTrackerAppActivityTypeSettingsController

- (HPRFSessionTrackerAppActivityTypeSettingsController)init
{
  v15.receiver = self;
  v15.super_class = HPRFSessionTrackerAppActivityTypeSettingsController;
  v2 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)&v15 init];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
    v6 = [v5 firstObject];
    device = v2->_device;
    v2->_device = v6;

    v8 = v2->_device;
    v9 = FIUIHealthStoreForDevice();
    v2->_activityMoveMode = FIActivityMoveModeWithHealthStore();
    v10 = [[FIUIUnitManager alloc] initWithHealthStore:v9];
    v11 = [[FIUIFormattingManager alloc] initWithUnitManager:v10];
    formattingManager = v2->_formattingManager;
    v2->_formattingManager = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_handleFitnessUnitPreferencesDidChange" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerAppActivityTypeSettingsController;
  [(HPRFSessionTrackerAppActivityTypeSettingsController *)&v4 dealloc];
}

- (void)_handleFitnessUnitPreferencesDidChange
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_12664;
  v2[3] = &unk_35040;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)setSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = HPRFSessionTrackerAppActivityTypeSettingsController;
  v4 = a3;
  [(HPRFSessionTrackerAppActivityTypeSettingsController *)&v14 setSpecifier:v4];
  v5 = [v4 hprf_workoutActivityType];

  v6 = [[FIUIWorkoutSettingsManager alloc] initWithWorkoutActivityType:v5 activityMoveMode:self->_activityMoveMode];
  settingManager = self->_settingManager;
  self->_settingManager = v6;

  workoutActivityType = self->_workoutActivityType;
  self->_workoutActivityType = v5;
  v9 = v5;

  v10 = [NPSDomainAccessor alloc];
  v11 = [v10 initWithDomain:kNLSessionTrackerAppPreferencesDomain];
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = v11;

  [(FIUIWorkoutActivityType *)v9 identifier];
  [(FIUIWorkoutActivityType *)v9 swimmingLocationType];
  [(FIUIWorkoutActivityType *)v9 isIndoor];

  v13 = FILocalizedNameForActivityType();
  [(HPRFSessionTrackerAppActivityTypeSettingsController *)self setTitle:v13];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ENABLED_METRICS_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    [v5 addObject:v8];
    v9 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self _metricSpecifiersForSettingSection:0];
    [v5 addObjectsFromArray:v9];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DISABLED_METRICS_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v12 = [PSSpecifier groupSpecifierWithName:v11];

    [v5 addObject:v12];
    v13 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self _metricSpecifiersForSettingSection:1];
    [v5 addObjectsFromArray:v13];
    v14 = *&self->PSEditableListController_opaque[v3];
    *&self->PSEditableListController_opaque[v3] = v5;

    v4 = *&self->PSEditableListController_opaque[v3];
  }

  return v4;
}

- (id)_metricSpecifiersForSettingSection:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(FIUIWorkoutSettingsManager *)self->_settingManager orderedDisabledMetrics];
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = [(FIUIWorkoutSettingsManager *)self->_settingManager orderedEnabledMetrics];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) integerValue];
        if ([(HPRFSessionTrackerAppActivityTypeSettingsController *)self metricEnabledForType:v12])
        {
          v13 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self _specifierForMetricType:v12];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)metricEnabledForType:(unint64_t)a3
{
  if (a3 == 10)
  {
    v3 = @"D1DBCF21-D875-4EA8-B63E-8182578C0B0C";
    goto LABEL_5;
  }

  if (a3 == 17)
  {
    v3 = @"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373";
LABEL_5:
    device = self->_device;
    v5 = [[NSUUID alloc] initWithUUIDString:v3];
    LOBYTE(device) = [(NRDevice *)device supportsCapability:v5];

    return device;
  }

  return 1;
}

- (id)_specifierForMetricType:(unint64_t)a3
{
  v5 = _LocalizedStringForMetricType(a3, self->_workoutActivityType, self->_formattingManager);
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setMetricEnabled:forSpecifier:" get:"metricEnabledForSpecifier:" detail:0 cell:-1 edit:0];

  [v6 hprf_setMetricType:a3];

  return v6;
}

- (id)metricEnabledForSpecifier:(id)a3
{
  v3 = -[FIUIWorkoutSettingsManager isMetricEnabled:](self->_settingManager, "isMetricEnabled:", [a3 hprf_metricType]);

  return [NSNumber numberWithBool:v3];
}

- (void)setMetricEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  -[HPRFSessionTrackerAppActivityTypeSettingsController setMetricEnabled:forSpecifier:autoMove:](self, "setMetricEnabled:forSpecifier:autoMove:", [a3 BOOLValue], v6, 1);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = HPRFSessionTrackerAppActivityTypeSettingsController;
  v5 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)&v14 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 hprf_metricType];

  if (v7 == &dword_4 + 1)
  {
    v8 = FIUIIsHeartRateEnabled();
    if ([(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== &stru_20.segname[12] || [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== &dword_18 || [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== &stru_20.cmdsize + 1 || [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== &stru_20.vmsize + 6 || [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== &stru_20.vmsize + 7)
    {
      v9 = [(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:kNLSessionTrackerAppKeyEnablePowerSavingMode]^ 1;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v5 textLabel];
    v11 = v10;
    v12 = 0.25;
    if ((v8 & v9) != 0)
    {
      v12 = 1.0;
    }

    [v10 setAlpha:v12];
  }

  return v5;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] != &dword_0 + 1)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v6 = &dword_4 + 1;
  }

  else
  {
    v6 = &dword_0 + 2;
  }

  v7 = [(FIUIWorkoutSettingsManager *)self->_settingManager orderedEnabledMetrics];
  v8 = [v7 count] != v6;

LABEL_7:
  return v8;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self table];
  v7 = [v6 isEditing];

  if (v7)
  {
    if ([v5 section])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DELETE_BUTTON_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self specifierAtIndexPath:v8];
  v12.receiver = self;
  v12.super_class = HPRFSessionTrackerAppActivityTypeSettingsController;
  [(HPRFSessionTrackerAppActivityTypeSettingsController *)&v12 tableView:v9 commitEditingStyle:a4 forRowAtIndexPath:v8];

  if (a4 == 2)
  {
    v11 = 1;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v11 = 0;
LABEL_5:
    [(HPRFSessionTrackerAppActivityTypeSettingsController *)self setMetricEnabled:v11 forSpecifier:v10 autoMove:1];
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self specifierAtIndexPath:a4];
  v11 = v9;
  v12 = [v11 section];
  if (![v11 section] && objc_msgSend(v8, "numberOfRowsInSection:", 0) > 5 || (v13 = v11, v12 == &dword_0 + 1))
  {
    v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", -[FIUIWorkoutSettingsManager disabledIndexForMetricType:](self->_settingManager, "disabledIndexForMetricType:", [v10 hprf_metricType]), 1);
  }

  return v13;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v11 = a5;
  v7 = a4;
  v8 = [(HPRFSessionTrackerAppActivityTypeSettingsController *)self specifierAtIndexPath:v7];
  v9 = [v11 section];
  v10 = [v7 section];

  if (v10 != [v11 section])
  {
    [(HPRFSessionTrackerAppActivityTypeSettingsController *)self setMetricEnabled:v9 == 0 forSpecifier:v8 autoMove:0];
  }

  if (!v9)
  {
    -[FIUIWorkoutSettingsManager moveMetricType:toEnabledIndex:](self->_settingManager, "moveMetricType:toEnabledIndex:", [v8 hprf_metricType], objc_msgSend(v11, "row"));
  }

  [(HPRFSessionTrackerAppActivityTypeSettingsController *)self reloadSpecifiers];
}

@end