@interface RoutePlanningOptionsDataSource
+ (BOOL)_isGarage:(id)garage significantlyDifferentFromGarage:(id)fromGarage;
+ (void)registerCellsInCollectionView:(id)view;
- (BOOL)_hasUnsavedChanges;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_autosaveIfNeeded;
- (void)_commitSelectedVehicle;
- (void)_commitUsesPreferredNetworksForRouting;
- (void)_configureForCurrentState;
- (void)_performAutomaticSave:(id)save;
- (void)_prepareForCycling;
- (void)_prepareForDrive;
- (void)_prepareForTransit;
- (void)_prepareForWalk;
- (void)_scheduleAutomaticSave;
- (void)_sendBiomeDiscoverabilitySignals;
- (void)_updateAnalyticsTarget;
- (void)_updateCoordinatorWithPreferences;
- (void)_updateFromCoordinator;
- (void)_updateHasUnsavedChanges;
- (void)_updateVirtualGarage:(id)garage;
- (void)commitPreferences;
- (void)configureWithTransportType:(int64_t)type displayHints:(id)hints virtualGarage:(id)garage;
- (void)dealloc;
- (void)prepareContent;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateCyclePreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateDrivePreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransitPreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateWalkPreferences:(id)preferences;
- (void)setAnalyticsTargetProvider:(id)provider;
- (void)setAutomaticallySaveChanges:(BOOL)changes;
- (void)setCyclePreferences:(id)preferences;
- (void)setDataCoordinator:(id)coordinator;
- (void)setDrivePreferences:(id)preferences;
- (void)setHasUnsavedChanges:(BOOL)changes;
- (void)setSelectedVehicle:(id)vehicle;
- (void)setUsesPreferredNetworksForRouting:(id)routing;
- (void)setWalkPreferences:(id)preferences;
@end

@implementation RoutePlanningOptionsDataSource

- (void)_sendBiomeDiscoverabilitySignals
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(9, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100A6F8B4;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = RoutePlanningOptionsDataSource;
  viewCopy = view;
  v6 = [(PreferenceValuesDataSource *)&v10 collectionView:viewCopy cellForItemAtIndexPath:path];
  v7 = sub_10000FA08(viewCopy);

  if (v7 == 5)
  {
    v8 = [UIBackgroundConfiguration clearConfiguration:v10.receiver];
    [v6 setBackgroundConfiguration:v8];
  }

  return v6;
}

- (void)_updateAnalyticsTarget
{
  analyticsTargetProvider = [(RoutePlanningOptionsDataSource *)self analyticsTargetProvider];

  if (analyticsTargetProvider)
  {
    analyticsTargetProvider2 = [(RoutePlanningOptionsDataSource *)self analyticsTargetProvider];
    self->_analyticsTarget = analyticsTargetProvider2[2](analyticsTargetProvider2, self->_transportType);
  }

  else
  {
    self->_analyticsTarget = 0;
  }
}

- (void)setAnalyticsTargetProvider:(id)provider
{
  v4 = [provider copy];
  analyticsTargetProvider = self->_analyticsTargetProvider;
  self->_analyticsTargetProvider = v4;

  [(RoutePlanningOptionsDataSource *)self _updateAnalyticsTarget];
}

