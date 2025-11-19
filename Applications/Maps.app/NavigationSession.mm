@interface NavigationSession
- (GEOComposedWaypoint)destination;
- (NSString)currentDestinationString;
- (NavigationSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4;
- (NavigationSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4 navigationService:(id)a5;
- (PlatformController)platformController;
- (RouteCollection)currentRouteCollection;
- (int64_t)currentTransportType;
- (int64_t)navigationType;
- (unint64_t)guidanceType;
- (unint64_t)sessionState;
- (void)_retryAutomaticSharing:(id)a3;
- (void)_scheduleAutomaticSharingRetry:(unint64_t)a3;
- (void)_startAutomaticETASharingIfNeeded:(unint64_t)a3;
- (void)cleanupStateReplay;
- (void)dealloc;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationStateProvider:(id)a3 didChangeNavigationState:(unint64_t)a4;
- (void)prepareToReplayCurrentState;
- (void)registerObserver:(id)a3;
- (void)replayCurrentState;
- (void)resume;
- (void)routeCollectionUpdateProvider:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)selectRoute:(id)a3;
- (void)setNavigationStateProvider:(id)a3;
- (void)setRouteCollectionUpdateProvider:(id)a3;
- (void)suspendWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation NavigationSession

- (int64_t)currentTransportType
{
  v2 = [(NavigationSession *)self currentRouteCollection];
  v3 = [v2 currentRoute];
  v4 = [v3 transportType] - 1;
  if (v4 > 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_101216278[v4];
  }

  return v5;
}

- (RouteCollection)currentRouteCollection
{
  v2 = [(NavigationSession *)self routeCollectionUpdateProvider];
  v3 = [v2 currentRouteCollection];

  return v3;
}

- (void)selectRoute:(id)a3
{
  v3 = a3;
  v4 = +[MNNavigationService sharedService];
  [v4 switchToRoute:v3];
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)routeCollectionUpdateProvider:(id)a3 didUpdateRouteCollection:(id)a4
{
  v5 = a4;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 shortDescription];
    v9 = 138412547;
    v10 = self;
    v11 = 2113;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ - routeCollection updated collection=%{private}@", &v9, 0x16u);
  }

  v8 = [(NavigationSession *)self observers];
  [v8 navigationSession:self didUpdateRouteCollection:v5];
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v8 = [(NavigationSession *)self observers:a3];
  if ((a4 - 1) > 5)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_101216278[a4 - 1];
  }

  v10 = v8;
  [v8 navigationSession:self didChangeCurrentTransportType:v9];
}

- (void)navigationStateProvider:(id)a3 didChangeNavigationState:(unint64_t)a4
{
  v6 = sub_100035E6C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v7 = self;
  if (!v7)
  {
    v12 = @"<nil>";
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(NavigationSession *)v7 performSelector:"accessibilityIdentifier"];
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
  v13 = [(NavigationSession *)v7 sessionState];
  v14 = @"NotStarted";
  if (v13 == 1)
  {
    v14 = @"Running";
  }

  *buf = 138543874;
  v20 = v12;
  v21 = 2112;
  v22 = v7;
  if (v13 == 2)
  {
    v14 = @"Suspended";
  }

  v23 = 2112;
  v24 = v14;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] %@ - state updated state=%@", buf, 0x20u);

LABEL_15:
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      suspendCompletionHandler = self->_suspendCompletionHandler;
      if (suspendCompletionHandler)
      {
        v16 = objc_retainBlock(suspendCompletionHandler);
        v17 = self->_suspendCompletionHandler;
        self->_suspendCompletionHandler = 0;

        v16[2](v16);
      }
    }

    [(NavigationSession *)self guidanceType];
    goto LABEL_20;
  }

  [(NavigationSession *)self _startAutomaticETASharingIfNeeded:GEOConfigGetUInteger()];
  if ([(NavigationSession *)self guidanceType]!= 2)
  {
LABEL_20:
    v18 = [(NavigationSession *)self observers];
    [v18 mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];
  }
}

