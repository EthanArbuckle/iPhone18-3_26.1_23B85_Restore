@interface MAHandleShowMapPoints
- (BOOL)_isDoNotDisturbWhileDrivingHoldingCoverSheet;
- (BOOL)_shouldLaunchIntoNav;
- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)helper;
- (BOOL)_shouldUseSerializedURLWithOptions:(id)options;
- (id)_mapKitLaunchOptionsWithServiceHelper:(id)helper;
- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)item;
- (void)_launchBackgroundNavigationWithURL:(id)l serviceHelper:(id)helper completion:(id)completion;
- (void)_launchMapsWithURL:(id)l serviceHelper:(id)helper placeActionDetails:(id)details completion:(id)completion;
- (void)_performWithServiceHelper:(id)helper completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleShowMapPoints

- (BOOL)_shouldLaunchIntoNav
{
  if (([(MAHandleShowMapPoints *)self suppressNavigation]& 1) != 0)
  {
    return 0;
  }

  itemSource = [(MAHandleShowMapPoints *)self itemSource];
  isCurrentLocation = [itemSource isCurrentLocation];

  if (!isCurrentLocation)
  {
    return 0;
  }

  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0)
  {
    return 1;
  }

  directionsType = [(MAHandleShowMapPoints *)self directionsType];
  v5 = directionsType != 0;

  return v5;
}

- (BOOL)_isDoNotDisturbWhileDrivingHoldingCoverSheet
{
  if (+[CARAutomaticDNDStatus isAutomaticDNDAvailable])
  {
    if (!self->_carDnDStatus)
    {
      v3 = objc_alloc_init(CARAutomaticDNDStatus);
      carDnDStatus = self->_carDnDStatus;
      self->_carDnDStatus = v3;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = &off_53378;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "MAPS SIRI: Fetching do-not-disturb-while-driving status with %@ second timeout", buf, 0xCu);
    }

    v7 = self->_carDnDStatus;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_56C8;
    v17 = &unk_34880;
    v19 = &v20;
    v8 = v5;
    v18 = v8;
    [(CARAutomaticDNDStatus *)v7 fetchAutomaticDNDExitConfirmationWithReply:&v14];
    v9 = dispatch_walltime(0, 2000000000);
    dispatch_group_wait(v8, v9);
    v10 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [NSNumber numberWithBool:*(v21 + 24), v14, v15, v16, v17];
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MAPS SIRI: Returning do-not-disturb-while-driving status %@", buf, 0xCu);
    }

    v12 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (id)_mapKitLaunchOptionsWithServiceHelper:(id)helper
{
  helperCopy = helper;
  v5 = +[NSMutableDictionary dictionary];
  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    directionsType = [(MAHandleShowMapPoints *)self directionsType];
    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByCarValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeDriving;
    }

    else if ([directionsType isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeWalking;
    }

    else if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeTransit;
    }

    else
    {
      v9 = [directionsType isEqualToString:SALocalSearchDirectionsTypeBikingValue];
      v8 = &MKLaunchOptionsDirectionsModeDefault;
      if (v9)
      {
        v8 = &MKLaunchOptionsDirectionsModeCycling;
      }
    }

    v10 = *v8;
    [v5 setObject:v10 forKey:MKLaunchOptionsDirectionsModeKey];
    arrivalDate = [(MAHandleShowMapPoints *)self arrivalDate];

    if (arrivalDate)
    {
      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:1];
      arrivalDate2 = [(MAHandleShowMapPoints *)self arrivalDate];
    }

    else
    {
      departureDate = [(MAHandleShowMapPoints *)self departureDate];

      if (!departureDate)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:0];
      arrivalDate2 = [(MAHandleShowMapPoints *)self departureDate];
    }

    v15 = arrivalDate2;
    [arrivalDate2 timeIntervalSinceReferenceDate];
    [v12 setTime:?];

    if (v12)
    {
      [v5 setObject:v12 forKeyedSubscript:MKLaunchOptionsTimePointKey];
    }

    goto LABEL_17;
  }

