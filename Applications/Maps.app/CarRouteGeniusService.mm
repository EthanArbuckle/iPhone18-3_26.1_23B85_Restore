@interface CarRouteGeniusService
+ (id)sharedService;
- (BOOL)isActive;
- (BOOL)isForcingDestination;
- (CarRouteGeniusService)init;
- (id).cxx_construct;
- (id)suggestion;
- (void)_didUpdateRouteGeniusEntry:(id)a3;
- (void)_isActive:(BOOL)a3;
- (void)didUpdateRouteGenius:(id)a3;
- (void)didUpdateRouteGeniusEntry:(id)a3;
- (void)forceReroute;
- (void)forceSuggestionWithMapItem:(id)a3;
- (void)forceSuggestionWithRoute:(id)a3;
- (void)registerObserver:(id)a3;
- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4;
- (void)start;
- (void)stop;
- (void)unregisterObserver:(id)a3;
@end

@implementation CarRouteGeniusService

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (BOOL)isForcingDestination
{
  v3 = +[GEOPlatform sharedPlatform];
  v4 = [v3 isInternalInstall];

  return (v4 & 1) != 0 && self->_forcingDestination;
}

- (id)suggestion
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "RGEntry suggestion called, dispatching to queue", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10093E1E0;
  v9[3] = &unk_10162F3D0;
  v9[4] = self;
  v4 = v9;
  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10093E278;
  v17 = sub_10093E288;
  v18 = 0;
  innerQueue = self->_state.queue._innerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10093E290;
  block[3] = &unk_10165F5A0;
  v11 = v4;
  v12 = buf;
  v6 = v4;
  dispatch_sync(innerQueue, block);
  v7 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v7;
}

- (void)_didUpdateRouteGeniusEntry:(id)a3
{
  v5 = a3;
  entry = self->_state.entry;
  self->_state.entry = 0;

  if (v5)
  {
    objc_storeStrong(&self->_state.entry, a3);
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "received entry: %{private}@", buf, 0xCu);
    }

    observers = self->_state.observers;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10093E4DC;
    v10[3] = &unk_10162F368;
    v11 = v5;
    [(MapsSuggestionsObservers *)observers callBlock:v10];
  }

  else
  {
    [(CarRouteGeniusService *)self stop];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "will notify about nil entry", buf, 2u);
    }

    [(MapsSuggestionsObservers *)self->_state.observers callBlock:&stru_10162F3A8];
  }
}

- (void)didUpdateRouteGeniusEntry:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10093E704;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  innerQueue = self->_state.queue._innerQueue;
  v6 = v4;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)didUpdateRouteGenius:(id)a3
{
  v5 = a3;
  if (![(CarRouteGeniusService *)self isForcingDestination])
  {
    if (v5)
    {
      v4 = [MapsSuggestionsRouteGeniusEntry entryWithData:?];
    }

    else
    {
      v4 = 0;
    }

    [(CarRouteGeniusService *)self didUpdateRouteGeniusEntry:v4];
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unregistering observer: %@", &v6, 0xCu);
  }

  [(MapsSuggestionsObservers *)self->_state.observers unregisterObserver:v4 handler:&stru_10162F340];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering observer: %@", &v6, 0xCu);
  }

  [(MapsSuggestionsObservers *)self->_state.observers registerObserver:v4 handler:&stru_10162F320];
}

- (void)_isActive:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state.isActive = a3;
  objc_sync_exit(obj);
}

- (BOOL)isActive
{
  v2 = self;
  objc_sync_enter(v2);
  isActive = v2->_state.isActive;
  objc_sync_exit(v2);

  return isActive;
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "About to stop RouteGeniusService", v4, 2u);
  }

  sub_10093EBFC(&self->_state.queue, self, &stru_10162F300);
}

- (void)forceReroute
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "About to force RouteGenius to reroute", v4, 2u);
  }

  sub_10093EBFC(&self->_state.queue, self, &stru_10162F2E0);
}

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "About to start RouteGeniusService", v4, 2u);
  }

  sub_10093EBFC(&self->_state.queue, self, &stru_10162F2C0);
}

