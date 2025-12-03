@interface RouteTileLoadingSession
- (RouteTileLoadingSession)initWithRoute:(id)route overlayManager:(id)manager traits:(id)traits options:(unint64_t)options;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (void)_tilesFlushed;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)routePreloader:(uint64_t)preloader failedToLoadTileKey:(__int128 *)key error:;
- (void)routePreloader:(void *)preloader loadedTileKey:(__int128 *)key source:(uint64_t)source;
- (void)start;
- (void)stop;
@end

@implementation RouteTileLoadingSession

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  overlayCopy = overlay;
  v8 = overlayCopy;
  if (self->_debugOverlay == overlayCopy)
  {
    debugOverlayRenderer = self->_debugOverlayRenderer;
    if (!debugOverlayRenderer)
    {
      v11 = [[RouteTileLoadingDebugOverlayRenderer alloc] initWithOverlay:overlayCopy];
      v12 = self->_debugOverlayRenderer;
      self->_debugOverlayRenderer = v11;

      debugOverlayRenderer = self->_debugOverlayRenderer;
    }

    v13 = debugOverlayRenderer;
  }

  else
  {
    if (self->_cellularCoverageOverlay != overlayCopy)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v13 = [[RouteCellularCoverageDebugOverlayRenderer alloc] initWithOverlay:overlayCopy];
  }

  v9 = v13;
LABEL_9:

  return v9;
}

- (void)routePreloader:(uint64_t)preloader failedToLoadTileKey:(__int128 *)key error:
{
  if (*(self + 24) == 1)
  {
    v10 = v4;
    v11 = v5;
    [*(self + 32) addFailedKey:key];
    v9 = *key;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EA6C18;
    block[3] = &unk_1016575B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)routePreloader:(void *)preloader loadedTileKey:(__int128 *)key source:(uint64_t)source
{
  preloaderCopy = preloader;
  if (*(self + 24) == 1)
  {
    v9 = *(self + 32);
    if (source == 2)
    {
      [v9 addLoadedTileKey:key];
    }

    else
    {
      [v9 addCachedTileKey:key];
    }

    v11 = *key;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EA6D24;
    block[3] = &unk_1016575B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  lastLocation = [location lastLocation];
  _navigation_routeMatch = [lastLocation _navigation_routeMatch];

  v5 = _navigation_routeMatch;
  if (_navigation_routeMatch)
  {
    [(GEORoutePreloader *)self->_preloader updateWithRouteMatch:_navigation_routeMatch];
    v5 = _navigation_routeMatch;
  }
}

- (void)_tilesFlushed
{
  [(GEORoutePreloader *)self->_preloader stop];
  preloader = self->_preloader;

  [(GEORoutePreloader *)preloader start];
}

- (void)stop
{
  if (!self->_preloader)
  {
    v3 = sub_100EA6F40();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Stopping route preloading that wasn't started", v9, 2u);
    }
  }

  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopListeningForLocationUpdates:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self->_preloader];

  [(GEORoutePreloader *)self->_preloader stop];
  [(GEORoutePreloader *)self->_preloader tearDown];
  preloader = self->_preloader;
  self->_preloader = 0;

  if (self->_drawDebugOverlay)
  {
    debugOverlay = self->_debugOverlay;
    if (debugOverlay)
    {
      [(OverlayManager *)self->_overlayManager removeOverlay:debugOverlay fromProvider:self];
    }

    cellularCoverageOverlay = self->_cellularCoverageOverlay;
    if (cellularCoverageOverlay)
    {
      [(OverlayManager *)self->_overlayManager removeOverlay:cellularCoverageOverlay fromProvider:self];
    }

    [(OverlayManager *)self->_overlayManager removeOverlayProvider:self];
  }
}

