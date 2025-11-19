@interface RoutePlanningSession
+ (id)mostAppropriateNameForWaypointWithRequest:(id)a3 composedWaypoint:(id)a4;
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
- (RoutePlanningSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4;
- (RoutePlanningTiming)timing;
- (SearchResult)destinationDisplayableMarker;
- (SearchResult)originDisplayableMarker;
- (TransitPreferences)transitPreferences;
- (WalkPreferences)walkPreferences;
- (WaypointSet)resolvedWaypoints;
- (id)_favoriteWithIdentifier:(id)a3;
- (id)_searchResultFromWaypointRequest:(id)a3 resolvedWaypoint:(id)a4;
- (id)_shortcutWithIdentifier:(id)a3;
- (id)routeCollectionForTransportType:(int64_t)a3;
- (id)routeCollectionResultForTransportType:(int64_t)a3;
- (int64_t)navigationTypeForCurrentRoute;
- (int64_t)requestState;
- (void)_cancelFetchingCapabilitiesSharingContacts;
- (void)_handleReceivedWaypointSetResult;
- (void)_notifyObserversDidUpdateRouteCollectionResult:(id)a3 forTransportType:(int64_t)a4;
- (void)_refreshAutomaticSharingContactsFromShortcut;
- (void)_scheduleRefreshUserShortcuts;
- (void)_setAutomaticSharingContacts:(id)a3 forShortcutIdentifier:(id)a4;
- (void)_setIsInACustomRouteRegion:(BOOL)a3;
- (void)_updateIsInACustomRouteRegionForRouteCollection:(id)a3;
- (void)_updateLoadingControllerForRealtimeUpdates;
- (void)cleanupStateReplay;
- (void)dealloc;
- (void)enumerateRequestsOrWaypointsUsingBlock:(id)a3;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)prepareToReplayCurrentState;
- (void)purgeRouteCollectionForTransportType:(int64_t)a3;
- (void)registerObserver:(id)a3;
- (void)replayCurrentState;
- (void)requestUpdatedRouteWithRefreshedOrigin:(BOOL)a3;
- (void)resume;
- (void)routeLoadingController:(id)a3 didReceiveRoutesResult:(id)a4 forTransportType:(int64_t)a5 advisoryInfo:(id)a6;
- (void)routeLoadingController:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5;
- (void)safelySetCurrentTransportType:(int64_t)a3;
- (void)selectRoute:(id)a3;
- (void)setAutomaticSharingContacts:(id)a3;
- (void)setCurrentTransportType:(int64_t)a3 userInitiated:(BOOL)a4;
- (void)setSelectedRouteIndex:(unint64_t)a3 forTransportType:(int64_t)a4;
- (void)setShortcutIdentifier:(id)a3;
- (void)shortcutManagerMeCardDidChange:(id)a3;
- (void)suspend;
- (void)unregisterObserver:(id)a3;
- (void)updateRouteCollectionResult:(id)a3 forTransportType:(int64_t)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)waypointController:(id)a3 didResolveWaypointSet:(id)a4;
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

  v4 = [(RoutePlanningSession *)self shortcutIdentifier];
  v5 = v4 == 0;

  if (!v5)
  {
    objc_initWeak(&location, self);
    v6 = [(RoutePlanningSession *)self shortcutIdentifier];
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RoutePlanningSession will refresh autoshare from shortcut %{private}@...", buf, 0xCu);
    }

    v8 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009475C;
    block[3] = &unk_101661340;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    v9 = v6;
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (NSString)shortcutIdentifier
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 shortcutIdentifier];

  return v3;
}

- (void)selectRoute:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningSession *)self currentRouteCollection];
  v6 = [v5 routes];
  v7 = [v6 indexOfObject:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100006E1C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      return;
    }

    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_14;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(RoutePlanningSession *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_9;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_9:

LABEL_14:
    *buf = 138543362;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] CarRouteSelection: Tried to select a route in routePlanning that wasn't in currentRouteCollection.", buf, 0xCu);

    goto LABEL_15;
  }

  [(RoutePlanningSession *)self setSelectedRouteIndex:v7 forTransportType:1];
}

- (RoutePlanningTiming)timing
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transportTypeInformation];
    v5 = [v4 transportTypeInfoProviders];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 objectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 timing];

          if (v11)
          {
            v7 = [v10 timing];
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
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
    v7 = 0;
  }

  return v7;
}