- (CarRouteGeniusService)init
{
  v17.receiver = self;
  v17.super_class = CarRouteGeniusService;
  v2 = [(CarRouteGeniusService *)&v17 init];
  if (v2)
  {
    v3 = [[MNRouteGeniusRemoteService alloc] initWithDelegate:v2];
    remote = v2->_config.remote;
    v2->_config.remote = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = @"MapsSuggestionsRouteGeniusServiceQueue";
    v7 = v5;
    v8 = [@"MapsSuggestionsRouteGeniusServiceQueue" copy];
    v9 = dispatch_queue_create([v8 UTF8String], v7);

    innerQueue = v2->_state.queue._innerQueue;
    v2->_state.queue._innerQueue = v9;

    name = v2->_state.queue._name;
    v2->_state.queue._name = v8;

    v12 = [MapsSuggestionsObservers alloc];
    v13 = v2->_state.queue._innerQueue;
    v14 = [v12 initWithCallbackQueue:v13 name:@"MapsSuggestionsRouteGeniusServiceObservers"];
    observers = v2->_state.observers;
    v2->_state.observers = v14;
  }

  return v2;
}

+ (id)sharedService
{
  if (qword_10195DD98 != -1)
  {
    dispatch_once(&qword_10195DD98, &stru_10162F280);
  }

  v3 = qword_10195DD90;

  return v3;
}

- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4
{
  v6 = a3;
  v7 = [a4 routes];
  v8 = [v7 firstObject];

  [(CarRouteGeniusService *)self forceSuggestionWithRoute:v8];
  [v6 invalidate];
}

- (void)forceSuggestionWithRoute:(id)a3
{
  v4 = a3;
  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    if (v4)
    {
      v7 = [v4 destination];
      v8 = [v7 name];
      v9 = [MapsSuggestionsEntry entryWithType:0 title:v8 subtitle:0 weight:0 expires:0 sourceSpecificInfo:1.0];

      v10 = objc_alloc_init(GEOStorageRouteRequestStorage);
      [v10 setTransportType:{objc_msgSend(v4, "transportType")}];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [v4 userRequestedWaypoints];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v10 addWaypoints:*(*(&v17 + 1) + 8 * v15)];
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }

      [v9 setRouteRequestStorage:v10 forKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
      v16 = [[MapsSuggestionsRouteGeniusEntry alloc] initWithEntry:v9 route:v4];
      [(CarRouteGeniusService *)self setForcingDestination:1];
      [(CarRouteGeniusService *)self didUpdateRouteGeniusEntry:v16];
    }

    else
    {
      [(CarRouteGeniusService *)self resetForcedDestination];
    }
  }
}

- (void)forceSuggestionWithMapItem:(id)a3
{
  v4 = a3;
  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    if (v4)
    {
      if ([(CarRouteGeniusService *)self isActive])
      {
        [(CarRouteGeniusService *)self stop];
      }

      v7 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
      v15[0] = v7;
      v8 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v4];
      v15[1] = v8;
      v9 = [NSArray arrayWithObjects:v15 count:2];
      v10 = +[CarDisplayController sharedInstance];
      v11 = [v10 chromeViewController];
      v12 = [v11 currentTraits];
      v13 = [NanoRoutePlanningRequest requestWithWaypoints:v9 viaTransportType:0 traits:v12 companionRouteContext:0];

      v14 = [[NanoRoutePlanningSession alloc] initWithOrigin:2];
      [(NanoRoutePlanningSession *)v14 setShouldBroadcast:0];
      [(NanoRoutePlanningSession *)v14 registerObserver:self];
      [(NanoRoutePlanningSession *)v14 processRequest:v13];
      objc_setAssociatedObject(self, &unk_10195E678, v14, 1);
    }

    else
    {
      [(CarRouteGeniusService *)self resetForcedDestination];
    }
  }
}

@end