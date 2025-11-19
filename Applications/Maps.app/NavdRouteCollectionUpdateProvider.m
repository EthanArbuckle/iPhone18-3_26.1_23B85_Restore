@interface NavdRouteCollectionUpdateProvider
- (NavdRouteCollectionUpdateProvider)initWithNavigationService:(id)a3 routeCollection:(id)a4;
- (RouteCollectionUpdateProviderDelegate)delegate;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5;
- (void)setCurrentRouteCollection:(id)a3;
- (void)updateRoute:(id)a3;
@end

@implementation NavdRouteCollectionUpdateProvider

- (RouteCollectionUpdateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
  v10 = [v9 routeCollectionByReplacingAlternateComposedRoutes:v8 withTraffics:v7];

  [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v10];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if ((MNNavigationServiceStateIsNavigating() & 1) == 0)
  {
    IsNavigating = MNNavigationServiceStateIsNavigating();
    if (a5 == 3 || IsNavigating)
    {
      v8 = sub_10068E924();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134349056;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] State changed to active guidance", &v14, 0xCu);
      }

      v9 = +[NSMutableArray array];
      v10 = [(MNNavigationService *)self->_navigationService route];
      if (v10)
      {
        [v9 addObject:v10];
        v11 = [(MNNavigationService *)self->_navigationService alternateRoutes];
        [v9 addObjectsFromArray:v11];

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
          v15 = self;
          v16 = 2112;
          v17 = navigationService;
          _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_FAULT, "[%{public}p] MNNavigationService (%@) does not have a route", &v14, 0x16u);
        }
      }
    }
  }
}

- (void)setCurrentRouteCollection:(id)a3
{
  v5 = a3;
  v6 = self->_currentRouteCollection;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_10068E924();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 shortDescription];
        v12 = 134349314;
        v13 = self;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating route collection: %@", &v12, 0x16u);
      }

      objc_storeStrong(&self->_currentRouteCollection, a3);
      v11 = [(NavdRouteCollectionUpdateProvider *)self delegate];
      [v11 routeCollectionUpdateProvider:self didUpdateRouteCollection:self->_currentRouteCollection];
    }
  }
}

- (void)updateRoute:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
    v6 = [v5 indexOfRoute:v4];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NavdRouteCollectionUpdateProvider *)self currentRouteCollection];
      v11 = [v10 routeCollectionByChangingCurrentRouteIndex:v6];
      [(NavdRouteCollectionUpdateProvider *)self setCurrentRouteCollection:v11];

      goto LABEL_8;
    }

    v7 = [RouteCollection alloc];
    v12 = v4;
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
      v14 = self;
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
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = [(NavdRouteCollectionUpdateProvider *)self navigationService];
  [v4 unregisterObserver:self];

  v5 = [(NavdRouteCollectionUpdateProvider *)self navigationService];
  [v5 closeForClient:self];

  v6.receiver = self;
  v6.super_class = NavdRouteCollectionUpdateProvider;
  [(NavdRouteCollectionUpdateProvider *)&v6 dealloc];
}

- (NavdRouteCollectionUpdateProvider)initWithNavigationService:(id)a3 routeCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_navigationService, a3);
    v11 = [(MNNavigationService *)v9->_navigationService route];

    if (v11)
    {
      v12 = [(MNNavigationService *)v9->_navigationService route];
      v13 = [NSMutableArray arrayWithObject:v12];

      v14 = [(MNNavigationService *)v9->_navigationService alternateRoutes];
      [v13 addObjectsFromArray:v14];

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
      objc_storeStrong(&v9->_currentRouteCollection, a4);
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

    if (v8 && ![v9->_currentRouteCollection isEqual:v8])
    {
      v20 = sub_10068E924();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v9->_currentRouteCollection;
        *buf = 134349570;
        v25 = v9;
        v26 = 2112;
        v27 = v8;
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