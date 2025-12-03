@interface RoutePlanningSession
+ (id)mostAppropriateNameForWaypointWithRequest:(id)request composedWaypoint:(id)waypoint;
- (CyclePreferences)cyclePreferences;
- (DrivePreferences)drivePreferences;
- (GEOAdvisoriesInfo)advisoriesInfo;
- (NSArray)automaticSharingContacts;
- (NSArray)waypointDisplayableMarkers;
- (NSDictionary)waypointRequestResults;
- (NSString)description;
- (NSString)destinationName;
- (NSString)originName;
- (NSString)shortcutIdentifier;
- (PlatformController)platformController;
- (Result)currentRouteCollectionResult;
- (Result)resolvedWaypointsResult;
- (RouteCollection)currentRouteCollection;
- (RoutePlanningSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration;
- (RoutePlanningTiming)timing;
- (SearchResult)destinationDisplayableMarker;
- (SearchResult)originDisplayableMarker;
- (TransitPreferences)transitPreferences;
- (WalkPreferences)walkPreferences;
- (WaypointSet)resolvedWaypoints;
- (id)_favoriteWithIdentifier:(id)identifier;
- (id)_searchResultFromWaypointRequest:(id)request resolvedWaypoint:(id)waypoint;
- (id)_shortcutWithIdentifier:(id)identifier;
- (id)routeCollectionForTransportType:(int64_t)type;
- (id)routeCollectionResultForTransportType:(int64_t)type;
- (int64_t)navigationTypeForCurrentRoute;
- (int64_t)requestState;
- (void)_cancelFetchingCapabilitiesSharingContacts;
- (void)_handleReceivedWaypointSetResult;
- (void)_notifyObserversDidUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)_refreshAutomaticSharingContactsFromShortcut;
- (void)_scheduleRefreshUserShortcuts;
- (void)_setAutomaticSharingContacts:(id)contacts forShortcutIdentifier:(id)identifier;
- (void)_setIsInACustomRouteRegion:(BOOL)region;
- (void)_updateIsInACustomRouteRegionForRouteCollection:(id)collection;
- (void)_updateLoadingControllerForRealtimeUpdates;
- (void)cleanupStateReplay;
- (void)dealloc;
- (void)enumerateRequestsOrWaypointsUsingBlock:(id)block;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)prepareToReplayCurrentState;
- (void)purgeRouteCollectionForTransportType:(int64_t)type;
- (void)registerObserver:(id)observer;
- (void)replayCurrentState;
- (void)requestUpdatedRouteWithRefreshedOrigin:(BOOL)origin;
- (void)resume;
- (void)routeLoadingController:(id)controller didReceiveRoutesResult:(id)result forTransportType:(int64_t)type advisoryInfo:(id)info;
- (void)routeLoadingController:(id)controller didReceiveUpdates:(id)updates forRoutesResult:(id)result;
- (void)safelySetCurrentTransportType:(int64_t)type;
- (void)selectRoute:(id)route;
- (void)setAutomaticSharingContacts:(id)contacts;
- (void)setCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)setSelectedRouteIndex:(unint64_t)index forTransportType:(int64_t)type;
- (void)setShortcutIdentifier:(id)identifier;
- (void)shortcutManagerMeCardDidChange:(id)change;
- (void)suspend;
- (void)unregisterObserver:(id)observer;
- (void)updateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)waypointController:(id)controller didResolveWaypointSet:(id)set;
@end

@implementation RoutePlanningSession

- (void)_refreshAutomaticSharingContactsFromShortcut
{
  v3 = sub_1000946AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "RoutePlanningSession asked to refresh autoshare from shortcut but no shortcutIdentifier set, exiting early", buf, 2u);
  }

  shortcutIdentifier = [(RoutePlanningSession *)self shortcutIdentifier];
  v5 = shortcutIdentifier == 0;

  if (!v5)
  {
    objc_initWeak(&location, self);
    shortcutIdentifier2 = [(RoutePlanningSession *)self shortcutIdentifier];
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v15 = shortcutIdentifier2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RoutePlanningSession will refresh autoshare from shortcut %{private}@...", buf, 0xCu);
    }

    v8 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009475C;
    block[3] = &unk_101661340;
    objc_copyWeak(&v12, &location);
    v11 = shortcutIdentifier2;
    v9 = shortcutIdentifier2;
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (NSString)shortcutIdentifier
{
  configuration = [(RoutePlanningSession *)self configuration];
  shortcutIdentifier = [configuration shortcutIdentifier];

  return shortcutIdentifier;
}

- (void)selectRoute:(id)route
{
  routeCopy = route;
  currentRouteCollection = [(RoutePlanningSession *)self currentRouteCollection];
  routes = [currentRouteCollection routes];
  v7 = [routes indexOfObject:routeCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100006E1C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(RoutePlanningSession *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_9:

LABEL_14:
    *buf = 138543362;
    v16 = selfCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] CarRouteSelection: Tried to select a route in routePlanning that wasn't in currentRouteCollection.", buf, 0xCu);

    goto LABEL_15;
  }

  [(RoutePlanningSession *)self setSelectedRouteIndex:v7 forTransportType:1];
}

- (RoutePlanningTiming)timing
{
  configuration = [(RoutePlanningSession *)self configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    transportTypeInfoProviders = [transportTypeInformation transportTypeInfoProviders];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    objectEnumerator = [transportTypeInfoProviders objectEnumerator];
    timing2 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (timing2)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != timing2; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          timing = [v10 timing];

          if (timing)
          {
            timing2 = [v10 timing];
            goto LABEL_13;
          }
        }

        timing2 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (timing2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    timing2 = 0;
  }

  return timing2;
}

- (CyclePreferences)cyclePreferences
{
  configuration = [(RoutePlanningSession *)self configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v5 = [transportTypeInformation requestInfoProviderForTransportType:5];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315906;
          v12 = "[RoutePlanningSession(RouteRequestPreferences) cyclePreferences]";
          v13 = 2080;
          v14 = "RoutePlanningSession+RouteRequestPreferences.m";
          v15 = 1024;
          v16 = 82;
          v17 = 2080;
          v18 = "cyclingInfoProvider == nil || [cyclingInfoProvider isKindOfClass:CyclingRequestInfoProvider.class]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
        }

        if (sub_100E03634())
        {
          v9 = sub_10006D178();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = +[NSThread callStackSymbols];
            v11 = 138412290;
            v12 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cyclePreferences = [v5 cyclePreferences];
    }

    else
    {
      cyclePreferences = 0;
    }
  }

  else
  {
    cyclePreferences = 0;
  }

  return cyclePreferences;
}

- (TransitPreferences)transitPreferences
{
  configuration = [(RoutePlanningSession *)self configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v5 = [transportTypeInformation requestInfoProviderForTransportType:3];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315906;
          v12 = "[RoutePlanningSession(RouteRequestPreferences) transitPreferences]";
          v13 = 2080;
          v14 = "RoutePlanningSession+RouteRequestPreferences.m";
          v15 = 1024;
          v16 = 65;
          v17 = 2080;
          v18 = "transitInfoProvider == nil || [transitInfoProvider isKindOfClass:TransitRequestInfoProvider.class]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
        }

        if (sub_100E03634())
        {
          v9 = sub_10006D178();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = +[NSThread callStackSymbols];
            v11 = 138412290;
            v12 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitPreferences = [v5 transitPreferences];
    }

    else
    {
      transitPreferences = 0;
    }
  }

  else
  {
    transitPreferences = 0;
  }

  return transitPreferences;
}

