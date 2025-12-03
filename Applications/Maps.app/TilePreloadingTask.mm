@interface TilePreloadingTask
- (RouteCollection)currentRouteCollection;
- (TilePreloadingTask)initWithNavigationService:(id)service carDisplayController:(id)controller;
- (id)traitsForPreloadingSession;
- (void)_clearPreloadingIfNecessary;
- (void)_updateNavServiceWithCurrentRouteCollectionInSession;
- (void)_updateRoutePreloadingAndNavService;
- (void)_updateRoutePreloadingSessionWithCurrentRouteCollectionInSession;
- (void)dealloc;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setObservedNavigationSession:(id)session;
- (void)setObservedRoutePlanningSession:(id)session;
- (void)setTileLoadingSession:(id)session;
@end

@implementation TilePreloadingTask

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = NSStringFromSelector("state");
  if (![pathCopy isEqualToString:v13])
  {

    goto LABEL_5;
  }

  carDisplayController = self->_carDisplayController;

  if (carDisplayController != objectCopy)
  {
LABEL_5:
    v15.receiver = self;
    v15.super_class = TilePreloadingTask;
    [(TilePreloadingTask *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  [(TilePreloadingTask *)self _updateRoutePreloadingSessionWithCurrentRouteCollectionInSession];
LABEL_6:
}

- (id)traitsForPreloadingSession
{
  observedRoutePlanningSession = [(TilePreloadingTask *)self observedRoutePlanningSession];
  configuration = [observedRoutePlanningSession configuration];
  traits = [configuration traits];
  v6 = traits;
  if (traits)
  {
    traits2 = traits;
  }

  else
  {
    observedNavigationSession = [(TilePreloadingTask *)self observedNavigationSession];
    configuration2 = [observedNavigationSession configuration];
    traits2 = [configuration2 traits];
  }

  return traits2;
}

- (RouteCollection)currentRouteCollection
{
  observedRoutePlanningSession = [(TilePreloadingTask *)self observedRoutePlanningSession];

  if (observedRoutePlanningSession)
  {
    [(TilePreloadingTask *)self observedRoutePlanningSession];
  }

  else
  {
    [(TilePreloadingTask *)self observedNavigationSession];
  }
  v4 = ;
  currentRouteCollection = [v4 currentRouteCollection];

  return currentRouteCollection;
}

- (void)_updateNavServiceWithCurrentRouteCollectionInSession
{
  currentRouteCollection = [(TilePreloadingTask *)self currentRouteCollection];
  v7 = currentRouteCollection;
  if (currentRouteCollection)
  {
    currentRouteIndex = [currentRouteCollection currentRouteIndex];
  }

  else
  {
    currentRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  navigationService = [(TilePreloadingTask *)self navigationService];
  routes = [v7 routes];
  [navigationService setRoutesForPreview:routes selectedRouteIndex:currentRouteIndex];
}

- (void)_updateRoutePreloadingSessionWithCurrentRouteCollectionInSession
{
  currentRouteCollection = [(TilePreloadingTask *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  if (!currentRoute)
  {
    goto LABEL_10;
  }

  origin = [currentRoute origin];
  if (([origin isCurrentLocation] & 1) == 0)
  {

    goto LABEL_10;
  }

  isOfflineRoute = [currentRoute isOfflineRoute];

  if (isOfflineRoute)
  {
LABEL_10:
    [(TilePreloadingTask *)self setTileLoadingSession:0];
    goto LABEL_11;
  }

  tileLoadingSession = [(TilePreloadingTask *)self tileLoadingSession];
  route = [tileLoadingSession route];
  v8 = [currentRoute isEqual:route];

  if ((GEOConfigGetBOOL() & 1) == 0 && [(CarDisplayController *)self->_carDisplayController state]== 2 || GEOConfigGetBOOL())
  {
    v9 = 1;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!v8)
    {
LABEL_17:
      v14 = [RouteTileLoadingSession alloc];
      overlayManager = [(TilePreloadingTask *)self overlayManager];
      traitsForPreloadingSession = [(TilePreloadingTask *)self traitsForPreloadingSession];
      v17 = [(RouteTileLoadingSession *)v14 initWithRoute:currentRoute overlayManager:overlayManager traits:traitsForPreloadingSession options:v9];
      [(TilePreloadingTask *)self setTileLoadingSession:v17];

      goto LABEL_11;
    }
  }

  tileLoadingSession2 = [(TilePreloadingTask *)self tileLoadingSession];
  if (tileLoadingSession2)
  {
    v11 = tileLoadingSession2;
    tileLoadingSession3 = [(TilePreloadingTask *)self tileLoadingSession];
    options = [tileLoadingSession3 options];

    if (v9 != options)
    {
      goto LABEL_17;
    }
  }

LABEL_11:
}

- (void)_updateRoutePreloadingAndNavService
{
  [(TilePreloadingTask *)self _updateNavServiceWithCurrentRouteCollectionInSession];

  [(TilePreloadingTask *)self _updateRoutePreloadingSessionWithCurrentRouteCollectionInSession];
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  sessionCopy = session;
  observedRoutePlanningSession = [(TilePreloadingTask *)self observedRoutePlanningSession];

  if (observedRoutePlanningSession != sessionCopy)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[TilePreloadingTask routePlanningSession:didUpdateRouteCollectionResult:forTransportType:]";
      v14 = 2080;
      v15 = "TilePreloadingTask.m";
      v16 = 1024;
      v17 = 159;
      v18 = 2080;
      v19 = "session == self.observedRoutePlanningSession";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }
  }

  if ([sessionCopy currentTransportType] == type)
  {
    [(TilePreloadingTask *)self _updateRoutePreloadingAndNavService];
  }
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  if (state == 1)
  {
    [(TilePreloadingTask *)self _updateRoutePreloadingAndNavService];
  }
}

- (void)setTileLoadingSession:(id)session
{
  sessionCopy = session;
  tileLoadingSession = self->_tileLoadingSession;
  p_tileLoadingSession = &self->_tileLoadingSession;
  v6 = tileLoadingSession;
  if (tileLoadingSession != sessionCopy)
  {
    v9 = sessionCopy;
    [(RouteTileLoadingSession *)v6 stop];
    objc_storeStrong(p_tileLoadingSession, session);
    [(RouteTileLoadingSession *)*p_tileLoadingSession start];
    sessionCopy = v9;
  }
}

- (void)setObservedNavigationSession:(id)session
{
  sessionCopy = session;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, session);
    [self->_observedNavigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setObservedRoutePlanningSession:(id)session
{
  sessionCopy = session;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [observedRoutePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_observedRoutePlanningSession, session);
    [self->_observedRoutePlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)_clearPreloadingIfNecessary
{
  observedRoutePlanningSession = [(TilePreloadingTask *)self observedRoutePlanningSession];
  if (observedRoutePlanningSession)
  {
  }

  else
  {
    observedNavigationSession = [(TilePreloadingTask *)self observedNavigationSession];

    if (!observedNavigationSession)
    {
      navigationService = [(TilePreloadingTask *)self navigationService];
      [navigationService setRoutesForPreview:0 selectedRouteIndex:0x7FFFFFFFFFFFFFFFLL];

      v6 = +[UIApplication sharedMapsDelegate];
      appSessionController = [v6 appSessionController];
      currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];

      if (!currentlyNavigatingPlatformController)
      {
        navigationService2 = [(TilePreloadingTask *)self navigationService];
        [navigationService2 stopNavigationWithReason:2];
      }

      [(TilePreloadingTask *)self setTileLoadingSession:0];
    }
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = toSessionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(TilePreloadingTask *)self setObservedRoutePlanningSession:v8];

  v17 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v17;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(TilePreloadingTask *)self setObservedNavigationSession:v10];
  platformController = [v17 platformController];
  chromeViewController = [platformController chromeViewController];

  v13 = chromeViewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  overlayManager = [v15 overlayManager];

  [(TilePreloadingTask *)self setOverlayManager:overlayManager];
  [(TilePreloadingTask *)self _clearPreloadingIfNecessary];
}

- (void)dealloc
{
  carDisplayController = self->_carDisplayController;
  v4 = NSStringFromSelector("state");
  [(CarDisplayController *)carDisplayController removeObserver:self forKeyPath:v4 context:0];

  [(MNNavigationService *)self->_navigationService closeForClient:self];
  v5.receiver = self;
  v5.super_class = TilePreloadingTask;
  [(TilePreloadingTask *)&v5 dealloc];
}

- (TilePreloadingTask)initWithNavigationService:(id)service carDisplayController:(id)controller
{
  serviceCopy = service;
  controllerCopy = controller;
  if (!serviceCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[TilePreloadingTask initWithNavigationService:carDisplayController:]";
      v20 = 2080;
      v21 = "TilePreloadingTask.m";
      v22 = 1024;
      v23 = 53;
      v24 = 2080;
      v25 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = TilePreloadingTask;
  v9 = [(TilePreloadingTask *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_carDisplayController, controller);
    objc_storeStrong(&v10->_navigationService, service);
    [(MNNavigationService *)v10->_navigationService openForClient:v10];
    carDisplayController = v10->_carDisplayController;
    v12 = NSStringFromSelector("state");
    [(CarDisplayController *)carDisplayController addObserver:v10 forKeyPath:v12 options:0 context:0];
  }

  return v10;
}

@end