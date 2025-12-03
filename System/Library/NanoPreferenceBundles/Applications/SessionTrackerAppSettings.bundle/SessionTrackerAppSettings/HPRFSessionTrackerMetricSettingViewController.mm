@interface HPRFSessionTrackerMetricSettingViewController
- (BOOL)_shouldObliterateWorkoutMetricsForMetricsActivityMoveMode:(int64_t)mode activityMoveModeHealthDB:(int64_t)b;
- (HPRFSessionTrackerMetricSettingViewController)init;
- (id)_activityTypeSpecifiers;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_obliterateUserConfiguredWorkoutMetricsIfNeeded;
- (void)_saveWorkoutMetricsActivityMoveMode:(int64_t)mode;
- (void)dealloc;
@end

@implementation HPRFSessionTrackerMetricSettingViewController

- (HPRFSessionTrackerMetricSettingViewController)init
{
  v19.receiver = self;
  v19.super_class = HPRFSessionTrackerMetricSettingViewController;
  v2 = [(HPRFSessionTrackerMetricSettingViewController *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPSManager);
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = [NPSDomainAccessor alloc];
    v6 = [v5 initWithDomain:kNLSessionTrackerAppPreferencesDomain];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v6;

    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v9 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
    firstObject = [v10 firstObject];
    device = v2->_device;
    v2->_device = firstObject;

    v13 = v2->_device;
    v14 = FIUIHealthStoreForDevice();
    healthStore = v2->_healthStore;
    v2->_healthStore = v14;

    [(HPRFSessionTrackerMetricSettingViewController *)v2 _obliterateUserConfiguredWorkoutMetricsIfNeeded];
    v16 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v2->_healthStore];
    wheelchairUseCharacteristicCache = v2->_wheelchairUseCharacteristicCache;
    v2->_wheelchairUseCharacteristicCache = v16;

    [(_HKWheelchairUseCharacteristicCache *)v2->_wheelchairUseCharacteristicCache addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache removeObserver:self];
  v3.receiver = self;
  v3.super_class = HPRFSessionTrackerMetricSettingViewController;
  [(HPRFSessionTrackerMetricSettingViewController *)&v3 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"METRIC_VIEW_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (void)_obliterateUserConfiguredWorkoutMetricsIfNeeded
{
  v3 = +[FIUIWorkoutSettingsManager readWorkoutMetricsActivityMoveMode];
  healthStore = self->_healthStore;
  v5 = FIActivityMoveModeWithHealthStore();
  if ([(HPRFSessionTrackerMetricSettingViewController *)self _shouldObliterateWorkoutMetricsForMetricsActivityMoveMode:v3 activityMoveModeHealthDB:v5])
  {
    +[FIUIWorkoutSettingsManager obliterateUserConfiguredWorkoutMetrics];

    [(HPRFSessionTrackerMetricSettingViewController *)self _saveWorkoutMetricsActivityMoveMode:v5];
  }
}

- (BOOL)_shouldObliterateWorkoutMetricsForMetricsActivityMoveMode:(int64_t)mode activityMoveModeHealthDB:(int64_t)b
{
  v4 = b == 2;
  if (mode != 1)
  {
    v4 = 0;
  }

  if (mode == 2)
  {
    return b == 1;
  }

  else
  {
    return v4;
  }
}

- (void)_saveWorkoutMetricsActivityMoveMode:(int64_t)mode
{
  v4 = kHPRFWorkoutMetricsActivityMoveMode;
  [(NPSDomainAccessor *)self->_domainAccessor setInteger:mode forKey:kHPRFWorkoutMetricsActivityMoveMode];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  syncManager = [(HPRFSessionTrackerMetricSettingViewController *)self syncManager];
  domain = [(NPSDomainAccessor *)self->_domainAccessor domain];
  v10 = v4;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [NSSet setWithArray:v8];
  [syncManager synchronizeNanoDomain:domain keys:v9];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    _activityTypeSpecifiers = [(HPRFSessionTrackerMetricSettingViewController *)self _activityTypeSpecifiers];
    [v5 addObjectsFromArray:_activityTypeSpecifiers];

    localizedPaneTitle = [(HPRFSessionTrackerMetricSettingViewController *)self localizedPaneTitle];
    [(HPRFSessionTrackerMetricSettingViewController *)self setTitle:localizedPaneTitle];

    v8 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v5;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (id)_activityTypeSpecifiers
{
  v2 = [FIUIWorkoutActivityType optimizedActivityTypesWithIsWheelchairUser:[(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser] isSwimmingSupported:FIUIDeviceSupportsSwimming()];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count] + 1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 identifier] != &stru_20.filesize + 2)
        {
          v10 = objc_alloc_init(PSSpecifier);
          [v10 setCellType:2];
          [v10 setDetailControllerClass:objc_opt_class()];
          [v9 identifier];
          [v9 swimmingLocationType];
          [v9 isIndoor];
          v11 = FILocalizedNameForActivityType();
          [v10 setName:v11];

          [v10 hprf_setWorkoutActivityOption:v9];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&stru_34ED0];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"WORKOUTS_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v14 = [PSSpecifier groupSpecifierWithName:v13];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"WORKOUTS_SUBTITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [v14 setProperty:v16 forKey:PSHeaderDetailTextGroupKey];

  [v3 insertObject:v14 atIndex:0];

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFSessionTrackerMetricSettingViewController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end