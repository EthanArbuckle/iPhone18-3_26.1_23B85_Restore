@interface PlatformController
- (BOOL)_shouldCreateAuxiliaryTask:(Class)a3 forCreationPreference:(int64_t)a4;
- (ChromeViewController)chromeViewController;
- (EntryPointsCoordinator)entryPointsCoordinator;
- (MapsSession)currentSession;
- (NSArray)sessionStack;
- (NSString)description;
- (NavigationSession)currentNavigationSession;
- (PedestrianARSessionStateManager)pedestrianARSessionStateManager;
- (PlatformController)init;
- (RoutePlanningSession)currentRoutePlanningSession;
- (id)directionsDataSource;
- (void)_continuePushNavigationWithRoute:(id)a3 navigationMode:(unint64_t)a4 completion:(id)a5;
- (void)_createAllAuxiliaryTasks;
- (void)_createAuxiliaryTasksIfNecessaryForPreference:(int64_t)a3;
- (void)_handleInitialRouteLoaded:(id)a3;
- (void)_suspendSession:(id)a3 completion:(id)a4;
- (void)clearIfCurrentSession:(id)a3;
- (void)clearIfCurrentSessionIsKindOfClass:(Class)a3;
- (void)clearSessions;
- (void)dealloc;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)mapViewDidBecomeFullyDrawnNotification:(id)a3;
- (void)popIfCurrentSession:(id)a3;
- (void)popSession;
- (void)popUntil:(id)a3;
- (void)prepareToReplaySessions;
- (void)pushNavigationWithRoute:(id)a3 navigationMode:(unint64_t)a4 shouldCheckNavSafetyAlert:(BOOL)a5 completion:(id)a6;
- (void)pushSession:(id)a3;
- (void)registerObserver:(id)a3;
- (void)removeSession:(id)a3;
- (void)replaceCurrentSessionWithSession:(id)a3;
- (void)replaySessions;
- (void)setChromeViewController:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation PlatformController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)prepareToReplaySessions
{
  if (![(PlatformController *)self didReplaySessions])
  {
    v3 = sub_100008614();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(PlatformController *)self sessionStack];
      v5 = [(PlatformController *)self observers];
      *buf = 134349570;
      v18 = self;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Preparing to replay with sessions: %@ and current observers: %@", buf, 0x20u);
    }

    v6 = [(PlatformController *)self observers];
    [v6 snapshotCurrentObservers];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(PlatformController *)self sessionStack];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11) prepareToReplayCurrentState];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (NSArray)sessionStack
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100D085A4;
  v10 = sub_100D085B4;
  v11 = 0;
  stackLock = self->_stackLock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009968;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stackLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (PlatformController)init
{
  v24.receiver = self;
  v24.super_class = PlatformController;
  v2 = [(PlatformController *)&v24 init];
  if (v2)
  {
    v3 = sub_100008614();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v26 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("PlatformController.lock", v4);
    stackLock = v2->_stackLock;
    v2->_stackLock = v5;

    v7 = objc_opt_new();
    stack = v2->_stack;
    v2->_stack = v7;

    v9 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___PlatformControllerObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = [[AuxiliaryTasksManager alloc] initWithPlatformController:v2];
    auxiliaryTasksManager = v2->_auxiliaryTasksManager;
    v2->_auxiliaryTasksManager = v11;

    v13 = +[NSMutableSet set];
    auxiliaryTaskCreationPreferencesSatisfied = v2->_auxiliaryTaskCreationPreferencesSatisfied;
    v2->_auxiliaryTaskCreationPreferencesSatisfied = v13;

    v15 = +[MapsRadarController sharedInstance];
    [v15 addAttachmentProvider:v2];

    [(PlatformController *)v2 _createAuxiliaryTasksIfNecessaryForPreference:0];
    objc_initWeak(buf, v2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F760;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v23, buf);
    dispatch_async(&_dispatch_main_q, block);
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"mapViewDidBecomeFullyDrawnNotification:" name:VKMapViewDidBecomeFullyDrawnNotification object:0];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100D0B108;
    v20[3] = &unk_1016616E8;
    objc_copyWeak(&v21, buf);
    v17 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v20 block:5.0];
    mapViewRenderTimeoutTimer = v2->_mapViewRenderTimeoutTimer;
    v2->_mapViewRenderTimeoutTimer = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (EntryPointsCoordinator)entryPointsCoordinator
{
  entryPointsCoordinator = self->_entryPointsCoordinator;
  if (!entryPointsCoordinator)
  {
    v4 = objc_alloc_init(EntryPointsCoordinator);
    v5 = self->_entryPointsCoordinator;
    self->_entryPointsCoordinator = v4;

    entryPointsCoordinator = self->_entryPointsCoordinator;
  }

  return entryPointsCoordinator;
}