- (void)_retryAutomaticSharing:(id)a3
{
  v4 = [a3 userInfo];
  [(NSTimer *)self->_automaticSharingRetryTimer invalidate];
  automaticSharingRetryTimer = self->_automaticSharingRetryTimer;
  self->_automaticSharingRetryTimer = 0;

  v6 = [v4 objectForKeyedSubscript:@"retries"];
  v7 = [v6 unsignedIntegerValue];

  v8 = sub_100035E6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ - performing scheduled retry of automatic sharing, %lu remaining retries", &v9, 0x16u);
  }

  [(NavigationSession *)self _startAutomaticETASharingIfNeeded:v7];
}

- (void)_scheduleAutomaticSharingRetry:(unint64_t)a3
{
  if (!self->_automaticSharingRetryTimer)
  {
    GEOConfigGetDouble();
    v6 = v5;
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v15 = self;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ - scheduling automatic sharing in %#.1fs, %lu remaining retries", buf, 0x20u);
    }

    v8 = [NSNumber numberWithUnsignedInteger:a3, @"retries"];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [NSTimer scheduledTimerWithTimeInterval:self target:"_retryAutomaticSharing:" selector:v9 userInfo:0 repeats:v6];
    automaticSharingRetryTimer = self->_automaticSharingRetryTimer;
    self->_automaticSharingRetryTimer = v10;
  }
}

- (void)_startAutomaticETASharingIfNeeded:(unint64_t)a3
{
  v5 = [(NavigationSession *)self navigationStateProvider];
  v6 = [v5 navigationState];

  if (v6 != 2)
  {
    v19 = sub_100035E6C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v29 = self;
    v20 = "%@ - will not start automatic sharing, navigation not active";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  v7 = [(NavigationSession *)self currentTransportType];
  if ((MSPSharedTripSharingSupportedForTransportType() & 1) == 0)
  {
    v19 = sub_100035E6C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    if ((v7 - 1) > 4)
    {
      v24 = @"Undefined";
    }

    else
    {
      v24 = *(&off_10162A3E0 + v7 - 1);
    }

    *buf = 138412546;
    v29 = self;
    v30 = 2112;
    v31 = v24;
    v20 = "%@ - will not start automatic sharing, current transport type is not supported (%@)";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 22;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
    goto LABEL_24;
  }

  pendingAutomaticSharingContacts = self->_pendingAutomaticSharingContacts;
  if (!pendingAutomaticSharingContacts)
  {
    v9 = [(NavigationSession *)self configuration];
    v10 = [v9 sharedTripPrefetchContext];

    v11 = [v10 automaticSharingContacts];
    v12 = v11;
    if (!v11)
    {
      v11 = &__NSArray0__struct;
    }

    v13 = [v11 mutableCopy];
    v14 = self->_pendingAutomaticSharingContacts;
    self->_pendingAutomaticSharingContacts = v13;

    v15 = sub_100035E6C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(NSMutableArray *)self->_pendingAutomaticSharingContacts count];
      *buf = 138412546;
      v29 = self;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@ - preparing to handle %lu automatic sharing contacts", buf, 0x16u);
    }

    pendingAutomaticSharingContacts = self->_pendingAutomaticSharingContacts;
  }

  if (![(NSMutableArray *)pendingAutomaticSharingContacts count])
  {
    v19 = sub_100035E6C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v29 = self;
    v20 = "%@ - will not start automatic sharing, no pending contacts";
    v21 = v19;
    v22 = OS_LOG_TYPE_INFO;
LABEL_15:
    v23 = 12;
    goto LABEL_23;
  }

  v17 = [(NSMutableArray *)self->_pendingAutomaticSharingContacts copy];
  v18 = sub_100035E6C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412803;
    v29 = self;
    v30 = 2113;
    v31 = v17;
    v32 = 2048;
    v33 = a3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ - will start automatic sharing with %{private}@, remaining retries %lu", buf, 0x20u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1007C68C8;
  v25[3] = &unk_10162A380;
  v26 = v17;
  v27 = a3;
  v25[4] = self;
  v19 = v17;
  [v19 enumerateObjectsWithOptions:1 usingBlock:v25];

LABEL_24:
}

