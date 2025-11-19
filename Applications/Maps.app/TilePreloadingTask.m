@interface TilePreloadingTask
- (RouteCollection)currentRouteCollection;
- (TilePreloadingTask)initWithNavigationService:(id)a3 carDisplayController:(id)a4;
- (id)traitsForPreloadingSession;
- (void)_clearPreloadingIfNecessary;
- (void)_updateNavServiceWithCurrentRouteCollectionInSession;
- (void)_updateRoutePreloadingAndNavService;
- (void)_updateRoutePreloadingSessionWithCurrentRouteCollectionInSession;
- (void)dealloc;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setObservedNavigationSession:(id)a3;
- (void)setObservedRoutePlanningSession:(id)a3;
- (void)setTileLoadingSession:(id)a3;
@end

@implementation TilePreloadingTask

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = NSStringFromSelector("state");
  if (![v10 isEqualToString:v13])
  {

    goto LABEL_5;
  }

  carDisplayController = self->_carDisplayController;

  if (carDisplayController != v11)
  {
LABEL_5:
    v15.receiver = self;
    v15.super_class = TilePreloadingTask;
    [(TilePreloadingTask *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  [(TilePreloadingTask *)self _updateRoutePreloadingSessionWithCurrentRouteCollectionInSession];
LABEL_6:
}

- (id)traitsForPreloadingSession
{
  v3 = [(TilePreloadingTask *)self observedRoutePlanningSession];
  v4 = [v3 configuration];
  v5 = [v4 traits];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TilePreloadingTask *)self observedNavigationSession];
    v9 = [v8 configuration];
    v7 = [v9 traits];
  }

  return v7;
}

- (RouteCollection)currentRouteCollection
{
  v3 = [(TilePreloadingTask *)self observedRoutePlanningSession];

  if (v3)
  {
    [(TilePreloadingTask *)self observedRoutePlanningSession];
  }

  else
  {
    [(TilePreloadingTask *)self observedNavigationSession];
  }
  v4 = ;
  v5 = [v4 currentRouteCollection];

  return v5;
}

- (void)_updateNavServiceWithCurrentRouteCollectionInSession
{
  v3 = [(TilePreloadingTask *)self currentRouteCollection];
  v7 = v3;
  if (v3)
  {
    v4 = [v3 currentRouteIndex];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(TilePreloadingTask *)self navigationService];
  v6 = [v7 routes];
  [v5 setRoutesForPreview:v6 selectedRouteIndex:v4];
}

- (void)_updateRoutePreloadingSessionWithCurrentRouteCollectionInSession
{
  v3 = [(TilePreloadingTask *)self currentRouteCollection];
  v18 = [v3 currentRoute];

  if (!v18)
  {
    goto LABEL_10;
  }

  v4 = [v18 origin];
  if (([v4 isCurrentLocation] & 1) == 0)
  {

    goto LABEL_10;
  }

  v5 = [v18 isOfflineRoute];

  if (v5)
  {
LABEL_10:
    [(TilePreloadingTask *)self setTileLoadingSession:0];
    goto LABEL_11;
  }

  v6 = [(TilePreloadingTask *)self tileLoadingSession];
  v7 = [v6 route];
  v8 = [v18 isEqual:v7];

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
      v15 = [(TilePreloadingTask *)self overlayManager];
      v16 = [(TilePreloadingTask *)self traitsForPreloadingSession];
      v17 = [(RouteTileLoadingSession *)v14 initWithRoute:v18 overlayManager:v15 traits:v16 options:v9];
      [(TilePreloadingTask *)self setTileLoadingSession:v17];

      goto LABEL_11;
    }
  }

  v10 = [(TilePreloadingTask *)self tileLoadingSession];
  if (v10)
  {
    v11 = v10;
    v12 = [(TilePreloadingTask *)self tileLoadingSession];
    v13 = [v12 options];

    if (v9 != v13)
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

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v7 = a3;
  v8 = [(TilePreloadingTask *)self observedRoutePlanningSession];

  if (v8 != v7)
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

  if ([v7 currentTransportType] == a5)
  {
    [(TilePreloadingTask *)self _updateRoutePreloadingAndNavService];
  }
}

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 == 1)
  {
    [(TilePreloadingTask *)self _updateRoutePreloadingAndNavService];
  }
}

- (void)setTileLoadingSession:(id)a3
{
  v5 = a3;
  tileLoadingSession = self->_tileLoadingSession;
  p_tileLoadingSession = &self->_tileLoadingSession;
  v6 = tileLoadingSession;
  if (tileLoadingSession != v5)
  {
    v9 = v5;
    [(RouteTileLoadingSession *)v6 stop];
    objc_storeStrong(p_tileLoadingSession, a3);
    [(RouteTileLoadingSession *)*p_tileLoadingSession start];
    v5 = v9;
  }
}

- (void)setObservedNavigationSession:(id)a3
{
  v5 = a3;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != v5)
  {
    v7 = v5;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, a3);
    [self->_observedNavigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)setObservedRoutePlanningSession:(id)a3
{
  v5 = a3;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != v5)
  {
    v7 = v5;
    [observedRoutePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_observedRoutePlanningSession, a3);
    [self->_observedRoutePlanningSession registerObserver:self];
    v5 = v7;
  }
}

- (void)_clearPreloadingIfNecessary
{
  v3 = [(TilePreloadingTask *)self observedRoutePlanningSession];
  if (v3)
  {
  }

  else
  {
    v4 = [(TilePreloadingTask *)self observedNavigationSession];

    if (!v4)
    {
      v5 = [(TilePreloadingTask *)self navigationService];
      [v5 setRoutesForPreview:0 selectedRouteIndex:0x7FFFFFFFFFFFFFFFLL];

      v6 = +[UIApplication sharedMapsDelegate];
      v7 = [v6 appSessionController];
      v8 = [v7 currentlyNavigatingPlatformController];

      if (!v8)
      {
        v9 = [(TilePreloadingTask *)self navigationService];
        [v9 stopNavigationWithReason:2];
      }

      [(TilePreloadingTask *)self setTileLoadingSession:0];
    }
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(TilePreloadingTask *)self setObservedRoutePlanningSession:v8];

  v17 = v6;
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
  v11 = [v17 platformController];
  v12 = [v11 chromeViewController];

  v13 = v12;
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

  v16 = [v15 overlayManager];

  [(TilePreloadingTask *)self setOverlayManager:v16];
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

- (TilePreloadingTask)initWithNavigationService:(id)a3 carDisplayController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
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
    objc_storeStrong(&v9->_carDisplayController, a4);
    objc_storeStrong(&v10->_navigationService, a3);
    [(MNNavigationService *)v10->_navigationService openForClient:v10];
    carDisplayController = v10->_carDisplayController;
    v12 = NSStringFromSelector("state");
    [(CarDisplayController *)carDisplayController addObserver:v10 forKeyPath:v12 options:0 context:0];
  }

  return v10;
}

@end