- (PedestrianARSessionStateManager)pedestrianARSessionStateManager
{
  v2 = [(PlatformController *)self auxiliaryTasksManager];
  v3 = [v2 auxilaryTaskForClass:objc_opt_class()];

  v4 = [v3 stateManager];

  return v4;
}

- (MapsSession)currentSession
{
  v2 = [(PlatformController *)self sessionStack];
  v3 = [v2 lastObject];

  return v3;
}

- (NavigationSession)currentNavigationSession
{
  v2 = self;
  v3 = PlatformController.currentNavigationSession.getter();

  return v3;
}

- (RoutePlanningSession)currentRoutePlanningSession
{
  v2 = self;
  v3 = PlatformController.currentRoutePlanningSession.getter();

  return v3;
}

- (void)_continuePushNavigationWithRoute:(id)a3 navigationMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100035E6C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PlatformController(CustomRoute) _continuePushNavigationWithRoute:navigationMode:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v11 = [(PlatformController *)self chromeViewController];
  v12 = [v11 currentTraits];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006228BC;
  v19[3] = &unk_1016242E8;
  objc_copyWeak(v22, buf);
  v22[1] = a4;
  v16 = v15;
  v20 = v16;
  v17 = v9;
  v21 = v17;
  v18 = [v8 _maps_convertToNavigableRouteWithTraits:v16 errorHandler:v17 completionHandler:v19];

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)pushNavigationWithRoute:(id)a3 navigationMode:(unint64_t)a4 shouldCheckNavSafetyAlert:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = sub_100035E6C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[PlatformController(CustomRoute) pushNavigationWithRoute:navigationMode:shouldCheckNavSafetyAlert:completion:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 BOOLForKey:@"HasShownCustomNavModeAdvisoryKey"];

  if (v14 & 1 | !a5)
  {
    [(PlatformController *)self _continuePushNavigationWithRoute:v10 navigationMode:a4 completion:v11];
  }

  else
  {
    objc_initWeak(buf, self);
    v15 = +[UIApplication sharedMapsDelegate];
    v23 = @"kMapsInterruptionMessage";
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Custom Route Safety Warning Message" value:@"localized string not found" table:0];
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100622ED8;
    v19[3] = &unk_101624298;
    objc_copyWeak(v22, buf);
    v20 = v10;
    v22[1] = a4;
    v21 = v11;
    [v15 interruptApplicationWithKind:1 userInfo:v18 completionHandler:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (id)directionsDataSource
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(PlatformController *)self sessionStack];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;

          v6 = v10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;

          v5 = v11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = [[NavigationSessionRAP alloc] initWithNavigationSession:v6 routePlanningSession:v5];

  return v12;
}

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D07FE8;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)mapViewDidBecomeFullyDrawnNotification:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:VKMapViewDidBecomeFullyDrawnNotification object:0];

  mapViewRenderTimeoutTimer = self->_mapViewRenderTimeoutTimer;
  self->_mapViewRenderTimeoutTimer = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D081BC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)replaySessions
{
  if (![(PlatformController *)self didReplaySessions])
  {
    v3 = [(PlatformController *)self currentSession];

    if (v3)
    {
      v4 = [(PlatformController *)self observers];
      [v4 removeSnapshottedObservers];

      v5 = [(PlatformController *)self observers];
      v6 = [v5 hasObservers];

      if (v6)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_100D085A4;
        v36 = sub_100D085B4;
        v37 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = sub_100D085A4;
        v30 = sub_100D085B4;
        v31 = 0;
        stackLock = self->_stackLock;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100D085BC;
        block[3] = &unk_10165DEF0;
        block[4] = self;
        block[5] = &v32;
        block[6] = &v26;
        dispatch_sync(stackLock, block);
        v8 = sub_100008614();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = v27[5];
          v10 = v33[5];
          *buf = 134349570;
          v40 = self;
          v41 = 2112;
          v42 = v9;
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Replaying session transition: %@ => %@", buf, 0x20u);
        }

        objc_storeStrong(&self->_previousSession, v27[5]);
        v11 = [(PlatformController *)self observers];
        [v11 platformController:self willChangeCurrentSessionFromSession:v27[5] toSession:v33[5]];

        v12 = self->_stackLock;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100D0866C;
        v24[3] = &unk_101661600;
        v24[4] = self;
        v24[5] = &v32;
        dispatch_sync(v12, v24);
        v13 = [(PlatformController *)self observers];
        [v13 platformController:self didChangeCurrentSessionFromSession:v27[5] toSession:v33[5]];

        [v33[5] replayCurrentState];
        previousSession = self->_previousSession;
        self->_previousSession = 0;

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v32, 8);
      }
    }

    v15 = [(PlatformController *)self observers];
    [v15 restoreOriginalObservers];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = [(PlatformController *)self sessionStack];
    v17 = [v16 countByEnumeratingWithState:&v20 objects:v38 count:16];
    if (v17)
    {
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v20 + 1) + 8 * v19) cleanupStateReplay];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v20 objects:v38 count:16];
      }

      while (v17);
    }

    [(PlatformController *)self setDidReplaySessions:1];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(PlatformController *)self sessionStack];
  v5 = [(PlatformController *)self chromeViewController];
  v6 = [NSString stringWithFormat:@"<%@: %p\nsessions=%@\nchromeViewController=%@\n>", v3, self, v4, v5];

  return v6;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Removing observer: %@", &v7, 0x16u);
  }

  v6 = [(PlatformController *)self observers];
  [v6 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding observer: %@", &v7, 0x16u);
  }

  v6 = [(PlatformController *)self observers];
  [v6 registerObserver:v4];
}

