@interface RouteTileLoadingSession
- (RouteTileLoadingSession)initWithRoute:(id)a3 overlayManager:(id)a4 traits:(id)a5 options:(unint64_t)a6;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (void)_tilesFlushed;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)routePreloader:(uint64_t)a3 failedToLoadTileKey:(__int128 *)a4 error:;
- (void)routePreloader:(void *)a3 loadedTileKey:(__int128 *)a4 source:(uint64_t)a5;
- (void)start;
- (void)stop;
@end

@implementation RouteTileLoadingSession

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_debugOverlay == v7)
  {
    debugOverlayRenderer = self->_debugOverlayRenderer;
    if (!debugOverlayRenderer)
    {
      v11 = [[RouteTileLoadingDebugOverlayRenderer alloc] initWithOverlay:v7];
      v12 = self->_debugOverlayRenderer;
      self->_debugOverlayRenderer = v11;

      debugOverlayRenderer = self->_debugOverlayRenderer;
    }

    v13 = debugOverlayRenderer;
  }

  else
  {
    if (self->_cellularCoverageOverlay != v7)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v13 = [[RouteCellularCoverageDebugOverlayRenderer alloc] initWithOverlay:v7];
  }

  v9 = v13;
LABEL_9:

  return v9;
}

- (void)routePreloader:(uint64_t)a3 failedToLoadTileKey:(__int128 *)a4 error:
{
  if (*(a1 + 24) == 1)
  {
    v10 = v4;
    v11 = v5;
    [*(a1 + 32) addFailedKey:a4];
    v9 = *a4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EA6C18;
    block[3] = &unk_1016575B0;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)routePreloader:(void *)a3 loadedTileKey:(__int128 *)a4 source:(uint64_t)a5
{
  v8 = a3;
  if (*(a1 + 24) == 1)
  {
    v9 = *(a1 + 32);
    if (a5 == 2)
    {
      [v9 addLoadedTileKey:a4];
    }

    else
    {
      [v9 addCachedTileKey:a4];
    }

    v11 = *a4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EA6D24;
    block[3] = &unk_1016575B0;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = [a3 lastLocation];
  v6 = [v4 _navigation_routeMatch];

  v5 = v6;
  if (v6)
  {
    [(GEORoutePreloader *)self->_preloader updateWithRouteMatch:v6];
    v5 = v6;
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
      v8 = [(RouteTileLoadingSession *)self route];
      v9 = [(RouteCellularCoverageDebugOverlay *)v7 initWithRoute:v8];
      cellularCoverageOverlay = self->_cellularCoverageOverlay;
      self->_cellularCoverageOverlay = v9;

      [(OverlayManager *)self->_overlayManager addOverlay:self->_cellularCoverageOverlay level:1 fromProvider:self];
    }

    v11 = [(RouteTileLoadingSession *)self route];
    v12 = [v11 transportType];

    if (v12 == 1)
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
    v16 = [(RouteTileLoadingSession *)self route];
    v17 = [v16 transportType];

    if (v17)
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
      v19 = [v18 activeTileGroup];
      v20 = [v19 activeTileSetForStyle:68];

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

- (RouteTileLoadingSession)initWithRoute:(id)a3 overlayManager:(id)a4 traits:(id)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  v15 = 0;
  if (v11 && v13)
  {
    v21.receiver = self;
    v21.super_class = RouteTileLoadingSession;
    v16 = [(RouteTileLoadingSession *)&v21 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_route, a3);
      objc_storeStrong(&v17->_overlayManager, a4);
      v18 = [v14 copy];
      traits = v17->_traits;
      v17->_traits = v18;

      [(GEOMapServiceTraits *)v17->_traits setSource:19];
      v17->_drawDebugOverlay = GEOConfigGetBOOL();
      v17->_options = a6;
    }

    self = v17;
    v15 = self;
  }

  return v15;
}

@end