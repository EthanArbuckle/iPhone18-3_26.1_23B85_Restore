@interface NavigationRouteDetourer
- (NavigationRouteDetourer)initWithNavigationService:(id)service platformController:(id)controller routeInfoProvider:(id)provider routeInterrupter:(id)interrupter;
- (PlatformController)platformController;
- (void)detourRouteToMapItem:(id)item;
- (void)detourRouteToWaypoint:(id)waypoint replacingWaypoint:(id)replacingWaypoint;
@end

@implementation NavigationRouteDetourer

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)detourRouteToWaypoint:(id)waypoint replacingWaypoint:(id)replacingWaypoint
{
  waypointCopy = waypoint;
  replacingWaypointCopy = replacingWaypoint;
  navigationService = [(NavigationRouteDetourer *)self navigationService];
  navigationTransportType = [navigationService navigationTransportType];
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType != 1)
    {
      if (navigationTransportType == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_14;
      }

LABEL_8:
      IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

      if (IsEnabled_DrivingMultiWaypointRoutes)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_9;
  }

  if (navigationTransportType != 3)
  {
    if (navigationTransportType != 6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_14:
  v17 = IsEnabled_Maps182;

  if (v17)
  {
LABEL_15:
    WeakRetained = objc_loadWeakRetained(&self->_platformController);
    currentNavigationSession = [WeakRetained currentNavigationSession];
    waypointController = [currentNavigationSession waypointController];

    if (waypointController)
    {
      if (replacingWaypointCopy)
      {
        v20 = sub_100006E1C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          name = [replacingWaypointCopy name];
          name2 = [waypointCopy name];
          v26 = 138412546;
          v27 = name;
          v28 = 2112;
          v29 = name2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[MPR] replacing waypoint %@ with %@", &v26, 0x16u);
        }

        [waypointController replaceWaypoint:replacingWaypointCopy with:waypointCopy];
      }

      else
      {
        v24 = sub_100035E6C();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          name3 = [waypointCopy name];
          v26 = 138412290;
          v27 = name3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[MPR] inserting new waypoint %@", &v26, 0xCu);
        }

        [waypointController insertWaypoint:waypointCopy];
      }
    }

    else
    {
      v23 = sub_100035E6C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Failed to reach nav waypoint controller from NavigationRouteDetourer", &v26, 2u);
      }

      waypointController = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  navigationService2 = [(NavigationRouteDetourer *)self navigationService];
  [navigationService2 updateDestination:waypointCopy];

  routeInfoProvider = [(NavigationRouteDetourer *)self routeInfoProvider];
  waypointController = [routeInfoProvider historyEntryRoute];

  v15 = sub_100035E6C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = waypointController;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will interrupt route with history entry: %@.", &v26, 0xCu);
  }

  routeInterrupter = [(NavigationRouteDetourer *)self routeInterrupter];
  [routeInterrupter interruptHistoryEntryRoute:waypointController withCompletion:0];

LABEL_12:
}

- (void)detourRouteToMapItem:(id)item
{
  itemCopy = item;
  _geoMapItemStorageForPersistence = [itemCopy _geoMapItemStorageForPersistence];
  v5 = [[GEOComposedWaypoint alloc] initWithMapItem:_geoMapItemStorageForPersistence];
  v6 = +[MNNavigationService sharedService];
  arrivalInfo = [v6 arrivalInfo];

  v8 = +[MNNavigationService sharedService];
  route = [v8 route];

  legs = [route legs];
  legIndex = [arrivalInfo legIndex];
  if (legIndex >= [legs count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [legs objectAtIndex:legIndex];
  }

  pointOfInterestCategory = [itemCopy pointOfInterestCategory];
  if ([pointOfInterestCategory isEqualToString:MKPointOfInterestCategoryEVCharger] && ((objc_msgSend(arrivalInfo, "isInArrivalState") & 1) != 0 || (objc_msgSend(arrivalInfo, "isInParkingState") & 1) != 0))
  {
    chargingStationInfo = [v12 chargingStationInfo];

    if (chargingStationInfo)
    {
      destination = [arrivalInfo destination];
      [(NavigationRouteDetourer *)self detourRouteToWaypoint:v5 replacingWaypoint:destination];

      goto LABEL_11;
    }
  }

  else
  {
  }

  [(NavigationRouteDetourer *)self detourRouteToWaypoint:v5];
LABEL_11:
}

- (NavigationRouteDetourer)initWithNavigationService:(id)service platformController:(id)controller routeInfoProvider:(id)provider routeInterrupter:(id)interrupter
{
  serviceCopy = service;
  controllerCopy = controller;
  providerCopy = provider;
  interrupterCopy = interrupter;
  v18.receiver = self;
  v18.super_class = NavigationRouteDetourer;
  v15 = [(NavigationRouteDetourer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_navigationService, service);
    objc_storeWeak(&v16->_platformController, controllerCopy);
    objc_storeStrong(&v16->_routeInfoProvider, provider);
    objc_storeStrong(&v16->_routeInterrupter, interrupter);
  }

  return v16;
}

@end