- (CyclePreferences)cyclePreferences
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transportTypeInformation];
    v5 = [v4 requestInfoProviderForTransportType:5];

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
      v6 = [v5 cyclePreferences];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TransitPreferences)transitPreferences
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transportTypeInformation];
    v5 = [v4 requestInfoProviderForTransportType:3];

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
      v6 = [v5 transitPreferences];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WalkPreferences)walkPreferences
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transportTypeInformation];
    v5 = [v4 requestInfoProviderForTransportType:2];

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
      v6 = [v5 walkPreferences];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DrivePreferences)drivePreferences
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transportTypeInformation];
    v5 = [v4 requestInfoProviderForTransportType:1];

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
      v6 = [v5 drivePreferences];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v6 = [(RoutePlanningSession *)self resolvedWaypointsResult];
    if (v6)
    {
      v7 = [(RoutePlanningSession *)self resolvedWaypointsResult];
      if ([v7 isSuccess])
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

- (id)_searchResultFromWaypointRequest:(id)a3 resolvedWaypoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [[SearchResult alloc] initWithComposedWaypoint:v6];
    goto LABEL_8;
  }

  v8 = [v5 waypointPlaceholder];
  v9 = [v8 displayableMarker];

  if (v9)
  {
    v10 = [v5 waypointPlaceholder];
    v7 = [v10 displayableMarker];
LABEL_5:

    goto LABEL_8;
  }

  v11 = [v5 waypointRequest];
  v12 = [v11 mapItemForLocationComparison];

  if (!v12)
  {
    v10 = [v5 waypointRequest];
    [v10 coordinate];
    v18 = v17;
    [v10 coordinate];
    if (fabs(v18 + 180.0) >= 0.00000000999999994 || fabs(v19 + 180.0) >= 0.00000000999999994)
    {
      v20 = [[GEOLocation alloc] initWithGEOCoordinate:objc_msgSend(v10 isUserLocation:{"isCurrentLocation"), v18, v19}];
      v21 = [[GEOComposedWaypoint alloc] initWithLocation:v20 isCurrentLocation:{objc_msgSend(v10, "isCurrentLocation")}];
      v7 = [[SearchResult alloc] initWithComposedWaypoint:v21];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_5;
  }

  v13 = [SearchResult alloc];
  v14 = [v5 waypointRequest];
  v15 = [v14 mapItemForLocationComparison];
  v7 = [(SearchResult *)v13 initWithMapItem:v15];

LABEL_8:

  return v7;
}

- (NSArray)waypointDisplayableMarkers
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100E69530;
  v9 = &unk_101656780;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = self;
  v3 = v10;
  [(RoutePlanningSession *)self enumerateRequestsOrWaypointsUsingBlock:&v6];
  v4 = [v3 copy];

  return v4;
}

- (SearchResult)destinationDisplayableMarker
{
  v3 = [(RoutePlanningSession *)self configuration];
  v4 = [v3 destinationWaypointRequest];
  v5 = [(RoutePlanningSession *)self resolvedWaypoints];
  v6 = [v5 destination];
  v7 = [(RoutePlanningSession *)self _searchResultFromWaypointRequest:v4 resolvedWaypoint:v6];

  return v7;
}

- (SearchResult)originDisplayableMarker
{
  v3 = [(RoutePlanningSession *)self configuration];
  v4 = [v3 originWaypointRequest];
  v5 = [(RoutePlanningSession *)self resolvedWaypoints];
  v6 = [v5 origin];
  v7 = [(RoutePlanningSession *)self _searchResultFromWaypointRequest:v4 resolvedWaypoint:v6];

  return v7;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 745 && a3.var1 == &unk_101644E90)
  {
    v6 = [(RoutePlanningSession *)self currentRouteCollectionResult];
    v5 = [v6 value];
    [(RoutePlanningSession *)self _updateIsInACustomRouteRegionForRouteCollection:v5];
  }
}

- (void)routeLoadingController:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v11 = sub_100798A3C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 allKeys];
    *buf = 134349570;
    v20 = self;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ received updates for routes %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F69B04;
  block[3] = &unk_101661A40;
  block[4] = self;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_async(&_dispatch_main_q, block);

  os_activity_scope_leave(&state);
}

- (void)routeLoadingController:(id)a3 didReceiveRoutesResult:(id)a4 forTransportType:(int64_t)a5 advisoryInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
      [v11 withValue:v21 orError:&stru_10165E828];
      v16 = sub_100798A3C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(&buf + 1) + 40);
        if ((a5 - 1) > 4)
        {
          v18 = @"Undefined";
        }

        else
        {
          v18 = off_10165E8C8[a5 - 1];
        }

        *v23 = 134349826;
        v24 = self;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ received routes %@ (transport type=%@)", v23, 0x2Au);
      }
    }

    v19 = [v11 map:&stru_10165E868];
    if ([(RoutePlanningSession *)self currentTransportType]== 1)
    {
      objc_storeStrong(&self->_advisoryInfo, a6);
    }

    v20 = sub_100798A3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v23 = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Advisory info receieved : %@", v23, 0xCu);
    }

    [(RoutePlanningSession *)self updateRouteCollectionResult:v19 forTransportType:a5];
    _Block_object_dispose(&buf, 8);
  }

  os_activity_scope_leave(&state);
}