- (void)_updateCoordinatorWithPreferences
{
  transportType = self->_transportType;
  dataCoordinator = sub_100798A3C();
  v5 = os_log_type_enabled(dataCoordinator, OS_LOG_TYPE_INFO);
  if (transportType > 1)
  {
    switch(transportType)
    {
      case 2:
        if (v5)
        {
          walkPreferences = [(RoutePlanningOptionsDataSource *)self walkPreferences];
          v12 = 138412290;
          v13 = walkPreferences;
          _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Updating coordinator with %@", &v12, 0xCu);
        }

        dataCoordinator = [(RoutePlanningOptionsDataSource *)self dataCoordinator];
        walkPreferences2 = [(RoutePlanningOptionsDataSource *)self walkPreferences];
        [dataCoordinator updateWalkPreferences:walkPreferences2];
        goto LABEL_19;
      case 3:
        if (v5)
        {
          transitPreferences = [(RoutePlanningOptionsDataSource *)self transitPreferences];
          v12 = 138412290;
          v13 = transitPreferences;
          _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Updating coordinator with %@", &v12, 0xCu);
        }

        dataCoordinator = [(RoutePlanningOptionsDataSource *)self dataCoordinator];
        walkPreferences2 = [(RoutePlanningOptionsDataSource *)self transitPreferences];
        [dataCoordinator updateTransitPreferences:walkPreferences2];
        goto LABEL_19;
      case 5:
        if (v5)
        {
          cyclePreferences = [(RoutePlanningOptionsDataSource *)self cyclePreferences];
          v12 = 138412290;
          v13 = cyclePreferences;
          _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Updating coordinator with %@", &v12, 0xCu);
        }

        dataCoordinator = [(RoutePlanningOptionsDataSource *)self dataCoordinator];
        walkPreferences2 = [(RoutePlanningOptionsDataSource *)self cyclePreferences];
        [dataCoordinator updateCyclePreferences:walkPreferences2];
LABEL_19:

LABEL_20:
        return;
    }

LABEL_25:
    if (v5)
    {
      v11 = self->_transportType;
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Unsupported transport type %lu", &v12, 0xCu);
    }

    goto LABEL_20;
  }

  if (transportType)
  {
    if (transportType == 1)
    {
      if (v5)
      {
        drivePreferences = [(RoutePlanningOptionsDataSource *)self drivePreferences];
        v12 = 138412290;
        v13 = drivePreferences;
        _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Updating coordinator with %@", &v12, 0xCu);
      }

      [(RoutePlanningOptionsDataSource *)self _commitSelectedVehicle];
      [(RoutePlanningOptionsDataSource *)self _commitUsesPreferredNetworksForRouting];
      dataCoordinator = [(RoutePlanningOptionsDataSource *)self dataCoordinator];
      walkPreferences2 = [(RoutePlanningOptionsDataSource *)self drivePreferences];
      [dataCoordinator updateDrivePreferences:walkPreferences2];
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v5)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[Options] Coordinator has no current session, updating defaults instead", &v12, 2u);
  }

  [(RoutePlanningOptionsDataSource *)self commitPreferences];
}

- (void)_updateFromCoordinator
{
  desiredTransportType = [(RoutePlanningDataCoordination *)self->_dataCoordinator desiredTransportType];
  routeCollection = [(RoutePlanningDataCoordination *)self->_dataCoordinator routeCollection];
  currentRoute = [routeCollection currentRoute];
  displayHints = [currentRoute displayHints];
  virtualGarage = [(RoutePlanningDataCoordination *)self->_dataCoordinator virtualGarage];
  [(RoutePlanningOptionsDataSource *)self configureWithTransportType:desiredTransportType displayHints:displayHints virtualGarage:virtualGarage];
}

- (void)_prepareForCycling
{
  objc_initWeak(&location, self);
  if (!self->_countryObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v5 = GEOCountryConfigurationCountryCodeDidChangeNotification;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100A70294;
    v18[3] = &unk_10165FBE8;
    objc_copyWeak(&v19, &location);
    v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v18];
    countryObserver = self->_countryObserver;
    self->_countryObserver = v6;

    objc_destroyWeak(&v19);
  }

  if (sub_10072B16C())
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Avoid Hills" value:@"localized string not found" table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Avoid Busy Roads" value:@"localized string not found" table:0];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100A702D4;
    v14[3] = &unk_101632C98;
    v12 = v9;
    v15 = v12;
    objc_copyWeak(&v17, &location);
    v13 = v11;
    v16 = v13;
    [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v14];

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);
}

- (void)_prepareForTransit
{
  v3 = objc_initWeak(&location, self);
  transitDataSource = [(RoutePlanningOptionsDataSource *)self transitDataSource];

  numberOfSections = [transitDataSource numberOfSections];
  if (numberOfSections >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [transitDataSource numberOfRowsInSection:v6];
      if ([transitDataSource normalizedSectionIndex:v6])
      {
        break;
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100A709F4;
      v8[3] = &unk_101632D10;
      v9 = transitDataSource;
      v10[1] = v6;
      v10[2] = 0;
      v10[3] = v7;
      objc_copyWeak(v10, &location);
      [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v8];
      objc_destroyWeak(v10);

      ++v6;
    }

    while (numberOfSections != v6);
  }

  objc_destroyWeak(&location);
}