- (WalkPreferences)walkPreferences
{
  configuration = [(RoutePlanningSession *)self configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v5 = [transportTypeInformation requestInfoProviderForTransportType:2];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315906;
          v12 = "[RoutePlanningSession(RouteRequestPreferences) walkPreferences]";
          v13 = 2080;
          v14 = "RoutePlanningSession+RouteRequestPreferences.m";
          v15 = 1024;
          v16 = 49;
          v17 = 2080;
          v18 = "walkingInfoProvider == nil || [walkingInfoProvider isKindOfClass:WalkingRequestInfoProvider.class]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
        }

        if (sub_100E03634())
        {
          v9 = sub_10006D178();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = +[NSThread callStackSymbols];
            v11 = 138412290;
            v12 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      walkPreferences = [v5 walkPreferences];
    }

    else
    {
      walkPreferences = 0;
    }
  }

  else
  {
    walkPreferences = 0;
  }

  return walkPreferences;
}

- (DrivePreferences)drivePreferences
{
  configuration = [(RoutePlanningSession *)self configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v5 = [transportTypeInformation requestInfoProviderForTransportType:1];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315906;
          v12 = "[RoutePlanningSession(RouteRequestPreferences) drivePreferences]";
          v13 = 2080;
          v14 = "RoutePlanningSession+RouteRequestPreferences.m";
          v15 = 1024;
          v16 = 33;
          v17 = 2080;
          v18 = "drivingInfoProvider == nil || [drivingInfoProvider isKindOfClass:DrivingRequestInfoProvider.class]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
        }

        if (sub_100E03634())
        {
          v9 = sub_10006D178();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = +[NSThread callStackSymbols];
            v11 = 138412290;
            v12 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drivePreferences = [v5 drivePreferences];
    }

    else
    {
      drivePreferences = 0;
    }
  }

  else
  {
    drivePreferences = 0;
  }

  return drivePreferences;
}

- (int64_t)requestState
{
  v3 = [(RoutePlanningSession *)self routeCollectionResultForTransportType:[(RoutePlanningSession *)self currentTransportType]];
  v4 = v3;
  if (v3)
  {
    if ([v3 isSuccess])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    resolvedWaypointsResult = [(RoutePlanningSession *)self resolvedWaypointsResult];
    if (resolvedWaypointsResult)
    {
      resolvedWaypointsResult2 = [(RoutePlanningSession *)self resolvedWaypointsResult];
      if ([resolvedWaypointsResult2 isSuccess])
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)_searchResultFromWaypointRequest:(id)request resolvedWaypoint:(id)waypoint
{
  requestCopy = request;
  waypointCopy = waypoint;
  if (waypointCopy)
  {
    displayableMarker2 = [[SearchResult alloc] initWithComposedWaypoint:waypointCopy];
    goto LABEL_8;
  }

  waypointPlaceholder = [requestCopy waypointPlaceholder];
  displayableMarker = [waypointPlaceholder displayableMarker];

  if (displayableMarker)
  {
    waypointPlaceholder2 = [requestCopy waypointPlaceholder];
    displayableMarker2 = [waypointPlaceholder2 displayableMarker];
LABEL_5:

    goto LABEL_8;
  }

  waypointRequest = [requestCopy waypointRequest];
  mapItemForLocationComparison = [waypointRequest mapItemForLocationComparison];

  if (!mapItemForLocationComparison)
  {
    waypointPlaceholder2 = [requestCopy waypointRequest];
    [waypointPlaceholder2 coordinate];
    v18 = v17;
    [waypointPlaceholder2 coordinate];
    if (fabs(v18 + 180.0) >= 0.00000000999999994 || fabs(v19 + 180.0) >= 0.00000000999999994)
    {
      v20 = [[GEOLocation alloc] initWithGEOCoordinate:objc_msgSend(waypointPlaceholder2 isUserLocation:{"isCurrentLocation"), v18, v19}];
      v21 = [[GEOComposedWaypoint alloc] initWithLocation:v20 isCurrentLocation:{objc_msgSend(waypointPlaceholder2, "isCurrentLocation")}];
      displayableMarker2 = [[SearchResult alloc] initWithComposedWaypoint:v21];
    }

    else
    {
      displayableMarker2 = 0;
    }

    goto LABEL_5;
  }

  v13 = [SearchResult alloc];
  waypointRequest2 = [requestCopy waypointRequest];
  mapItemForLocationComparison2 = [waypointRequest2 mapItemForLocationComparison];
  displayableMarker2 = [(SearchResult *)v13 initWithMapItem:mapItemForLocationComparison2];

LABEL_8:

  return displayableMarker2;
}

- (NSArray)waypointDisplayableMarkers
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100E69530;
  v9 = &unk_101656780;
  v10 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v3 = v10;
  [(RoutePlanningSession *)self enumerateRequestsOrWaypointsUsingBlock:&v6];
  v4 = [v3 copy];

  return v4;
}

- (SearchResult)destinationDisplayableMarker
{
  configuration = [(RoutePlanningSession *)self configuration];
  destinationWaypointRequest = [configuration destinationWaypointRequest];
  resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
  destination = [resolvedWaypoints destination];
  v7 = [(RoutePlanningSession *)self _searchResultFromWaypointRequest:destinationWaypointRequest resolvedWaypoint:destination];

  return v7;
}

- (SearchResult)originDisplayableMarker
{
  configuration = [(RoutePlanningSession *)self configuration];
  originWaypointRequest = [configuration originWaypointRequest];
  resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
  origin = [resolvedWaypoints origin];
  v7 = [(RoutePlanningSession *)self _searchResultFromWaypointRequest:originWaypointRequest resolvedWaypoint:origin];

  return v7;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 745 && key.var1 == &unk_101644E90)
  {
    currentRouteCollectionResult = [(RoutePlanningSession *)self currentRouteCollectionResult];
    value = [currentRouteCollectionResult value];
    [(RoutePlanningSession *)self _updateIsInACustomRouteRegionForRouteCollection:value];
  }
}

- (void)routeLoadingController:(id)controller didReceiveUpdates:(id)updates forRoutesResult:(id)result
{
  controllerCopy = controller;
  updatesCopy = updates;
  resultCopy = result;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v11 = sub_100798A3C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [updatesCopy allKeys];
    *buf = 134349570;
    selfCopy = self;
    v21 = 2112;
    v22 = controllerCopy;
    v23 = 2112;
    v24 = allKeys;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ received updates for routes %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F69B04;
  block[3] = &unk_101661A40;
  block[4] = self;
  v16 = updatesCopy;
  v17 = resultCopy;
  v13 = resultCopy;
  v14 = updatesCopy;
  dispatch_async(&_dispatch_main_q, block);

  os_activity_scope_leave(&state);
}

- (void)routeLoadingController:(id)controller didReceiveRoutesResult:(id)result forTransportType:(int64_t)type advisoryInfo:(id)info
{
  controllerCopy = controller;
  resultCopy = result;
  infoCopy = info;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  if ([(RoutePlanningSession *)self sessionState]== 2)
  {
    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring routes update due to being paused", &buf, 0xCu);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x3032000000;
    v33 = sub_100F69EB0;
    v34 = sub_100F69EC0;
    v35 = 0;
    v14 = sub_100798A3C();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100F69EC8;
      v21[3] = &unk_10165E808;
      v21[4] = &buf;
      [resultCopy withValue:v21 orError:&stru_10165E828];
      v16 = sub_100798A3C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(&buf + 1) + 40);
        if ((type - 1) > 4)
        {
          v18 = @"Undefined";
        }

        else
        {
          v18 = off_10165E8C8[type - 1];
        }

        *v23 = 134349826;
        selfCopy = self;
        v25 = 2112;
        v26 = controllerCopy;
        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ received routes %@ (transport type=%@)", v23, 0x2Au);
      }
    }

    v19 = [resultCopy map:&stru_10165E868];
    if ([(RoutePlanningSession *)self currentTransportType]== 1)
    {
      objc_storeStrong(&self->_advisoryInfo, info);
    }

    v20 = sub_100798A3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v23 = 138412290;
      selfCopy = infoCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Advisory info receieved : %@", v23, 0xCu);
    }

    [(RoutePlanningSession *)self updateRouteCollectionResult:v19 forTransportType:type];
    _Block_object_dispose(&buf, 8);
  }

  os_activity_scope_leave(&state);
}

