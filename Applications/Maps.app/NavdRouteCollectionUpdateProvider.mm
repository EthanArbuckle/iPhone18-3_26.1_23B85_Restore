@interface NavdRouteCollectionUpdateProvider
- (NavdRouteCollectionUpdateProvider)initWithNavigationService:(id)service routeCollection:(id)collection;
- (RouteCollectionUpdateProviderDelegate)delegate;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics;
- (void)setCurrentRouteCollection:(id)collection;
- (void)updateRoute:(id)route;
@end

@implementation NavdRouteCollectionUpdateProvider

- (RouteCollectionUpdateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics
{
  trafficsCopy = traffics;
  routesCopy = routes;
  currentRouteCollection = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
  v10 = [currentRouteCollection routeCollectionByReplacingAlternateComposedRoutes:routesCopy withTraffics:trafficsCopy];

  [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v10];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if ((MNNavigationServiceStateIsNavigating() & 1) == 0)
  {
    IsNavigating = MNNavigationServiceStateIsNavigating();
    if (toState == 3 || IsNavigating)
    {
      v8 = sub_10068E924();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] State changed to active guidance", &v14, 0xCu);
      }

      v9 = +[NSMutableArray array];
      route = [(MNNavigationService *)self->_navigationService route];
      if (route)
      {
        [v9 addObject:route];
        alternateRoutes = [(MNNavigationService *)self->_navigationService alternateRoutes];
        [v9 addObjectsFromArray:alternateRoutes];

        v12 = [[RouteCollection alloc] initWithRoutes:v9 currentRouteIndex:0];
        [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v12];
      }

      else
      {
        v12 = sub_10068E924();
        if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_FAULT))
        {
          navigationService = self->_navigationService;
          v14 = 134349314;
          selfCopy2 = self;
          v16 = 2112;
          v17 = navigationService;
          _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_FAULT, "[%{public}p] MNNavigationService (%@) does not have a route", &v14, 0x16u);
        }
      }
    }
  }
}

- (void)setCurrentRouteCollection:(id)collection
{
  collectionCopy = collection;
  v6 = self->_currentRouteCollection;
  v7 = collectionCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_10068E924();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        shortDescription = [v7 shortDescription];
        v12 = 134349314;
        selfCopy = self;
        v14 = 2112;
        v15 = shortDescription;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating route collection: %@", &v12, 0x16u);
      }

      objc_storeStrong(&self->_currentRouteCollection, collection);
      delegate = [(NavdRouteCollectionUpdateProvider *)self delegate];
      [delegate routeCollectionUpdateProvider:self didUpdateRouteCollection:self->_currentRouteCollection];
    }
  }
}

- (void)updateRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    currentRouteCollection = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
    v6 = [currentRouteCollection indexOfRoute:routeCopy];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      currentRouteCollection2 = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
      v11 = [currentRouteCollection2 routeCollectionByChangingCurrentRouteIndex:v6];
      [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v11];

      goto LABEL_8;
    }

    v7 = [RouteCollection alloc];
    v12 = routeCopy;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [(RouteCollection *)v7 initWithRoutes:v8 currentRouteIndex:0];

    [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v9];
  }

  else
  {
    v9 = sub_10068E924();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] updateRoute: received nil route", buf, 0xCu);
    }
  }

LABEL_8:
}

- (void)dealloc
{
  v3 = sub_10068E924();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  navigationService = [(NavdRouteCollectionUpdateProvider *)self navigationService];
  [navigationService unregisterObserver:self];

  navigationService2 = [(NavdRouteCollectionUpdateProvider *)self navigationService];
  [navigationService2 closeForClient:self];

  v6.receiver = self;
  v6.super_class = NavdRouteCollectionUpdateProvider;
  [(NavdRouteCollectionUpdateProvider *)&v6 dealloc];
}

- (NavdRouteCollectionUpdateProvider)initWithNavigationService:(id)service routeCollection:(id)collection
{
  serviceCopy = service;
  collectionCopy = collection;
  v23.receiver = self;
  v23.super_class = NavdRouteCollectionUpdateProvider;
  v9 = [(NavdRouteCollectionUpdateProvider *)&v23 init];
  if (v9)
  {
    v10 = sub_10068E924();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v9->_navigationService, service);
    route = [(MNNavigationService *)v9->_navigationService route];

    if (route)
    {
      route2 = [(MNNavigationService *)v9->_navigationService route];
      v13 = [NSMutableArray arrayWithObject:route2];

      alternateRoutes = [(MNNavigationService *)v9->_navigationService alternateRoutes];
      [v13 addObjectsFromArray:alternateRoutes];

      v15 = [[RouteCollection alloc] initWithRoutes:v13 currentRouteIndex:0];
      currentRouteCollection = v9->_currentRouteCollection;
      v9->_currentRouteCollection = v15;

      v17 = sub_10068E924();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v9->_currentRouteCollection;
        *buf = 134349314;
        v25 = v9;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] navd already has a route; using it: %@", buf, 0x16u);
      }
    }

    else
    {
      objc_storeStrong(&v9->_currentRouteCollection, collection);
      v13 = sub_10068E924();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = v9->_currentRouteCollection;
        *buf = 134349314;
        v25 = v9;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] using provided route collection: %@", buf, 0x16u);
      }
    }

    if (collectionCopy && ![v9->_currentRouteCollection isEqual:collectionCopy])
    {
      v20 = sub_10068E924();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v9->_currentRouteCollection;
        *buf = 134349570;
        v25 = v9;
        v26 = 2112;
        v27 = collectionCopy;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] route collections don't match: routeCollection=%@, _currentRouteCollection=%@", buf, 0x20u);
      }
    }

    [(MNNavigationService *)v9->_navigationService registerObserver:v9];
    [(MNNavigationService *)v9->_navigationService openForClient:v9];
  }

  return v9;
}

@end