LABEL_18:
  if ([(MAHandleShowMapPoints *)self showTraffic])
  {
    v16 = [NSNumber numberWithBool:[(MAHandleShowMapPoints *)self showTraffic]];
    [v5 setObject:v16 forKey:MKLaunchOptionsShowsTrafficKey];
  }

  regionOfInterestRadiusInMiles = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];

  if (regionOfInterestRadiusInMiles)
  {
    regionOfInterestRadiusInMiles2 = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];
    [regionOfInterestRadiusInMiles2 doubleValue];
    v20 = v19 * 1609.344;

    v21 = [NSNumber numberWithDouble:v20];
    [v5 setObject:v21 forKey:MKLaunchOptionsMapRadiusInMetersKey];
  }

  searchItems = [(MAHandleShowMapPoints *)self searchItems];
  selectedIndex = [searchItems selectedIndex];

  if (selectedIndex)
  {
    searchItems2 = [(MAHandleShowMapPoints *)self searchItems];
    selectedIndex2 = [searchItems2 selectedIndex];
    [v5 setObject:selectedIndex2 forKey:MKLaunchOptionsSelectedIndexKey];
  }

  if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav]&& ![(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:helperCopy])
  {
    [v5 setObject:&__kCFBooleanTrue forKey:MKLaunchOptionsLaunchIntoNavKey];
  }

  carRouteOptions = [(MAHandleShowMapPoints *)self carRouteOptions];
  avoidHighways = [carRouteOptions avoidHighways];

  carRouteOptions2 = [(MAHandleShowMapPoints *)self carRouteOptions];
  avoidTolls = [carRouteOptions2 avoidTolls];

  if (avoidHighways)
  {
    v30 = [NSNumber numberWithBool:1];
    [v5 setObject:v30 forKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
  }

  if (avoidTolls)
  {
    v31 = [NSNumber numberWithBool:1];
    [v5 setObject:v31 forKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
  }

  if ([(MAHandleShowMapPoints *)self searchAlongRoute]& 1) != 0 || (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
  {
    IsEnabled_Maps182 = 1;
  }

  else
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
  }

  v33 = [NSNumber numberWithBool:IsEnabled_Maps182];
  [v5 setObject:v33 forKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];

  return v5;
}

- (void)_launchBackgroundNavigationWithURL:(id)l serviceHelper:(id)helper completion:(id)completion
{
  lCopy = l;
  helperCopy = helper;
  completionCopy = completion;
  v11 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MAPS SIRI: Starting background navigation with URL: %@", &buf, 0xCu);
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.Maps.launch", v12);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_604C;
  v41[3] = &unk_348A8;
  p_buf = &buf;
  v41[4] = self;
  v14 = helperCopy;
  v42 = v14;
  v15 = completionCopy;
  v43 = v15;
  v16 = objc_retainBlock(v41);
  timeout = [(MAHandleShowMapPoints *)self timeout];
  if (timeout)
  {
    timeout2 = [(MAHandleShowMapPoints *)self timeout];
    [timeout2 doubleValue];
    v20 = v19;

    v21 = v20 + -0.2;
  }

  else
  {
    v21 = 9.8;
  }

  v22 = [(NSDate *)self->_startDate dateByAddingTimeInterval:v21];
  v23 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v45 = 138412290;
    v46 = v22;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "MAPS SIRI: Setting timeout date of %@", v45, 0xCu);
  }

  [v22 timeIntervalSinceNow];
  v25 = dispatch_time(0, (v24 * 1000000000.0));
  dispatch_after(v25, v13, v16);
  v26 = +[MapsSiriIPCInterface sharedInterface];
  [v26 initializeBrokerConnectionIfNeeded];
  v27 = objc_alloc_init(IPCLoadDirectionsMessage);
  [(IPCLoadDirectionsMessage *)v27 setUrl:lCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_6120;
  v33[3] = &unk_34920;
  v28 = v13;
  v40 = &buf;
  v34 = v28;
  selfCopy = self;
  v29 = v14;
  v36 = v29;
  v30 = v15;
  v39 = v30;
  v31 = v26;
  v37 = v31;
  v32 = v27;
  v38 = v32;
  [v31 loadDirections:v32 completion:v33];

  _Block_object_dispose(&buf, 8);
}