- (void)waypointController:(id)controller didResolveWaypointSet:(id)set
{
  controllerCopy = controller;
  setCopy = set;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  label = dispatch_queue_get_label(self->_isolationQueue);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || label && v9 && !strcmp(label, v9))
  {
    v44 = sub_10006D178();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = dispatch_queue_get_label(self->_isolationQueue);
      *buf = 136316162;
      selfCopy5 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]";
      v58 = 2080;
      v59 = "RoutePlanningSession.m";
      v60 = 1024;
      v61 = 813;
      v62 = 2080;
      v63 = "_isolationQueue";
      v64 = 2080;
      v65 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy5 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  sessionState = [(RoutePlanningSession *)self sessionState];
  v11 = sub_100798A3C();
  v12 = v11;
  if (sessionState == 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring waypoint update due to being paused", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      currentTransportType = [(RoutePlanningSession *)self currentTransportType];
      if ((currentTransportType - 1) > 4)
      {
        v14 = @"Undefined";
      }

      else
      {
        v14 = off_10165E8C8[currentTransportType - 1];
      }

      *buf = 134349314;
      selfCopy5 = self;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}p] Received waypoints with initial transport type: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100F6A768;
    v51[3] = &unk_10165E778;
    objc_copyWeak(&v53, &location);
    v52 = setCopy;
    v15 = objc_retainBlock(v51);
    if ([(RoutePlanningSession *)self currentTransportType])
    {
      v16 = sub_100798A3C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] RoutePlanningSession was initialized with a valid transport type", buf, 0xCu);
      }

      (v15[2])(v15, [(RoutePlanningSession *)self currentTransportType]);
    }

    else
    {
      platformController = [(RoutePlanningSession *)self platformController];
      chromeViewController = [platformController chromeViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = chromeViewController;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
        origin = [resolvedWaypoints origin];
        latLng = [origin latLng];

        resolvedWaypoints2 = [(RoutePlanningSession *)self resolvedWaypoints];
        destination = [resolvedWaypoints2 destination];
        latLng2 = [destination latLng];

        v27 = sub_100798A3C();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          selfCopy5 = self;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}p] RoutePlanningSession was not initialized with a valid transport type; determining a default one now", buf, 0xCu);
        }

        defaultTransportTypeFinder = [v20 defaultTransportTypeFinder];
        [latLng lat];
        v30 = v29;
        [latLng lng];
        v32 = CLLocationCoordinate2DMake(v30, v31);
        [latLng2 lat];
        v34 = v33;
        [latLng2 lng];
        v36 = CLLocationCoordinate2DMake(v34, v35);
        ignoreMapType = [(RoutePlanningSession *)self ignoreMapType];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100F6AB58;
        v48[3] = &unk_10165E7A0;
        objc_copyWeak(&v50, &location);
        v49 = v15;
        [defaultTransportTypeFinder transportTypeForOrigin:ignoreMapType destination:v48 ignoreMapType:v32.latitude completion:{v32.longitude, v36.latitude, v36.longitude}];

        objc_destroyWeak(&v50);
      }

      else
      {
        v38 = sub_10006D178();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          selfCopy5 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]";
          v58 = 2080;
          v59 = "RoutePlanningSession.m";
          v60 = 1024;
          v61 = 878;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v39 = sub_10006D178();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = +[NSThread callStackSymbols];
            *buf = 138412290;
            selfCopy5 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v41 = sub_100798A3C();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          platformController2 = [(RoutePlanningSession *)self platformController];
          chromeViewController2 = [platformController2 chromeViewController];
          *buf = 134349314;
          selfCopy5 = self;
          v58 = 2112;
          v59 = chromeViewController2;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%{public}p] chrome view controller was not an iOS based one: %@; cannot determine default transport type", buf, 0x16u);
        }

        (v15[2])(v15, [(RoutePlanningSession *)self currentTransportType]);
      }
    }

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  os_activity_scope_leave(&state);
}

- (void)_handleReceivedWaypointSetResult
{
  v3 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100F6B2C0;
  v12 = &unk_101661B18;
  selfCopy = self;
  v4 = &_dispatch_main_q;
  v5 = v10;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label == v7 || (label ? (v8 = v7 == 0) : (v8 = 1), !v8 && !strcmp(label, v7)))
  {
    v9 = objc_autoreleasePoolPush();
    v11(v5);
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)_cancelFetchingCapabilitiesSharingContacts
{
  configuration = [(RoutePlanningSession *)self configuration];
  automaticSharingContacts = [configuration automaticSharingContacts];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = automaticSharingContacts;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
        [v10 cancelCapabilityLevelRequestForContact:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_setAutomaticSharingContacts:(id)contacts forShortcutIdentifier:(id)identifier
{
  contactsCopy = contacts;
  identifierCopy = identifier;
  shortcutIdentifier = [(RoutePlanningSession *)self shortcutIdentifier];
  v9 = shortcutIdentifier;
  if (identifierCopy | shortcutIdentifier)
  {
    v10 = [shortcutIdentifier isEqual:identifierCopy];
  }

  else
  {
    v10 = 1;
  }

  v11 = MSPSharedTripSharingAvailable();
  v12 = sub_100798A3C();
  observers = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = [contactsCopy count];
      _os_log_impl(&_mh_execute_header, observers, OS_LOG_TYPE_INFO, "Not setting automatic sharing contacts because sharing is not available (would have had %lu autosharing contacts)", &v19, 0xCu);
    }

    configuration = [(RoutePlanningSession *)self configuration];
    [configuration setAutomaticSharingContacts:0];
    goto LABEL_12;
  }

  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 134218242;
      v20 = [contactsCopy count];
      v21 = 2112;
      v22 = contactsCopy;
      _os_log_impl(&_mh_execute_header, observers, OS_LOG_TYPE_INFO, "Setting %lu automatic sharing contacts: %@", &v19, 0x16u);
    }

    [(RoutePlanningSession *)self _cancelFetchingCapabilitiesSharingContacts];
    configuration2 = [(RoutePlanningSession *)self configuration];
    [configuration2 setAutomaticSharingContacts:contactsCopy];

    configuration = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [configuration requestCapabilityLevelsForContacts:contactsCopy];
LABEL_12:

    observers = [(RoutePlanningSession *)self observers];
    configuration3 = [(RoutePlanningSession *)self configuration];
    automaticSharingContacts = [configuration3 automaticSharingContacts];
    [observers routePlanningSession:self didUpdateAutomaticSharingContacts:automaticSharingContacts];

    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    shortcutIdentifier2 = [(RoutePlanningSession *)self shortcutIdentifier];
    v19 = 138478083;
    v20 = identifierCopy;
    v21 = 2113;
    v22 = shortcutIdentifier2;
    _os_log_impl(&_mh_execute_header, observers, OS_LOG_TYPE_ERROR, "Not setting automatic sharing contacts, passed in shortcutIdentifier %{private}@ doesn't match current %{private}@", &v19, 0x16u);
  }

LABEL_13:
}

- (void)setAutomaticSharingContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Explicitly setting automatic sharing contacts...", buf, 2u);
  }

  shortcutIdentifier = [(RoutePlanningSession *)self shortcutIdentifier];

  if (shortcutIdentifier)
  {
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "RoutePlanningSession implicitly clearing shortcutIdentifier", v9, 2u);
    }

    [(RoutePlanningSession *)self _cancelFetchingCapabilitiesSharingContacts];
    configuration = [(RoutePlanningSession *)self configuration];
    [configuration setShortcutIdentifier:0];
  }

  [(RoutePlanningSession *)self _setAutomaticSharingContacts:contactsCopy];
}