- (void)clearIfCurrentSessionIsKindOfClass:(Class)a3
{
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PlatformController *)self currentSession];
    v9 = 134349570;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Clear all sessions if the current session (%@) is kind of class: %@", &v9, 0x20u);
  }

  v7 = [(PlatformController *)self currentSession];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PlatformController *)self clearSessions];
  }
}

- (void)clearIfCurrentSession:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PlatformController *)self currentSession];
    v8 = 134349570;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Clear all sessions if the current session (%@) is equal to: %@", &v8, 0x20u);
  }

  v7 = [(PlatformController *)self currentSession];

  if (v7 == v4)
  {
    [(PlatformController *)self clearSessions];
  }
}

- (void)clearSessions
{
  v3 = sub_100008614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134349314;
    v5 = self;
    v6 = 2080;
    v7 = "[PlatformController clearSessions]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] %s", &v4, 0x16u);
  }

  [(PlatformController *)self popUntil:&stru_101651398];
}

- (void)removeSession:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removing session: %@", buf, 0x16u);
  }

  if (v4)
  {
    stackLock = self->_stackLock;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100D08D44;
    v11 = &unk_101661A90;
    v12 = self;
    v7 = v4;
    v13 = v7;
    dispatch_sync(stackLock, &v8);
    [v7 setPlatformController:{0, v8, v9, v10, v11, v12}];
  }
}

- (void)_suspendSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = sub_100008614();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Outgoing session requires asynchronous suspension", &v9, 0xCu);
    }

    [v6 suspendWithCompletion:v7];
  }

  else
  {
    [v6 suspend];
    v7[2](v7);
  }
}

