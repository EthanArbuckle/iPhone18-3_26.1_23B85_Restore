@interface MAHandleShowMapPoints
- (BOOL)_isDoNotDisturbWhileDrivingHoldingCoverSheet;
- (BOOL)_shouldLaunchIntoNav;
- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)a3;
- (BOOL)_shouldUseSerializedURLWithOptions:(id)a3;
- (id)_mapKitLaunchOptionsWithServiceHelper:(id)a3;
- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)a3;
- (void)_launchBackgroundNavigationWithURL:(id)a3 serviceHelper:(id)a4 completion:(id)a5;
- (void)_launchMapsWithURL:(id)a3 serviceHelper:(id)a4 placeActionDetails:(id)a5 completion:(id)a6;
- (void)_performWithServiceHelper:(id)a3 completion:(id)a4;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleShowMapPoints

- (BOOL)_shouldLaunchIntoNav
{
  if (([(MAHandleShowMapPoints *)self suppressNavigation]& 1) != 0)
  {
    return 0;
  }

  v3 = [(MAHandleShowMapPoints *)self itemSource];
  v4 = [v3 isCurrentLocation];

  if (!v4)
  {
    return 0;
  }

  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0)
  {
    return 1;
  }

  v7 = [(MAHandleShowMapPoints *)self directionsType];
  v5 = v7 != 0;

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

- (id)_mapKitLaunchOptionsWithServiceHelper:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(MAHandleShowMapPoints *)self directionsType];
    if ([v7 isEqualToString:SALocalSearchDirectionsTypeByCarValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeDriving;
    }

    else if ([v7 isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeWalking;
    }

    else if ([v7 isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeTransit;
    }

    else
    {
      v9 = [v7 isEqualToString:SALocalSearchDirectionsTypeBikingValue];
      v8 = &MKLaunchOptionsDirectionsModeDefault;
      if (v9)
      {
        v8 = &MKLaunchOptionsDirectionsModeCycling;
      }
    }

    v10 = *v8;
    [v5 setObject:v10 forKey:MKLaunchOptionsDirectionsModeKey];
    v11 = [(MAHandleShowMapPoints *)self arrivalDate];

    if (v11)
    {
      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:1];
      v13 = [(MAHandleShowMapPoints *)self arrivalDate];
    }

    else
    {
      v14 = [(MAHandleShowMapPoints *)self departureDate];

      if (!v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:0];
      v13 = [(MAHandleShowMapPoints *)self departureDate];
    }

    v15 = v13;
    [v13 timeIntervalSinceReferenceDate];
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

  v17 = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];

  if (v17)
  {
    v18 = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];
    [v18 doubleValue];
    v20 = v19 * 1609.344;

    v21 = [NSNumber numberWithDouble:v20];
    [v5 setObject:v21 forKey:MKLaunchOptionsMapRadiusInMetersKey];
  }

  v22 = [(MAHandleShowMapPoints *)self searchItems];
  v23 = [v22 selectedIndex];

  if (v23)
  {
    v24 = [(MAHandleShowMapPoints *)self searchItems];
    v25 = [v24 selectedIndex];
    [v5 setObject:v25 forKey:MKLaunchOptionsSelectedIndexKey];
  }

  if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav]&& ![(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:v4])
  {
    [v5 setObject:&__kCFBooleanTrue forKey:MKLaunchOptionsLaunchIntoNavKey];
  }

  v26 = [(MAHandleShowMapPoints *)self carRouteOptions];
  v27 = [v26 avoidHighways];

  v28 = [(MAHandleShowMapPoints *)self carRouteOptions];
  v29 = [v28 avoidTolls];

  if (v27)
  {
    v30 = [NSNumber numberWithBool:1];
    [v5 setObject:v30 forKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
  }

  if (v29)
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

- (void)_launchBackgroundNavigationWithURL:(id)a3 serviceHelper:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
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
  v14 = v9;
  v42 = v14;
  v15 = v10;
  v43 = v15;
  v16 = objc_retainBlock(v41);
  v17 = [(MAHandleShowMapPoints *)self timeout];
  if (v17)
  {
    v18 = [(MAHandleShowMapPoints *)self timeout];
    [v18 doubleValue];
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
  [(IPCLoadDirectionsMessage *)v27 setUrl:v8];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_6120;
  v33[3] = &unk_34920;
  v28 = v13;
  v40 = &buf;
  v34 = v28;
  v35 = self;
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

- (void)_launchMapsWithURL:(id)a3 serviceHelper:(id)a4 placeActionDetails:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav])
    {
      [(MAHandleShowMapPoints *)self _captureUserAction:6003 details:v12];
      v14 = 3001;
    }

    else
    {
      v14 = 6003;
      if (([(MAHandleShowMapPoints *)self showDirections]& 1) == 0)
      {
        v15 = [(MAHandleShowMapPoints *)self directionsType];

        if (v15)
        {
          v14 = 6003;
        }

        else
        {
          v14 = 2015;
        }
      }
    }

    [(MAHandleShowMapPoints *)self _captureUserAction:v14 details:v12];
    [MKSiriInteraction generateHashForNavigationURL:v10];
  }

  if ([v11 openSensitiveURL:v10])
  {
    v16 = objc_alloc_init(SALocalSearchShowMapPointsCompleted);
  }

  else
  {
    v17 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed to open url: %@", buf, 0xCu);
    }

    v18 = [SACommandFailed alloc];
    v19 = [NSString stringWithFormat:@"Unable to open maps with URL: %@", v10];
    v16 = [v18 initWithReason:v19];
  }

  v13[2](v13, v16, 0);
}

