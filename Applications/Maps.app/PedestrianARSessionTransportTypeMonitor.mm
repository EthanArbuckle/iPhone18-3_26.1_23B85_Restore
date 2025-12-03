@interface PedestrianARSessionTransportTypeMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (NSString)debugDescription;
- (NavigationSession)navigationSession;
- (PedestrianARSessionTransportTypeMonitor)initWithObserver:(id)observer platformController:(id)controller;
- (PlatformController)platformController;
- (RoutePlanningSession)routePlanningSession;
- (void)dealloc;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)setNavigationSession:(id)session;
- (void)setRoutePlanningSession:(id)session;
- (void)updateState;
@end

@implementation PedestrianARSessionTransportTypeMonitor

- (NavigationSession)navigationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  return WeakRetained;
}

- (RoutePlanningSession)routePlanningSession
{
  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);

  return WeakRetained;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  v6 = sub_100BFF360();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Navigation updated route collection: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionTransportTypeMonitor *)self updateState];
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  v5 = sub_100BFF360();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Navigation changed transport type", &v6, 0xCu);
  }

  [(PedestrianARSessionTransportTypeMonitor *)self updateState];
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  v6 = sub_100BFF360();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning changed transport type", &v7, 0xCu);
  }

  [(PedestrianARSessionTransportTypeMonitor *)self updateState];
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
  [(PedestrianARSessionTransportTypeMonitor *)self setRoutePlanningSession:v8];

  v11 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(PedestrianARSessionTransportTypeMonitor *)self setNavigationSession:v10];
  [(PedestrianARSessionTransportTypeMonitor *)self updateState];
}

- (NSString)debugDescription
{
  routePlanningSession = [(PedestrianARSessionTransportTypeMonitor *)self routePlanningSession];
  if (routePlanningSession)
  {
    routePlanningSession2 = [(PedestrianARSessionTransportTypeMonitor *)self routePlanningSession];
    currentTransportType = [routePlanningSession2 currentTransportType];
  }

  else
  {
    routePlanningSession2 = [(PedestrianARSessionTransportTypeMonitor *)self navigationSession];
    if (routePlanningSession2)
    {
      navigationSession = [(PedestrianARSessionTransportTypeMonitor *)self navigationSession];
      currentTransportType = [navigationSession currentTransportType];
    }

    else
    {
      currentTransportType = 0;
    }
  }

  friendlyName = [objc_opt_class() friendlyName];
  v8 = friendlyName;
  if ((currentTransportType - 1) > 4)
  {
    v9 = @"Undefined";
  }

  else
  {
    v9 = off_10164D8E0[(currentTransportType - 1)];
  }

  v10 = [NSString stringWithFormat:@"%@\ntransport type: %@\n", friendlyName, v9];

  return v10;
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100BFF360();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating navigation session: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);
  [WeakRetained unregisterObserver:self];

  v7 = objc_storeWeak(&self->_navigationSession, sessionCopy);
  [sessionCopy registerObserver:self];
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100BFF360();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating route planning session: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);
  [WeakRetained unregisterObserver:self];

  v7 = objc_storeWeak(&self->_routePlanningSession, sessionCopy);
  [sessionCopy registerObserver:self];
}

- (void)updateState
{
  v3 = sub_100BFF360();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating state", &v12, 0xCu);
  }

  routePlanningSession = [(PedestrianARSessionTransportTypeMonitor *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(PedestrianARSessionTransportTypeMonitor *)self routePlanningSession];
    v6 = [routePlanningSession2 currentTransportType] == 2;
    selfCopy3 = self;
  }

  else
  {
    navigationSession = [(PedestrianARSessionTransportTypeMonitor *)self navigationSession];

    if (!navigationSession)
    {
      [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:0];
      return;
    }

    routePlanningSession2 = [(PedestrianARSessionTransportTypeMonitor *)self navigationSession];
    if ([routePlanningSession2 currentTransportType] == 2)
    {
      navigationSession2 = [(PedestrianARSessionTransportTypeMonitor *)self navigationSession];
      currentRouteCollection = [navigationSession2 currentRouteCollection];
      currentRoute = [currentRouteCollection currentRoute];
      -[PedestrianARSessionMonitor setShouldShowPedestrianAR:](self, "setShouldShowPedestrianAR:", [currentRoute isWalkingOnlyTransitRoute] ^ 1);

      goto LABEL_6;
    }

    selfCopy3 = self;
    v6 = 0;
  }

  [(PedestrianARSessionMonitor *)selfCopy3 setShouldShowPedestrianAR:v6];
LABEL_6:
}

- (void)dealloc
{
  v3 = sub_100BFF360();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  [WeakRetained unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_routePlanningSession);
  [v5 unregisterObserver:self];

  v6 = objc_loadWeakRetained(&self->_navigationSession);
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = PedestrianARSessionTransportTypeMonitor;
  [(PedestrianARSessionMonitor *)&v7 dealloc];
}

- (PedestrianARSessionTransportTypeMonitor)initWithObserver:(id)observer platformController:(id)controller
{
  observerCopy = observer;
  controllerCopy = controller;
  if (!observerCopy)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v28 = "[PedestrianARSessionTransportTypeMonitor initWithObserver:platformController:]";
      v29 = 2080;
      v30 = "PedestrianARSessionTransportTypeMonitor.m";
      v31 = 1024;
      v32 = 39;
      v33 = 2080;
      v34 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!controllerCopy)
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v28 = "[PedestrianARSessionTransportTypeMonitor initWithObserver:platformController:]";
      v29 = 2080;
      v30 = "PedestrianARSessionTransportTypeMonitor.m";
      v31 = 1024;
      v32 = 40;
      v33 = 2080;
      v34 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v28 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v26.receiver = self;
  v26.super_class = PedestrianARSessionTransportTypeMonitor;
  v8 = [(PedestrianARSessionMonitor *)&v26 initWithObserver:observerCopy];
  if (v8)
  {
    v9 = sub_100BFF360();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v10 = objc_storeWeak(&v8->_platformController, controllerCopy);
    [controllerCopy registerObserver:v8];

    WeakRetained = objc_loadWeakRetained(&v8->_platformController);
    currentSession = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = currentSession;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [(PedestrianARSessionTransportTypeMonitor *)v8 setRoutePlanningSession:v14];
    v15 = objc_loadWeakRetained(&v8->_platformController);
    currentSession2 = [v15 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = currentSession2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [(PedestrianARSessionTransportTypeMonitor *)v8 setNavigationSession:v18];
    [(PedestrianARSessionTransportTypeMonitor *)v8 updateState];
  }

  return v8;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_101640368;
  v3 = 367;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end