- (void)popUntil:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2080;
    *&buf[14] = "[PlatformController popUntil:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s", buf, 0x16u);
  }

  obj = [(PlatformController *)self currentSession];
  v6 = [(PlatformController *)self sessionStack];
  v7 = [v6 count] == 0;

  if (!v7)
  {
    do
    {
      v8 = [(PlatformController *)self currentSession];
      v9 = v4[2](v4, v8);

      if (v9)
      {
        break;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v26 = sub_100D085A4;
      v27 = sub_100D085B4;
      v28 = 0;
      stackLock = self->_stackLock;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100D09248;
      block[3] = &unk_101661600;
      block[4] = self;
      block[5] = buf;
      dispatch_sync(stackLock, block);
      [(PlatformController *)self removeSession:*(*&buf[8] + 40)];
      _Block_object_dispose(buf, 8);

      v11 = [(PlatformController *)self sessionStack];
      v12 = [v11 count] == 0;
    }

    while (!v12);
  }

  v13 = [(PlatformController *)self currentSession];
  v14 = obj == v13;

  if (!v14)
  {
    objc_storeStrong(&self->_previousSession, obj);
    v15 = [(PlatformController *)self observers];
    v16 = [(PlatformController *)self currentSession];
    [v15 platformController:self willChangeCurrentSessionFromSession:obj toSession:v16];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100D092B0;
    v22[3] = &unk_101661A90;
    v22[4] = self;
    v17 = obj;
    v23 = v17;
    v18 = objc_retainBlock(v22);
    [(PlatformController *)self _suspendSession:v17 completion:v18];
  }

  v19 = sub_100008614();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [(PlatformController *)self sessionStack];
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[%{public}p] Current session stack: %@", buf, 0x16u);
  }
}

- (void)replaceCurrentSessionWithSession:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PlatformController *)self currentSession];
    v10 = 134349570;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Replace current session (%@) with: %@", &v10, 0x20u);
  }

  if (v4)
  {
    v7 = [(PlatformController *)self currentSession];
    [(PlatformController *)self pushSession:v4];
    if (v7)
    {
      [(PlatformController *)self removeSession:v7];
      v8 = sub_100008614();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(PlatformController *)self sessionStack];
        v10 = 134349314;
        v11 = self;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Current session stack: %@", &v10, 0x16u);
      }
    }
  }
}

- (void)popIfCurrentSession:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PlatformController *)self currentSession];
    v8 = 134349570;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Pop if the current session (%@) is equal to: %@", &v8, 0x20u);
  }

  v7 = [(PlatformController *)self currentSession];

  if (v7 == v4)
  {
    [(PlatformController *)self popSession];
  }
}

- (void)popSession
{
  v3 = sub_100008614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2080;
    *&buf[14] = "[PlatformController popSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D09734;
  v4[3] = &unk_101651358;
  v4[4] = buf;
  [(PlatformController *)self popUntil:v4];
  _Block_object_dispose(buf, 8);
}

- (void)pushSession:(id)a3
{
  v4 = a3;
  v5 = sub_100008614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Pushing new session: %@", buf, 0x16u);
  }

  [CATransaction setFrameStallSkipRequest:1];
  [(PlatformController *)self _createAllAuxiliaryTasks];
  v6 = [(PlatformController *)self currentSession];
  objc_storeStrong(&self->_previousSession, v6);
  v7 = [(PlatformController *)self observers];
  [v7 platformController:self willChangeCurrentSessionFromSession:v6 toSession:v4];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D0990C;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  v10 = objc_retainBlock(v11);
  [(PlatformController *)self _suspendSession:v8 completion:v10];
}