- (void)start
{
  if (self->_preloader)
  {
    v2 = sub_100EA6F40();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v28 = 0;
      v3 = "Attempted to start while already preloading";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, v3, &v28, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (![(GEOComposedRoute *)self->_route isOfflineRoute])
  {
    if (self->_drawDebugOverlay)
    {
      [(OverlayManager *)self->_overlayManager addOverlayProvider:self];
      v5 = objc_alloc_init(RouteTileLoadingDebugOverlay);
      debugOverlay = self->_debugOverlay;
      self->_debugOverlay = v5;

      [(OverlayManager *)self->_overlayManager addOverlay:self->_debugOverlay level:0 fromProvider:self];
      v7 = [RouteCellularCoverageDebugOverlay alloc];
      route = [(RouteTileLoadingSession *)self route];
      v9 = [(RouteCellularCoverageDebugOverlay *)v7 initWithRoute:route];
      cellularCoverageOverlay = self->_cellularCoverageOverlay;
      self->_cellularCoverageOverlay = v9;

      [(OverlayManager *)self->_overlayManager addOverlay:self->_cellularCoverageOverlay level:1 fromProvider:self];
    }

    route2 = [(RouteTileLoadingSession *)self route];
    transportType = [route2 transportType];

    if (transportType == 1)
    {
      v13 = objc_alloc_init(GEOTransitRoutePreloadStrategy);
      [v13 addTileSetStyle:1 betweenZoom:11 andZoom:15];
      [v13 addTileSetStyle:11 betweenZoom:11 andZoom:15];
      [v13 addTileSetStyle:13 betweenZoom:11 andZoom:15];
      [v13 addTileSetStyle:37 betweenZoom:11 andZoom:15];
      [v13 setTraits:self->_traits];
      v30 = v13;
      v14 = &v30;
LABEL_26:
      v2 = [NSArray arrayWithObjects:v14 count:1];

      v23 = [[GEORoutePreloader alloc] initWithRoute:self->_route strategies:v2];
      preloader = self->_preloader;
      self->_preloader = v23;

      [(GEORoutePreloader *)self->_preloader setDelegate:self];
      v25 = +[NSNotificationCenter defaultCenter];
      [v25 addObserver:self->_preloader selector:"start" name:UIApplicationWillEnterForegroundNotification object:0];

      v26 = +[NSNotificationCenter defaultCenter];
      [v26 addObserver:self selector:"_tilesFlushed" name:VKShouldFlushTileCachesNotification object:0];

      [(GEORoutePreloader *)self->_preloader start];
      v27 = +[MKLocationManager sharedLocationManager];
      [v27 listenForLocationUpdates:self];

      goto LABEL_27;
    }

    v13 = objc_alloc_init(GEONavRoutePreloadStrategy);
    [v13 setShouldLoadAssets:GEOConfigGetBOOL()];
    options = self->_options;
    [v13 setForceDisableMetros:options & 1];
    [v13 addTileSetStyle:53 betweenZoom:11 andZoom:17];
    route3 = [(RouteTileLoadingSession *)self route];
    transportType2 = [route3 transportType];

    if (transportType2)
    {
      [v13 addTileSetStyle:30 betweenZoom:11 andZoom:17];
    }

    else if (!GEOConfigGetBOOL())
    {
LABEL_16:
      if (options)
      {
        [v13 addTileSetStyle:1 betweenZoom:11 andZoom:17];
        [v13 addTileSetStyle:20 betweenZoom:11 andZoom:17];
      }

      else
      {
        [v13 addTileSetStyle:1 betweenZoom:11 andZoom:17 restrictions:2];
        [v13 addTileSetStyle:20 betweenZoom:11 andZoom:17 restrictions:2];
      }

      [v13 addTileSetStyle:73 betweenZoom:11 andZoom:17];
      v18 = +[GEOResourceManifestManager modernManager];
      activeTileGroup = [v18 activeTileGroup];
      v20 = [activeTileGroup activeTileSetForStyle:68];

      if (v20)
      {
        v21 = 68;
      }

      else
      {
        v21 = 13;
      }

      [v13 addTileSetStyle:v21 betweenZoom:11 andZoom:17];
      IsEnabled_ShelbyvilleTerrain = MapsFeature_IsEnabled_ShelbyvilleTerrain();
      if ((options & 1) == 0 && IsEnabled_ShelbyvilleTerrain)
      {
        [v13 addTileSetStyle:58 betweenZoom:11 andZoom:17 restrictions:1];
        [v13 addTileSetStyle:66 betweenZoom:11 andZoom:17 restrictions:1];
        [v13 addTileSetStyle:67 betweenZoom:11 andZoom:17 restrictions:1];
      }

      v29 = v13;
      v14 = &v29;
      goto LABEL_26;
    }

    [v13 addTileSetStyle:22 betweenZoom:11 andZoom:17];
    goto LABEL_16;
  }

  v2 = sub_100EA6F40();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v28 = 0;
    v3 = "Attempted to preload tiles for an offline route";
    goto LABEL_7;
  }

LABEL_27:
}

- (void)dealloc
{
  if (self->_preloader)
  {
    v3 = sub_100EA6F40();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "session was deallocated without being stopped, cleaning up.", buf, 2u);
    }

    if (self->_drawDebugOverlay)
    {
      debugOverlay = self->_debugOverlay;
      if (debugOverlay)
      {
        [(OverlayManager *)self->_overlayManager removeOverlay:debugOverlay fromProvider:self];
      }

      cellularCoverageOverlay = self->_cellularCoverageOverlay;
      if (cellularCoverageOverlay)
      {
        [(OverlayManager *)self->_overlayManager removeOverlay:cellularCoverageOverlay fromProvider:self];
      }

      [(OverlayManager *)self->_overlayManager removeOverlayProvider:self];
    }

    [(GEORoutePreloader *)self->_preloader stop];
    [(GEORoutePreloader *)self->_preloader tearDown];
  }

  v6.receiver = self;
  v6.super_class = RouteTileLoadingSession;
  [(RouteTileLoadingSession *)&v6 dealloc];
}

- (RouteTileLoadingSession)initWithRoute:(id)route overlayManager:(id)manager traits:(id)traits options:(unint64_t)options
{
  routeCopy = route;
  managerCopy = manager;
  traitsCopy = traits;
  v14 = traitsCopy;
  selfCopy = 0;
  if (routeCopy && traitsCopy)
  {
    v21.receiver = self;
    v21.super_class = RouteTileLoadingSession;
    v16 = [(RouteTileLoadingSession *)&v21 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_route, route);
      objc_storeStrong(&v17->_overlayManager, manager);
      v18 = [v14 copy];
      traits = v17->_traits;
      v17->_traits = v18;

      [(GEOMapServiceTraits *)v17->_traits setSource:19];
      v17->_drawDebugOverlay = GEOConfigGetBOOL();
      v17->_options = options;
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

@end