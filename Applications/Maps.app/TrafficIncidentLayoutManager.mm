@interface TrafficIncidentLayoutManager
+ (id)sharedInstance;
- (BOOL)_shouldInvalidateLayout;
- (BOOL)containsGEOTrafficIncidentType:(int)type;
- (BOOL)containsVKTrafficIncidentType:(int64_t)type;
- (BOOL)isIncidentReportingEnabled;
- (BOOL)isIncidentTypeDisplayedOnMap:(int)map;
- (TrafficIncidentLayoutManager)initWithFormType:(int)type;
- (id)observers;
- (void)_invalidateCachedLayoutIfNeeded;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)fetchTrafficIncidentsLayout:(id)layout;
- (void)offlineMapsStateChanged;
- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)removeObserver:(id)observer;
- (void)sessionDidConnect:(id)connect;
- (void)setIncidentLayout:(id)layout;
- (void)startPeriodicRefresh;
- (void)stopPeriodicRefresh;
@end

@implementation TrafficIncidentLayoutManager

+ (id)sharedInstance
{
  if (qword_10195EBC0 != -1)
  {
    dispatch_once(&qword_10195EBC0, &stru_10164DD98);
  }

  v3 = qword_10195EBC8;

  return v3;
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___TrafficIncidentLayoutManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (BOOL)isIncidentReportingEnabled
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  if ((isUsingOfflineMaps & 1) != 0 || !MapsFeature_IsEnabled_Bakersfield())
  {
    return 0;
  }

  v5 = +[TrafficIncidentAuthenticationManager sharedInstance];
  if ([v5 isSupported])
  {
    isIncidentReportingEnabled = [(TrafficIncidentLayout *)self->_incidentLayout isIncidentReportingEnabled];
  }

  else
  {
    isIncidentReportingEnabled = 0;
  }

  return isIncidentReportingEnabled;
}

- (void)offlineMapsStateChanged
{
  v3 = sub_10002171C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: offlineMapsStateChanged", v5, 2u);
  }

  observers = [(TrafficIncidentLayoutManager *)self observers];
  [observers incidentsReportingEnablementDidUpdate];
}

- (void)sessionDidConnect:(id)connect
{
  v4 = sub_10002171C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: carSession didConnect", v5, 2u);
  }

  [(TrafficIncidentLayoutManager *)self _invalidateCachedLayoutIfNeeded];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(TrafficIncidentLayoutManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(TrafficIncidentLayoutManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  if (MapsFeature_IsEnabled_Bakersfield())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TrafficIncidentLayoutManager *)self _invalidateCachedLayoutIfNeeded];
        [(TrafficIncidentLayoutManager *)self startPeriodicRefresh];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TrafficIncidentLayoutManager *)self stopPeriodicRefresh];
    }
  }
}

- (void)_invalidateCachedLayoutIfNeeded
{
  if ([(TrafficIncidentLayoutManager *)self _shouldInvalidateLayout])
  {

    [(TrafficIncidentLayoutManager *)self fetchTrafficIncidentsLayout:&stru_10164DE00];
  }

  else
  {
    v3 = sub_10002171C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: invalidateCachedLayout not needed", v4, 2u);
    }
  }
}

- (BOOL)_shouldInvalidateLayout
{
  incidentLayout = self->_incidentLayout;
  if (incidentLayout)
  {

    return [(TrafficIncidentLayout *)incidentLayout shouldInvalidateLayout];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = sub_10002171C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: Initial fetching", v7, 2u);
    }

    return 1;
  }
}

- (void)stopPeriodicRefresh
{
  layoutRefreshTimer = [(TrafficIncidentLayoutManager *)self layoutRefreshTimer];
  [layoutRefreshTimer invalidate];

  [(TrafficIncidentLayoutManager *)self setLayoutRefreshTimer:0];
}

- (void)startPeriodicRefresh
{
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_invalidateCachedLayoutIfNeeded" selector:0 userInfo:1 repeats:?];
  [(TrafficIncidentLayoutManager *)self setLayoutRefreshTimer:v3];
}