- (void)_launchMapsWithURL:(id)l serviceHelper:(id)helper placeActionDetails:(id)details completion:(id)completion
{
  lCopy = l;
  helperCopy = helper;
  detailsCopy = details;
  completionCopy = completion;
  if (detailsCopy)
  {
    if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav])
    {
      [(MAHandleShowMapPoints *)self _captureUserAction:6003 details:detailsCopy];
      v14 = 3001;
    }

    else
    {
      v14 = 6003;
      if (([(MAHandleShowMapPoints *)self showDirections]& 1) == 0)
      {
        directionsType = [(MAHandleShowMapPoints *)self directionsType];

        if (directionsType)
        {
          v14 = 6003;
        }

        else
        {
          v14 = 2015;
        }
      }
    }

    [(MAHandleShowMapPoints *)self _captureUserAction:v14 details:detailsCopy];
    [MKSiriInteraction generateHashForNavigationURL:lCopy];
  }

  if ([helperCopy openSensitiveURL:lCopy])
  {
    v16 = objc_alloc_init(SALocalSearchShowMapPointsCompleted);
  }

  else
  {
    v17 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed to open url: %@", buf, 0xCu);
    }

    v18 = [SACommandFailed alloc];
    lCopy = [NSString stringWithFormat:@"Unable to open maps with URL: %@", lCopy];
    v16 = [v18 initWithReason:lCopy];
  }

  completionCopy[2](completionCopy, v16, 0);
}

- (BOOL)_shouldUseSerializedURLWithOptions:(id)options
{
  optionsCopy = options;
  showDirections = [(MAHandleShowMapPoints *)self showDirections];
  if ((showDirections & 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsTimePointKey];
    v8 = v7 != 0;

    if (showDirections)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)item
{
  itemCopy = item;
  if (itemCopy && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    extSessionGuid = [itemCopy extSessionGuid];
    extSessionGuidCreatedTimestamp = [itemCopy extSessionGuidCreatedTimestamp];
    v6 = extSessionGuidCreatedTimestamp;
    if (extSessionGuid && extSessionGuidCreatedTimestamp)
    {
      v7 = +[GEOUserSession sharedInstance];
      v8 = objc_alloc_init(GEOUserSessionEntity);
      [v8 updateSessionIDFromUUIDString:extSessionGuid];
      [v6 timeIntervalSinceReferenceDate];
      [v8 setSessionCreationTime:?];
      v9 = _maps_backgroundStateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "MAPS SIRI: Setting maps user session to %@", &v10, 0xCu);
      }

      [v7 setSharedMapsUserSessionEntity:v8 shareSessionIDWithMaps:1];
    }

    else
    {
      v7 = _maps_backgroundStateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = itemCopy;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MAPS SIRI: Missing values for extSessionGuid or extSessionGuidCreatedTimestamp from %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    extSessionGuid = _maps_backgroundStateLog();
    if (os_log_type_enabled(extSessionGuid, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = itemCopy;
      _os_log_impl(&dword_0, extSessionGuid, OS_LOG_TYPE_INFO, "MAPS SIRI: SALocalSearchMapItem (saLocalSearchMapItem: <%@> is either nil or does not implement -extSessionGuid -extSessionGuidCreatedTimestamp methods, skipping", &v10, 0xCu);
    }
  }
}

- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)helper
{
  shouldUseBackgroundNavigation = self->_shouldUseBackgroundNavigation;
  if (!shouldUseBackgroundNavigation)
  {
    helperCopy = helper;
    v6 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
    v7 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
    carPlayExternalDevice = [v7 carPlayExternalDevice];

    isDeviceLockedWithPasscode = [helperCopy isDeviceLockedWithPasscode];
    if (isDeviceLockedWithPasscode)
    {
      v10 = 0;
      _isDoNotDisturbWhileDrivingHoldingCoverSheet = 1;
    }

    else
    {
      _isDoNotDisturbWhileDrivingHoldingCoverSheet = [(MAHandleShowMapPoints *)self _isDoNotDisturbWhileDrivingHoldingCoverSheet];
      v10 = _isDoNotDisturbWhileDrivingHoldingCoverSheet;
    }

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = 0;
    if ([v12 currentCountrySupportsNavigation] && !carPlayExternalDevice)
    {
      itemSource = [(MAHandleShowMapPoints *)self itemSource];
      if ([itemSource isCurrentLocation])
      {
        _shouldLaunchIntoNav = [(MAHandleShowMapPoints *)self _shouldLaunchIntoNav];
        if (v6 - 3 < 2)
        {
          v16 = _shouldLaunchIntoNav;
        }

        else
        {
          v16 = 0;
        }

        v13 = v16 & _isDoNotDisturbWhileDrivingHoldingCoverSheet;
      }

      else
      {
        v13 = 0;
      }
    }

    v17 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = carPlayExternalDevice != 0;
      itemSource2 = [(MAHandleShowMapPoints *)self itemSource];
      directionsType = [(MAHandleShowMapPoints *)self directionsType];
      v24[0] = 67110658;
      v24[1] = v13;
      v25 = 1024;
      v26 = v18;
      v27 = 2112;
      v28 = itemSource2;
      v29 = 2112;
      v30 = directionsType;
      v31 = 1024;
      v32 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
      v33 = 1024;
      v34 = isDeviceLockedWithPasscode;
      v35 = 1024;
      v36 = v10;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MAPS SIRI: use background nav? %d | in CarPlay? %d | item source %@ | directions type %@ | authorization status for Maps CL %d | is locked with passcode? %d | do-not-disturb-while-driving requiring exit confirmation? (if 'is locked with passcode? is 1/YES, this value may be inaccurate because we don't fetch it) %d", v24, 0x34u);
    }

    v21 = [NSNumber numberWithBool:v13];
    v22 = self->_shouldUseBackgroundNavigation;
    self->_shouldUseBackgroundNavigation = v21;

    shouldUseBackgroundNavigation = self->_shouldUseBackgroundNavigation;
  }

  return [(NSNumber *)shouldUseBackgroundNavigation BOOLValue];
}

