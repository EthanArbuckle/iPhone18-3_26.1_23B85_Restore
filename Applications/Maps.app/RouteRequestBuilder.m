@interface RouteRequestBuilder
- (RouteRequestBuilder)initWithWaypointSet:(id)a3 maximumRouteCount:(unint64_t)a4 routeAttributesBuilders:(id)a5 currentUserLocation:(id)a6 initiator:(unint64_t)a7 traits:(id)a8 isResumingMultipointRoute:(BOOL)a9 resumeRouteHandle:(id)a10 persistentData:(id)a11;
- (id)appIdentifierForInitiator;
- (id)buildDirectionsRequestDetails;
- (int)sourceFromInitiator;
@end

@implementation RouteRequestBuilder

- (id)appIdentifierForInitiator
{
  if ([(RouteRequestBuilder *)self initiator]== 4)
  {
    return @"com.apple.AssistantServices";
  }

  else
  {
    return 0;
  }
}

- (int)sourceFromInitiator
{
  v2 = [(RouteRequestBuilder *)self initiator];
  if (v2 > 8)
  {
    return 2;
  }

  else
  {
    return dword_101213638[v2];
  }
}

- (id)buildDirectionsRequestDetails
{
  v3 = +[GEORouteAttributes defaultRouteAttributes];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = [(RouteRequestBuilder *)self routeAttributesBuilders];
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v46 + 1) + 8 * i) fillRouteAttributes:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v6);
  }

  v9 = [(RouteRequestBuilder *)self waypointSet];
  v10 = [v9 areAllValidWaypoints];

  if ((v10 & 1) == 0)
  {
    v11 = sub_100035E6C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(RouteRequestBuilder *)self waypointSet];
      *buf = 138412290;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "making a directions request with waypoints: %@", buf, 0xCu);
    }
  }

  v13 = [(RouteRequestBuilder *)self waypointSet];
  v14 = [v13 count];

  if (v14 <= 1)
  {
    v15 = sub_100035E6C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(RouteRequestBuilder *)self waypointSet];
      *buf = 134218242;
      v51 = v14;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid number of waypoints: %lu, waypointSet: %@", buf, 0x16u);
    }
  }

  v17 = [v3 mainTransportType];
  if (v17 <= 2)
  {
    if (v17 != 1)
    {
      if (v17 == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_30;
      }

LABEL_25:
      IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      v20 = 2;
      if (v14 < 2)
      {
        v20 = v14;
      }

      if (!IsEnabled_DrivingMultiWaypointRoutes)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

LABEL_22:
    if (v14 >= 2)
    {
      v14 = 2;
    }

    goto LABEL_34;
  }

  if (v17 != 3)
  {
    if (v17 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_30:
  v20 = 2;
  if (v14 < 2)
  {
    v20 = v14;
  }

  if ((IsEnabled_Maps182 & 1) == 0)
  {
LABEL_33:
    v14 = v20;
  }

LABEL_34:
  v45 = objc_opt_new();
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      v22 = [(RouteRequestBuilder *)self waypointSet];
      v23 = [v22 waypointAtIndex:j];

      if (v23)
      {
        v24 = [GEOMapRegion alloc];
        v25 = [v23 latLng];
        [v25 lat];
        v27 = v26;
        v28 = [v23 latLng];
        [v28 lng];
        v30 = [v24 initWithLatitude:v27 longitude:v29];

        v31 = +[MapsOfflineUIHelper sharedHelper];
        [v23 setIsOutsideOfflineDownloadedRegion:{objc_msgSend(v31, "isRegionDownloaded:requireFullyDownloaded:", v30, 1) ^ 1}];

        v32 = [v23 copy];
        [v45 addObject:v32];
      }
    }
  }

  v33 = [[MNDirectionsRequestDetails alloc] initWithWaypoints:v45 routeAttributes:v3];
  v34 = [(RouteRequestBuilder *)self traits];
  [v33 setTraits:v34];

  [v33 setMaxRouteCount:{-[RouteRequestBuilder maximumRouteCount](self, "maximumRouteCount")}];
  v35 = [(RouteRequestBuilder *)self currentUserLocation];
  [v33 setCurrentUserLocation:v35];

  [v33 setIsResumingMultipointRoute:{-[RouteRequestBuilder isResumingMultipointRoute](self, "isResumingMultipointRoute")}];
  v36 = [(RouteRequestBuilder *)self resumeRouteHandle];
  [v33 setResumeRouteHandle:v36];

  v37 = [(RouteRequestBuilder *)self persistentData];
  [v33 setPersistentData:v37];

  v38 = objc_alloc_init(GEODirectionsRequestFeedback);
  [v38 setPurpose:4];
  [v38 setSource:{-[RouteRequestBuilder sourceFromInitiator](self, "sourceFromInitiator")}];
  v39 = +[NSBundle mainBundle];
  v40 = [v39 bundleIdentifier];
  [v38 setRequestingAppId:v40];

  v41 = [(RouteRequestBuilder *)self appIdentifierForInitiator];
  [v38 setAppIdentifier:v41];

  [v33 setDirectionsRequestFeedback:v38];
  if (+[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    v42 = objc_opt_new();
    [v42 setSupportsArMode:1];
    [v33 setCommonOptions:v42];
    v43 = sub_100035E6C();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v51 = self;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Marking route request with supportsArMode", buf, 0xCu);
    }
  }

  else
  {
    v42 = sub_100035E6C();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v51 = self;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}p] NOT marking route request with supportsArMode", buf, 0xCu);
    }
  }

  return v33;
}

- (RouteRequestBuilder)initWithWaypointSet:(id)a3 maximumRouteCount:(unint64_t)a4 routeAttributesBuilders:(id)a5 currentUserLocation:(id)a6 initiator:(unint64_t)a7 traits:(id)a8 isResumingMultipointRoute:(BOOL)a9 resumeRouteHandle:(id)a10 persistentData:(id)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v30 = a8;
  v29 = a10;
  v20 = a11;
  v31.receiver = self;
  v31.super_class = RouteRequestBuilder;
  v21 = [(RouteRequestBuilder *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_waypointSet, a3);
    v22->_maximumRouteCount = a4;
    v23 = [v18 copy];
    routeAttributesBuilders = v22->_routeAttributesBuilders;
    v22->_routeAttributesBuilders = v23;

    v25 = [v19 copy];
    currentUserLocation = v22->_currentUserLocation;
    v22->_currentUserLocation = v25;

    v22->_initiator = a7;
    objc_storeStrong(&v22->_traits, a8);
    v22->_isResumingMultipointRoute = a9;
    objc_storeStrong(&v22->_resumeRouteHandle, a10);
    objc_storeStrong(&v22->_persistentData, a11);
  }

  return v22;
}

@end