- (void)_handleInitialRouteLoaded:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedMapsDelegate];
  [v4 showNavigationAdvisoryIfNeeded];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D09B90;
  block[3] = &unk_101661B18;
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_createAuxiliaryTasksIfNecessaryForPreference:(int64_t)a3
{
  v5 = [(PlatformController *)self auxiliaryTaskCreationPreferencesSatisfied];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = sub_100008614();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v122 = self;
      v123 = 2048;
      v124 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Creating auxiliary tasks for preference: %ld", buf, 0x16u);
    }

    v9 = sub_100008614();
    spid = os_signpost_id_generate(v9);

    v10 = sub_100008614();
    v11 = v10;
    v12 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CreateAuxiliaryTasks", "", buf, 2u);
    }

    v13 = +[NSMutableArray array];
    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v14 = [NavigationStateMonitoringTask alloc];
      v15 = +[MNNavigationService sharedService];
      v16 = [(NavigationStateMonitoringTask *)v14 initWithPlatformController:self navigationService:v15];
      [v13 addObject:v16];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v17 = [NavdDefaultsUpdater alloc];
      v18 = +[NSUserDefaults standardUserDefaults];
      v19 = +[MNNavigationService sharedService];
      v20 = +[CarDisplayController sharedInstance];
      v21 = [(NavdDefaultsUpdater *)v17 initWithDefaults:v18 navigationService:v19 carDisplayController:v20];
      [v13 addObject:v21];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v22 = [MapsLocationProviderUpdater alloc];
      v23 = +[MKLocationManager sharedLocationManager];
      v24 = [(MapsLocationProviderUpdater *)v22 initWithLocationManager:v23];
      [v13 addObject:v24];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v25 = [TilePreloadingTask alloc];
      v26 = +[MNNavigationService sharedService];
      v27 = +[CarDisplayController sharedInstance];
      v28 = [(TilePreloadingTask *)v25 initWithNavigationService:v26 carDisplayController:v27];
      [v13 addObject:v28];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      objc_initWeak(buf, self);
      v116 = _NSConcreteStackBlock;
      v117 = 3221225472;
      v118 = sub_100D0AE78;
      v119 = &unk_1016512D0;
      objc_copyWeak(&v120, buf);
      v29 = objc_retainBlock(&v116);
      v30 = [[RoutePlanningSessionRouteLoadedNotifier alloc] initWithPlatformController:self handler:v29];
      [v13 addObject:v30];

      objc_destroyWeak(&v120);
      objc_destroyWeak(buf);
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v31 = [NavigationIntentCapturer alloc];
      v32 = +[MKMapService sharedService];
      v33 = [(NavigationIntentCapturer *)v31 initWithMapService:v32];
      [v13 addObject:v33];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v34 = objc_alloc_init(RoutePlanningAnalyticsTask);
      [v13 addObject:v34];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v35 = objc_alloc_init(RoutePlanningUpdater);
      [v13 addObject:v35];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v36 = +[GEOPlatform sharedPlatform];
      v37 = [v36 isInternalInstall];

      if (v37)
      {
        v38 = [MapsRadarAttachmentProviderTask alloc];
        v39 = +[MapsRadarController sharedInstance];
        v40 = [(MapsRadarAttachmentProviderTask *)v38 initWithRadarController:v39];
        [v13 addObject:v40];
      }
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v41 = [[NavigationStateUpdater alloc] initWithPlatformController:self];
      [v13 addObject:v41];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v42 = objc_alloc_init(NavigationTrackingTask);
      [v13 addObject:v42];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v43 = [_TtC4Maps31NavigationProgressCapturingTask alloc];
      v44 = +[GEOUserSession sharedInstance];
      v45 = +[MNNavigationService sharedService];
      v46 = [(NavigationProgressCapturingTask *)v43 initWithPlatformController:self session:v44 navigationService:v45];

      [v13 addObject:v46];
    }

    else
    {
      v46 = 0;
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v47 = [_TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask alloc];
      v48 = +[NSUserDefaults standardUserDefaults];
      v49 = [AudioPreferences alloc];
      v50 = +[NSUserDefaults standardUserDefaults];
      v51 = [(AudioPreferences *)v49 initWithDefaults:v50];
      v52 = [(NavigationAlertsOnlyOverrideSynchronizationTask *)v47 initWithPlatformController:self userDefaults:v48 audioPreferences:v51];
      [v13 addObject:v52];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v53 = +[MNNavigationService sharedService];
      v54 = [NavigationRouteInterrupter alloc];
      v55 = MapsSuggestionsEngineForMapsProcess();
      v56 = [(NavigationRouteInterrupter *)v54 initWithSuggestionsEngine:v55 delegate:v46];

      v57 = [[NavigationRouteHistoryInfoProvider alloc] initWithNavigationService:v53];
      v58 = [[HistoryDirectionsItemSavingTask alloc] initWithNavigationService:v53 routeInfoProvider:v57 routeInterrupter:v56];
      [v13 addObject:v58];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v59 = [[AutomaticVehicleSelectionTask alloc] initWithPlatformController:self];
      [v13 addObject:v59];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v60 = objc_alloc_init(VehicleMonitoringTask);
      [v13 addObject:v60];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v61 = objc_alloc_init(VehicleDisambiguationTask);
      [v13 addObject:v61];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v62 = [[VIOSessionTask alloc] initWithPlatformController:self];
      [v13 addObject:v62];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[VLFSessionTask isVLFModeSupported])
    {
      v63 = [[VLFSessionTask alloc] initWithPlatformController:self];
      [v13 addObject:v63];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[VLFSessionTask isVLFModeSupported])
    {
      v64 = [[VLFPuckAnimationTask alloc] initWithPlatformController:self];
      [v13 addObject:v64];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[PedestrianARSessionTask isPedestrianARModeSupported])
    {
      v65 = [[PedestrianARSessionTask alloc] initWithPlatformController:self];
      [v13 addObject:v65];
    }

    else
    {
      v65 = 0;
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[PedestrianARSessionTask isPedestrianARModeSupported])
    {
      v66 = [(PedestrianARSessionTask *)v65 stateManager];
      if (v66)
      {
        v67 = [PedestrianARMotionMonitorTask alloc];
        v68 = +[PedestrianARSessionUsageTracker sharedInstance];
        v69 = [(PedestrianARMotionMonitorTask *)v67 initWithPlatformController:self stateManager:v66 usageTracker:v68];
        [v13 addObject:v69];
      }
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[PedestrianARSessionTask isPedestrianARModeSupported])
    {
      v70 = [PedestrianARMuteSpeechOverrideTask alloc];
      v71 = +[MNNavigationService sharedService];
      v72 = [(PedestrianARMuteSpeechOverrideTask *)v70 initWithNavigationService:v71];
      [v13 addObject:v72];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& +[PedestrianARSessionTask isPedestrianARModeSupported])
    {
      v73 = [PedestrianARUsageMigratorTask alloc];
      v74 = +[PedestrianARSessionUsageTracker sharedInstance];
      v75 = [(PedestrianARUsageMigratorTask *)v73 initWithUsageTracker:v74];
      [v13 addObject:v75];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v76 = +[GEOPlatform sharedPlatform];
      if (![v76 isInternalInstall])
      {
LABEL_70:

        goto LABEL_71;
      }

      v77 = +[NSUserDefaults standardUserDefaults];
      v78 = [v77 BOOLForKey:@"PedestrianARDebugMapAnnotationsKey"];

      if (v78)
      {
        v79 = [PedestrianARDebugMapAnnotationsTask alloc];
        v76 = +[MNNavigationService sharedService];
        v80 = [(PedestrianARDebugMapAnnotationsTask *)v79 initWithPlatformController:self navigationService:v76];
        [v13 addObject:v80];

        goto LABEL_70;
      }
    }