- (void)waypointController:(id)a3 didResolveWaypointSet:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v57 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]";
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
        v57 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(RoutePlanningSession *)self sessionState];
  v11 = sub_100798A3C();
  v12 = v11;
  if (v10 == 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v57 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring waypoint update due to being paused", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(RoutePlanningSession *)self currentTransportType];
      if ((v13 - 1) > 4)
      {
        v14 = @"Undefined";
      }

      else
      {
        v14 = off_10165E8C8[v13 - 1];
      }

      *buf = 134349314;
      v57 = self;
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
    v52 = v7;
    v15 = objc_retainBlock(v51);
    if ([(RoutePlanningSession *)self currentTransportType])
    {
      v16 = sub_100798A3C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v57 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] RoutePlanningSession was initialized with a valid transport type", buf, 0xCu);
      }

      (v15[2])(v15, [(RoutePlanningSession *)self currentTransportType]);
    }

    else
    {
      v17 = [(RoutePlanningSession *)self platformController];
      v18 = [v17 chromeViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        v21 = [(RoutePlanningSession *)self resolvedWaypoints];
        v22 = [v21 origin];
        v23 = [v22 latLng];

        v24 = [(RoutePlanningSession *)self resolvedWaypoints];
        v25 = [v24 destination];
        v26 = [v25 latLng];

        v27 = sub_100798A3C();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v57 = self;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}p] RoutePlanningSession was not initialized with a valid transport type; determining a default one now", buf, 0xCu);
        }

        v28 = [v20 defaultTransportTypeFinder];
        [v23 lat];
        v30 = v29;
        [v23 lng];
        v32 = CLLocationCoordinate2DMake(v30, v31);
        [v26 lat];
        v34 = v33;
        [v26 lng];
        v36 = CLLocationCoordinate2DMake(v34, v35);
        v37 = [(RoutePlanningSession *)self ignoreMapType];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100F6AB58;
        v48[3] = &unk_10165E7A0;
        objc_copyWeak(&v50, &location);
        v49 = v15;
        [v28 transportTypeForOrigin:v37 destination:v48 ignoreMapType:v32.latitude completion:{v32.longitude, v36.latitude, v36.longitude}];

        objc_destroyWeak(&v50);
      }

      else
      {
        v38 = sub_10006D178();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v57 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]";
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
            v57 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v41 = sub_100798A3C();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = [(RoutePlanningSession *)self platformController];
          v43 = [v42 chromeViewController];
          *buf = 134349314;
          v57 = self;
          v58 = 2112;
          v59 = v43;
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
  v13 = self;
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
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 automaticSharingContacts];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
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

- (void)_setAutomaticSharingContacts:(id)a3 forShortcutIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RoutePlanningSession *)self shortcutIdentifier];
  v9 = v8;
  if (v7 | v8)
  {
    v10 = [v8 isEqual:v7];
  }

  else
  {
    v10 = 1;
  }

  v11 = MSPSharedTripSharingAvailable();
  v12 = sub_100798A3C();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = [v6 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Not setting automatic sharing contacts because sharing is not available (would have had %lu autosharing contacts)", &v19, 0xCu);
    }

    v15 = [(RoutePlanningSession *)self configuration];
    [v15 setAutomaticSharingContacts:0];
    goto LABEL_12;
  }

  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 134218242;
      v20 = [v6 count];
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Setting %lu automatic sharing contacts: %@", &v19, 0x16u);
    }

    [(RoutePlanningSession *)self _cancelFetchingCapabilitiesSharingContacts];
    v14 = [(RoutePlanningSession *)self configuration];
    [v14 setAutomaticSharingContacts:v6];

    v15 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v15 requestCapabilityLevelsForContacts:v6];
LABEL_12:

    v13 = [(RoutePlanningSession *)self observers];
    v16 = [(RoutePlanningSession *)self configuration];
    v17 = [v16 automaticSharingContacts];
    [v13 routePlanningSession:self didUpdateAutomaticSharingContacts:v17];

    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = [(RoutePlanningSession *)self shortcutIdentifier];
    v19 = 138478083;
    v20 = v7;
    v21 = 2113;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Not setting automatic sharing contacts, passed in shortcutIdentifier %{private}@ doesn't match current %{private}@", &v19, 0x16u);
  }

LABEL_13:
}

- (void)setAutomaticSharingContacts:(id)a3
{
  v4 = a3;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Explicitly setting automatic sharing contacts...", buf, 2u);
  }

  v6 = [(RoutePlanningSession *)self shortcutIdentifier];

  if (v6)
  {
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "RoutePlanningSession implicitly clearing shortcutIdentifier", v9, 2u);
    }

    [(RoutePlanningSession *)self _cancelFetchingCapabilitiesSharingContacts];
    v8 = [(RoutePlanningSession *)self configuration];
    [v8 setShortcutIdentifier:0];
  }

  [(RoutePlanningSession *)self _setAutomaticSharingContacts:v4];
}