- (void)_prepareForWalk
{
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Avoid Hills" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Avoid Busy Roads" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Avoid Stairs" value:@"localized string not found" table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A710F8;
  v12[3] = &unk_101632CC0;
  v9 = v4;
  v13 = v9;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_prepareForDrive
{
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Avoid Tolls" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Avoid Highways" value:@"localized string not found" table:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A71ADC;
  v9[3] = &unk_101632C98;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v12, &location);
  v8 = v6;
  v11 = v8;
  [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)prepareContent
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOptionsDataSource;
  [(PreferenceValuesDataSource *)&v6 prepareContent];
  transportType = self->_transportType;
  if (transportType)
  {
    if (self->_countryObserver)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 removeObserver:self->_countryObserver];

      countryObserver = self->_countryObserver;
      self->_countryObserver = 0;
    }

    if (transportType > 2)
    {
      if (transportType == 3)
      {
        [(RoutePlanningOptionsDataSource *)self _prepareForTransit];
      }

      else if (transportType == 5)
      {
        [(RoutePlanningOptionsDataSource *)self _prepareForCycling];
      }
    }

    else if (transportType == 1)
    {
      [(RoutePlanningOptionsDataSource *)self _prepareForDrive];
    }

    else if (transportType == 2)
    {
      [(RoutePlanningOptionsDataSource *)self _prepareForWalk];
    }
  }
}

- (void)_updateVirtualGarage:(id)garage
{
  garageCopy = garage;
  if ([objc_opt_class() _isGarage:self->_virtualGarage significantlyDifferentFromGarage:garageCopy])
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = garageCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Options] Using updated garage: %@", &v13, 0xCu);
    }

    objc_storeStrong(&self->_virtualGarage, garage);
    originalSelectedVehicle = self->_originalSelectedVehicle;
    self->_originalSelectedVehicle = 0;

    selectedVehicle = [garageCopy selectedVehicle];
    selectedVehicle = self->_selectedVehicle;
    self->_selectedVehicle = selectedVehicle;

    originalUsesPreferredNetworksForRouting = self->_originalUsesPreferredNetworksForRouting;
    self->_originalUsesPreferredNetworksForRouting = 0;

    v11 = self->_selectedVehicle;
    if (v11)
    {
      v12 = [NSNumber numberWithBool:[(VGVehicle *)v11 usesPreferredNetworksForRouting]];
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&self->_usesPreferredNetworksForRouting, v12);
    if (v11)
    {
    }

    if (self->_transportType == 1)
    {
      [(PreferenceValuesDataSource *)self rebuildSections];
    }
  }
}

- (void)setUsesPreferredNetworksForRouting:(id)routing
{
  routingCopy = routing;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = [(NSNumber *)routingCopy intValue];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] Uses preferred networks for routing: %d", v10, 8u);
  }

  if (!self->_originalUsesPreferredNetworksForRouting)
  {
    usesPreferredNetworksForRouting = self->_usesPreferredNetworksForRouting;
    if (usesPreferredNetworksForRouting)
    {
      v7 = usesPreferredNetworksForRouting;
    }

    else
    {
      v7 = +[NSNull null];
    }

    originalUsesPreferredNetworksForRouting = self->_originalUsesPreferredNetworksForRouting;
    self->_originalUsesPreferredNetworksForRouting = v7;
  }

  v9 = self->_usesPreferredNetworksForRouting;
  self->_usesPreferredNetworksForRouting = routingCopy;
}

- (void)setSelectedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v6 = sub_100798A3C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v7 = vehicleCopy;
  if (!v7)
  {
    v12 = @"<nil>";
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [v7 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

      goto LABEL_8;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
  displayName = [v7 displayName];
  v14 = displayName;
  v15 = @"[Any]";
  if (displayName)
  {
    v15 = displayName;
  }

  *buf = 138412547;
  v22 = v12;
  v23 = 2113;
  v24 = v15;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Options] Selecting vehicle: %@ %{private}@", buf, 0x16u);

LABEL_13:
  if (!self->_originalSelectedVehicle)
  {
    selectedVehicle = self->_selectedVehicle;
    if (selectedVehicle)
    {
      v17 = selectedVehicle;
    }

    else
    {
      v17 = +[NSNull null];
    }

    originalSelectedVehicle = self->_originalSelectedVehicle;
    self->_originalSelectedVehicle = v17;
  }

  objc_storeStrong(&self->_selectedVehicle, vehicle);
  v19 = self->_selectedVehicle;
  if (v19)
  {
    v20 = [NSNumber numberWithBool:[(VGVehicle *)v19 usesPreferredNetworksForRouting]];
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong(&self->_usesPreferredNetworksForRouting, v20);
  if (v19)
  {
  }

  objc_storeStrong(&self->_originalUsesPreferredNetworksForRouting, self->_usesPreferredNetworksForRouting);
}

- (void)setCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!self->_originalPreferences || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_storeStrong(&self->_originalPreferences, self->_cyclePreferences);
  }

  cyclePreferences = self->_cyclePreferences;
  self->_cyclePreferences = preferencesCopy;
}

- (void)setWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!self->_originalPreferences || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_storeStrong(&self->_originalPreferences, self->_walkPreferences);
  }

  walkPreferences = self->_walkPreferences;
  self->_walkPreferences = preferencesCopy;
}