- (void)cleanupStateReplay
{
  v2 = [(NavigationSession *)self observers];
  [v2 clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  v3 = [(NavigationSession *)self observers];
  [v3 removeSnapshottedObservers];

  v4 = [(NavigationSession *)self observers];
  [v4 mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];

  v5 = [(NavigationSession *)self observers];
  [v5 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  v2 = [(NavigationSession *)self observers];
  [v2 snapshotCurrentObservers];
}

- (void)suspendWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(NavigationSession *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  v12 = [(NavigationSession *)v6 sessionState];
  v13 = @"NotStarted";
  if (v12 == 1)
  {
    v13 = @"Running";
  }

  *buf = 138543874;
  v20 = v11;
  v21 = 2112;
  v22 = v6;
  if (v12 == 2)
  {
    v13 = @"Suspended";
  }

  v23 = 2112;
  v24 = v13;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %@ - suspend requested, state=%@", buf, 0x20u);

LABEL_15:
  v14 = [(NavigationSession *)self navigationStateProvider];
  v15 = [v14 navigationState];

  if (v15 == 1)
  {
    v4[2](v4);
  }

  else
  {
    v16 = [v4 copy];
    suspendCompletionHandler = self->_suspendCompletionHandler;
    self->_suspendCompletionHandler = v16;

    v18 = [(NavigationSession *)self navigationStateProvider];
    [v18 setNavigationState:1];
  }
}

- (void)resume
{
  v3 = sub_100035E6C();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v4 = self;
  if (!v4)
  {
    v9 = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(NavigationSession *)v4 performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

      goto LABEL_8;
    }
  }

  v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
  v10 = [(NavigationSession *)v4 sessionState];
  v11 = @"NotStarted";
  if (v10 == 1)
  {
    v11 = @"Running";
  }

  *buf = 138543874;
  v18 = v9;
  v19 = 2112;
  v20 = v4;
  if (v10 == 2)
  {
    v11 = @"Suspended";
  }

  v21 = 2112;
  v22 = v11;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ - start requested, state=%@", buf, 0x20u);

LABEL_15:
  v12 = [(NavigationSession *)self navigationStateProvider];
  v13 = [v12 navigationState];

  if (v13 == 2)
  {
    [(NavigationSession *)self _startAutomaticETASharingIfNeeded:GEOConfigGetUInteger()];
    v14 = [(NavigationSession *)self observers];
    [v14 mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];
  }

  else
  {
    v15 = [(NavigationSession *)self configuration];
    v16 = [v15 sharedTripPrefetchContext];
    [SharedTripSuggestionsDataSource prefetchSuggestionsAndCapabilitiesWithContext:v16];

    v14 = [(NavigationSession *)self navigationStateProvider];
    [v14 setNavigationState:2];
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ - remove observer %@", &v7, 0x16u);
  }

  v6 = [(NavigationSession *)self observers];
  [v6 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ - adding observer %@", &v7, 0x16u);
  }

  v6 = [(NavigationSession *)self observers];
  [v6 registerObserver:v4];
}

- (unint64_t)sessionState
{
  v3 = [(NavigationSession *)self navigationStateProvider];
  v4 = [v3 navigationState];

  if (v4 == 1)
  {
    if ([(NavigationSession *)self hasStartedNavigation])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    v5 = 1;
    [(NavigationSession *)self setHasStartedNavigation:1];
  }

  else
  {
    return 0;
  }

  return v5;
}

- (NSString)currentDestinationString
{
  v2 = [(NavigationSession *)self currentRouteCollection];
  v3 = [v2 currentRoute];
  v4 = [v3 destination];
  v5 = [v4 name];

  return v5;
}

- (unint64_t)guidanceType
{
  v2 = [(NavigationSession *)self configuration];
  v3 = [v2 startNavigationDetails];
  v4 = [v3 guidanceType];

  return v4;
}

- (int64_t)navigationType
{
  v2 = [(NavigationSession *)self configuration];
  v3 = [v2 startNavigationDetails];
  v4 = [v3 navigationType];

  return v4;
}

- (void)setRouteCollectionUpdateProvider:(id)a3
{
  v5 = a3;
  routeCollectionUpdateProvider = self->_routeCollectionUpdateProvider;
  if (routeCollectionUpdateProvider != v5)
  {
    v7 = v5;
    [(RouteCollectionUpdateProvider *)routeCollectionUpdateProvider setDelegate:0];
    objc_storeStrong(&self->_routeCollectionUpdateProvider, a3);
    [(RouteCollectionUpdateProvider *)self->_routeCollectionUpdateProvider setDelegate:self];
    v5 = v7;
  }
}

- (void)setNavigationStateProvider:(id)a3
{
  v5 = a3;
  navigationStateProvider = self->_navigationStateProvider;
  if (navigationStateProvider != v5)
  {
    v7 = v5;
    [(NavigationStateProvider *)navigationStateProvider setDelegate:0];
    objc_storeStrong(&self->_navigationStateProvider, a3);
    [(NavigationStateProvider *)self->_navigationStateProvider setDelegate:self];
    v5 = v7;
  }
}

- (GEOComposedWaypoint)destination
{
  v2 = [(NavigationSession *)self currentRouteCollection];
  v3 = [v2 currentRoute];
  v4 = [v3 destination];

  return v4;
}

- (void)dealloc
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(NavigationSession *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ is being deallocated", buf, 0x16u);
  }

  v10 = +[MSPSharedTripService sharedInstance];
  [v10 stopAllSharingWithCompletion:0];

  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  [(MNNavigationService *)self->_navigationService closeForClient:self];
  v11.receiver = self;
  v11.super_class = NavigationSession;
  [(NavigationSession *)&v11 dealloc];
}

