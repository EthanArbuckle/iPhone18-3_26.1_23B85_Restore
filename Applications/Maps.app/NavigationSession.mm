@interface NavigationSession
- (GEOComposedWaypoint)destination;
- (NSString)currentDestinationString;
- (NavigationSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration;
- (NavigationSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration navigationService:(id)service;
- (PlatformController)platformController;
- (RouteCollection)currentRouteCollection;
- (int64_t)currentTransportType;
- (int64_t)navigationType;
- (unint64_t)guidanceType;
- (unint64_t)sessionState;
- (void)_retryAutomaticSharing:(id)sharing;
- (void)_scheduleAutomaticSharingRetry:(unint64_t)retry;
- (void)_startAutomaticETASharingIfNeeded:(unint64_t)needed;
- (void)cleanupStateReplay;
- (void)dealloc;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationStateProvider:(id)provider didChangeNavigationState:(unint64_t)state;
- (void)prepareToReplayCurrentState;
- (void)registerObserver:(id)observer;
- (void)replayCurrentState;
- (void)resume;
- (void)routeCollectionUpdateProvider:(id)provider didUpdateRouteCollection:(id)collection;
- (void)selectRoute:(id)route;
- (void)setNavigationStateProvider:(id)provider;
- (void)setRouteCollectionUpdateProvider:(id)provider;
- (void)suspendWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation NavigationSession

- (int64_t)currentTransportType
{
  currentRouteCollection = [(NavigationSession *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  v4 = [currentRoute transportType] - 1;
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
  routeCollectionUpdateProvider = [(NavigationSession *)self routeCollectionUpdateProvider];
  currentRouteCollection = [routeCollectionUpdateProvider currentRouteCollection];

  return currentRouteCollection;
}

- (void)selectRoute:(id)route
{
  routeCopy = route;
  v4 = +[MNNavigationService sharedService];
  [v4 switchToRoute:routeCopy];
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)routeCollectionUpdateProvider:(id)provider didUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    shortDescription = [collectionCopy shortDescription];
    v9 = 138412547;
    selfCopy = self;
    v11 = 2113;
    v12 = shortDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ - routeCollection updated collection=%{private}@", &v9, 0x16u);
  }

  observers = [(NavigationSession *)self observers];
  [observers navigationSession:self didUpdateRouteCollection:collectionCopy];
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  v8 = [(NavigationSession *)self observers:service];
  if ((type - 1) > 5)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_101216278[type - 1];
  }

  v10 = v8;
  [v8 navigationSession:self didChangeCurrentTransportType:v9];
}

- (void)navigationStateProvider:(id)provider didChangeNavigationState:(unint64_t)state
{
  v6 = sub_100035E6C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(NavigationSession *)selfCopy performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

LABEL_10:
  sessionState = [(NavigationSession *)selfCopy sessionState];
  v14 = @"NotStarted";
  if (sessionState == 1)
  {
    v14 = @"Running";
  }

  *buf = 138543874;
  v20 = selfCopy;
  v21 = 2112;
  v22 = selfCopy;
  if (sessionState == 2)
  {
    v14 = @"Suspended";
  }

  v23 = 2112;
  v24 = v14;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] %@ - state updated state=%@", buf, 0x20u);

LABEL_15:
  if (state != 2)
  {
    if (state == 1)
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
    observers = [(NavigationSession *)self observers];
    [observers mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];
  }
}

- (void)_retryAutomaticSharing:(id)sharing
{
  userInfo = [sharing userInfo];
  [(NSTimer *)self->_automaticSharingRetryTimer invalidate];
  automaticSharingRetryTimer = self->_automaticSharingRetryTimer;
  self->_automaticSharingRetryTimer = 0;

  v6 = [userInfo objectForKeyedSubscript:@"retries"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = sub_100035E6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    v12 = unsignedIntegerValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ - performing scheduled retry of automatic sharing, %lu remaining retries", &v9, 0x16u);
  }

  [(NavigationSession *)self _startAutomaticETASharingIfNeeded:unsignedIntegerValue];
}

- (void)_scheduleAutomaticSharingRetry:(unint64_t)retry
{
  if (!self->_automaticSharingRetryTimer)
  {
    GEOConfigGetDouble();
    v6 = v5;
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = self;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      retryCopy = retry;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ - scheduling automatic sharing in %#.1fs, %lu remaining retries", buf, 0x20u);
    }

    v8 = [NSNumber numberWithUnsignedInteger:retry, @"retries"];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [NSTimer scheduledTimerWithTimeInterval:self target:"_retryAutomaticSharing:" selector:v9 userInfo:0 repeats:v6];
    automaticSharingRetryTimer = self->_automaticSharingRetryTimer;
    self->_automaticSharingRetryTimer = v10;
  }
}