- (void)setDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!self->_originalPreferences || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_storeStrong(&self->_originalPreferences, self->_drivePreferences);
  }

  drivePreferences = self->_drivePreferences;
  self->_drivePreferences = preferencesCopy;
}

- (void)commitPreferences
{
  transportType = self->_transportType;
  if (transportType > 2)
  {
    if (transportType == 3)
    {
      transitPreferences = [(RoutePlanningOptionsDataSource *)self transitPreferences];
    }

    else
    {
      if (transportType != 5)
      {
        return;
      }

      transitPreferences = [(RoutePlanningOptionsDataSource *)self cyclePreferences];
    }
  }

  else if (transportType == 1)
  {
    [(RoutePlanningOptionsDataSource *)self _commitSelectedVehicle];
    [(RoutePlanningOptionsDataSource *)self _commitUsesPreferredNetworksForRouting];
    transitPreferences = [(RoutePlanningOptionsDataSource *)self drivePreferences];
  }

  else
  {
    if (transportType != 2)
    {
      return;
    }

    transitPreferences = [(RoutePlanningOptionsDataSource *)self walkPreferences];
  }

  v5 = transitPreferences;
  [transitPreferences synchronize];
}

- (void)_commitUsesPreferredNetworksForRouting
{
  if (self->_transportType == 1)
  {
    selectedVehicle = [(RoutePlanningOptionsDataSource *)self selectedVehicle];

    if (selectedVehicle)
    {
      usesPreferredNetworksForRouting = [(RoutePlanningOptionsDataSource *)self usesPreferredNetworksForRouting];
      v5 = sub_100798A3C();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_23:

        v23 = +[VGVirtualGarageService sharedService];
        bOOLValue = [usesPreferredNetworksForRouting BOOLValue];
        selectedVehicle2 = [(RoutePlanningOptionsDataSource *)self selectedVehicle];
        [v23 virtualGarageSetShouldUsePreferredNetworks:bOOLValue forVehicle:selectedVehicle2];

        return;
      }

      v6 = usesPreferredNetworksForRouting;
      if (!v6)
      {
        v11 = @"<nil>";
LABEL_12:

        v12 = v11;
        selectedVehicle3 = [(RoutePlanningOptionsDataSource *)self selectedVehicle];
        if (!selectedVehicle3)
        {
          v18 = @"<nil>";
          goto LABEL_20;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [selectedVehicle3 performSelector:"accessibilityIdentifier"];
          v17 = v16;
          if (v16 && ![v16 isEqualToString:v15])
          {
            v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selectedVehicle3, v17];

            goto LABEL_18;
          }
        }

        v18 = [NSString stringWithFormat:@"%@<%p>", v15, selectedVehicle3];
LABEL_18:

LABEL_20:
        selectedVehicle4 = [(RoutePlanningOptionsDataSource *)self selectedVehicle];
        displayName = [selectedVehicle4 displayName];
        v21 = displayName;
        v22 = @"[Any]";
        *buf = 138412803;
        v27 = v12;
        if (displayName)
        {
          v22 = displayName;
        }

        v28 = 2112;
        v29 = v18;
        v30 = 2113;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] Saving uses preferred networks for routing: %@ vehicle: %@ %{private}@", buf, 0x20u);

        goto LABEL_23;
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (objc_opt_respondsToSelector())
      {
        v9 = [v6 performSelector:"accessibilityIdentifier"];
        v10 = v9;
        if (v9 && ![v9 isEqualToString:v8])
        {
          v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

          goto LABEL_10;
        }
      }

      v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

      goto LABEL_12;
    }
  }
}

- (void)_commitSelectedVehicle
{
  if (self->_transportType == 1)
  {
    selectedVehicle = [(RoutePlanningOptionsDataSource *)self selectedVehicle];
    v3 = sub_100798A3C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      v13 = +[VGVirtualGarageService sharedService];
      [v13 virtualGarageSelectVehicle:selectedVehicle];

      return;
    }

    v4 = selectedVehicle;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_11;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_9;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_9:

LABEL_11:
    displayName = [v4 displayName];
    v11 = displayName;
    v12 = @"[Any]";
    if (displayName)
    {
      v12 = displayName;
    }

    *buf = 138412547;
    v15 = v9;
    v16 = 2113;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Options] Saving selected vehicle: %@ %{private}@", buf, 0x16u);

    goto LABEL_14;
  }
}