- (NSArray)automaticSharingContacts
{
  configuration = [(RoutePlanningSession *)self configuration];
  automaticSharingContacts = [configuration automaticSharingContacts];

  return automaticSharingContacts;
}

- (void)_scheduleRefreshUserShortcuts
{
  deferredShortcutsRefreshTimer = self->_deferredShortcutsRefreshTimer;
  v4 = sub_1000946AC();
  v5 = v4;
  if (deferredShortcutsRefreshTimer)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RoutePlanningSession already scheduled deferred shortcuts fetch", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RoutePlanningSession scheduling deferred shortcuts fetch", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = &_dispatch_main_q;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009448C;
    v9[3] = &unk_1016616E8;
    objc_copyWeak(&v10, buf);
    v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v9 block:0.0];
    v8 = self->_deferredShortcutsRefreshTimer;
    self->_deferredShortcutsRefreshTimer = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)shortcutManagerMeCardDidChange:(id)change
{
  v4 = sub_1000946AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Me Card did change", v6, 2u);
  }

  [(GCDTimer *)self->_deferredShortcutsRefreshTimer invalidate];
  deferredShortcutsRefreshTimer = self->_deferredShortcutsRefreshTimer;
  self->_deferredShortcutsRefreshTimer = 0;

  [(RoutePlanningSession *)self _scheduleRefreshUserShortcuts];
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v4 = sub_1000946AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Me Card did change", v6, 2u);
  }

  [(GCDTimer *)self->_deferredShortcutsRefreshTimer invalidate];
  deferredShortcutsRefreshTimer = self->_deferredShortcutsRefreshTimer;
  self->_deferredShortcutsRefreshTimer = 0;

  [(RoutePlanningSession *)self _scheduleRefreshUserShortcuts];
}

- (id)_shortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = +[ShortcutManager sharedManager];
    meCard = [v4 meCard];
    shortcutsForAll = [meCard shortcutsForAll];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = shortcutsForAll;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = MapsSuggestionsShortcutUniqueIdentifier();
          v14 = [v13 isEqualToString:{identifierCopy, v18}];

          if (v14)
          {
            v16 = v12;
            v15 = v7;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = sub_1000946AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "RoutePlanningSession could not find shortcut for identifier: %@", buf, 0xCu);
    }

    v16 = 0;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_favoriteWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcuts = [v4 shortcuts];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = shortcuts;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:identifierCopy];

          if (v13)
          {
            v15 = v11;
            v14 = v6;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = sub_1000946AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "RoutePlanningSession could not find favorite item for identifier: %@", buf, 0xCu);
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setShortcutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configuration = [(RoutePlanningSession *)self configuration];
  shortcutIdentifier = [configuration shortcutIdentifier];

  configuration2 = [(RoutePlanningSession *)self configuration];
  [configuration2 setShortcutIdentifier:identifierCopy];

  if (identifierCopy)
  {
    v8 = sub_1000946AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "RoutePlanningSession will use shortcut for autosharing: %@", &v12, 0xCu);
    }

    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v9 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v9 registerObserver:self];
    }

    else
    {
      v9 = +[ShortcutManager sharedManager];
      [v9 addObserver:self];
    }

    [(RoutePlanningSession *)self _refreshAutomaticSharingContactsFromShortcut];
  }

  else if (shortcutIdentifier)
  {
    v10 = sub_1000946AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = shortcutIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "RoutePlanningSession will drop shortcut for autosharing: %@", &v12, 0xCu);
    }

    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v11 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v11 unregisterObserver:self];
    }

    else
    {
      v11 = +[ShortcutManager sharedManager];
      [v11 removeObserver:self];
    }

    [(RoutePlanningSession *)self _setAutomaticSharingContacts:0];
  }
}

- (void)cleanupStateReplay
{
  observers = [(RoutePlanningSession *)self observers];
  [observers clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  observers = [(RoutePlanningSession *)self observers];
  [observers removeSnapshottedObservers];

  observers2 = [(RoutePlanningSession *)self observers];
  [observers2 mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];

  observers3 = [(RoutePlanningSession *)self observers];
  [observers3 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  observers = [(RoutePlanningSession *)self observers];
  [observers snapshotCurrentObservers];
}

- (void)suspend
{
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v20);
  v3 = sub_100798A3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sessionState = [(RoutePlanningSession *)self sessionState];
    v5 = @"NotStarted";
    if (sessionState == 1)
    {
      v5 = @"Running";
    }

    if (sessionState == 2)
    {
      v5 = @"Suspended";
    }

    *buf = 134349314;
    selfCopy = self;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] suspend requested state=%@", buf, 0x16u);
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7 && (!label || !v7 || strcmp(label, v7)))
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_queue_get_label(&_dispatch_main_q);
      v13 = dispatch_queue_get_label(0);
      *buf = 136316418;
      selfCopy = "[RoutePlanningSession suspend]";
      v23 = 2080;
      v24 = "RoutePlanningSession.m";
      v25 = 1024;
      v26 = 557;
      v27 = 2080;
      v28 = "dispatch_get_main_queue()";
      v29 = 2080;
      v30 = v12;
      v31 = 2080;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([(RoutePlanningSession *)self sessionState]!= 1)
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [NSString stringWithFormat:@"Session state must be running before calling -suspend"];
      *buf = 136316162;
      selfCopy = "[RoutePlanningSession suspend]";
      v23 = 2080;
      v24 = "RoutePlanningSession.m";
      v25 = 1024;
      v26 = 558;
      v27 = 2080;
      v28 = "self.sessionState == MapsSessionStateRunning";
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([(RoutePlanningSession *)self sessionState]== 1)
  {
    [(RoutePlanningSession *)self setSessionState:2];
    waypointController = [(RoutePlanningSession *)self waypointController];
    [waypointController stop];

    routeLoadingController = [(RoutePlanningSession *)self routeLoadingController];
    [routeLoadingController cancelLoading];

    [(RoutePlanningSession *)self _updateLoadingControllerForRealtimeUpdates];
    observers = [(RoutePlanningSession *)self observers];
    [observers mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];
  }

  os_activity_scope_leave(&v20);
}