- (void)_startAutomaticETASharingIfNeeded:(unint64_t)needed
{
  navigationStateProvider = [(NavigationSession *)self navigationStateProvider];
  navigationState = [navigationStateProvider navigationState];

  if (navigationState != 2)
  {
    v19 = sub_100035E6C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    selfCopy5 = self;
    v20 = "%@ - will not start automatic sharing, navigation not active";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  currentTransportType = [(NavigationSession *)self currentTransportType];
  if ((MSPSharedTripSharingSupportedForTransportType() & 1) == 0)
  {
    v19 = sub_100035E6C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    if ((currentTransportType - 1) > 4)
    {
      v24 = @"Undefined";
    }

    else
    {
      v24 = *(&off_10162A3E0 + currentTransportType - 1);
    }

    *buf = 138412546;
    selfCopy5 = self;
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
    configuration = [(NavigationSession *)self configuration];
    sharedTripPrefetchContext = [configuration sharedTripPrefetchContext];

    automaticSharingContacts = [sharedTripPrefetchContext automaticSharingContacts];
    v12 = automaticSharingContacts;
    if (!automaticSharingContacts)
    {
      automaticSharingContacts = &__NSArray0__struct;
    }

    v13 = [automaticSharingContacts mutableCopy];
    v14 = self->_pendingAutomaticSharingContacts;
    self->_pendingAutomaticSharingContacts = v13;

    v15 = sub_100035E6C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(NSMutableArray *)self->_pendingAutomaticSharingContacts count];
      *buf = 138412546;
      selfCopy5 = self;
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
    selfCopy5 = self;
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
    selfCopy5 = self;
    v30 = 2113;
    v31 = v17;
    v32 = 2048;
    neededCopy = needed;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ - will start automatic sharing with %{private}@, remaining retries %lu", buf, 0x20u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1007C68C8;
  v25[3] = &unk_10162A380;
  v26 = v17;
  neededCopy2 = needed;
  v25[4] = self;
  v19 = v17;
  [v19 enumerateObjectsWithOptions:1 usingBlock:v25];

LABEL_24:
}

- (void)cleanupStateReplay
{
  observers = [(NavigationSession *)self observers];
  [observers clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  observers = [(NavigationSession *)self observers];
  [observers removeSnapshottedObservers];

  observers2 = [(NavigationSession *)self observers];
  [observers2 mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];

  observers3 = [(NavigationSession *)self observers];
  [observers3 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  observers = [(NavigationSession *)self observers];
  [observers snapshotCurrentObservers];
}

- (void)suspendWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100035E6C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(NavigationSession *)selfCopy performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
  sessionState = [(NavigationSession *)selfCopy sessionState];
  v13 = @"NotStarted";
  if (sessionState == 1)
  {
    v13 = @"Running";
  }

  *buf = 138543874;
  v20 = selfCopy;
  v21 = 2112;
  v22 = selfCopy;
  if (sessionState == 2)
  {
    v13 = @"Suspended";
  }

  v23 = 2112;
  v24 = v13;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %@ - suspend requested, state=%@", buf, 0x20u);

LABEL_15:
  navigationStateProvider = [(NavigationSession *)self navigationStateProvider];
  navigationState = [navigationStateProvider navigationState];

  if (navigationState == 1)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v16 = [completionCopy copy];
    suspendCompletionHandler = self->_suspendCompletionHandler;
    self->_suspendCompletionHandler = v16;

    navigationStateProvider2 = [(NavigationSession *)self navigationStateProvider];
    [navigationStateProvider2 setNavigationState:1];
  }
}

- (void)resume
{
  v3 = sub_100035E6C();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(NavigationSession *)selfCopy performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
  sessionState = [(NavigationSession *)selfCopy sessionState];
  v11 = @"NotStarted";
  if (sessionState == 1)
  {
    v11 = @"Running";
  }

  *buf = 138543874;
  v18 = selfCopy;
  v19 = 2112;
  v20 = selfCopy;
  if (sessionState == 2)
  {
    v11 = @"Suspended";
  }

  v21 = 2112;
  v22 = v11;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ - start requested, state=%@", buf, 0x20u);

LABEL_15:
  navigationStateProvider = [(NavigationSession *)self navigationStateProvider];
  navigationState = [navigationStateProvider navigationState];

  if (navigationState == 2)
  {
    [(NavigationSession *)self _startAutomaticETASharingIfNeeded:GEOConfigGetUInteger()];
    observers = [(NavigationSession *)self observers];
    [observers mapsSession:self didChangeState:{-[NavigationSession sessionState](self, "sessionState")}];
  }

  else
  {
    configuration = [(NavigationSession *)self configuration];
    sharedTripPrefetchContext = [configuration sharedTripPrefetchContext];
    [SharedTripSuggestionsDataSource prefetchSuggestionsAndCapabilitiesWithContext:sharedTripPrefetchContext];

    observers = [(NavigationSession *)self navigationStateProvider];
    [observers setNavigationState:2];
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ - remove observer %@", &v7, 0x16u);
  }

  observers = [(NavigationSession *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ - adding observer %@", &v7, 0x16u);
  }

  observers = [(NavigationSession *)self observers];
  [observers registerObserver:observerCopy];
}

- (unint64_t)sessionState
{
  navigationStateProvider = [(NavigationSession *)self navigationStateProvider];
  navigationState = [navigationStateProvider navigationState];

  if (navigationState == 1)
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

  else if (navigationState == 2)
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
  currentRouteCollection = [(NavigationSession *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  destination = [currentRoute destination];
  name = [destination name];

  return name;
}

- (unint64_t)guidanceType
{
  configuration = [(NavigationSession *)self configuration];
  startNavigationDetails = [configuration startNavigationDetails];
  guidanceType = [startNavigationDetails guidanceType];

  return guidanceType;
}

- (int64_t)navigationType
{
  configuration = [(NavigationSession *)self configuration];
  startNavigationDetails = [configuration startNavigationDetails];
  navigationType = [startNavigationDetails navigationType];

  return navigationType;
}

- (void)setRouteCollectionUpdateProvider:(id)provider
{
  providerCopy = provider;
  routeCollectionUpdateProvider = self->_routeCollectionUpdateProvider;
  if (routeCollectionUpdateProvider != providerCopy)
  {
    v7 = providerCopy;
    [(RouteCollectionUpdateProvider *)routeCollectionUpdateProvider setDelegate:0];
    objc_storeStrong(&self->_routeCollectionUpdateProvider, provider);
    [(RouteCollectionUpdateProvider *)self->_routeCollectionUpdateProvider setDelegate:self];
    providerCopy = v7;
  }
}

- (void)setNavigationStateProvider:(id)provider
{
  providerCopy = provider;
  navigationStateProvider = self->_navigationStateProvider;
  if (navigationStateProvider != providerCopy)
  {
    v7 = providerCopy;
    [(NavigationStateProvider *)navigationStateProvider setDelegate:0];
    objc_storeStrong(&self->_navigationStateProvider, provider);
    [(NavigationStateProvider *)self->_navigationStateProvider setDelegate:self];
    providerCopy = v7;
  }
}

- (GEOComposedWaypoint)destination
{
  currentRouteCollection = [(NavigationSession *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  destination = [currentRoute destination];

  return destination;
}

- (void)dealloc
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(NavigationSession *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2112;
    v15 = selfCopy;
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

- (NavigationSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration navigationService:(id)service
{
  configurationCopy = configuration;
  serviceCopy = service;
  v39.receiver = self;
  v39.super_class = NavigationSession;
  v11 = [(NavigationSession *)&v39 init];
  if (v11)
  {
    v12 = sub_100035E6C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v11->_sessionInitiator = initiator;
      objc_storeStrong(&v11->_configuration, configuration);
      v23 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NavigationSessionObserver queue:0];
      observers = v11->_observers;
      v11->_observers = v23;

      v25 = [NavdNavigationStateProvider alloc];
      startNavigationDetails = [(NavigationSessionConfiguration *)v11->_configuration startNavigationDetails];
      v27 = [(NavdNavigationStateProvider *)v25 initWithNavigationService:serviceCopy startNavigationDetails:startNavigationDetails];
      navigationStateProvider = v11->_navigationStateProvider;
      v11->_navigationStateProvider = v27;

      [(NavigationStateProvider *)v11->_navigationStateProvider setDelegate:v11];
      v29 = [NavdRouteCollectionUpdateProvider alloc];
      routeCollection = [(NavigationSessionConfiguration *)v11->_configuration routeCollection];
      v31 = [(NavdRouteCollectionUpdateProvider *)v29 initWithNavigationService:serviceCopy routeCollection:routeCollection];
      routeCollectionUpdateProvider = v11->_routeCollectionUpdateProvider;
      v11->_routeCollectionUpdateProvider = v31;

      [(RouteCollectionUpdateProvider *)v11->_routeCollectionUpdateProvider setDelegate:v11];
      objc_storeStrong(&v11->_navigationService, service);
      [(MNNavigationService *)v11->_navigationService openForClient:v11];
      [(MNNavigationService *)v11->_navigationService registerObserver:v11];
      v33 = [_TtC4Maps28NavigationWaypointController alloc];
      v34 = +[MNNavigationService sharedService];
      v35 = [(NavigationWaypointController *)v33 initWithService:v34];
      waypointController = v11->_waypointController;
      v11->_waypointController = v35;

      goto LABEL_13;
    }

    v38 = configurationCopy;
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
    if (initiator - 1 > 7)
    {
      v22 = @"Unknown";
    }

    else
    {
      v22 = *(&off_10162A3A0 + initiator - 1);
    }

    configurationCopy = v38;
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

- (NavigationSession)initWithInitiator:(unint64_t)initiator configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = +[MNNavigationService sharedService];
  v8 = [(NavigationSession *)self initWithInitiator:initiator configuration:configurationCopy navigationService:v7];

  return v8;
}

@end