- (NSArray)automaticSharingContacts
{
  v2 = [(RoutePlanningSession *)self configuration];
  v3 = [v2 automaticSharingContacts];

  return v3;
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

- (void)shortcutManagerMeCardDidChange:(id)a3
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

- (void)homeDataProvidingObjectDidUpdate:(id)a3
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

- (id)_shortcutWithIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[ShortcutManager sharedManager];
    v5 = [v4 meCard];
    v6 = [v5 shortcutsForAll];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
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
          v14 = [v13 isEqualToString:{v3, v18}];

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
      v23 = v3;
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

- (id)_favoriteWithIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v5 = [v4 shortcuts];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
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
          v12 = [v11 identifier];
          v13 = [v12 isEqualToString:v3];

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
      v22 = v3;
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

- (void)setShortcutIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningSession *)self configuration];
  v6 = [v5 shortcutIdentifier];

  v7 = [(RoutePlanningSession *)self configuration];
  [v7 setShortcutIdentifier:v4];

  if (v4)
  {
    v8 = sub_1000946AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v4;
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

  else if (v6)
  {
    v10 = sub_1000946AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v6;
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
  v2 = [(RoutePlanningSession *)self observers];
  [v2 clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  v3 = [(RoutePlanningSession *)self observers];
  [v3 removeSnapshottedObservers];

  v4 = [(RoutePlanningSession *)self observers];
  [v4 mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];

  v5 = [(RoutePlanningSession *)self observers];
  [v5 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  v2 = [(RoutePlanningSession *)self observers];
  [v2 snapshotCurrentObservers];
}

- (void)suspend
{
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v20);
  v3 = sub_100798A3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(RoutePlanningSession *)self sessionState];
    v5 = @"NotStarted";
    if (v4 == 1)
    {
      v5 = @"Running";
    }

    if (v4 == 2)
    {
      v5 = @"Suspended";
    }

    *buf = 134349314;
    v22 = self;
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
      v22 = "[RoutePlanningSession suspend]";
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
        v22 = v15;
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
      v22 = "[RoutePlanningSession suspend]";
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
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([(RoutePlanningSession *)self sessionState]== 1)
  {
    [(RoutePlanningSession *)self setSessionState:2];
    v8 = [(RoutePlanningSession *)self waypointController];
    [v8 stop];

    v9 = [(RoutePlanningSession *)self routeLoadingController];
    [v9 cancelLoading];

    [(RoutePlanningSession *)self _updateLoadingControllerForRealtimeUpdates];
    v10 = [(RoutePlanningSession *)self observers];
    [v10 mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];
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
    v4 = [(RoutePlanningSession *)self sessionState];
    v5 = @"NotStarted";
    if (v4 == 1)
    {
      v5 = @"Running";
    }

    if (v4 == 2)
    {
      v5 = @"Suspended";
    }

    *buf = 134349314;
    v35 = self;
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
      v35 = "[RoutePlanningSession resume]";
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
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([(RoutePlanningSession *)self sessionState]!= 1)
  {
    v8 = [(RoutePlanningSession *)self sessionState];
    [(RoutePlanningSession *)self setSessionState:1];
    v9 = +[NSDate date];
    [(RoutePlanningSession *)self setStartDate:v9];

    v10 = [(RoutePlanningSession *)self observers];
    [v10 mapsSession:self didChangeState:{-[RoutePlanningSession sessionState](self, "sessionState")}];

    [(RoutePlanningSession *)self _updateLoadingControllerForRealtimeUpdates];
    v11 = [(RoutePlanningSession *)self configuration];
    v12 = [v11 locationManager];
    if ([v12 isLocationServicesDenied])
    {
      v13 = 0;
    }

    else
    {
      v14 = [(RoutePlanningSession *)self configuration];
      v15 = [v14 locationManager];
      v16 = [v15 isLocationServicesRestricted];

      v13 = v16 ^ 1;
    }

    if (!v8)
    {
      v17 = [(RoutePlanningSession *)self configuration];
      v18 = [v17 isNavigationTracePlayback];

      v19 = sub_100798A3C();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v35 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%{public}p] Playing navtrace; not waiting for accurate location", buf, 0xCu);
        }

LABEL_29:

        v25 = [(RoutePlanningSession *)self waypointController];
        [v25 start];

        goto LABEL_30;
      }

      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        if (v21)
        {
          *buf = 134349056;
          v35 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}p] Location access isn't available; continuing with waypoint resolution", buf, 0xCu);
        }

        goto LABEL_29;
      }

      if (v21)
      {
        *buf = 134349056;
        v35 = self;
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
      v23 = [(RoutePlanningSession *)self configuration];
      v24 = [v23 locationManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100F6CF88;
      v31[3] = &unk_101661B98;
      objc_copyWeak(&v32, buf);
      [v24 waitForAccurateLocationWithTimeout:v31 handler:v22];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

LABEL_30:
  os_activity_scope_leave(&state);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v7);
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] remove observer %@", buf, 0x16u);
  }

  v6 = [(RoutePlanningSession *)self observers];
  [v6 unregisterObserver:v4];

  os_activity_scope_leave(&v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v7);
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] adding observer %@", buf, 0x16u);
  }

  v6 = [(RoutePlanningSession *)self observers];
  [v6 registerObserver:v4];

  os_activity_scope_leave(&v7);
}