- (BOOL)isIncidentTypeDisplayedOnMap:(int)map
{
  v3 = *&map;
  incidentLayout = [(TrafficIncidentLayoutManager *)self incidentLayout];
  LOBYTE(v3) = [incidentLayout isIncidentTypeDisplayedOnMap:v3];

  return v3;
}

- (BOOL)containsGEOTrafficIncidentType:(int)type
{
  v3 = *&type;
  incidentLayout = [(TrafficIncidentLayoutManager *)self incidentLayout];
  LOBYTE(v3) = [incidentLayout isIncidentTypeSupported:v3];

  return v3;
}

- (BOOL)containsVKTrafficIncidentType:(int64_t)type
{
  v4 = [MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:type];

  return [(TrafficIncidentLayoutManager *)self containsGEOTrafficIncidentType:v4];
}

- (void)fetchTrafficIncidentsLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy && (incidentLayout = self->_incidentLayout) != 0 && ![(TrafficIncidentLayout *)incidentLayout shouldInvalidateLayout])
  {
    layoutItems = [(TrafficIncidentLayout *)self->_incidentLayout layoutItems];
    layoutCopy[2](layoutCopy, layoutItems);
  }

  else
  {
    v6 = +[MKLocationManager sharedLocationManager];
    layoutItems = [v6 currentLocation];

    if (layoutItems)
    {
      v8 = objc_alloc_init(TrafficIncidentLayoutFetcher);
      objc_initWeak(&location, self);
      formType = [(TrafficIncidentLayoutManager *)self formType];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100C19448;
      v10[3] = &unk_10164DDC0;
      objc_copyWeak(&v12, &location);
      v11 = layoutCopy;
      [(TrafficIncidentLayoutFetcher *)v8 fetchTrafficIncidentsLayoutForLocation:layoutItems formType:formType isSiri:0 completion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else if (layoutCopy)
    {
      layoutCopy[2](layoutCopy, &__NSArray0__struct);
    }
  }
}

- (void)setIncidentLayout:(id)layout
{
  layoutCopy = layout;
  incidentLayout = self->_incidentLayout;
  if (incidentLayout != layoutCopy)
  {
    isIncidentReportingEnabled = [(TrafficIncidentLayout *)incidentLayout isIncidentReportingEnabled];
    v8 = isIncidentReportingEnabled ^ [(TrafficIncidentLayout *)layoutCopy isIncidentReportingEnabled];
    objc_storeStrong(&self->_incidentLayout, layout);
    v9 = sub_10002171C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_incidentLayout;
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: cached incidentLayout %@", &v12, 0xCu);
    }

    if (v8)
    {
      observers = [(TrafficIncidentLayoutManager *)self observers];
      [observers incidentsReportingEnablementDidUpdate];
    }
  }
}

- (void)dealloc
{
  [(TrafficIncidentLayoutManager *)self stopPeriodicRefresh];
  v3.receiver = self;
  v3.super_class = TrafficIncidentLayoutManager;
  [(TrafficIncidentLayoutManager *)&v3 dealloc];
}

- (TrafficIncidentLayoutManager)initWithFormType:(int)type
{
  v14.receiver = self;
  v14.super_class = TrafficIncidentLayoutManager;
  v4 = [(TrafficIncidentLayoutManager *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_formType = type;
    if (type == 7)
    {
      v6 = +[TrafficIncidentLayoutStorage sharedInstance];
      cachedIncidentLayout = [v6 cachedIncidentLayout];
    }

    else
    {
      if (type != 9)
      {
LABEL_7:
        v9 = objc_opt_new();
        carSessionStatus = v5->_carSessionStatus;
        v5->_carSessionStatus = v9;

        [(CARSessionStatus *)v5->_carSessionStatus addSessionObserver:v5];
        v11 = +[TrafficIncidentAuthenticationManager sharedInstance];
        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:v5 selector:"offlineMapsStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];

        return v5;
      }

      v6 = +[TrafficIncidentLayoutStorage sharedInstance];
      cachedIncidentLayout = [v6 cachedIncidentVotingLayout];
    }

    incidentLayout = v5->_incidentLayout;
    v5->_incidentLayout = cachedIncidentLayout;

    goto LABEL_7;
  }

  return v5;
}

@end