- (void)_configureForCurrentState
{
  drivePreferences = self->_drivePreferences;
  self->_drivePreferences = 0;

  walkPreferences = self->_walkPreferences;
  self->_walkPreferences = 0;

  transitDataSource = self->_transitDataSource;
  self->_transitDataSource = 0;

  cyclePreferences = self->_cyclePreferences;
  self->_cyclePreferences = 0;

  originalPreferences = self->_originalPreferences;
  self->_originalPreferences = 0;

  originalSelectedVehicle = self->_originalSelectedVehicle;
  self->_originalSelectedVehicle = 0;

  originalUsesPreferredNetworksForRouting = self->_originalUsesPreferredNetworksForRouting;
  self->_originalUsesPreferredNetworksForRouting = 0;

  v10 = self->_dataCoordinator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  transportType = self->_transportType;
  if (transportType > 2)
  {
    if (transportType == 3)
    {
      transitPreferences = [(RoutePlanningDataCoordination *)v12 transitPreferences];
      v27 = transitPreferences;
      if (transitPreferences)
      {
        v28 = transitPreferences;
      }

      else
      {
        v41 = [TransitPreferences alloc];
        v42 = +[NSUserDefaults standardUserDefaults];
        v28 = [(WatchSyncedPreferences *)v41 initWithDefaults:v42];
      }

      v43 = self->_displayHints;
      v44 = [[TransitPreferencesViewControllerDataSource alloc] initWithPreferences:v28 displayHints:v43];
      v45 = self->_transitDataSource;
      self->_transitDataSource = v44;

      preferences = [(TransitPreferencesViewControllerDataSource *)self->_transitDataSource preferences];
      v47 = [preferences copy];
      v48 = self->_originalPreferences;
      self->_originalPreferences = v47;

      v49 = sub_100798A3C();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        LODWORD(v50) = 138412290;
        *(&v50 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "[Options] Loaded %@", &v50, 0xCu);
      }

      goto LABEL_31;
    }

    if (transportType == 5)
    {
      cyclePreferences = [(RoutePlanningDataCoordination *)v12 cyclePreferences];
      v19 = cyclePreferences;
      if (cyclePreferences)
      {
        v20 = cyclePreferences;
        v21 = self->_cyclePreferences;
        self->_cyclePreferences = v20;
      }

      else
      {
        v33 = [CyclePreferences alloc];
        v21 = +[NSUserDefaults standardUserDefaults];
        v34 = [(CyclePreferences *)v33 initWithDefaults:v21];
        v35 = self->_cyclePreferences;
        self->_cyclePreferences = v34;
      }

      v28 = sub_100798A3C();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v36 = self->_cyclePreferences;
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v36;
      goto LABEL_26;
    }
  }

  else
  {
    if (transportType == 1)
    {
      drivePreferences = [(RoutePlanningDataCoordination *)v12 drivePreferences];
      v23 = drivePreferences;
      if (drivePreferences)
      {
        v24 = drivePreferences;
        v25 = self->_drivePreferences;
        self->_drivePreferences = v24;
      }

      else
      {
        v37 = [DrivePreferences alloc];
        v25 = +[NSUserDefaults standardUserDefaults];
        v38 = [(DrivePreferences *)v37 initWithDefaults:v25];
        v39 = self->_drivePreferences;
        self->_drivePreferences = v38;
      }

      v28 = sub_100798A3C();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v40 = self->_drivePreferences;
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v40;
      goto LABEL_26;
    }

    if (transportType == 2)
    {
      walkPreferences = [(RoutePlanningDataCoordination *)v12 walkPreferences];
      v15 = walkPreferences;
      if (walkPreferences)
      {
        v16 = walkPreferences;
        v17 = self->_walkPreferences;
        self->_walkPreferences = v16;
      }

      else
      {
        v29 = [WalkPreferences alloc];
        v17 = +[NSUserDefaults standardUserDefaults];
        v30 = [(WalkPreferences *)v29 initWithDefaults:v17];
        v31 = self->_walkPreferences;
        self->_walkPreferences = v30;
      }

      v28 = sub_100798A3C();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v32 = self->_walkPreferences;
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v32;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[Options] Loaded %@", &v50, 0xCu);
LABEL_31:
    }
  }

  [(PreferenceValuesDataSource *)self rebuildSections];
}