- (void)_setIsInACustomRouteRegion:(BOOL)a3
{
  if (self->_inACustomRouteRegion != a3)
  {
    v3 = a3;
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      inACustomRouteRegion = self->_inACustomRouteRegion;
      v8 = 134349568;
      v9 = self;
      v10 = 1024;
      v11 = inACustomRouteRegion;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] changing isInACustomRouteRegion from %d to %d", &v8, 0x18u);
    }

    self->_inACustomRouteRegion = v3;
    v7 = [(RoutePlanningSession *)self observers];
    [v7 routePlanningSession:self didChangeRouteCreationRegion:v3];
  }
}

- (void)_updateIsInACustomRouteRegionForRouteCollection:(id)a3
{
  v3 = a3;
  BOOL = GEOConfigGetBOOL();
  v5 = [v3 currentRoute];
  if (v5)
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
    v8 = [v5 waypoints];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v13 = [v12 location];
          v14 = &_dispatch_main_q;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100F6D764;
          v21[3] = &unk_10165E6D8;
          v23 = v28;
          v22 = v7;
          [GEODirectionsService customRouteCreationSupportedForLocation:v13 queue:&_dispatch_main_q handler:v21];
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F6D77C;
    block[3] = &unk_10165E700;
    objc_copyWeak(&v19, &location);
    v17 = v3;
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
    v3 = [(RoutePlanningSession *)self currentTransportType];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(RoutePlanningSession *)self routeLoadingController];
  [v4 setTransportTypeForRealtimeUpdates:v3];
}

- (void)requestUpdatedRouteWithRefreshedOrigin:(BOOL)a3
{
  if (a3)
  {
    v14 = [(RoutePlanningSession *)self waypointController];
    [v14 refreshDynamicOrigin];
  }

  else
  {
    v4 = [(RoutePlanningSession *)self resolvedWaypoints];

    if (v4)
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

      v7 = [(RoutePlanningSession *)self isolationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100F6DB80;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_sync(v7, block);

      [(RoutePlanningSession *)self _updateIsInACustomRouteRegionForRouteCollection:0];
      v8 = [(RoutePlanningSession *)self observers];
      [v8 routePlanningSession:self didUpdateRouteCollectionResult:0 forTransportType:{-[RoutePlanningSession currentTransportType](self, "currentTransportType")}];

      v9 = [(RoutePlanningSession *)self routeLoadingController];
      [v9 cancelLoading];

      v10 = [(RoutePlanningSession *)self waypointController];
      [v10 rebroadcastWaypoints];
    }
  }
}