- (BOOL)_shouldUseSerializedURLWithOptions:(id)a3
{
  v5 = a3;
  v6 = [(MAHandleShowMapPoints *)self showDirections];
  if ((v6 & 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [v5 objectForKeyedSubscript:MKLaunchOptionsTimePointKey];
    v8 = v7 != 0;

    if (v6)
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

- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 extSessionGuid];
    v5 = [v3 extSessionGuidCreatedTimestamp];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = +[GEOUserSession sharedInstance];
      v8 = objc_alloc_init(GEOUserSessionEntity);
      [v8 updateSessionIDFromUUIDString:v4];
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
        v11 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MAPS SIRI: Missing values for extSessionGuid or extSessionGuidCreatedTimestamp from %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v4 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MAPS SIRI: SALocalSearchMapItem (saLocalSearchMapItem: <%@> is either nil or does not implement -extSessionGuid -extSessionGuidCreatedTimestamp methods, skipping", &v10, 0xCu);
    }
  }
}

- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)a3
{
  shouldUseBackgroundNavigation = self->_shouldUseBackgroundNavigation;
  if (!shouldUseBackgroundNavigation)
  {
    v5 = a3;
    v6 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
    v7 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
    v8 = [v7 carPlayExternalDevice];

    v9 = [v5 isDeviceLockedWithPasscode];
    if (v9)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v11 = [(MAHandleShowMapPoints *)self _isDoNotDisturbWhileDrivingHoldingCoverSheet];
      v10 = v11;
    }

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = 0;
    if ([v12 currentCountrySupportsNavigation] && !v8)
    {
      v14 = [(MAHandleShowMapPoints *)self itemSource];
      if ([v14 isCurrentLocation])
      {
        v15 = [(MAHandleShowMapPoints *)self _shouldLaunchIntoNav];
        if (v6 - 3 < 2)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v13 = v16 & v11;
      }

      else
      {
        v13 = 0;
      }
    }

    v17 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v8 != 0;
      v19 = [(MAHandleShowMapPoints *)self itemSource];
      v20 = [(MAHandleShowMapPoints *)self directionsType];
      v24[0] = 67110658;
      v24[1] = v13;
      v25 = 1024;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 1024;
      v32 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
      v33 = 1024;
      v34 = v9;
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

- (void)_performWithServiceHelper:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v12 = [(MAHandleShowMapPoints *)self language];
  v13 = [NSLocale localeWithLocaleIdentifier:v12];

  v14 = [v13 localeIdentifier];
  v15 = [(MAHandleShowMapPoints *)self itemSource];

  if (!v15)
  {
    v17 = 0;
LABEL_9:
    v20 = [(MAHandleShowMapPoints *)self itemDestination];

    if (v20)
    {
      v21 = [(MAHandleShowMapPoints *)self itemDestination];
      v22 = [MKMapItem mapItemWithLocalSearchMapItem:v21 phoneticLocaleIdentifier:v14];

      if (!v22)
      {
        v33 = _maps_backgroundStateLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [(MAHandleShowMapPoints *)self itemDestination];
          *buf = 138412290;
          v80 = v34;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate destination map item from %@", buf, 0xCu);
        }

        v35 = [[SACommandFailed alloc] initWithReason:@"Unable to generate destination map item."];
        v7[2](v7, v35, 0);
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

    v23 = [(MAHandleShowMapPoints *)self _mapKitLaunchOptionsWithServiceHelper:v6];
    v24 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(MAHandleShowMapPoints *)self language];
      *buf = 138412802;
      v80 = v14;
      v81 = 2112;
      v82 = v25;
      v83 = 2112;
      v84 = v23;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "MAPS SIRI: Opening Maps with phoneticLanguage: %@, locale: %@, options: %@", buf, 0x20u);
    }

    v69 = v7;
    v65 = [(MAHandleShowMapPoints *)self _shouldUseSerializedURLWithOptions:v23];
    if (!v65)
    {
      v29 = MKLaunchOptionsTimePointKey;
      v30 = [v23 objectForKeyedSubscript:MKLaunchOptionsTimePointKey];

      if (!v30)
      {
        v66 = 0;
        v32 = 0xFFFFFFFLL;
        goto LABEL_36;
      }

      v31 = [v23 mutableCopy];
      [v31 removeObjectForKey:v29];
      v66 = 0;
      goto LABEL_20;
    }

    v26 = MKLaunchOptionsMapRadiusInMetersKey;
    v27 = [v23 objectForKeyedSubscript:MKLaunchOptionsMapRadiusInMetersKey];
    if (v27)
    {

      v28 = MKLaunchOptionsLaunchIntoNavKey;
    }

    else
    {
      v28 = MKLaunchOptionsLaunchIntoNavKey;
      v36 = [v23 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];

      if (!v36)
      {
        v31 = v23;
        goto LABEL_26;
      }
    }

    v31 = [v23 mutableCopy];
    [v31 removeObjectForKey:v26];
    [v31 removeObjectForKey:v28];

