@interface RouteRequestBuilder
- (RouteRequestBuilder)initWithWaypointSet:(id)set maximumRouteCount:(unint64_t)count routeAttributesBuilders:(id)builders currentUserLocation:(id)location initiator:(unint64_t)initiator traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)self0 persistentData:(id)self1;
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
  initiator = [(RouteRequestBuilder *)self initiator];
  if (initiator > 8)
  {
    return 2;
  }

  else
  {
    return dword_101213638[initiator];
  }
}

- (id)buildDirectionsRequestDetails
{
  v3 = +[GEORouteAttributes defaultRouteAttributes];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  routeAttributesBuilders = [(RouteRequestBuilder *)self routeAttributesBuilders];
  v5 = [routeAttributesBuilders countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(routeAttributesBuilders);
        }

        [*(*(&v46 + 1) + 8 * i) fillRouteAttributes:v3];
      }

      v6 = [routeAttributesBuilders countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v6);
  }

  waypointSet = [(RouteRequestBuilder *)self waypointSet];
  areAllValidWaypoints = [waypointSet areAllValidWaypoints];

  if ((areAllValidWaypoints & 1) == 0)
  {
    v11 = sub_100035E6C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      waypointSet2 = [(RouteRequestBuilder *)self waypointSet];
      *buf = 138412290;
      selfCopy2 = waypointSet2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "making a directions request with waypoints: %@", buf, 0xCu);
    }
  }

  waypointSet3 = [(RouteRequestBuilder *)self waypointSet];
  v14 = [waypointSet3 count];

  if (v14 <= 1)
  {
    v15 = sub_100035E6C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      waypointSet4 = [(RouteRequestBuilder *)self waypointSet];
      *buf = 134218242;
      selfCopy2 = v14;
      v52 = 2112;
      v53 = waypointSet4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid number of waypoints: %lu, waypointSet: %@", buf, 0x16u);
    }
  }

  mainTransportType = [v3 mainTransportType];
  if (mainTransportType <= 2)
  {
    if (mainTransportType != 1)
    {
      if (mainTransportType == 2)
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

  if (mainTransportType != 3)
  {
    if (mainTransportType != 6)
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
      waypointSet5 = [(RouteRequestBuilder *)self waypointSet];
      v23 = [waypointSet5 waypointAtIndex:j];

      if (v23)
      {
        v24 = [GEOMapRegion alloc];
        latLng = [v23 latLng];
        [latLng lat];
        v27 = v26;
        latLng2 = [v23 latLng];
        [latLng2 lng];
        v30 = [v24 initWithLatitude:v27 longitude:v29];

        v31 = +[MapsOfflineUIHelper sharedHelper];
        [v23 setIsOutsideOfflineDownloadedRegion:{objc_msgSend(v31, "isRegionDownloaded:requireFullyDownloaded:", v30, 1) ^ 1}];

        v32 = [v23 copy];
        [v45 addObject:v32];
      }
    }
  }

  v33 = [[MNDirectionsRequestDetails alloc] initWithWaypoints:v45 routeAttributes:v3];
  traits = [(RouteRequestBuilder *)self traits];
  [v33 setTraits:traits];

  [v33 setMaxRouteCount:{-[RouteRequestBuilder maximumRouteCount](self, "maximumRouteCount")}];
  currentUserLocation = [(RouteRequestBuilder *)self currentUserLocation];
  [v33 setCurrentUserLocation:currentUserLocation];

  [v33 setIsResumingMultipointRoute:{-[RouteRequestBuilder isResumingMultipointRoute](self, "isResumingMultipointRoute")}];
  resumeRouteHandle = [(RouteRequestBuilder *)self resumeRouteHandle];
  [v33 setResumeRouteHandle:resumeRouteHandle];

  persistentData = [(RouteRequestBuilder *)self persistentData];
  [v33 setPersistentData:persistentData];

  v38 = objc_alloc_init(GEODirectionsRequestFeedback);
  [v38 setPurpose:4];
  [v38 setSource:{-[RouteRequestBuilder sourceFromInitiator](self, "sourceFromInitiator")}];
  v39 = +[NSBundle mainBundle];
  bundleIdentifier = [v39 bundleIdentifier];
  [v38 setRequestingAppId:bundleIdentifier];

  appIdentifierForInitiator = [(RouteRequestBuilder *)self appIdentifierForInitiator];
  [v38 setAppIdentifier:appIdentifierForInitiator];

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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Marking route request with supportsArMode", buf, 0xCu);
    }
  }

  else
  {
    v42 = sub_100035E6C();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}p] NOT marking route request with supportsArMode", buf, 0xCu);
    }
  }

  return v33;
}

- (RouteRequestBuilder)initWithWaypointSet:(id)set maximumRouteCount:(unint64_t)count routeAttributesBuilders:(id)builders currentUserLocation:(id)location initiator:(unint64_t)initiator traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)self0 persistentData:(id)self1
{
  setCopy = set;
  buildersCopy = builders;
  locationCopy = location;
  traitsCopy = traits;
  handleCopy = handle;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = RouteRequestBuilder;
  v21 = [(RouteRequestBuilder *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_waypointSet, set);
    v22->_maximumRouteCount = count;
    v23 = [buildersCopy copy];
    routeAttributesBuilders = v22->_routeAttributesBuilders;
    v22->_routeAttributesBuilders = v23;

    v25 = [locationCopy copy];
    currentUserLocation = v22->_currentUserLocation;
    v22->_currentUserLocation = v25;

    v22->_initiator = initiator;
    objc_storeStrong(&v22->_traits, traits);
    v22->_isResumingMultipointRoute = route;
    objc_storeStrong(&v22->_resumeRouteHandle, handle);
    objc_storeStrong(&v22->_persistentData, data);
  }

  return v22;
}

@end