- (void)_performWithServiceHelper:(id)helper completion:(id)completion
{
  helperCopy = helper;
  completionCopy = completion;
  v8 = objc_opt_new();
  startDate = self->_startDate;
  self->_startDate = v8;

  v10 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_startDate;
    *buf = 138412290;
    v80 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MAPS SIRI: MAHandleShowMapPoints starting at %@", buf, 0xCu);
  }

  language = [(MAHandleShowMapPoints *)self language];
  v13 = [NSLocale localeWithLocaleIdentifier:language];

  localeIdentifier = [v13 localeIdentifier];
  itemSource = [(MAHandleShowMapPoints *)self itemSource];

  if (!itemSource)
  {
    v17 = 0;
LABEL_9:
    itemDestination = [(MAHandleShowMapPoints *)self itemDestination];

    if (itemDestination)
    {
      itemDestination2 = [(MAHandleShowMapPoints *)self itemDestination];
      v22 = [MKMapItem mapItemWithLocalSearchMapItem:itemDestination2 phoneticLocaleIdentifier:localeIdentifier];

      if (!v22)
      {
        v33 = _maps_backgroundStateLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          itemDestination3 = [(MAHandleShowMapPoints *)self itemDestination];
          *buf = 138412290;
          v80 = itemDestination3;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate destination map item from %@", buf, 0xCu);
        }

        v35 = [[SACommandFailed alloc] initWithReason:@"Unable to generate destination map item."];
        completionCopy[2](completionCopy, v35, 0);
        goto LABEL_57;
      }

      v70 = v17;
      v71 = v22;
      v67 = [GEOPlaceActionDetails actionDetailsWithMapItem:v22 timestamp:1 resultIndex:0.0];
    }

    else
    {
      v70 = v17;
      v71 = 0;
      v67 = 0;
    }

    directionsType = [(MAHandleShowMapPoints *)self _mapKitLaunchOptionsWithServiceHelper:helperCopy];
    v24 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      language2 = [(MAHandleShowMapPoints *)self language];
      *buf = 138412802;
      v80 = localeIdentifier;
      v81 = 2112;
      v82 = language2;
      v83 = 2112;
      v84 = directionsType;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "MAPS SIRI: Opening Maps with phoneticLanguage: %@, locale: %@, options: %@", buf, 0x20u);
    }

    v69 = completionCopy;
    v65 = [(MAHandleShowMapPoints *)self _shouldUseSerializedURLWithOptions:directionsType];
    if (!v65)
    {
      v29 = MKLaunchOptionsTimePointKey;
      v30 = [directionsType objectForKeyedSubscript:MKLaunchOptionsTimePointKey];

      if (!v30)
      {
        v66 = 0;
        v32 = 0xFFFFFFFLL;
        goto LABEL_36;
      }

      v31 = [directionsType mutableCopy];
      [v31 removeObjectForKey:v29];
      v66 = 0;
      goto LABEL_20;
    }

    v26 = MKLaunchOptionsMapRadiusInMetersKey;
    v27 = [directionsType objectForKeyedSubscript:MKLaunchOptionsMapRadiusInMetersKey];
    if (v27)
    {

      v28 = MKLaunchOptionsLaunchIntoNavKey;
    }

    else
    {
      v28 = MKLaunchOptionsLaunchIntoNavKey;
      v36 = [directionsType objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];

      if (!v36)
      {
        v31 = directionsType;
        goto LABEL_26;
      }
    }

    v31 = [directionsType mutableCopy];
    [v31 removeObjectForKey:v26];
    [v31 removeObjectForKey:v28];