- (void)resume
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v3 = sub_100798A3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sessionState = [(RoutePlanningSession *)self sessionState];
    v5 = @"NotStarted";
    if (sessionState == 1)
    {
      v5 = @"Running";
    }

    if (sessionState == 2)
    {
      v5 = @"Suspended";
    }

    *buf = 134349314;
    selfCopy4 = self;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] resume requested state=%@", buf, 0x16u);
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7 && (!label || !v7 || strcmp(label, v7)))
  {
    v26 = sub_10006D178();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = dispatch_queue_get_label(&_dispatch_main_q);
      v28 = dispatch_queue_get_label(0);
      *buf = 136316418;
      selfCopy4 = "[RoutePlanningSession resume]";
      v36 = 2080;
      v37 = "RoutePlanningSession.m";
      v38 = 1024;
      v39 = 507;
      v40 = 2080;
      v41 = "dispatch_get_main_queue()";
      v42 = 2080;
      v43 = v27;
      v44 = 2080;
      v45 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy4 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([(RoutePlanningSession *)self sessionState]!= 1)
  {
    sessionState2 = [(RoutePlanningSession *)self sessionState];
    [(RoutePlanningSession *)self setSessionState:1];
    v9 = +[NSDate date];
    [(RoutePlanningSession *)self setStartDate:v9];

    observers = [(RoutePlanningSession *)self observers];
    [observers mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];

    [(RoutePlanningSession *)self _updateLoadingControllerForRealtimeUpdates];
    configuration = [(RoutePlanningSession *)self configuration];
    locationManager = [configuration locationManager];
    if ([locationManager isLocationServicesDenied])
    {
      v13 = 0;
    }

    else
    {
      configuration2 = [(RoutePlanningSession *)self configuration];
      locationManager2 = [configuration2 locationManager];
      isLocationServicesRestricted = [locationManager2 isLocationServicesRestricted];

      v13 = isLocationServicesRestricted ^ 1;
    }

    if (!sessionState2)
    {
      configuration3 = [(RoutePlanningSession *)self configuration];
      isNavigationTracePlayback = [configuration3 isNavigationTracePlayback];

      v19 = sub_100798A3C();
      v20 = v19;
      if (isNavigationTracePlayback)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%{public}p] Playing navtrace; not waiting for accurate location", buf, 0xCu);
        }

LABEL_29:

        waypointController = [(RoutePlanningSession *)self waypointController];
        [waypointController start];

        goto LABEL_30;
      }

      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        if (v21)
        {
          *buf = 134349056;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}p] Location access isn't available; continuing with waypoint resolution", buf, 0xCu);
        }

        goto LABEL_29;
      }

      if (v21)
      {
        *buf = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}p] Waiting for accurate location before resolving waypoints", buf, 0xCu);
      }

      self->_waitingForAccurateLocationUpdate = 1;
      if (self->_sessionInitiator == 4)
      {
        v22 = 5.0;
      }

      else
      {
        v22 = 10.0;
      }

      objc_initWeak(buf, self);
      configuration4 = [(RoutePlanningSession *)self configuration];
      locationManager3 = [configuration4 locationManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100F6CF88;
      v31[3] = &unk_101661B98;
      objc_copyWeak(&v32, buf);
      [locationManager3 waitForAccurateLocationWithTimeout:v31 handler:v22];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

LABEL_30:
  os_activity_scope_leave(&state);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v7);
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] remove observer %@", buf, 0x16u);
  }

  observers = [(RoutePlanningSession *)self observers];
  [observers unregisterObserver:observerCopy];

  os_activity_scope_leave(&v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v7);
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] adding observer %@", buf, 0x16u);
  }

  observers = [(RoutePlanningSession *)self observers];
  [observers registerObserver:observerCopy];

  os_activity_scope_leave(&v7);
}

- (void)_setIsInACustomRouteRegion:(BOOL)region
{
  if (self->_inACustomRouteRegion != region)
  {
    regionCopy = region;
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      inACustomRouteRegion = self->_inACustomRouteRegion;
      v8 = 134349568;
      selfCopy = self;
      v10 = 1024;
      v11 = inACustomRouteRegion;
      v12 = 1024;
      v13 = regionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] changing isInACustomRouteRegion from %d to %d", &v8, 0x18u);
    }

    self->_inACustomRouteRegion = regionCopy;
    observers = [(RoutePlanningSession *)self observers];
    [observers routePlanningSession:self didChangeRouteCreationRegion:regionCopy];
  }
}

- (void)_updateIsInACustomRouteRegionForRouteCollection:(id)collection
{
  collectionCopy = collection;
  BOOL = GEOConfigGetBOOL();
  currentRoute = [collectionCopy currentRoute];
  if (currentRoute)
  {
    v6 = BOOL;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v7 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    waypoints = [currentRoute waypoints];
    v9 = [waypoints countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(waypoints);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          dispatch_group_enter(v7);
          location = [v12 location];
          v14 = &_dispatch_main_q;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100F6D764;
          v21[3] = &unk_10165E6D8;
          v23 = v28;
          v22 = v7;
          [GEODirectionsService customRouteCreationSupportedForLocation:location queue:&_dispatch_main_q handler:v21];
        }

        v9 = [waypoints countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F6D77C;
    block[3] = &unk_10165E700;
    objc_copyWeak(&v19, &location);
    v17 = collectionCopy;
    v18 = v28;
    dispatch_group_notify(v7, &_dispatch_main_q, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);

    _Block_object_dispose(v28, 8);
  }

  else
  {
    [(RoutePlanningSession *)self _setIsInACustomRouteRegion:BOOL];
  }
}

- (void)_updateLoadingControllerForRealtimeUpdates
{
  if ([(RoutePlanningSession *)self sessionState]== 1)
  {
    currentTransportType = [(RoutePlanningSession *)self currentTransportType];
  }

  else
  {
    currentTransportType = 0;
  }

  routeLoadingController = [(RoutePlanningSession *)self routeLoadingController];
  [routeLoadingController setTransportTypeForRealtimeUpdates:currentTransportType];
}

- (void)requestUpdatedRouteWithRefreshedOrigin:(BOOL)origin
{
  if (origin)
  {
    waypointController = [(RoutePlanningSession *)self waypointController];
    [waypointController refreshDynamicOrigin];
  }

  else
  {
    resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];

    if (resolvedWaypoints)
    {
      label = dispatch_queue_get_label(&_dispatch_main_q);
      v6 = dispatch_queue_get_label(0);
      if (label != v6 && (!label || !v6 || strcmp(label, v6)))
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v17 = "[RoutePlanningSession requestUpdatedRouteWithRefreshedOrigin:]";
          v18 = 2080;
          v19 = "RoutePlanningSession.m";
          v20 = 1024;
          v21 = 422;
          v22 = 2080;
          v23 = "dispatch_get_main_queue()";
          v24 = 2080;
          v25 = dispatch_queue_get_label(&_dispatch_main_q);
          v26 = 2080;
          v27 = dispatch_queue_get_label(0);
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
        }

        if (sub_100E03634())
        {
          v12 = sub_10006D178();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v17 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      isolationQueue = [(RoutePlanningSession *)self isolationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100F6DB80;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_sync(isolationQueue, block);

      [(RoutePlanningSession *)self _updateIsInACustomRouteRegionForRouteCollection:0];
      observers = [(RoutePlanningSession *)self observers];
      [observers routePlanningSession:self didUpdateRouteCollectionResult:0 forTransportType:{-[RoutePlanningSession currentTransportType](self, "currentTransportType")}];

      routeLoadingController = [(RoutePlanningSession *)self routeLoadingController];
      [routeLoadingController cancelLoading];

      waypointController2 = [(RoutePlanningSession *)self waypointController];
      [waypointController2 rebroadcastWaypoints];
    }
  }
}

- (void)setSelectedRouteIndex:(unint64_t)index forTransportType:(int64_t)type
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v7 = sub_100798A3C();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100798A3C();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SetSelectedRoute", "", buf, 2u);
  }

  v11 = sub_100798A3C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((type - 1) > 4)
    {
      v12 = @"Undefined";
    }

    else
    {
      v12 = off_10165E8C8[type - 1];
    }

    *buf = 134349570;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = index;
    *&buf[22] = 2112;
    v55 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] set selected routeIndex=%ld for transport type=%@", buf, 0x20u);
  }

  v13 = [(RoutePlanningSession *)self routeCollectionResultForTransportType:type];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = sub_100F69EB0;
  v56 = sub_100F69EC0;
  v57 = 0;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100F6E268;
  v44[3] = &unk_10165E5B8;
  v44[4] = buf;
  [v13 withValue:v44 orError:&stru_10165E688];
  if (!*(*&buf[8] + 40))
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v46 = 136315906;
      v47 = "[RoutePlanningSession setSelectedRouteIndex:forTransportType:]";
      v48 = 2080;
      v49 = "RoutePlanningSession.m";
      v50 = 1024;
      v51 = 393;
      v52 = 2080;
      v53 = "routeCollection != nil";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", v46, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *v46 = 138412290;
        v47 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", v46, 0xCu);
      }
    }
  }

  if ([*(*&buf[8] + 40) count] <= index)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v46 = 136315906;
      v47 = "[RoutePlanningSession setSelectedRouteIndex:forTransportType:]";
      v48 = 2080;
      v49 = "RoutePlanningSession.m";
      v50 = 1024;
      v51 = 394;
      v52 = 2080;
      v53 = "newIndex < routeCollection.count";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", v46, 0x26u);
    }

    if (sub_100E03634())
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = +[NSThread callStackSymbols];
        *v46 = 138412290;
        v47 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", v46, 0xCu);
      }
    }
  }

  v14 = *(*&buf[8] + 40);
  if (v14 && [v14 count] > index && objc_msgSend(*(*&buf[8] + 40), "currentRouteIndex") != index)
  {
    v15 = [*(*&buf[8] + 40) routeCollectionByChangingCurrentRouteIndex:index];
    v16 = [Result resultWithValue:v15];
    isolationQueue = [(RoutePlanningSession *)self isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F6E278;
    block[3] = &unk_10165E668;
    block[4] = self;
    typeCopy = type;
    v18 = v16;
    v42 = v18;
    dispatch_sync(isolationQueue, block);

    v19 = &_dispatch_main_q;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v34 = sub_100F6E2F0;
    v35 = &unk_10165E6B0;
    selfCopy = self;
    v20 = v15;
    v37 = v20;
    v21 = v18;
    v38 = v21;
    typeCopy2 = type;
    v40 = v8;
    v22 = &_dispatch_main_q;
    v23 = v33;
    label = dispatch_queue_get_label(&_dispatch_main_q);
    v25 = dispatch_queue_get_label(0);
    if (label == v25 || label && v25 && !strcmp(label, v25))
    {
      v26 = objc_autoreleasePoolPush();
      v34(v23);
      objc_autoreleasePoolPop(v26);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v23);
    }
  }

  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);
}

