@interface ADPeerLocationRemote
- (ADPeerLocationRemote)init;
- (id)_locationManager;
- (void)_cancelBestLocationTimer;
- (void)_executeBestLocationCompletionWithLocation:(id)location error:(id)error;
- (void)_executeBestLocationCompletionWithLocationErrorWithCode:(int64_t)code;
- (void)_getBestLocationWithCompletion:(id)completion;
- (void)_startBestLocationTimer;
- (void)_startUpdatingLocation;
- (void)dealloc;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
- (void)peerConnection:(id)connection handlePBSubclass:(id)subclass completion:(id)completion;
@end

@implementation ADPeerLocationRemote

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADPeerLocationRemote locationManagerDidResumeLocationUpdates:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADPeerLocationRemote locationManagerDidPauseLocationUpdates:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADPeerLocationRemote locationManager:didChangeAuthorizationStatus:]";
    v13 = 1024;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %d", &v11, 0x12u);
  }

  IsAllowed = AFLocationStatusIsAllowed();
  if ([(ADPeerLocationRemote *)self _hasActiveBestLocationRequest])
  {
    v9 = AFSiriLogContextDaemon;
    v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (IsAllowed)
    {
      if (v10)
      {
        v11 = 136315138;
        v12 = "[ADPeerLocationRemote locationManager:didChangeAuthorizationStatus:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s authorized with active request; starting location updates", &v11, 0xCu);
      }

      [(ADPeerLocationRemote *)self _startUpdatingLocation];
    }

    else
    {
      if (v10)
      {
        v11 = 136315138;
        v12 = "[ADPeerLocationRemote locationManager:didChangeAuthorizationStatus:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s not authorized with active request; failing with error", &v11, 0xCu);
      }

      [(ADPeerLocationRemote *)self _executeBestLocationCompletionWithLocationErrorWithCode:100];
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[ADPeerLocationRemote locationManager:didFailWithError:]";
    v9 = 2114;
    v10 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s %{public}@", &v7, 0x16u);
  }

  [(ADPeerLocationRemote *)self _executeBestLocationCompletionWithLocation:0 error:errorCopy];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  v6 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v7 = 136315395;
    v8 = "[ADPeerLocationRemote locationManager:didUpdateLocations:]";
    v9 = 2113;
    v10 = lastObject;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s updated location %{private}@", &v7, 0x16u);
  }

  [(ADPeerLocationRemote *)self _executeBestLocationCompletionWithLocation:lastObject];
}

- (void)peerConnection:(id)connection handlePBSubclass:(id)subclass completion:(id)completion
{
  subclassCopy = subclass;
  completionCopy = completion;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADPeerLocationRemote peerConnection:handlePBSubclass:completion:]";
    v12 = 2112;
    v13 = subclassCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [subclassCopy _ad_performWithPeerLocationManagerRemote:self completion:completionCopy];
}

- (void)_executeBestLocationCompletionWithLocationErrorWithCode:(int64_t)code
{
  v4 = [[NSError alloc] initWithDomain:@"com.apple.siri.location.Error" code:code userInfo:&__NSDictionary0__struct];
  [(ADPeerLocationRemote *)self _executeBestLocationCompletionWithLocation:0 error:v4];
}