LABEL_71:
    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v81 = +[GEOPlatform sharedPlatform];
      v82 = [v81 isInternalInstall];

      if (v82)
      {
        v83 = objc_alloc_init(RoutePlanningServerEnvrionmentChangeRouteRefreshTask);
        [v13 addObject:v83];
      }
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      if ((GEOConfigGetBOOL() & 1) == 0)
      {
        v84 = +[GEOPlatform sharedPlatform];
        v85 = [v84 isInternalInstall];

        if (!v85)
        {
LABEL_117:

          return;
        }
      }

      v86 = [ThermalPressureAnalyticsTask alloc];
      v87 = +[MapsThermalPressureController sharedController];
      v88 = +[MNNavigationService sharedService];
      v89 = +[MapsPowerSourceController sharedController];
      v90 = [(ThermalPressureAnalyticsTask *)v86 initWithPlatformController:self thermalPressureController:v87 navigationService:v88 powerSourceController:v89];
      [v13 addObject:v90];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& MapsFeature_IsEnabled_Bakersfield())
    {
      v91 = +[TrafficIncidentLayoutManager sharedInstance];
      [v13 addObject:v91];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3]&& MapsFeature_IsEnabled_Bakersfield())
    {
      v92 = +[TrafficIncidentsStorageManager sharedInstance];
      [v13 addObject:v92];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v93 = +[RAPRecordManagerTrafficIncidentReportSaver sharedInstance];
      [v13 addObject:v93];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v94 = +[IPCServer sharedServer];
      v95 = v94 == 0;

      if (!v95)
      {
        v96 = [NanoCompanionController alloc];
        v97 = +[IPCServer sharedServer];
        v98 = [(NanoCompanionController *)v96 initWithPlatformController:self ipcServer:v97];
        [v13 addObject:v98];
      }
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v99 = objc_alloc_init(VirtualGarageServiceTask);
      [v13 addObject:v99];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v100 = +[GEOPlatform sharedPlatform];
      v101 = [v100 isInternalInstall];

      if (v101)
      {
        v102 = objc_alloc_init(InternalDebugTask);
        [v13 addObject:v102];
      }
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v103 = +[GEOPlatform sharedPlatform];
      if ([(DebugCoreMotionCompassAvailabilityTask *)v103 isInternalInstall])
      {
        BOOL = GEOConfigGetBOOL();

        if (!BOOL)
        {
          goto LABEL_99;
        }

        v103 = [[DebugCoreMotionCompassAvailabilityTask alloc] initWithPlatformController:self];
        [v13 addObject:v103];
      }
    }