- (void)configureWithTransportType:(int64_t)type displayHints:(id)hints virtualGarage:(id)garage
{
  hintsCopy = hints;
  garageCopy = garage;
  [(RoutePlanningOptionsDataSource *)self _autosaveIfNeeded];
  if (self->_transportType == type)
  {
    switch(type)
    {
      case 3:
        displayHints = self->_displayHints;
        v16 = hintsCopy;
        v17 = displayHints;
        if (v16 | v17)
        {
          v18 = v17;
          v19 = [v16 isEqual:v17];

          if ((v19 & 1) == 0)
          {
            v20 = sub_100798A3C();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              LOWORD(v30) = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[Options] Reloading transit options for displayHints change", &v30, 2u);
            }

            objc_storeStrong(&self->_displayHints, hints);
            v21 = [TransitPreferencesViewControllerDataSource alloc];
            preferences = [(TransitPreferencesViewControllerDataSource *)self->_transitDataSource preferences];
            v23 = [(TransitPreferencesViewControllerDataSource *)v21 initWithPreferences:preferences displayHints:v16];
            transitDataSource = self->_transitDataSource;
            self->_transitDataSource = v23;

            goto LABEL_15;
          }
        }

        break;
      case 2:
        v14 = sub_100798A3C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[Options] Reloading walking options", &v30, 2u);
        }

        goto LABEL_15;
      case 1:
        if ([RoutePlanningOptionsDataSource _isGarage:garageCopy significantlyDifferentFromGarage:self->_virtualGarage])
        {
          v11 = sub_100798A3C();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            LOWORD(v30) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Options] Reloading drive options for significant virtual garage change", &v30, 2u);
          }

          objc_storeStrong(&self->_virtualGarage, garage);
LABEL_15:
          [(PreferenceValuesDataSource *)self rebuildSections];
        }

        break;
      default:
        v29 = sub_100798A3C();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[Options] No significant change, skipping any rebuild", &v30, 2u);
        }

        break;
    }
  }

  else
  {
    v12 = sub_100798A3C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if ((type - 1) > 4)
      {
        v13 = @"Undefined";
      }

      else
      {
        v13 = *(&off_101632D50 + type - 1);
      }

      v30 = 138412802;
      v31 = v13;
      v32 = 2112;
      v33 = hintsCopy;
      v34 = 2112;
      v35 = garageCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[Options] Configuring with transportType:%@, displayHints:%@, garage:%@", &v30, 0x20u);
    }

    self->_transportType = type;
    objc_storeStrong(&self->_displayHints, hints);
    objc_storeStrong(&self->_virtualGarage, garage);
    selectedVehicle = [garageCopy selectedVehicle];
    selectedVehicle = self->_selectedVehicle;
    self->_selectedVehicle = selectedVehicle;

    v27 = self->_selectedVehicle;
    if (v27)
    {
      v28 = [NSNumber numberWithBool:[(VGVehicle *)self->_selectedVehicle usesPreferredNetworksForRouting]];
    }

    else
    {
      v28 = 0;
    }

    objc_storeStrong(&self->_usesPreferredNetworksForRouting, v28);
    if (v27)
    {
    }

    [(RoutePlanningOptionsDataSource *)self _configureForCurrentState];
    [(RoutePlanningOptionsDataSource *)self _updateAnalyticsTarget];
  }
}

- (void)_autosaveIfNeeded
{
  if (self->_automaticSaveTimer)
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Options] Forcing existing autosave timer to fire before reconfiguring", v4, 2u);
    }

    [(NSTimer *)self->_automaticSaveTimer fire];
  }
}

- (void)_performAutomaticSave:(id)save
{
  automaticSaveTimer = self->_automaticSaveTimer;
  if (automaticSaveTimer != save)
  {
    return;
  }

  [(NSTimer *)automaticSaveTimer invalidate];
  v5 = self->_automaticSaveTimer;
  self->_automaticSaveTimer = 0;

  if ([(RoutePlanningOptionsDataSource *)self hasUnsavedChanges])
  {
    objc_storeStrong(&self->_originalSelectedVehicle, self->_selectedVehicle);
    objc_storeStrong(&self->_originalUsesPreferredNetworksForRouting, self->_usesPreferredNetworksForRouting);
    drivePreferences = self->_drivePreferences;
    if (drivePreferences || (drivePreferences = self->_walkPreferences) != 0 || (drivePreferences = self->_cyclePreferences) != 0)
    {
      v7 = drivePreferences;
      originalPreferences = self->_originalPreferences;
      self->_originalPreferences = v7;
    }

    else
    {
      transitDataSource = self->_transitDataSource;
      if (!transitDataSource)
      {
        goto LABEL_8;
      }

      originalPreferences = [(TransitPreferencesViewControllerDataSource *)transitDataSource preferences];
      v14 = [originalPreferences copy];
      v15 = self->_originalPreferences;
      self->_originalPreferences = v14;
    }

LABEL_8:
    [(RoutePlanningOptionsDataSource *)self setHasUnsavedChanges:[(RoutePlanningOptionsDataSource *)self _hasUnsavedChanges]];
    dataCoordinator = [(RoutePlanningOptionsDataSource *)self dataCoordinator];

    v10 = sub_100798A3C();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (dataCoordinator)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Options] Autosaving to coordinator", buf, 2u);
      }

      [(RoutePlanningOptionsDataSource *)self _updateCoordinatorWithPreferences];
    }

    else
    {
      if (v11)
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Options] Autosaving to defaults", v16, 2u);
      }

      [(RoutePlanningOptionsDataSource *)self commitPreferences];
    }

    [(PreferenceValuesDataSource *)self rebuildSections];
    return;
  }

  v12 = sub_100798A3C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[Options] Autosave timer fired but no changes to save", v18, 2u);
  }
}

