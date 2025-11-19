@interface NavigationRouteDetourer
- (NavigationRouteDetourer)initWithNavigationService:(id)a3 platformController:(id)a4 routeInfoProvider:(id)a5 routeInterrupter:(id)a6;
- (PlatformController)platformController;
- (void)detourRouteToMapItem:(id)a3;
- (void)detourRouteToWaypoint:(id)a3 replacingWaypoint:(id)a4;
@end

@implementation NavigationRouteDetourer

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)detourRouteToWaypoint:(id)a3 replacingWaypoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NavigationRouteDetourer *)self navigationService];
  v9 = [v8 navigationTransportType];
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
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

  if (v9 != 3)
  {
    if (v9 != 6)
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
    v19 = [WeakRetained currentNavigationSession];
    v14 = [v19 waypointController];

    if (v14)
    {
      if (v7)
      {
        v20 = sub_100006E1C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v7 name];
          v22 = [v6 name];
          v26 = 138412546;
          v27 = v21;
          v28 = 2112;
          v29 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[MPR] replacing waypoint %@ with %@", &v26, 0x16u);
        }

        [v14 replaceWaypoint:v7 with:v6];
      }

      else
      {
        v24 = sub_100035E6C();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v6 name];
          v26 = 138412290;
          v27 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[MPR] inserting new waypoint %@", &v26, 0xCu);
        }

        [v14 insertWaypoint:v6];
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

      v14 = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  v12 = [(NavigationRouteDetourer *)self navigationService];
  [v12 updateDestination:v6];

  v13 = [(NavigationRouteDetourer *)self routeInfoProvider];
  v14 = [v13 historyEntryRoute];

  v15 = sub_100035E6C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will interrupt route with history entry: %@.", &v26, 0xCu);
  }

  v16 = [(NavigationRouteDetourer *)self routeInterrupter];
  [v16 interruptHistoryEntryRoute:v14 withCompletion:0];

LABEL_12:
}

- (void)detourRouteToMapItem:(id)a3
{
  v16 = a3;
  v4 = [v16 _geoMapItemStorageForPersistence];
  v5 = [[GEOComposedWaypoint alloc] initWithMapItem:v4];
  v6 = +[MNNavigationService sharedService];
  v7 = [v6 arrivalInfo];

  v8 = +[MNNavigationService sharedService];
  v9 = [v8 route];

  v10 = [v9 legs];
  v11 = [v7 legIndex];
  if (v11 >= [v10 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 objectAtIndex:v11];
  }

  v13 = [v16 pointOfInterestCategory];
  if ([v13 isEqualToString:MKPointOfInterestCategoryEVCharger] && ((objc_msgSend(v7, "isInArrivalState") & 1) != 0 || (objc_msgSend(v7, "isInParkingState") & 1) != 0))
  {
    v14 = [v12 chargingStationInfo];

    if (v14)
    {
      v15 = [v7 destination];
      [(NavigationRouteDetourer *)self detourRouteToWaypoint:v5 replacingWaypoint:v15];

      goto LABEL_11;
    }
  }

  else
  {
  }

  [(NavigationRouteDetourer *)self detourRouteToWaypoint:v5];
LABEL_11:
}

- (NavigationRouteDetourer)initWithNavigationService:(id)a3 platformController:(id)a4 routeInfoProvider:(id)a5 routeInterrupter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NavigationRouteDetourer;
  v15 = [(NavigationRouteDetourer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_navigationService, a3);
    objc_storeWeak(&v16->_platformController, v12);
    objc_storeStrong(&v16->_routeInfoProvider, a5);
    objc_storeStrong(&v16->_routeInterrupter, a6);
  }

  return v16;
}

@end