LABEL_26:
    v66 = objc_alloc_init(MKURLSerializer);
    v23 = [(MAHandleShowMapPoints *)self directionsType];
    if ([v23 isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v32 = 2;
      goto LABEL_35;
    }

    if ([v23 isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v32 = 4;
      goto LABEL_35;
    }

    if (([v23 isEqualToString:SALocalSearchDirectionsTypeBikingValue] & 1) == 0)
    {
      if ([v23 isEqualToString:SALocalSearchDirectionsTypeByCarValue])
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

    v23 = v31;
LABEL_36:
    v37 = [(MAHandleShowMapPoints *)self searchItems];
    v38 = [v37 domainObjects];
    v39 = [v38 count];

    v68 = v13;
    if (v39)
    {
      v64 = v6;
      v40 = [(MAHandleShowMapPoints *)self searchItems];
      v41 = [v40 domainObjects];
      v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v41 count]);

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v43 = [(MAHandleShowMapPoints *)self searchItems];
      v44 = [v43 domainObjects];

      v45 = [v44 countByEnumeratingWithState:&v72 objects:v78 count:16];
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
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v72 + 1) + 8 * i);
            [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v49];
            v50 = [MKMapItem mapItemWithLocalSearchMapItem:v49 phoneticLocaleIdentifier:v14];
            [v42 addObject:v50];
          }

          v46 = [v44 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v46);
      }

      if (v65)
      {
        v51 = v66;
        v52 = [v66 urlForOpeningMapItems:v42 options:v23];
        v6 = v64;
        v35 = v71;
        v53 = v67;
        if (v52)
        {
LABEL_46:
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:v6 placeActionDetails:v53 completion:v69];
LABEL_55:

          v7 = v69;
LABEL_56:

          v13 = v68;
          v17 = v70;
LABEL_57:

          goto LABEL_58;
        }
      }

      else
      {
        v52 = [MKMapItem urlForMapItems:v42 options:v23];
        v6 = v64;
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
      v54 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v54];

      v55 = [(MAHandleShowMapPoints *)self itemDestination];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v55];

      v7 = v69;
      if (v65)
      {
        v51 = v66;
        v52 = [v66 urlForDirectionsFromMapItem:v70 toMapItem:v71 transportType:v32 options:v23];
      }

      else
      {
        v77[0] = v70;
        v77[1] = v71;
        v60 = [NSArray arrayWithObjects:v77 count:2];
        v52 = [MKMapItem urlForMapItems:v60 options:v23];

        v51 = v66;
      }

      v53 = v67;
      v35 = v71;
      if (v52)
      {
        if ([(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:v6])
        {
          [(MAHandleShowMapPoints *)self _launchBackgroundNavigationWithURL:v52 serviceHelper:v6 completion:v69];
        }

        else
        {
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:v6 placeActionDetails:v67 completion:v69];
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
      v7 = v69;
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

      v58 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v58];

      v76 = v70;
      v59 = [NSArray arrayWithObjects:&v76 count:1];
      v52 = [MKMapItem urlForMapItems:v59 options:v23];

      if (v52)
      {
        v53 = v67;
        [(MAHandleShowMapPoints *)self _launchMapsWithURL:v52 serviceHelper:v6 placeActionDetails:v67 completion:v69];
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
        v7[2](v7, v52, 0);
        v35 = v71;
        goto LABEL_56;
      }

      *buf = 0;
      v63 = "MAPS SIRI: Unable to generate Maps URL (from source)";
    }

    _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, v63, buf, 2u);
    goto LABEL_76;
  }

  v16 = [(MAHandleShowMapPoints *)self itemSource];
  v17 = [MKMapItem mapItemWithLocalSearchMapItem:v16 phoneticLocaleIdentifier:v14];

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(MAHandleShowMapPoints *)self itemSource];
    *buf = 138412290;
    v80 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate source map item from %@", buf, 0xCu);
  }

  v17 = [[SACommandFailed alloc] initWithReason:@"Unable to generate source map item."];
  v7[2](v7, v17, 0);
LABEL_58:
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_791C;
  v9[3] = &unk_34948;
  v12 = v13;
  v7 = a4;
  v10 = v7;
  v8 = v6;
  v11 = v8;
  [(MAHandleShowMapPoints *)self _performWithServiceHelper:v7 completion:v9];

  _Block_object_dispose(v13, 8);
}

@end