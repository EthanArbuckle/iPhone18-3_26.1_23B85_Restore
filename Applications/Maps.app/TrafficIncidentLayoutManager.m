@interface TrafficIncidentLayoutManager
+ (id)sharedInstance;
- (BOOL)_shouldInvalidateLayout;
- (BOOL)containsGEOTrafficIncidentType:(int)a3;
- (BOOL)containsVKTrafficIncidentType:(int64_t)a3;
- (BOOL)isIncidentReportingEnabled;
- (BOOL)isIncidentTypeDisplayedOnMap:(int)a3;
- (TrafficIncidentLayoutManager)initWithFormType:(int)a3;
- (id)observers;
- (void)_invalidateCachedLayoutIfNeeded;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)fetchTrafficIncidentsLayout:(id)a3;
- (void)offlineMapsStateChanged;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)removeObserver:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)setIncidentLayout:(id)a3;
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
  v4 = [v3 isUsingOfflineMaps];

  if ((v4 & 1) != 0 || !MapsFeature_IsEnabled_Bakersfield())
  {
    return 0;
  }

  v5 = +[TrafficIncidentAuthenticationManager sharedInstance];
  if ([v5 isSupported])
  {
    v6 = [(TrafficIncidentLayout *)self->_incidentLayout isIncidentReportingEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)offlineMapsStateChanged
{
  v3 = sub_10002171C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: offlineMapsStateChanged", v5, 2u);
  }

  v4 = [(TrafficIncidentLayoutManager *)self observers];
  [v4 incidentsReportingEnablementDidUpdate];
}

- (void)sessionDidConnect:(id)a3
{
  v4 = sub_10002171C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutManager: carSession didConnect", v5, 2u);
  }

  [(TrafficIncidentLayoutManager *)self _invalidateCachedLayoutIfNeeded];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentLayoutManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentLayoutManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a4;
  v7 = a5;
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
  v3 = [(TrafficIncidentLayoutManager *)self layoutRefreshTimer];
  [v3 invalidate];

  [(TrafficIncidentLayoutManager *)self setLayoutRefreshTimer:0];
}

- (void)startPeriodicRefresh
{
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_invalidateCachedLayoutIfNeeded" selector:0 userInfo:1 repeats:?];
  [(TrafficIncidentLayoutManager *)self setLayoutRefreshTimer:v3];
}

- (BOOL)isIncidentTypeDisplayedOnMap:(int)a3
{
  v3 = *&a3;
  v4 = [(TrafficIncidentLayoutManager *)self incidentLayout];
  LOBYTE(v3) = [v4 isIncidentTypeDisplayedOnMap:v3];

  return v3;
}

- (BOOL)containsGEOTrafficIncidentType:(int)a3
{
  v3 = *&a3;
  v4 = [(TrafficIncidentLayoutManager *)self incidentLayout];
  LOBYTE(v3) = [v4 isIncidentTypeSupported:v3];

  return v3;
}

- (BOOL)containsVKTrafficIncidentType:(int64_t)a3
{
  v4 = [MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:a3];

  return [(TrafficIncidentLayoutManager *)self containsGEOTrafficIncidentType:v4];
}

- (void)fetchTrafficIncidentsLayout:(id)a3
{
  v4 = a3;
  if (v4 && (incidentLayout = self->_incidentLayout) != 0 && ![(TrafficIncidentLayout *)incidentLayout shouldInvalidateLayout])
  {
    v7 = [(TrafficIncidentLayout *)self->_incidentLayout layoutItems];
    v4[2](v4, v7);
  }

  else
  {
    v6 = +[MKLocationManager sharedLocationManager];
    v7 = [v6 currentLocation];

    if (v7)
    {
      v8 = objc_alloc_init(TrafficIncidentLayoutFetcher);
      objc_initWeak(&location, self);
      v9 = [(TrafficIncidentLayoutManager *)self formType];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100C19448;
      v10[3] = &unk_10164DDC0;
      objc_copyWeak(&v12, &location);
      v11 = v4;
      [(TrafficIncidentLayoutFetcher *)v8 fetchTrafficIncidentsLayoutForLocation:v7 formType:v9 isSiri:0 completion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else if (v4)
    {
      v4[2](v4, &__NSArray0__struct);
    }
  }
}

- (void)setIncidentLayout:(id)a3
{
  v5 = a3;
  incidentLayout = self->_incidentLayout;
  if (incidentLayout != v5)
  {
    v7 = [(TrafficIncidentLayout *)incidentLayout isIncidentReportingEnabled];
    v8 = v7 ^ [(TrafficIncidentLayout *)v5 isIncidentReportingEnabled];
    objc_storeStrong(&self->_incidentLayout, a3);
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
      v11 = [(TrafficIncidentLayoutManager *)self observers];
      [v11 incidentsReportingEnablementDidUpdate];
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

- (TrafficIncidentLayoutManager)initWithFormType:(int)a3
{
  v14.receiver = self;
  v14.super_class = TrafficIncidentLayoutManager;
  v4 = [(TrafficIncidentLayoutManager *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_formType = a3;
    if (a3 == 7)
    {
      v6 = +[TrafficIncidentLayoutStorage sharedInstance];
      v7 = [v6 cachedIncidentLayout];
    }

    else
    {
      if (a3 != 9)
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
      v7 = [v6 cachedIncidentVotingLayout];
    }

    incidentLayout = v5->_incidentLayout;
    v5->_incidentLayout = v7;

    goto LABEL_7;
  }

  return v5;
}

@end