- (void)_scheduleAutomaticSave
{
  automaticSaveTimer = self->_automaticSaveTimer;
  if (automaticSaveTimer)
  {
    [(NSTimer *)automaticSaveTimer invalidate];
    v4 = self->_automaticSaveTimer;
    self->_automaticSaveTimer = 0;
  }

  if ([(RoutePlanningOptionsDataSource *)self automaticallySaveChanges])
  {
    GEOConfigGetDouble();
    v6 = v5;
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Options] Will autosave in %#.1fs", &v10, 0xCu);
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_performAutomaticSave:" selector:0 userInfo:0 repeats:v6];
    v9 = self->_automaticSaveTimer;
    self->_automaticSaveTimer = v8;
  }
}

- (void)setAutomaticallySaveChanges:(BOOL)changes
{
  if (self->_automaticallySaveChanges != changes)
  {
    changesCopy = changes;
    self->_automaticallySaveChanges = changes;
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "disable";
      if (changesCopy)
      {
        v6 = "enable";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] Will %s autosave", &v8, 0xCu);
    }

    if (!changesCopy)
    {
      [(NSTimer *)self->_automaticSaveTimer invalidate];
      automaticSaveTimer = self->_automaticSaveTimer;
      self->_automaticSaveTimer = 0;
    }
  }
}

- (void)setHasUnsavedChanges:(BOOL)changes
{
  if (self->_hasUnsavedChanges == changes)
  {
    if (self->_automaticSaveTimer)
    {
      v4 = 0;
    }

    else
    {
      v4 = !changes;
    }

    if (!v4)
    {
      v5 = sub_100798A3C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Options] Rescheduling autosave timer", buf, 2u);
      }

      [(RoutePlanningOptionsDataSource *)self _scheduleAutomaticSave];
    }
  }

  else
  {
    self->_hasUnsavedChanges = changes;
    if (changes)
    {

      [(RoutePlanningOptionsDataSource *)self _scheduleAutomaticSave];
    }

    else if (self->_automaticSaveTimer)
    {
      v6 = sub_100798A3C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[Options] Cancelling autosave timer, no longer have unsaved changes", v8, 2u);
      }

      [(NSTimer *)self->_automaticSaveTimer invalidate];
      automaticSaveTimer = self->_automaticSaveTimer;
      self->_automaticSaveTimer = 0;
    }
  }
}

- (void)_updateHasUnsavedChanges
{
  _hasUnsavedChanges = [(RoutePlanningOptionsDataSource *)self _hasUnsavedChanges];

  [(RoutePlanningOptionsDataSource *)self setHasUnsavedChanges:_hasUnsavedChanges];
}