- (NavigationSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4 navigationService:(id)a5
{
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = NavigationSession;
  v11 = [(NavigationSession *)&v39 init];
  if (v11)
  {
    v12 = sub_100035E6C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v11->_sessionInitiator = a3;
      objc_storeStrong(&v11->_configuration, a4);
      v23 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NavigationSessionObserver queue:0];
      observers = v11->_observers;
      v11->_observers = v23;

      v25 = [NavdNavigationStateProvider alloc];
      v26 = [(NavigationSessionConfiguration *)v11->_configuration startNavigationDetails];
      v27 = [(NavdNavigationStateProvider *)v25 initWithNavigationService:v10 startNavigationDetails:v26];
      navigationStateProvider = v11->_navigationStateProvider;
      v11->_navigationStateProvider = v27;

      [(NavigationStateProvider *)v11->_navigationStateProvider setDelegate:v11];
      v29 = [NavdRouteCollectionUpdateProvider alloc];
      v30 = [(NavigationSessionConfiguration *)v11->_configuration routeCollection];
      v31 = [(NavdRouteCollectionUpdateProvider *)v29 initWithNavigationService:v10 routeCollection:v30];
      routeCollectionUpdateProvider = v11->_routeCollectionUpdateProvider;
      v11->_routeCollectionUpdateProvider = v31;

      [(RouteCollectionUpdateProvider *)v11->_routeCollectionUpdateProvider setDelegate:v11];
      objc_storeStrong(&v11->_navigationService, a5);
      [(MNNavigationService *)v11->_navigationService openForClient:v11];
      [(MNNavigationService *)v11->_navigationService registerObserver:v11];
      v33 = [_TtC4Maps28NavigationWaypointController alloc];
      v34 = +[MNNavigationService sharedService];
      v35 = [(NavigationWaypointController *)v33 initWithService:v34];
      waypointController = v11->_waypointController;
      v11->_waypointController = v35;

      goto LABEL_13;
    }

    v38 = v9;
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(NavigationSession *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_8;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_8:

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = v20;
    if (a3 - 1 > 7)
    {
      v22 = @"Unknown";
    }

    else
    {
      v22 = *(&off_10162A3A0 + a3 - 1);
    }

    v9 = v38;
    *buf = 138544130;
    v41 = v18;
    v42 = 2112;
    v43 = v20;
    v44 = 2112;
    v45 = v22;
    v46 = 2112;
    v47 = v38;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] %@ is being initialized - initiator=%@ configuration=%@", buf, 0x2Au);

    goto LABEL_12;
  }

LABEL_13:

  return v11;
}

- (NavigationSession)initWithInitiator:(unint64_t)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = +[MNNavigationService sharedService];
  v8 = [(NavigationSession *)self initWithInitiator:a3 configuration:v6 navigationService:v7];

  return v8;
}

@end