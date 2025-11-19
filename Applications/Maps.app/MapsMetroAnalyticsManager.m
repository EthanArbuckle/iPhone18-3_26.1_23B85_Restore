@interface MapsMetroAnalyticsManager
+ (id)sharedManager;
- (MapsMetroAnalyticsManager)init;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_startLocationUpdateTimerIfNeeded;
- (void)_stopLocationUpdateTimer;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MapsMetroAnalyticsManager

- (void)stopMonitoring
{
  v3 = [(MapsMetroAnalyticsManager *)self meCardProvider];
  [v3 setActive:0];

  [(MapsMetroAnalyticsManager *)self _stopLocationUpdateTimer];
}

- (void)_stopLocationUpdateTimer
{
  currentLocationUpdateTimer = self->_currentLocationUpdateTimer;
  if (currentLocationUpdateTimer)
  {
    dispatch_source_cancel(currentLocationUpdateTimer);
    v4 = self->_currentLocationUpdateTimer;
    self->_currentLocationUpdateTimer = 0;
  }
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MapsMetroAnalyticsManager *)self meCardProvider];

  if (v5 == v4)
  {
    v6 = [(MapsMetroAnalyticsManager *)self meCardProvider];
    v7 = [v6 meCard];
    v8 = [v7 mapItemsForHome];
    v9 = [v8 firstObject];

    analyticsQueue = self->_analyticsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10081EA88;
    block[3] = &unk_101661B18;
    v13 = v9;
    v11 = v9;
    dispatch_async(analyticsQueue, block);
  }
}

- (void)_startLocationUpdateTimerIfNeeded
{
  if (!self->_currentLocationUpdateTimer)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    v4 = [v3 isAuthorizedForPreciseLocation];

    if (v4)
    {
      GEOConfigGetDouble();
      v5 = geo_dispatch_timer_create_on_queue();
      currentLocationUpdateTimer = self->_currentLocationUpdateTimer;
      self->_currentLocationUpdateTimer = v5;

      v7 = self->_currentLocationUpdateTimer;

      dispatch_resume(v7);
    }
  }
}

- (void)_locationManagerApprovalDidChange:(id)a3
{
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isAuthorizedForPreciseLocation];

  if (v5)
  {
    dispatch_async(self->_analyticsQueue, &stru_10162B5B8);

    [(MapsMetroAnalyticsManager *)self _startLocationUpdateTimerIfNeeded];
  }

  else
  {
    [(MapsMetroAnalyticsManager *)self _stopLocationUpdateTimer];
    v6 = +[GEOAPSharedStateData sharedData];
    [v6 setCurrentMetro:0];
  }
}

- (void)startMonitoring
{
  v3 = [(MapsMetroAnalyticsManager *)self meCardProvider];
  [v3 setActive:1];

  [(MapsMetroAnalyticsManager *)self _startLocationUpdateTimerIfNeeded];
}

- (MapsMetroAnalyticsManager)init
{
  v12.receiver = self;
  v12.super_class = MapsMetroAnalyticsManager;
  v2 = [(MapsMetroAnalyticsManager *)&v12 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    analyticsQueue = v2->_analyticsQueue;
    v2->_analyticsQueue = v3;

    v5 = objc_alloc_init(MeCardDataProvider);
    meCardProvider = v2->_meCardProvider;
    v2->_meCardProvider = v5;

    v7 = [(MeCardDataProvider *)v2->_meCardProvider observers];
    [v7 registerObserver:v2];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10081F014;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195D978 != -1)
  {
    dispatch_once(&qword_10195D978, block);
  }

  v2 = qword_10195D970;

  return v2;
}

@end