- (BOOL)_hasUnsavedChanges
{
  if (self->_transportType != 1)
  {
    goto LABEL_7;
  }

  originalSelectedVehicle = self->_originalSelectedVehicle;
  selectedVehicle = [(RoutePlanningOptionsDataSource *)self selectedVehicle];
  if (originalSelectedVehicle != selectedVehicle)
  {
    LOBYTE(v5) = 1;
LABEL_18:

    return v5;
  }

  originalUsesPreferredNetworksForRouting = self->_originalUsesPreferredNetworksForRouting;
  usesPreferredNetworksForRouting = [(RoutePlanningOptionsDataSource *)self usesPreferredNetworksForRouting];
  v8 = originalUsesPreferredNetworksForRouting;
  v9 = usesPreferredNetworksForRouting;
  if (!(v8 | v9))
  {

    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v8 isEqual:v9];

  if (v11)
  {
LABEL_7:
    if (self->_originalPreferences)
    {
      drivePreferences = [(RoutePlanningOptionsDataSource *)self drivePreferences];

      if (drivePreferences)
      {
        drivePreferences2 = [(RoutePlanningOptionsDataSource *)self drivePreferences];
LABEL_17:
        selectedVehicle = drivePreferences2;
        v5 = [drivePreferences2 isEqual:self->_originalPreferences] ^ 1;
        goto LABEL_18;
      }

      walkPreferences = [(RoutePlanningOptionsDataSource *)self walkPreferences];

      if (walkPreferences)
      {
        drivePreferences2 = [(RoutePlanningOptionsDataSource *)self walkPreferences];
        goto LABEL_17;
      }

      transitDataSource = [(RoutePlanningOptionsDataSource *)self transitDataSource];

      if (transitDataSource)
      {
        drivePreferences2 = [(RoutePlanningOptionsDataSource *)self transitPreferences];
        goto LABEL_17;
      }

      cyclePreferences = [(RoutePlanningOptionsDataSource *)self cyclePreferences];

      if (cyclePreferences)
      {
        drivePreferences2 = [(RoutePlanningOptionsDataSource *)self cyclePreferences];
        goto LABEL_17;
      }
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (void)dealloc
{
  if (self->_countryObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_countryObserver];
  }

  v4.receiver = self;
  v4.super_class = RoutePlanningOptionsDataSource;
  [(RoutePlanningOptionsDataSource *)&v4 dealloc];
}

+ (BOOL)_isGarage:(id)garage significantlyDifferentFromGarage:(id)fromGarage
{
  garageCopy = garage;
  fromGarageCopy = fromGarage;
  if (garageCopy | fromGarageCopy)
  {
    selectedVehicle = [garageCopy selectedVehicle];
    selectedVehicle2 = [fromGarageCopy selectedVehicle];
    v9 = selectedVehicle;
    v10 = selectedVehicle2;
    if ((!(v9 | v10) || (v11 = v10, v12 = [v9 isEqual:v10], v11, v9, v11, v9, v12)) && (objc_msgSend(garageCopy, "selectedVehicle"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "usesPreferredNetworksForRouting"), objc_msgSend(fromGarageCopy, "selectedVehicle"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "usesPreferredNetworksForRouting"), v15, v13, v14 == v16))
    {
      vehicles = [garageCopy vehicles];
      v19 = [vehicles count];
      vehicles2 = [fromGarageCopy vehicles];
      v17 = v19 != [vehicles2 count];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)registerCellsInCollectionView:(id)view
{
  viewCopy = view;
  [RoutePlanningVehicleCheckmarkRow registerCellsInCollectionView:viewCopy];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___RoutePlanningOptionsDataSource;
  objc_msgSendSuper2(&v5, "registerCellsInCollectionView:", viewCopy);
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (self->_transportType == 5)
  {
    v8 = preferencesCopy;
    v7 = [(WatchSyncedPreferences *)self->_cyclePreferences isEqual:preferencesCopy];
    preferencesCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cyclePreferences, preferences);
      [(PreferenceValuesDataSource *)self rebuildSections];
      preferencesCopy = v8;
    }
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransitPreferences:(id)preferences
{
  if (self->_transportType == 3)
  {
    preferencesCopy = preferences;
    v7 = [[TransitPreferencesViewControllerDataSource alloc] initWithPreferences:preferencesCopy displayHints:self->_displayHints];

    transitDataSource = self->_transitDataSource;
    self->_transitDataSource = v7;

    [(PreferenceValuesDataSource *)self rebuildSections];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (self->_transportType == 2)
  {
    v8 = preferencesCopy;
    v7 = [(WatchSyncedPreferences *)self->_walkPreferences isEqual:preferencesCopy];
    preferencesCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_walkPreferences, preferences);
      [(PreferenceValuesDataSource *)self rebuildSections];
      preferencesCopy = v8;
    }
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (self->_transportType == 1)
  {
    v8 = preferencesCopy;
    v7 = [(WatchSyncedPreferences *)self->_drivePreferences isEqual:preferencesCopy];
    preferencesCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_drivePreferences, preferences);
      [(PreferenceValuesDataSource *)self rebuildSections];
      preferencesCopy = v8;
    }
  }
}

- (void)setDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  dataCoordinator = self->_dataCoordinator;
  if (dataCoordinator != coordinatorCopy)
  {
    v7 = coordinatorCopy;
    [(RoutePlanningDataCoordination *)dataCoordinator removeObserver:self];
    objc_storeStrong(&self->_dataCoordinator, coordinator);
    [(RoutePlanningDataCoordination *)self->_dataCoordinator addObserver:self];
    [(RoutePlanningOptionsDataSource *)self _updateFromCoordinator];
    coordinatorCopy = v7;
  }
}

@end