- (void)setCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  label = dispatch_queue_get_label(self->_isolationQueue);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v40 = sub_10006D178();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = dispatch_queue_get_label(self->_isolationQueue);
        v42 = dispatch_queue_get_label(0);
        *buf = 136316418;
        selfCopy5 = "[RoutePlanningSession setCurrentTransportType:userInitiated:]";
        v57 = 2080;
        v58 = "RoutePlanningSession.m";
        v59 = 1024;
        *v60 = 318;
        *&v60[4] = 2080;
        *&v60[6] = "_isolationQueue";
        v61 = 2080;
        v62 = v41;
        v63 = 2080;
        v64 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v43 = sub_10006D178();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy5 = v44;
          v45 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v10 = sub_100798A3C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_currentTransportType - 1;
    if (v11 > 4)
    {
      v12 = @"Undefined";
    }

    else
    {
      v12 = off_10165E8C8[v11];
    }

    if ((type - 1) > 4)
    {
      v13 = @"Undefined";
    }

    else
    {
      v13 = off_10165E8C8[type - 1];
    }

    *buf = 134349826;
    selfCopy5 = self;
    v57 = 2112;
    v58 = v12;
    v59 = 2112;
    *v60 = v13;
    *&v60[8] = 1024;
    *&v60[10] = initiatedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}p] changing transport type from %@ to %@, userInitiated:%d", buf, 0x26u);
  }

  configuration = [(RoutePlanningSession *)self configuration];
  v15 = [configuration hasTransportType:type];

  if ((v15 & 1) == 0)
  {
    v46 = sub_10006D178();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy5 = "[RoutePlanningSession setCurrentTransportType:userInitiated:]";
      v57 = 2080;
      v58 = "RoutePlanningSession.m";
      v59 = 1024;
      *v60 = 321;
      *&v60[4] = 2080;
      *&v60[6] = "[self.configuration hasTransportType:newTransportType]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v47 = sub_10006D178();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy5 = v48;
        v49 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  currentTransportType = self->_currentTransportType;
  if (currentTransportType != type)
  {
    if (currentTransportType > 4 || ((1 << currentTransportType) & 0x19) == 0)
    {
      v18 = self->_reportAProblemRecorder;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100F6EBF8;
      block[3] = &unk_101661B18;
      v53 = v18;
      v19 = v18;
      dispatch_async(&_dispatch_main_q, block);
    }

    v20 = objc_alloc_init(RAPGraphDirectionsRecorder);
    reportAProblemRecorder = self->_reportAProblemRecorder;
    self->_reportAProblemRecorder = v20;

    if (type > 4 || ((1 << type) & 0x19) == 0)
    {
      [(RAPGraphDirectionsRecorder *)self->_reportAProblemRecorder startRecording];
    }

    if (initiatedCopy)
    {
      v22 = +[GEOCompanionRouteContext context];
      configuration2 = [(RoutePlanningSession *)self configuration];
      [configuration2 setCompanionContext:v22];
    }

    self->_currentTransportType = type;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100F6EC00;
    v50[3] = &unk_101661AE0;
    v50[4] = self;
    v51 = initiatedCopy;
    dispatch_async(&_dispatch_main_q, v50);
    transportTypeToRouteCollectionResultsMap = [(RoutePlanningSession *)self transportTypeToRouteCollectionResultsMap];
    v25 = [NSNumber numberWithInteger:self->_currentTransportType];
    v26 = [transportTypeToRouteCollectionResultsMap objectForKeyedSubscript:v25];

    if (v26)
    {
      if ([v26 isSuccess])
      {
LABEL_40:
        [(RoutePlanningSession *)self _updateLoadingControllerForRealtimeUpdates];

        goto LABEL_41;
      }

      v27 = sub_100798A3C();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch routes for this transport type failed; trying again", buf, 0xCu);
      }

      transportTypeToRouteCollectionResultsMap2 = [(RoutePlanningSession *)self transportTypeToRouteCollectionResultsMap];
      v29 = [NSNumber numberWithInteger:self->_currentTransportType];
      [transportTypeToRouteCollectionResultsMap2 removeObjectForKey:v29];

      routeLoadingController = [(RoutePlanningSession *)self routeLoadingController];
      [routeLoadingController refreshRoutesForTransportType:[(RoutePlanningSession *)self currentTransportType]];
LABEL_39:

      goto LABEL_40;
    }

    configuration3 = [(RoutePlanningSession *)self configuration];
    if ([configuration3 areInitialRoutesBeingFetchedExternally])
    {
      resolvedWaypointsResult = [(RoutePlanningSession *)self resolvedWaypointsResult];
      v33 = resolvedWaypointsResult == 0;

      if (v33)
      {
        routeLoadingController = [(RoutePlanningSession *)self configuration];
        [routeLoadingController setInitialRoutesBeingFetchedExternally:0];
        goto LABEL_39;
      }
    }

    else
    {
    }

    resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
    v35 = resolvedWaypoints == 0;

    if (v35)
    {
      resolvedWaypointsResult2 = [(RoutePlanningSession *)self resolvedWaypointsResult];
      if (resolvedWaypointsResult2 && (-[RoutePlanningSession resolvedWaypointsResult](self, "resolvedWaypointsResult"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isSuccess], v37, resolvedWaypointsResult2, (v38 & 1) == 0))
      {
        v39 = sub_100798A3C();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          selfCopy5 = self;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch waypoints failed; trying again", buf, 0xCu);
        }

        routeLoadingController = [(RoutePlanningSession *)self waypointController];
        [routeLoadingController refresh];
      }

      else
      {
        routeLoadingController = sub_100798A3C();
        if (os_log_type_enabled(routeLoadingController, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          selfCopy5 = self;
          _os_log_impl(&_mh_execute_header, routeLoadingController, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch waypoints is still in progress; waiting for it to finish", buf, 0xCu);
        }
      }
    }

    else
    {
      routeLoadingController = [(RoutePlanningSession *)self routeLoadingController];
      [routeLoadingController refreshRoutesForTransportType:[(RoutePlanningSession *)self currentTransportType]];
    }

    goto LABEL_39;
  }

  v17 = sub_100798A3C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}p] No difference detected in transport type; ignoring request", buf, 0xCu);
  }

LABEL_41:
  os_activity_scope_leave(&state);
}