- (void)setSelectedRouteIndex:(unint64_t)a3 forTransportType:(int64_t)a4
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
    if ((a4 - 1) > 4)
    {
      v12 = @"Undefined";
    }

    else
    {
      v12 = off_10165E8C8[a4 - 1];
    }

    *buf = 134349570;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2112;
    v55 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] set selected routeIndex=%ld for transport type=%@", buf, 0x20u);
  }

  v13 = [(RoutePlanningSession *)self routeCollectionResultForTransportType:a4];
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

  if ([*(*&buf[8] + 40) count] <= a3)
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
  if (v14 && [v14 count] > a3 && objc_msgSend(*(*&buf[8] + 40), "currentRouteIndex") != a3)
  {
    v15 = [*(*&buf[8] + 40) routeCollectionByChangingCurrentRouteIndex:a3];
    v16 = [Result resultWithValue:v15];
    v17 = [(RoutePlanningSession *)self isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F6E278;
    block[3] = &unk_10165E668;
    block[4] = self;
    v43 = a4;
    v18 = v16;
    v42 = v18;
    dispatch_sync(v17, block);

    v19 = &_dispatch_main_q;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v34 = sub_100F6E2F0;
    v35 = &unk_10165E6B0;
    v36 = self;
    v20 = v15;
    v37 = v20;
    v21 = v18;
    v38 = v21;
    v39 = a4;
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

- (void)setCurrentTransportType:(int64_t)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
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
        v56 = "[RoutePlanningSession setCurrentTransportType:userInitiated:]";
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
          v56 = v44;
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

    if ((a3 - 1) > 4)
    {
      v13 = @"Undefined";
    }

    else
    {
      v13 = off_10165E8C8[a3 - 1];
    }

    *buf = 134349826;
    v56 = self;
    v57 = 2112;
    v58 = v12;
    v59 = 2112;
    *v60 = v13;
    *&v60[8] = 1024;
    *&v60[10] = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}p] changing transport type from %@ to %@, userInitiated:%d", buf, 0x26u);
  }

  v14 = [(RoutePlanningSession *)self configuration];
  v15 = [v14 hasTransportType:a3];

  if ((v15 & 1) == 0)
  {
    v46 = sub_10006D178();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v56 = "[RoutePlanningSession setCurrentTransportType:userInitiated:]";
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
        v56 = v48;
        v49 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  currentTransportType = self->_currentTransportType;
  if (currentTransportType != a3)
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

    if (a3 > 4 || ((1 << a3) & 0x19) == 0)
    {
      [(RAPGraphDirectionsRecorder *)self->_reportAProblemRecorder startRecording];
    }

    if (v4)
    {
      v22 = +[GEOCompanionRouteContext context];
      v23 = [(RoutePlanningSession *)self configuration];
      [v23 setCompanionContext:v22];
    }

    self->_currentTransportType = a3;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100F6EC00;
    v50[3] = &unk_101661AE0;
    v50[4] = self;
    v51 = v4;
    dispatch_async(&_dispatch_main_q, v50);
    v24 = [(RoutePlanningSession *)self transportTypeToRouteCollectionResultsMap];
    v25 = [NSNumber numberWithInteger:self->_currentTransportType];
    v26 = [v24 objectForKeyedSubscript:v25];

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
        v56 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch routes for this transport type failed; trying again", buf, 0xCu);
      }

      v28 = [(RoutePlanningSession *)self transportTypeToRouteCollectionResultsMap];
      v29 = [NSNumber numberWithInteger:self->_currentTransportType];
      [v28 removeObjectForKey:v29];

      v30 = [(RoutePlanningSession *)self routeLoadingController];
      [v30 refreshRoutesForTransportType:[(RoutePlanningSession *)self currentTransportType]];
LABEL_39:

      goto LABEL_40;
    }

    v31 = [(RoutePlanningSession *)self configuration];
    if ([v31 areInitialRoutesBeingFetchedExternally])
    {
      v32 = [(RoutePlanningSession *)self resolvedWaypointsResult];
      v33 = v32 == 0;

      if (v33)
      {
        v30 = [(RoutePlanningSession *)self configuration];
        [v30 setInitialRoutesBeingFetchedExternally:0];
        goto LABEL_39;
      }
    }

    else
    {
    }

    v34 = [(RoutePlanningSession *)self resolvedWaypoints];
    v35 = v34 == 0;

    if (v35)
    {
      v36 = [(RoutePlanningSession *)self resolvedWaypointsResult];
      if (v36 && (-[RoutePlanningSession resolvedWaypointsResult](self, "resolvedWaypointsResult"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isSuccess], v37, v36, (v38 & 1) == 0))
      {
        v39 = sub_100798A3C();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v56 = self;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch waypoints failed; trying again", buf, 0xCu);
        }

        v30 = [(RoutePlanningSession *)self waypointController];
        [v30 refresh];
      }

      else
      {
        v30 = sub_100798A3C();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v56 = self;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}p] Previous attempt to fetch waypoints is still in progress; waiting for it to finish", buf, 0xCu);
        }
      }
    }

    else
    {
      v30 = [(RoutePlanningSession *)self routeLoadingController];
      [v30 refreshRoutesForTransportType:[(RoutePlanningSession *)self currentTransportType]];
    }

    goto LABEL_39;
  }

  v17 = sub_100798A3C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v56 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}p] No difference detected in transport type; ignoring request", buf, 0xCu);
  }

LABEL_41:
  os_activity_scope_leave(&state);
}

- (void)safelySetCurrentTransportType:(int64_t)a3
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

  v8 = [(RoutePlanningSession *)self isolationQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F6EE70;
  v13[3] = &unk_101661650;
  v13[4] = self;
  v13[5] = a3;
  dispatch_sync(v8, v13);
}

