@interface NavigationStateUpdater
- (NavigationStateUpdater)initWithPlatformController:(id)controller;
- (PlatformController)platformController;
- (void)_saveDirectionPlan;
- (void)dealloc;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationWaypointController:(id)controller didUpdateDisplayedWaypoints:(id)waypoints;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)setNavigationSession:(id)session;
- (void)updateMapsActivityWithStack:(id)stack;
@end

@implementation NavigationStateUpdater

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)navigationWaypointController:(id)controller didUpdateDisplayedWaypoints:(id)waypoints
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  sessionStack = [WeakRetained sessionStack];
  [(NavigationStateUpdater *)self updateMapsActivityWithStack:sessionStack];
}

- (void)navigationService:(id)service didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v7 = [MNNavigationService sharedService:service];
  route = [v7 route];
  legs = [route legs];
  v10 = [legs count] - 1;

  if (v10 == index)
  {
    [(NavigationStateUpdater *)self setDirectionPlan:0];

    [(NavigationStateUpdater *)self _saveDirectionPlan];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (toState != state)
  {
    v12 = serviceCopy;
    v9 = MNNavigationServiceStateChangedToNavigating();
    serviceCopy = v12;
    if ((toState & 0xFFFFFFFFFFFFFFFELL) == 4 && (v9 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_platformController);
      sessionStack = [WeakRetained sessionStack];
      [(NavigationStateUpdater *)self updateMapsActivityWithStack:sessionStack];

      serviceCopy = v12;
    }
  }
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  navigationSession = [(NavigationStateUpdater *)self navigationSession];

  if (navigationSession == sessionCopy)
  {
    v8 = sub_100028730();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NotStarted";
      if (state == 1)
      {
        v9 = @"Running";
      }

      if (state == 2)
      {
        v9 = @"Suspended";
      }

      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[EP] mapsSession:didChangeState: %{public}@", &v11, 0xCu);
    }

    if (state == 1)
    {
      directionPlan = [(NavigationStateUpdater *)self directionPlan];
      [directionPlan setDisplayMethod:2];

      [(NavigationStateUpdater *)self _saveDirectionPlan];
    }
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = toSessionCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(NavigationStateUpdater *)self setNavigationSession:v9];

  sessionStack = [controllerCopy sessionStack];

  [(NavigationStateUpdater *)self updateMapsActivityWithStack:sessionStack];
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  navigationSession = self->_navigationSession;
  if (navigationSession != sessionCopy)
  {
    v9 = sessionCopy;
    waypointController = [(NavigationSession *)navigationSession waypointController];
    [waypointController unregisterObserver:self];

    [(NavigationSession *)self->_navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    waypointController2 = [(NavigationSession *)self->_navigationSession waypointController];
    [waypointController2 registerObserver:self];

    sessionCopy = v9;
  }
}

- (void)_saveDirectionPlan
{
  directionPlan = [(NavigationStateUpdater *)self directionPlan];
  v4 = [directionPlan copy];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = v5;
  if (v4)
  {
    [v5 setBool:0 forKey:@"NavigationUserActivityPendingDeletion"];

    v7 = sub_100028730();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "_saveDirectionPlan: plan is not marked for deletion";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else
  {
    [v5 setBool:1 forKey:@"NavigationUserActivityPendingDeletion"];

    v7 = sub_100028730();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "_saveDirectionPlan: plan is marked for deletion";
      goto LABEL_6;
    }
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BEA0D8;
  block[3] = &unk_101661B18;
  v12 = v4;
  v10 = v4;
  dispatch_async(workQueue, block);
}

- (void)updateMapsActivityWithStack:(id)stack
{
  stackCopy = stack;
  v5 = sub_100028730();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = stackCopy;
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v28 = v5;
        selfCopy = self;
        v30 = stackCopy;
        v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = v7;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v31 objects:buf count:16];
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = *v32;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v31 + 1) + 8 * v13);
            if (v14)
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_14;
              }

              v17 = [v14 performSelector:"accessibilityIdentifier"];
              v18 = v17;
              if (v17 && ![v17 isEqualToString:v16])
              {
                v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];
              }

              else
              {

LABEL_14:
                v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
              }

              goto LABEL_17;
            }

            v19 = @"<nil>";
LABEL_17:

            [v8 addObject:v19];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v20 = [v9 countByEnumeratingWithState:&v31 objects:buf count:16];
          v11 = v20;
          if (!v20)
          {
LABEL_21:

            v21 = [v9 componentsJoinedByString:{@", "}];
            v22 = [NSString stringWithFormat:@"<%p> [%@]", v9, v21];

            self = selfCopy;
            stackCopy = v30;
            v7 = v27;
            v5 = v28;
            goto LABEL_24;
          }
        }
      }

      v22 = [NSString stringWithFormat:@"<%p> (empty)", v7];
    }

    else
    {
      v22 = @"<nil>";
    }

LABEL_24:

    *buf = 138543362;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[EP] updateMapsActivityWithStack: %{public}@", buf, 0xCu);
  }

  navigationSession = [(NavigationStateUpdater *)self navigationSession];
  if (navigationSession)
  {
    navigationSession2 = [(NavigationStateUpdater *)self navigationSession];
    guidanceType = [navigationSession2 guidanceType];

    if (guidanceType == 2 || ![stackCopy count])
    {
      navigationSession = 0;
    }

    else
    {
      v26 = sub_10072E1A4(stackCopy, 0xFFFFFFFLL);
      navigationSession = [v26 buildDirectionsPlan];
    }
  }

  [(NavigationStateUpdater *)self setDirectionPlan:navigationSession];
  [(NavigationStateUpdater *)self _saveDirectionPlan];
}

- (void)dealloc
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NavigationStateUpdater;
  [(NavigationStateUpdater *)&v4 dealloc];
}

- (NavigationStateUpdater)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = NavigationStateUpdater;
  v5 = [(NavigationStateUpdater *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, controllerCopy);
    v7 = dispatch_queue_create("com.apple.Maps.NavigationStateUpdater", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v7;

    v9 = +[MNNavigationService sharedService];
    [v9 registerObserver:v6];
  }

  return v6;
}

@end