- (void)_executeBestLocationCompletionWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v18 = 136315651;
    v19 = "[ADPeerLocationRemote _executeBestLocationCompletionWithLocation:error:]";
    v20 = 2113;
    v21 = locationCopy;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %{private}@ %@", &v18, 0x20u);
  }

  [(ADPeerLocationRemote *)self _cancelBestLocationTimer];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADPeerLocationRemote _executeBestLocationCompletionWithLocation:error:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s stopping location updates", &v18, 0xCu);
  }

  _locationManager = [(ADPeerLocationRemote *)self _locationManager];
  [_locationManager stopUpdatingLocation];

  _hasActiveBestLocationRequest = [(ADPeerLocationRemote *)self _hasActiveBestLocationRequest];
  v12 = AFSiriLogContextDaemon;
  v13 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (_hasActiveBestLocationRequest)
  {
    if (v13)
    {
      v18 = 136315138;
      v19 = "[ADPeerLocationRemote _executeBestLocationCompletionWithLocation:error:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s has active request; calling completion", &v18, 0xCu);
    }

    if (locationCopy)
    {
      v14 = objc_alloc_init(_ADPBLocationSetPeerLocationRequest);
      [(_ADPBLocationSetPeerLocationRequest *)v14 ad_setLocation:locationCopy];
    }

    else
    {
      v14 = 0;
    }

    (*(self->_bestLocationCompletion + 2))();
    bestLocationCompletion = self->_bestLocationCompletion;
    self->_bestLocationCompletion = 0;

    locationInUseAssertion = self->_locationInUseAssertion;
    if (locationInUseAssertion)
    {
      v17 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "[ADPeerLocationRemote _executeBestLocationCompletionWithLocation:error:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s ADPeerLocationRemote: location found for peer", &v18, 0xCu);
        locationInUseAssertion = self->_locationInUseAssertion;
      }

      self->_locationInUseAssertion = 0;
    }
  }

  else if (v13)
  {
    v18 = 136315138;
    v19 = "[ADPeerLocationRemote _executeBestLocationCompletionWithLocation:error:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s no active request", &v18, 0xCu);
  }
}

- (void)_getBestLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012E15C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_startUpdatingLocation
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADPeerLocationRemote _startUpdatingLocation]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s starting location updates", &v5, 0xCu);
  }

  _locationManager = [(ADPeerLocationRemote *)self _locationManager];
  [_locationManager startUpdatingLocation];
}

- (void)_cancelBestLocationTimer
{
  bestLocationTimer = self->_bestLocationTimer;
  if (bestLocationTimer)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADPeerLocationRemote _cancelBestLocationTimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
      bestLocationTimer = self->_bestLocationTimer;
    }

    dispatch_source_cancel(bestLocationTimer);
    v5 = self->_bestLocationTimer;
    self->_bestLocationTimer = 0;
  }
}

- (void)_startBestLocationTimer
{
  [(ADPeerLocationRemote *)self _cancelBestLocationTimer];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADPeerLocationRemote _startBestLocationTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  bestLocationTimer = self->_bestLocationTimer;
  self->_bestLocationTimer = v4;

  v6 = self->_bestLocationTimer;
  v7 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  v8 = self->_bestLocationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10012E764;
  handler[3] = &unk_10051DFE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_bestLocationTimer);
}

- (id)_locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [CLLocationManager alloc];
    v5 = AFEffectiveSiriBundleForLocation();
    v6 = [v4 initWithEffectiveBundle:v5 delegate:self onQueue:self->_queue];
    v7 = self->_locationManager;
    self->_locationManager = v6;

    [(CLLocationManager *)self->_locationManager registerAsLocationClient];
    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:kCLLocationAccuracyKilometer];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)dealloc
{
  [(ADPeerLocationRemote *)self _cancelBestLocationTimer];
  v3.receiver = self;
  v3.super_class = ADPeerLocationRemote;
  [(ADPeerLocationRemote *)&v3 dealloc];
}

- (ADPeerLocationRemote)init
{
  v9.receiver = self;
  v9.super_class = ADPeerLocationRemote;
  v2 = [(ADPeerLocationRemote *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADPeerLocationRemote", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[ADPeerConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.location" forRequests:j__objc_msgSend__ADPBLocationRequestType requireConnectedPeer:1];
    peerConnection = v2->_peerConnection;
    v2->_peerConnection = v6;

    [(ADPeerConnection *)v2->_peerConnection setDelegate:v2 forRequestTypes:sub_1002BEC68];
  }

  return v2;
}

@end