- (void)_notifyObserversDidUpdateRouteCollectionResult:(id)a3 forTransportType:(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6EF18;
  block[3] = &unk_10165E668;
  block[4] = self;
  v7 = a3;
  v8 = a4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateRouteCollectionResult:(id)a3 forTransportType:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[RoutePlanningSession updateRouteCollectionResult:forTransportType:]";
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
        v26 = v19;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v7 = [(RoutePlanningSession *)self sessionInitiator];
  v8 = sub_100798A3C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 6)
  {
    if (v9)
    {
      if ((a4 - 1) > 4)
      {
        v10 = @"Undefined";
      }

      else
      {
        v10 = off_10165E8C8[a4 - 1];
      }

      *buf = 134349314;
      v26 = self;
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
    if ((a4 - 1) > 4)
    {
      v11 = @"Undefined";
    }

    else
    {
      v11 = off_10165E8C8[a4 - 1];
    }

    *buf = 134349571;
    v26 = self;
    v27 = 2113;
    v28 = v6;
    v29 = 2112;
    v30[0] = v11;
    v12 = "[%{public}p] Updating route collection result:(%{private}@) for transport type:(%@)";
    v13 = v8;
    v14 = 32;
    goto LABEL_13;
  }

  v15 = [(RoutePlanningSession *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6F2CC;
  block[3] = &unk_10165E668;
  v22 = v6;
  v23 = a4;
  block[4] = self;
  v16 = v6;
  dispatch_async(v15, block);

  os_activity_scope_leave(&state);
}

- (int64_t)navigationTypeForCurrentRoute
{
  v2 = [(RoutePlanningSession *)self currentRouteCollection];
  v3 = [v2 currentRoute];
  v4 = [v3 suggestedNavigationModeForLocation:0 context:0];

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
  v2 = [(RoutePlanningSession *)self currentRouteCollectionResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F6F4F8;
  v5[3] = &unk_10165E5B8;
  v5[4] = &v6;
  [v2 withValue:v5 orError:&stru_10165E640];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Result)currentRouteCollectionResult
{
  v3 = [(RoutePlanningSession *)self currentTransportType];

  return [(RoutePlanningSession *)self routeCollectionResultForTransportType:v3];
}

- (WaypointSet)resolvedWaypoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100F69EB0;
  v10 = sub_100F69EC0;
  v11 = 0;
  v2 = [(RoutePlanningSession *)self resolvedWaypointsResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F6F660;
  v5[3] = &unk_10165E600;
  v5[4] = &v6;
  [v2 withValue:v5 orError:&stru_10165E620];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Result)resolvedWaypointsResult
{
  v2 = [(RoutePlanningSession *)self waypointController];
  v3 = [v2 resolvedWaypointSetResult];

  return v3;
}

- (NSDictionary)waypointRequestResults
{
  v2 = [(RoutePlanningSession *)self waypointController];
  v3 = [v2 waypointRequestResults];

  return v3;
}

- (void)purgeRouteCollectionForTransportType:(int64_t)a3
{
  v5 = [(RoutePlanningSession *)self isolationQueue];
  label = dispatch_queue_get_label(v5);
  v7 = dispatch_queue_get_label(0);
  if (label == v7)
  {

LABEL_7:
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(RoutePlanningSession *)self isolationQueue];
      *buf = 136316162;
      v15 = "[RoutePlanningSession purgeRouteCollectionForTransportType:]";
      v16 = 2080;
      v17 = "RoutePlanningSession.m";
      v18 = 1024;
      v19 = 215;
      v20 = 2080;
      v21 = "self.isolationQueue";
      v22 = 2080;
      v23 = dispatch_queue_get_label(v10);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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
  v12 = [(RoutePlanningSession *)self isolationQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F6F938;
  v13[3] = &unk_101661650;
  v13[4] = self;
  v13[5] = a3;
  dispatch_sync(v12, v13);
}

- (id)routeCollectionForTransportType:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100F69EB0;
  v11 = sub_100F69EC0;
  v12 = 0;
  v3 = [(RoutePlanningSession *)self routeCollectionResultForTransportType:a3];
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

- (id)routeCollectionResultForTransportType:(int64_t)a3
{
  v5 = [(RoutePlanningSession *)self configuration];
  v6 = [v5 hasTransportType:a3];

  if (v6)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100F69EB0;
    v16 = sub_100F69EC0;
    v17 = 0;
    v7 = [(RoutePlanningSession *)self resolvedWaypointsResult];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F6FC6C;
    v11[3] = &unk_10165E568;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = a3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100F6FD04;
    v10[3] = &unk_10165E590;
    v10[4] = &v12;
    [v7 withValue:v11 orError:v10];

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
  v3 = [(RoutePlanningSession *)self configuration];
  v4 = [v3 waypointRequests];

  v5 = [(RoutePlanningSession *)self resolvedWaypoints];
  v6 = [(RoutePlanningSession *)self currentTransportType];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
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
    v7 = [(RoutePlanningSession *)self configuration];
    v8 = [v7 destinationWaypointRequest];
    v9 = [v5 destination];
    v10 = [v8 nameWithResolvedWaypoint:v9 allowCurrentLocation:0];

    goto LABEL_16;
  }

LABEL_13:
  if ([v4 count] <= 2)
  {
    goto LABEL_14;
  }

  v7 = [v4 objectAtIndexedSubscript:1];
  v8 = [v5 waypointAtIndex:1];
  v10 = [v7 nameWithResolvedWaypoint:v8 allowCurrentLocation:0];
LABEL_16:

  return v10;
}

- (NSString)originName
{
  v3 = [(RoutePlanningSession *)self configuration];
  v4 = [v3 originWaypointRequest];
  v5 = [(RoutePlanningSession *)self resolvedWaypoints];
  v6 = [v5 origin];
  v7 = [v4 nameWithResolvedWaypoint:v6 allowCurrentLocation:1];

  return v7;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = RoutePlanningSession;
  v3 = [(RoutePlanningSession *)&v8 description];
  v4 = [(RoutePlanningSession *)self sessionInitiator];
  if (v4 - 1 > 7)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_10165E888[v4 - 1];
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
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] Deallocating", buf, 0xCu);
  }

  os_activity_scope_leave(&state);
  v5.receiver = self;
  v5.super_class = RoutePlanningSession;
  [(RoutePlanningSession *)&v5 dealloc];
}

- (RoutePlanningSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4
{
  v7 = a4;
  if (!v7)
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
      if (a3 - 1 > 7)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = off_10165E888[a3 - 1];
      }

      *buf = 134349826;
      v58 = v8;
      v59 = 2112;
      v60 = v13;
      v61 = 2112;
      *v62 = v15;
      *&v62[8] = 2112;
      *&v62[10] = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] %@ is being initialized: initiator=%@ configuration=%@", buf, 0x2Au);
    }

    *(v8 + 4) = a3;
    objc_storeStrong(v8 + 7, a4);
    *(v8 + 26) = [v7 ignoreMapType];
    if (v7)
    {
      v16 = [v7 initialTransportType];
    }

    else
    {
      v16 = 0;
    }

    *(v8 + 11) = v16;
    v17 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RoutePlanningSessionObserver queue:0];
    v18 = *(v8 + 13);
    *(v8 + 13) = v17;

    v19 = +[NSBundle mainBundle];
    v20 = [v19 bundleIdentifier];
    v21 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v20, objc_opt_class(), v8];

    v22 = v21;
    v23 = [v21 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(v23, v24);
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
    v30 = [v7 waypointRequests];
    v31 = [v30 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v31)
    {
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = [*(*(&v50 + 1) + 8 * i) waypointRequest];
          [v29 addObject:v34];
        }

        v31 = [v30 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v31);
    }

    v35 = [WaypointControllerConfiguration alloc];
    v36 = [v7 traits];
    v37 = [(WaypointControllerConfiguration *)v35 initWithRequests:v29 traits:v36];
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

    v44 = [v7 shortcutIdentifier];
    [v8 setShortcutIdentifier:v44];

    v45 = &_dispatch_main_q;
    _GEOConfigAddDelegateListenerForKey();

    os_activity_scope_leave(&state);
  }

  return v8;
}

- (void)enumerateRequestsOrWaypointsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningSession *)self currentRouteCollection];
  v6 = [v5 currentRoute];
  if (v6)
  {
    v7 = [v5 currentRoute];
    v8 = [v7 waypoints];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v9 = [(RoutePlanningSession *)self configuration];
    v10 = [v9 waypointRequests];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v31[0] = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100FC7D54;
    v26[3] = &unk_101660258;
    v29 = buf;
    v11 = v10;
    v27 = v11;
    v28 = v4;
    [v8 enumerateObjectsUsingBlock:v26];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = [(RoutePlanningSession *)self resolvedWaypoints];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 count];
      v15 = [(RoutePlanningSession *)self configuration];
      v16 = [v15 waypointRequests];
      v17 = [v16 count];

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

    v21 = [(RoutePlanningSession *)self configuration];
    v22 = [v21 waypointRequests];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100FC7F3C;
    v23[3] = &unk_101660280;
    v24 = v13;
    v25 = v4;
    v11 = v13;
    [v22 enumerateObjectsUsingBlock:v23];
  }
}

+ (id)mostAppropriateNameForWaypointWithRequest:(id)a3 composedWaypoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    if (v5 && [v5 preferredNameSource] != 1)
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
    if (v6)
    {
      v8 = [[SearchResult alloc] initWithComposedWaypoint:v6];
      v7 = [(SearchResult *)v8 name];

      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v6 name];
LABEL_9:
  v9 = [v7 length];
  if (v5 && !v9)
  {
    v10 = [v5 waypointPlaceholder];
    v11 = [v10 name];

    v7 = v11;
  }

  return v7;
}

@end