- (void)safelySetCurrentTransportType:(int64_t)type
{
  label = dispatch_queue_get_label(self->_isolationQueue);
  v6 = dispatch_queue_get_label(0);
  if (label == v6 || (label ? (v7 = v6 == 0) : (v7 = 1), !v7 && !strcmp(label, v6)))
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_queue_get_label(self->_isolationQueue);
      *buf = 136316162;
      v15 = "[RoutePlanningSession safelySetCurrentTransportType:]";
      v16 = 2080;
      v17 = "RoutePlanningSession.m";
      v18 = 1024;
      v19 = 304;
      v20 = 2080;
      v21 = "_isolationQueue";
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  isolationQueue = [(RoutePlanningSession *)self isolationQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F6EE70;
  v13[3] = &unk_101661650;
  v13[4] = self;
  v13[5] = type;
  dispatch_sync(isolationQueue, v13);
}

- (void)_notifyObserversDidUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6EF18;
  block[3] = &unk_10165E668;
  block[4] = self;
  resultCopy = result;
  typeCopy = type;
  v5 = resultCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  resultCopy = result;
  if (!resultCopy)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy2 = "[RoutePlanningSession updateRouteCollectionResult:forTransportType:]";
      v27 = 2080;
      v28 = "RoutePlanningSession.m";
      v29 = 1024;
      LODWORD(v30[0]) = 274;
      WORD2(v30[0]) = 2080;
      *(v30 + 6) = "routeCollectionResult != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy2 = v19;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  sessionInitiator = [(RoutePlanningSession *)self sessionInitiator];
  v8 = sub_100798A3C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (sessionInitiator == 6)
  {
    if (v9)
    {
      if ((type - 1) > 4)
      {
        v10 = @"Undefined";
      }

      else
      {
        v10 = off_10165E8C8[type - 1];
      }

      *buf = 134349314;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v10;
      v12 = "[%{public}p] Updating route collection for transport type:(%@)";
      v13 = v8;
      v14 = 22;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else if (v9)
  {
    if ((type - 1) > 4)
    {
      v11 = @"Undefined";
    }

    else
    {
      v11 = off_10165E8C8[type - 1];
    }

    *buf = 134349571;
    selfCopy2 = self;
    v27 = 2113;
    v28 = resultCopy;
    v29 = 2112;
    v30[0] = v11;
    v12 = "[%{public}p] Updating route collection result:(%{private}@) for transport type:(%@)";
    v13 = v8;
    v14 = 32;
    goto LABEL_13;
  }

  isolationQueue = [(RoutePlanningSession *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6F2CC;
  block[3] = &unk_10165E668;
  v22 = resultCopy;
  typeCopy = type;
  block[4] = self;
  v16 = resultCopy;
  dispatch_async(isolationQueue, block);

  os_activity_scope_leave(&state);
}

- (int64_t)navigationTypeForCurrentRoute
{
  currentRouteCollection = [(RoutePlanningSession *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  v4 = [currentRoute suggestedNavigationModeForLocation:0 context:0];

  v5 = 4;
  if (v4 == 2)
  {
    v5 = 2;
  }

  if (v4 == 1)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

- (RouteCollection)currentRouteCollection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100F69EB0;
  v10 = sub_100F69EC0;
  v11 = 0;
  currentRouteCollectionResult = [(RoutePlanningSession *)self currentRouteCollectionResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F6F4F8;
  v5[3] = &unk_10165E5B8;
  v5[4] = &v6;
  [currentRouteCollectionResult withValue:v5 orError:&stru_10165E640];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Result)currentRouteCollectionResult
{
  currentTransportType = [(RoutePlanningSession *)self currentTransportType];

  return [(RoutePlanningSession *)self routeCollectionResultForTransportType:currentTransportType];
}

- (WaypointSet)resolvedWaypoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100F69EB0;
  v10 = sub_100F69EC0;
  v11 = 0;
  resolvedWaypointsResult = [(RoutePlanningSession *)self resolvedWaypointsResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F6F660;
  v5[3] = &unk_10165E600;
  v5[4] = &v6;
  [resolvedWaypointsResult withValue:v5 orError:&stru_10165E620];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Result)resolvedWaypointsResult
{
  waypointController = [(RoutePlanningSession *)self waypointController];
  resolvedWaypointSetResult = [waypointController resolvedWaypointSetResult];

  return resolvedWaypointSetResult;
}

- (NSDictionary)waypointRequestResults
{
  waypointController = [(RoutePlanningSession *)self waypointController];
  waypointRequestResults = [waypointController waypointRequestResults];

  return waypointRequestResults;
}

- (void)purgeRouteCollectionForTransportType:(int64_t)type
{
  isolationQueue = [(RoutePlanningSession *)self isolationQueue];
  label = dispatch_queue_get_label(isolationQueue);
  v7 = dispatch_queue_get_label(0);
  if (label == v7)
  {

LABEL_7:
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      isolationQueue2 = [(RoutePlanningSession *)self isolationQueue];
      *buf = 136316162;
      v15 = "[RoutePlanningSession purgeRouteCollectionForTransportType:]";
      v16 = 2080;
      v17 = "RoutePlanningSession.m";
      v18 = 1024;
      v19 = 215;
      v20 = 2080;
      v21 = "self.isolationQueue";
      v22 = 2080;
      v23 = dispatch_queue_get_label(isolationQueue2);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      isolationQueue = sub_10006D178();
      if (os_log_type_enabled(isolationQueue, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, isolationQueue, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!label || !v7)
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = strcmp(label, v7);

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_13:
  isolationQueue3 = [(RoutePlanningSession *)self isolationQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F6F938;
  v13[3] = &unk_101661650;
  v13[4] = self;
  v13[5] = type;
  dispatch_sync(isolationQueue3, v13);
}

- (id)routeCollectionForTransportType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100F69EB0;
  v11 = sub_100F69EC0;
  v12 = 0;
  v3 = [(RoutePlanningSession *)self routeCollectionResultForTransportType:type];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F6FAC4;
  v6[3] = &unk_10165E5B8;
  v6[4] = &v7;
  [v3 withValue:v6 orError:&stru_10165E5D8];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)routeCollectionResultForTransportType:(int64_t)type
{
  configuration = [(RoutePlanningSession *)self configuration];
  v6 = [configuration hasTransportType:type];

  if (v6)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100F69EB0;
    v16 = sub_100F69EC0;
    v17 = 0;
    resolvedWaypointsResult = [(RoutePlanningSession *)self resolvedWaypointsResult];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F6FC6C;
    v11[3] = &unk_10165E568;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = type;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100F6FD04;
    v10[3] = &unk_10165E590;
    v10[4] = &v12;
    [resolvedWaypointsResult withValue:v11 orError:v10];

    v8 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)destinationName
{
  configuration = [(RoutePlanningSession *)self configuration];
  waypointRequests = [configuration waypointRequests];

  resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
  currentTransportType = [(RoutePlanningSession *)self currentTransportType];
  if (currentTransportType > 1)
  {
    if (currentTransportType != 2)
    {
      if (currentTransportType == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (currentTransportType)
    {
      if (currentTransportType == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      goto LABEL_14;
    }
  }

  if (MapsFeature_IsEnabled_Maps182())
  {
LABEL_14:
    configuration2 = [(RoutePlanningSession *)self configuration];
    destinationWaypointRequest = [configuration2 destinationWaypointRequest];
    destination = [resolvedWaypoints destination];
    v10 = [destinationWaypointRequest nameWithResolvedWaypoint:destination allowCurrentLocation:0];

    goto LABEL_16;
  }

LABEL_13:
  if ([waypointRequests count] <= 2)
  {
    goto LABEL_14;
  }

  configuration2 = [waypointRequests objectAtIndexedSubscript:1];
  destinationWaypointRequest = [resolvedWaypoints waypointAtIndex:1];
  v10 = [configuration2 nameWithResolvedWaypoint:destinationWaypointRequest allowCurrentLocation:0];
LABEL_16:

  return v10;
}

- (NSString)originName
{
  configuration = [(RoutePlanningSession *)self configuration];
  originWaypointRequest = [configuration originWaypointRequest];
  resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
  origin = [resolvedWaypoints origin];
  v7 = [originWaypointRequest nameWithResolvedWaypoint:origin allowCurrentLocation:1];

  return v7;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = RoutePlanningSession;
  v3 = [(RoutePlanningSession *)&v8 description];
  sessionInitiator = [(RoutePlanningSession *)self sessionInitiator];
  if (sessionInitiator - 1 > 7)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_10165E888[sessionInitiator - 1];
  }

  v6 = [NSString stringWithFormat:@"%@: initiator: %@", v3, v5];

  return v6;
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  if ([(RoutePlanningSession *)self currentTransportType]== 1)
  {
    v3 = self->_advisoryInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(GCDTimer *)self->_deferredShortcutsRefreshTimer invalidate];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v3 unregisterObserver:self];
  }

  else
  {
    v3 = +[ShortcutManager sharedManager];
    [v3 removeObserver:self];
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] Deallocating", buf, 0xCu);
  }

  os_activity_scope_leave(&state);
  v5.receiver = self;
  v5.super_class = RoutePlanningSession;
  [(RoutePlanningSession *)&v5 dealloc];
}

- (RoutePlanningSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v47 = sub_10006D178();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v58 = "[RoutePlanningSession initWithInitiator:configuration:]";
      v59 = 2080;
      v60 = "RoutePlanningSession.m";
      v61 = 1024;
      *v62 = 94;
      *&v62[4] = 2080;
      *&v62[6] = "configuration != nil";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v48 = sub_10006D178();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v58 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v55.receiver = self;
  v55.super_class = RoutePlanningSession;
  v8 = [(RoutePlanningSession *)&v55 init];
  if (v8)
  {
    v9 = _os_activity_create(&_mh_execute_header, "Route Planning Session", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(v8 + 18);
    *(v8 + 18) = v9;

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v8 + 18), &state);
    v11 = sub_100798A3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = v13;
      if (initiator - 1 > 7)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = off_10165E888[initiator - 1];
      }

      *buf = 134349826;
      v58 = v8;
      v59 = 2112;
      v60 = v13;
      v61 = 2112;
      *v62 = v15;
      *&v62[8] = 2112;
      *&v62[10] = configurationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ is being initialized: initiator=%@ configuration=%@", buf, 0x2Au);
    }

    *(v8 + 4) = initiator;
    objc_storeStrong(v8 + 7, configuration);
    *(v8 + 26) = [configurationCopy ignoreMapType];
    if (configurationCopy)
    {
      initialTransportType = [configurationCopy initialTransportType];
    }

    else
    {
      initialTransportType = 0;
    }

    *(v8 + 11) = initialTransportType;
    v17 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RoutePlanningSessionObserver queue:0];
    v18 = *(v8 + 13);
    *(v8 + 13) = v17;

    v19 = +[NSBundle mainBundle];
    bundleIdentifier = [v19 bundleIdentifier];
    v21 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", bundleIdentifier, objc_opt_class(), v8];

    v22 = v21;
    uTF8String = [v21 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String, v24);
    v26 = *(v8 + 16);
    *(v8 + 16) = v25;

    v27 = objc_alloc_init(NSMutableDictionary);
    v28 = *(v8 + 17);
    *(v8 + 17) = v27;

    v29 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    waypointRequests = [configurationCopy waypointRequests];
    v31 = [waypointRequests countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v31)
    {
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(waypointRequests);
          }

          waypointRequest = [*(*(&v50 + 1) + 8 * i) waypointRequest];
          [v29 addObject:waypointRequest];
        }

        v31 = [waypointRequests countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v31);
    }

    v35 = [WaypointControllerConfiguration alloc];
    traits = [configurationCopy traits];
    v37 = [(WaypointControllerConfiguration *)v35 initWithRequests:v29 traits:traits];
    v38 = *(v8 + 6);
    *(v8 + 6) = v37;

    v39 = [[WaypointController alloc] initWithConfiguration:*(v8 + 6)];
    v40 = *(v8 + 14);
    *(v8 + 14) = v39;

    [*(v8 + 14) setDelegate:v8];
    v41 = objc_alloc_init(RAPGraphDirectionsRecorder);
    v42 = *(v8 + 8);
    *(v8 + 8) = v41;

    v43 = *(v8 + 11);
    if (v43 > 4 || ((1 << v43) & 0x19) == 0)
    {
      [*(v8 + 8) startRecording];
    }

    shortcutIdentifier = [configurationCopy shortcutIdentifier];
    [v8 setShortcutIdentifier:shortcutIdentifier];

    v45 = &_dispatch_main_q;
    _GEOConfigAddDelegateListenerForKey();

    os_activity_scope_leave(&state);
  }

  return v8;
}

- (void)enumerateRequestsOrWaypointsUsingBlock:(id)block
{
  blockCopy = block;
  currentRouteCollection = [(RoutePlanningSession *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  if (currentRoute)
  {
    currentRoute2 = [currentRouteCollection currentRoute];
    waypoints = [currentRoute2 waypoints];
  }

  else
  {
    waypoints = 0;
  }

  if ([waypoints count])
  {
    configuration = [(RoutePlanningSession *)self configuration];
    waypointRequests = [configuration waypointRequests];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v31[0] = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100FC7D54;
    v26[3] = &unk_101660258;
    v29 = buf;
    v11 = waypointRequests;
    v27 = v11;
    v28 = blockCopy;
    [waypoints enumerateObjectsUsingBlock:v26];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    resolvedWaypoints = [(RoutePlanningSession *)self resolvedWaypoints];
    v13 = resolvedWaypoints;
    if (resolvedWaypoints)
    {
      v14 = [resolvedWaypoints count];
      configuration2 = [(RoutePlanningSession *)self configuration];
      waypointRequests2 = [configuration2 waypointRequests];
      v17 = [waypointRequests2 count];

      if (v14 != v17)
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[RoutePlanningSession(WaypointsOrRequests) enumerateRequestsOrWaypointsUsingBlock:]";
          *&buf[12] = 2080;
          *&buf[14] = "RoutePlanningSession+WaypointsOrRequests.m";
          *&buf[22] = 1024;
          LODWORD(v31[0]) = 51;
          WORD2(v31[0]) = 2080;
          *(v31 + 6) = "!resolvedWaypoints || resolvedWaypoints.count == self.configuration.waypointRequests.count";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v19 = sub_10006D178();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }
    }

    configuration3 = [(RoutePlanningSession *)self configuration];
    waypointRequests3 = [configuration3 waypointRequests];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100FC7F3C;
    v23[3] = &unk_101660280;
    v24 = v13;
    v25 = blockCopy;
    v11 = v13;
    [waypointRequests3 enumerateObjectsUsingBlock:v23];
  }
}

+ (id)mostAppropriateNameForWaypointWithRequest:(id)request composedWaypoint:(id)waypoint
{
  requestCopy = request;
  waypointCopy = waypoint;
  if (requestCopy | waypointCopy)
  {
    if (requestCopy && [requestCopy preferredNameSource] != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "+[RoutePlanningSession(WaypointsOrRequests) mostAppropriateNameForWaypointWithRequest:composedWaypoint:]";
      v18 = 2080;
      v19 = "RoutePlanningSession+WaypointsOrRequests.m";
      v20 = 1024;
      v21 = 60;
      v22 = 2080;
      v23 = "waypointRequest || composedWaypoint";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (waypointCopy)
    {
      v8 = [[SearchResult alloc] initWithComposedWaypoint:waypointCopy];
      name = [(SearchResult *)v8 name];

      goto LABEL_9;
    }

LABEL_8:
    name = 0;
    goto LABEL_9;
  }

  name = [waypointCopy name];
LABEL_9:
  v9 = [name length];
  if (requestCopy && !v9)
  {
    waypointPlaceholder = [requestCopy waypointPlaceholder];
    name2 = [waypointPlaceholder name];

    name = name2;
  }

  return name;
}

@end