LABEL_26:
    v66 = objc_alloc_init(MKURLSerializer);
    directionsType = [(MAHandleShowMapPoints *)self directionsType];
    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v32 = 2;
      goto LABEL_35;
    }

    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v32 = 4;
      goto LABEL_35;
    }

    if (([directionsType isEqualToString:SALocalSearchDirectionsTypeBikingValue] & 1) == 0)
    {
      if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByCarValue])
      {
        v32 = 1;
      }

      else
      {
        v32 = 0xFFFFFFFLL;
      }

      goto LABEL_35;
    }

LABEL_20:
    v32 = 0xFFFFFFFLL;
LABEL_35:

    directionsType = v31;
LABEL_36:
    searchItems = [(MAHandleShowMapPoints *)self searchItems];
    domainObjects = [searchItems domainObjects];
    v39 = [domainObjects count];

    v68 = v13;
    if (v39)
    {
      v64 = helperCopy;
      searchItems2 = [(MAHandleShowMapPoints *)self searchItems];
      domainObjects2 = [searchItems2 domainObjects];
      v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [domainObjects2 count]);

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      searchItems3 = [(MAHandleShowMapPoints *)self searchItems];
      domainObjects3 = [searchItems3 domainObjects];

      v45 = [domainObjects3 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v73;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v73 != v47)
            {
              objc_enumerationMutation(domainObjects3);
            }

            v49 = *(*(&v72 + 1) + 8 * i);
            [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v49];
            v50 = [MKMapItem mapItemWithLocalSearchMapItem:v49 phoneticLocaleIdentifier:localeIdentifier];
            [v42 addObject:v50];
          }

          v46 = [domainObjects3 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v46);
      }

      if (v65)
      {
        v51 = v66;
        v52 = [v66 urlForOpeningMapItems:v42 options:directionsType];
        helperCopy = v64;
        v35 = v71;
        v53 = v67;
        if (v52)
        {
LABEL_46:
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:helperCopy placeActionDetails:v53 completion:v69];
LABEL_55:

          completionCopy = v69;
LABEL_56:

          v13 = v68;
          v17 = v70;
LABEL_57:

          goto LABEL_58;
        }
      }

      else
      {
        v52 = [MKMapItem urlForMapItems:v42 options:directionsType];
        helperCopy = v64;
        v35 = v71;
        v51 = v66;
        v53 = v67;
        if (v52)
        {
          goto LABEL_46;
        }
      }

      v56 = _maps_backgroundStateLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate Maps URL (from domainObjects)", buf, 2u);
      }

      v57 = [[SACommandFailed alloc] initWithReason:@"Unable to generate Maps URL."];
      v69[2](v69, v57, 0);

      v35 = v71;
      goto LABEL_55;
    }

    if (v70 && v71)
    {
      itemSource2 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemSource2];

      itemDestination4 = [(MAHandleShowMapPoints *)self itemDestination];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemDestination4];

      completionCopy = v69;
      if (v65)
      {
        v51 = v66;
        v52 = [v66 urlForDirectionsFromMapItem:v70 toMapItem:v71 transportType:v32 options:directionsType];
      }

      else
      {
        v77[0] = v70;
        v77[1] = v71;
        v60 = [NSArray arrayWithObjects:v77 count:2];
        v52 = [MKMapItem urlForMapItems:v60 options:directionsType];

        v51 = v66;
      }

      v53 = v67;
      v35 = v71;
      if (v52)
      {
        if ([(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:helperCopy])
        {
          [(MAHandleShowMapPoints *)self _launchBackgroundNavigationWithURL:v52 serviceHelper:helperCopy completion:v69];
        }

        else
        {
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:helperCopy placeActionDetails:v67 completion:v69];
        }

        goto LABEL_56;
      }

      v62 = _maps_backgroundStateLog();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_76;
      }

      *buf = 0;
      v63 = "MAPS SIRI: Unable to generate Maps URL (from source + destination)";
    }

    else
    {
      completionCopy = v69;
      if (!v70)
      {
        v61 = _maps_backgroundStateLog();
        v51 = v66;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate Maps URL (from destination)", buf, 2u);
        }

        v52 = [[SACommandFailed alloc] initWithReason:@"Unknown source and destination."];
        v69[2](v69, v52, 0);
        v35 = v71;
        v53 = v67;
        goto LABEL_56;
      }

      itemSource3 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemSource3];

      v76 = v70;
      v59 = [NSArray arrayWithObjects:&v76 count:1];
      v52 = [MKMapItem urlForMapItems:v59 options:directionsType];

      if (v52)
      {
        v53 = v67;
        [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:helperCopy placeActionDetails:v67 completion:v69];
        v35 = v71;
        v51 = v66;
        goto LABEL_56;
      }

      v62 = _maps_backgroundStateLog();
      v51 = v66;
      v53 = v67;
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
LABEL_76:

        v52 = [[SACommandFailed alloc] initWithReason:@"Unable to generate Maps URL."];
        completionCopy[2](completionCopy, v52, 0);
        v35 = v71;
        goto LABEL_56;
      }

      *buf = 0;
      v63 = "MAPS SIRI: Unable to generate Maps URL (from source)";
    }

    _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, v63, buf, 2u);
    goto LABEL_76;
  }

  itemSource4 = [(MAHandleShowMapPoints *)self itemSource];
  v17 = [MKMapItem mapItemWithLocalSearchMapItem:itemSource4 phoneticLocaleIdentifier:localeIdentifier];

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    itemSource5 = [(MAHandleShowMapPoints *)self itemSource];
    *buf = 138412290;
    v80 = itemSource5;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate source map item from %@", buf, 0xCu);
  }

  v17 = [[SACommandFailed alloc] initWithReason:@"Unable to generate source map item."];
  completionCopy[2](completionCopy, v17, 0);
LABEL_58:
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_791C;
  v9[3] = &unk_34948;
  v12 = v13;
  helperCopy = helper;
  v10 = helperCopy;
  v8 = completionCopy;
  v11 = v8;
  [(MAHandleShowMapPoints *)self _performWithServiceHelper:helperCopy completion:v9];

  _Block_object_dispose(v13, 8);
}

@end