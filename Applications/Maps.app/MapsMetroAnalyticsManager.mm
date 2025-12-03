@interface MapsMetroAnalyticsManager
+ (id)sharedManager;
- (MapsMetroAnalyticsManager)init;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_startLocationUpdateTimerIfNeeded;
- (void)_stopLocationUpdateTimer;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MapsMetroAnalyticsManager

- (void)stopMonitoring
{
  meCardProvider = [(MapsMetroAnalyticsManager *)self meCardProvider];
  [meCardProvider setActive:0];

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

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  updateCopy = update;
  meCardProvider = [(MapsMetroAnalyticsManager *)self meCardProvider];

  if (meCardProvider == updateCopy)
  {
    meCardProvider2 = [(MapsMetroAnalyticsManager *)self meCardProvider];
    meCard = [meCardProvider2 meCard];
    mapItemsForHome = [meCard mapItemsForHome];
    firstObject = [mapItemsForHome firstObject];

    analyticsQueue = self->_analyticsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10081EA88;
    block[3] = &unk_101661B18;
    v13 = firstObject;
    v11 = firstObject;
    dispatch_async(analyticsQueue, block);
  }
}

- (void)_startLocationUpdateTimerIfNeeded
{
  if (!self->_currentLocationUpdateTimer)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v3 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
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

- (void)_locationManagerApprovalDidChange:(id)change
{
  v4 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v4 isAuthorizedForPreciseLocation];

  if (isAuthorizedForPreciseLocation)
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
  meCardProvider = [(MapsMetroAnalyticsManager *)self meCardProvider];
  [meCardProvider setActive:1];

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

    observers = [(MeCardDataProvider *)v2->_meCardProvider observers];
    [observers registerObserver:v2];

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
  block[4] = self;
  if (qword_10195D978 != -1)
  {
    dispatch_once(&qword_10195D978, block);
  }

  v2 = qword_10195D970;

  return v2;
}

@end