LABEL_99:
    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v105 = +[RAPWebBundleDownloadManager sharedInstance];
      [v13 addObject:v105];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v106 = objc_alloc_init(CarDisplayConfigAuxiliaryTask);
      [v13 addObject:v106];
    }

    if ([(PlatformController *)self _shouldCreateAuxiliaryTask:objc_opt_class() forCreationPreference:a3])
    {
      v107 = objc_opt_new();
      [v13 addObject:v107];
    }

    [(AuxiliaryTasksManager *)self->_auxiliaryTasksManager addTasks:v13, spid, v116, v117, v118, v119];
    v108 = sub_100008614();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      v122 = self;
      v123 = 2048;
      v124 = a3;
      v125 = 2112;
      v126 = v13;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "[%{public}p] Created auxiliary tasks for preference: %ld\n%@", buf, 0x20u);
    }

    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
LABEL_113:
          v112 = sub_100008614();
          v113 = v112;
          if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v113, OS_SIGNPOST_INTERVAL_END, spida, "CreateAuxiliaryTasks", "", buf, 2u);
          }

          goto LABEL_117;
        }

        v109 = [(PlatformController *)self auxiliaryTaskCreationPreferencesSatisfied];
        [v109 addObject:&off_1016E9770];
      }

      v110 = [(PlatformController *)self auxiliaryTaskCreationPreferencesSatisfied];
      [v110 addObject:&off_1016E9758];
    }

    v111 = [(PlatformController *)self auxiliaryTaskCreationPreferencesSatisfied];
    [v111 addObject:&off_1016E9740];

    goto LABEL_113;
  }
}

- (void)_createAllAuxiliaryTasks
{
  [(PlatformController *)self _createAuxiliaryTasksIfNecessaryForPreference:0];
  [(PlatformController *)self _createAuxiliaryTasksIfNecessaryForPreference:1];

  [(PlatformController *)self _createAuxiliaryTasksIfNecessaryForPreference:2];
}

- (BOOL)_shouldCreateAuxiliaryTask:(Class)a3 forCreationPreference:(int64_t)a4
{
  v6 = [(objc_class *)a3 creationPreference];
  v7 = [(PlatformController *)self auxiliaryTaskCreationPreferencesSatisfied];
  v8 = [NSNumber numberWithInteger:v6];
  v9 = [v7 containsObject:v8];

  return (v6 <= a4) & ~v9;
}

- (void)setChromeViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"PlatformControllerDidChangeChromeViewControllerNotification" object:self];

    v5 = obj;
  }
}

- (void)dealloc
{
  v3 = sub_100008614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PlatformController;
  [(PlatformController *)&v4 dealloc];
}

@end