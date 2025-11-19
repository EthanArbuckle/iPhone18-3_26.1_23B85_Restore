@interface ADLocationManager
+ (void)prepareForAssistantEnablementInBackground;
- (ADLocationManager)initWithSerialQueue:(id)a3;
- (ADLocationManagerDelegate)delegate;
- (ADLocationManagerState)currentState;
- (BOOL)shouldSendLocationToServer:(id)a3 forAceCommand:(id)a4;
- (CLLocation)knownLocation;
- (CLLocation)lastLocation;
- (CLLocation)lastShiftedLocation;
- (CLLocation)locationSentToServer;
- (id)_locationManager;
- (id)_locationShifter;
- (id)_peerLocationConnection;
- (id)createCurrentLocationSnapshot;
- (id)createLocationInUseAssertion;
- (id)createSetRequestOrigin;
- (id)locationForSnapshot;
- (id)shiftLocationUsingCachedShifterFunction:(id)a3;
- (void)_cancelLocationSLATimer;
- (void)_cancelLocationTimer;
- (void)_clearCompletionState;
- (void)_dismissTCCDialogIfNeeded;
- (void)_generateResponseForGetRequestOriginCommand:(id)a3 withStatus:(id)a4 completion:(id)a5;
- (void)_generateResponseForGetRequestOriginCommand:(id)a3 withUnshiftedLocation:(id)a4 completion:(id)a5;
- (void)_processUpdatedLocation:(id)a3;
- (void)_requestLocationForGetRequestOrigin:(id)a3 completion:(id)a4;
- (void)_requestLocationWithBestAccuracy;
- (void)_scheduleLocationSLATimer;
- (void)_scheduleLocationTimerWithTimeout:(double)a3;
- (void)_startMonitoringLocationForGetRequestOrigin:(id)a3 completion:(id)a4;
- (void)_startMonitoringLocationWithDesiredAccuracy:(double)a3;
- (void)_triggerLocationABCForSubtype:(id)a3;
- (void)cancelLocationUpdateSessionTeardown;
- (void)currentAuthorizationStyle:(id)a3;
- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5;
- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)dismissTCCDialogIfNeeded:(id)a3;
- (void)dismissedAllVisibleAssistantUIForReason:(id)a3;
- (void)drainAuthorizationRequestCompletionsWithPossibleError:(id)a3;
- (void)drainLocationFetchRequestsWithPossibleError:(id)a3;
- (void)drainRequestsWithErrorCode:(int64_t)a3 clearLocationCache:(BOOL)a4 dismissDialog:(BOOL)a5;
- (void)endLocationUpdateSessionIfNeeded;
- (void)fetchLocationAuthorization:(id)a3;
- (void)forceLocationUpdateFromCoreLocation;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)navStatusChanged:(id)a3;
- (void)peerLocationConnection:(id)a3 didReceiveUnsolicitedLocation:(id)a4;
- (void)peerLocationConnectionSuggestsClearingCachedLocation:(id)a3;
- (void)prefetchCurrentLocation;
- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)scheduleAuthorizationRequestTimeoutForCompletionBlock:(id)a3 timeout:(double)a4;
- (void)scheduleLocationFetchRequestTimeoutForRequest:(id)a3 timeout:(double)a4;
- (void)scheduleLocationUpdateSessionTeardown;
- (void)sendTemporaryAccuracyAuthorizationRequestWithTimeout:(double)a3 completion:(id)a4;
- (void)setLastLocation:(id)a3;
- (void)setLastShiftedLocation:(id)a3;
- (void)setLocationSentToServer:(id)a3;
- (void)shiftLocation:(id)a3 completion:(id)a4;
- (void)shiftLocationWithTimeout:(id)a3 timeoutHandler:(id)a4 completion:(id)a5;
- (void)showingVisibleAssistantUIForReason:(id)a3 completion:(id)a4;
- (void)startLocationPrefetchRoutine;
- (void)startLocationUpdateSession;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)updateLocationForCommand:(id)a3 completion:(id)a4;
- (void)updateLocationSnapshot;
- (void)updateLocationSnapshotWithCompletion:(id)a3;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 completion:(id)a4;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 timeout:(double)a4 completion:(id)a5;
- (void)upgradeAccuracyIfNeeded:(double)a3;
@end

@implementation ADLocationManager

- (id)createLocationInUseAssertion
{
  v2 = AFEffectiveSiriBundleForLocation();
  v3 = [CLInUseAssertion newAssertionForBundle:v2 withReason:@"Assistant Daemon requires location to handle Siri & Dictation requests"];

  return v3;
}

- (void)prefetchCurrentLocation
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E00;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (ADLocationManagerState)currentState
{
  objc_copyStruct(v4, &self->_currentState, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.accuracyAuthorization = v3;
  result.locationServicesEnabled = v2;
  result.authorizationStatus = HIDWORD(v2);
  return result;
}

- (id)createCurrentLocationSnapshot
{
  v3 = [(ADLocationManager *)self currentState];
  v5 = v4;
  v6 = AFSiriLogContextLocation;
  v7 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  if ((v3 & 1) == 0)
  {
    if (v7)
    {
      v14 = 136315138;
      v15 = "[ADLocationManager createCurrentLocationSnapshot]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Generating location snapshot for location services disabled", &v14, 0xCu);
    }

    v8 = &stru_100514AF8;
    goto LABEL_9;
  }

  if (v7)
  {
    v14 = 136315650;
    v15 = "[ADLocationManager createCurrentLocationSnapshot]";
    v16 = 1024;
    v17 = HIDWORD(v3);
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Generating location snapshot for authorization status: %d, accuracy authorization: %ld", &v14, 0x1Cu);
  }

  if (HIDWORD(v3) < 3)
  {
    v8 = &stru_100514B18;
LABEL_9:
    v9 = [AFLocationSnapshot newWithBuilder:v8];
    goto LABEL_10;
  }

  if ((HIDWORD(v3) - 3) >= 2)
  {
    goto LABEL_20;
  }

  v11 = [(ADLocationManager *)self locationForSnapshot];
  v12 = AFSiriLogContextLocation;
  v13 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v13)
    {
      v14 = 136315138;
      v15 = "[ADLocationManager createCurrentLocationSnapshot]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s No cached location available to create location snapshot", &v14, 0xCu);
    }

LABEL_20:
    v9 = 0;
    goto LABEL_10;
  }

  if (v13)
  {
    v14 = 136315138;
    v15 = "[ADLocationManager createCurrentLocationSnapshot]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Creating location snapshot from cached location", &v14, 0xCu);
  }

  v9 = [[AFLocationSnapshot alloc] initWithLocation:v11 locationManagerState:{v3, v5}];

LABEL_10:

  return v9;
}

- (void)updateLocationSnapshot
{
  v2 = [(ADLocationManager *)self createCurrentLocationSnapshot];
  if (v2)
  {
    v3 = +[NSDate date];
    v4 = [AFDeviceContextMetadata alloc];
    v5 = AFDeviceContextKeyLocation;
    v6 = [v3 dateByAddingTimeInterval:300.0];
    v7 = [v4 initWithType:v5 deliveryDate:v3 expirationDate:v6 redactedKeyPaths:0 historyConfiguration:0];

    v8 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADLocationManager updateLocationSnapshot]";
      v12 = 2112;
      v13 = v2;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal Updating location snapshot with %@", &v10, 0x16u);
    }

    v9 = +[AFContextDonationService defaultService];
    [v9 donateContext:v2 withMetadata:v7 pushToRemote:0];
  }
}

- (void)startLocationPrefetchRoutine
{
  v3 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADLocationManager startLocationPrefetchRoutine]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Starting location pre-fetching", &v7, 0xCu);
  }

  [(ADLocationManager *)self _startMonitoringLocationWithDesiredAccuracy:self->_preferredPlatformLocationAccuracy];
  if (!self->_locationInUseAssertion)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADLocationManager startLocationPrefetchRoutine]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location prefetching routine is started - grabbing assertion once", &v7, 0xCu);
    }

    v5 = [(ADLocationManager *)self createLocationInUseAssertion];
    locationInUseAssertion = self->_locationInUseAssertion;
    self->_locationInUseAssertion = v5;
  }
}

- (id)_locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [CLLocationManager alloc];
    v5 = AFEffectiveSiriBundlePathForLocation();
    v6 = [v4 initWithEffectiveBundlePath:v5 delegate:self onQueue:self->_internalQueue];
    v7 = self->_locationManager;
    self->_locationManager = v6;

    [(CLLocationManager *)self->_locationManager registerAsLocationClient];
    v8 = self->_locationManager;
    LODWORD(v4) = +[CLLocationManager locationServicesEnabled];
    v9 = [(CLLocationManager *)v8 authorizationStatus];
    v10 = [(CLLocationManager *)v8 accuracyAuthorization];

    [(ADLocationManager *)self setCurrentState:v4 | (v9 << 32), v10];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)forceLocationUpdateFromCoreLocation
{
  if (self->_locationUpdateSessionStatus == 1)
  {
    v2 = [(ADLocationManager *)self _locationManager];
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager forceLocationUpdateFromCoreLocation]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Stopping location updates from CoreLocation", &v6, 0xCu);
    }

    [v2 stopUpdatingLocation];
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager forceLocationUpdateFromCoreLocation]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Starting location updates from CoreLocation", &v6, 0xCu);
    }

    [v2 startUpdatingLocation];
  }

  else
  {
    v5 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager forceLocationUpdateFromCoreLocation]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Not forcing location update from CoreLocation because location update session is not active", &v6, 0xCu);
    }
  }
}

- (void)startLocationUpdateSession
{
  locationUpdateSessionStatus = self->_locationUpdateSessionStatus;
  v4 = AFSiriLogContextLocation;
  v5 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  if (locationUpdateSessionStatus == 1)
  {
    if (v5)
    {
      v11 = 136315138;
      v12 = "[ADLocationManager startLocationUpdateSession]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location update session is already active, not trying to activate it again", &v11, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v11 = 136315138;
      v12 = "[ADLocationManager startLocationUpdateSession]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Starting location update session", &v11, 0xCu);
    }

    [(ADLocationManager *)self cancelLocationUpdateSessionTeardown];
    if (!self->_locationInUseAssertion)
    {
      v6 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADLocationManager startLocationUpdateSession]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Starting location update session - grabbing assertion once", &v11, 0xCu);
      }

      v7 = [(ADLocationManager *)self createLocationInUseAssertion];
      locationInUseAssertion = self->_locationInUseAssertion;
      self->_locationInUseAssertion = v7;
    }

    v9 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADLocationManager startLocationUpdateSession]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Starting updating location with CoreLocation", &v11, 0xCu);
    }

    v10 = [(ADLocationManager *)self _locationManager];
    [v10 startUpdatingLocation];

    self->_locationUpdateSessionStatus = 1;
  }
}

- (void)cancelLocationUpdateSessionTeardown
{
  locationUpdateSessionTeardownTimer = self->_locationUpdateSessionTeardownTimer;
  if (locationUpdateSessionTeardownTimer)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager cancelLocationUpdateSessionTeardown]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling location update session teardown timer", &v6, 0xCu);
      locationUpdateSessionTeardownTimer = self->_locationUpdateSessionTeardownTimer;
    }

    dispatch_source_cancel(locationUpdateSessionTeardownTimer);
    v5 = self->_locationUpdateSessionTeardownTimer;
    self->_locationUpdateSessionTeardownTimer = 0;
  }
}

- (void)_scheduleLocationSLATimer
{
  if (AFIsInternalInstall())
  {
    locationSLATimerSource = self->_locationSLATimerSource;
    v4 = AFSiriLogContextLocation;
    v5 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
    if (locationSLATimerSource)
    {
      if (v5)
      {
        *buf = 136315138;
        v13 = "[ADLocationManager _scheduleLocationSLATimer]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Already waiting for a response", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 136315394;
        v13 = "[ADLocationManager _scheduleLocationSLATimer]";
        v14 = 2048;
        v15 = 0x3FBD70A3D70A3D71;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Scheduling location-SLA timer for %lf", buf, 0x16u);
      }

      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
      v7 = self->_locationSLATimerSource;
      self->_locationSLATimerSource = v6;

      v8 = self->_locationSLATimerSource;
      v9 = dispatch_time(0, 115000000);
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
      v10 = self->_locationSLATimerSource;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001AB798;
      handler[3] = &unk_10051DFE8;
      handler[4] = self;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(self->_locationSLATimerSource);
    }
  }
}

- (CLLocation)lastLocation
{
  os_unfair_lock_lock(&self->_lastLocationLock);
  v3 = [(CLLocation *)self->_lastLocation copy];
  os_unfair_lock_unlock(&self->_lastLocationLock);

  return v3;
}

- (void)_cancelLocationSLATimer
{
  locationSLATimerSource = self->_locationSLATimerSource;
  if (locationSLATimerSource)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager _cancelLocationSLATimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling Location-SLA timer", &v6, 0xCu);
      locationSLATimerSource = self->_locationSLATimerSource;
    }

    dispatch_source_cancel(locationSLATimerSource);
    v5 = self->_locationSLATimerSource;
    self->_locationSLATimerSource = 0;
  }
}

- (void)endLocationUpdateSessionIfNeeded
{
  if ([(ADLocationManager *)self shouldEndLocationUpdateSession])
  {
    locationUpdateSessionStatus = self->_locationUpdateSessionStatus;
    v4 = AFSiriLogContextLocation;
    v5 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
    if (locationUpdateSessionStatus == 1)
    {
      if (v5)
      {
        v17 = 136315138;
        v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ending location update session", &v17, 0xCu);
      }

      [(ADLocationManager *)self scheduleLocationUpdateSessionTeardown];
      v6 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Stopping location updates from CoreLocation", &v17, 0xCu);
      }

      v7 = [(ADLocationManager *)self _locationManager];
      [v7 stopUpdatingLocation];

      v8 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Clearing last shifted location", &v17, 0xCu);
      }

      [(ADLocationManager *)self setLastShiftedLocation:0];
      v9 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Clearing location sent to server", &v17, 0xCu);
      }

      [(ADLocationManager *)self setLocationSentToServer:0];
      locationInUseAssertion = self->_locationInUseAssertion;
      if (locationInUseAssertion)
      {
        v11 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          v17 = 136315138;
          v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Location update session ended - releasing assertion", &v17, 0xCu);
          locationInUseAssertion = self->_locationInUseAssertion;
        }

        self->_locationInUseAssertion = 0;
      }

      self->_locationUpdateSessionStatus = 2;
    }

    else if (v5)
    {
      v17 = 136315138;
      v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location update session is not active, not trying to end it", &v17, 0xCu);
    }
  }

  else
  {
    v12 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      siriUserInterfaceIsVisible = self->_siriUserInterfaceIsVisible;
      v14 = v12;
      v15 = [NSNumber numberWithBool:siriUserInterfaceIsVisible];
      v16 = [(NSMutableSet *)self->_locationFetchRequests count];
      v17 = 136315650;
      v18 = "[ADLocationManager endLocationUpdateSessionIfNeeded]";
      v19 = 2112;
      v20 = v15;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Not ending location update session. UI visible: %@, location fetch requests count: %lu", &v17, 0x20u);
    }
  }
}

- (id)locationForSnapshot
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADLocationManager locationForSnapshot]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Using lastShiftedLocation for location snapshot", &v9, 0xCu);
    }

    v4 = [(ADLocationManager *)self lastShiftedLocation];
  }

  else
  {
    v5 = [(ADLocationManager *)self lastLocation];
    v6 = AFSiriLogContextLocation;
    v7 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v9 = 136315138;
        v10 = "[ADLocationManager locationForSnapshot]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Using lastLocation for location snapshot", &v9, 0xCu);
      }

      v4 = [(ADLocationManager *)self shiftLocationUsingCachedShifterFunction:v5];
    }

    else
    {
      if (v7)
      {
        v9 = 136315138;
        v10 = "[ADLocationManager locationForSnapshot]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s No cached location available to shift for location snapshot", &v9, 0xCu);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (CLLocation)lastShiftedLocation
{
  os_unfair_lock_lock(&self->_lastShiftedLocationLock);
  v3 = [(CLLocation *)self->_lastShiftedLocation copy];
  os_unfair_lock_unlock(&self->_lastShiftedLocationLock);

  return v3;
}

- (CLLocation)knownLocation
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    [(ADLocationManager *)self lastShiftedLocation];
  }

  else
  {
    [(ADLocationManager *)self lastLocation];
  }
  v2 = ;

  return v2;
}

- (ADLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createSetRequestOrigin
{
  v3 = objc_opt_new();
  v4 = [(ADLocationManager *)self currentState];
  if ((v4 & 1) == 0)
  {
    v5 = &SASetRequestOriginStatusDisabledValue;
    goto LABEL_5;
  }

  if (HIDWORD(v4) < 3)
  {
    v5 = &SASetRequestOriginStatusDeniedValue;
LABEL_5:
    [v3 setStatus:*v5];
    goto LABEL_6;
  }

  if ((HIDWORD(v4) - 3) < 2)
  {
    v7 = [(ADLocationManager *)self locationForSnapshot];
    [v7 coordinate];
    [v3 setLatitude:?];
    [v7 coordinate];
    [v3 setLongitude:v8];
    [v7 horizontalAccuracy];
    [v3 setHorizontalAccuracy:?];
    [v7 verticalAccuracy];
    [v3 setVerticalAccuracy:?];
    [v7 speed];
    [v3 setSpeed:?];
    [v7 altitude];
    [v3 setAltitude:?];
    [v7 course];
    [v3 setDirection:?];
    [v3 setStatus:SASetRequestOriginStatusValidValue];
  }

LABEL_6:

  return v3;
}

- (void)scheduleLocationUpdateSessionTeardown
{
  v3 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[ADLocationManager scheduleLocationUpdateSessionTeardown]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Scheduling location update session teardown", buf, 0xCu);
  }

  locationUpdateSessionTeardownTimer = self->_locationUpdateSessionTeardownTimer;
  if (locationUpdateSessionTeardownTimer)
  {
    dispatch_source_cancel(locationUpdateSessionTeardownTimer);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
    v6 = self->_locationUpdateSessionTeardownTimer;
    self->_locationUpdateSessionTeardownTimer = v5;
  }

  v7 = self->_locationUpdateSessionTeardownTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  v9 = self->_locationUpdateSessionTeardownTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001A512C;
  handler[3] = &unk_10051B5F0;
  objc_copyWeak(&v11, buf);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_activate(self->_locationUpdateSessionTeardownTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)upgradeAccuracyIfNeeded:(double)a3
{
  v5 = [(ADLocationManager *)self _locationManager];
  [v5 desiredAccuracy];
  locationUpdateSessionStatus = self->_locationUpdateSessionStatus;
  v8 = v7 - a3;
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.assistant"];
  v10 = [v9 BOOLForKey:@"disableForceLocationUpdates"];
  v11 = AFSiriLogContextLocation;
  v12 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  v13 = v8 > 2.22044605e-16 || locationUpdateSessionStatus == 0;
  if (!v13 || (v10 & 1) != 0)
  {
    if (v12)
    {
      v14 = self->_locationUpdateSessionStatus;
      v15 = v11;
      [v5 desiredAccuracy];
      v17 = 136315906;
      v18 = "[ADLocationManager upgradeAccuracyIfNeeded:]";
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Not upgrading desired accuracy of location to %.5g. Session status: %lu, current desired accuracy: %.5g", &v17, 0x2Au);
    }
  }

  else
  {
    if (v12)
    {
      v17 = 136315394;
      v18 = "[ADLocationManager upgradeAccuracyIfNeeded:]";
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Upgrading desired accuracy of location to %.5g", &v17, 0x16u);
    }

    [v5 setDesiredAccuracy:a3];
    [(ADLocationManager *)self forceLocationUpdateFromCoreLocation];
  }
}

- (void)dismissTCCDialogIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    internalQueue = self->_internalQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001A5484;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(internalQueue, v7);
  }

  else if (v4)
  {
    dispatch_async(self->_internalQueue, v4);
  }
}

- (void)_dismissTCCDialogIfNeeded
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADLocationManager _dismissTCCDialogIfNeeded]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Sending the dialog dismiss to CoreLocation", &v4, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = AFEffectiveSiriBundlePathForLocation();
    [CLLocationManager tearDownLocationAuthorizationPromptForBundlePath:v3];
  }
}

- (void)drainRequestsWithErrorCode:(int64_t)a3 clearLocationCache:(BOOL)a4 dismissDialog:(BOOL)a5
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A5634;
  block[3] = &unk_100514C00;
  v7 = a4;
  block[4] = self;
  block[5] = a3;
  v8 = a5;
  dispatch_async(internalQueue, block);
}

- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 desiredAccuracy];
  v9 = v8;
  [v6 timeout];
  v11 = v10;
  v12 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADLocationManager currentLocationWithFetchRequest:completion:]";
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Received current location request with accuracy: %.5g, timeout: %.5g", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A58D4;
  block[3] = &unk_10051BA90;
  v17 = v6;
  v18 = v7;
  block[4] = self;
  v19 = v9;
  v20 = v11;
  v14 = v6;
  v15 = v7;
  dispatch_async(internalQueue, block);
}

- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = objc_opt_new();
  [v9 setDesiredAccuracy:a3];
  [v9 setTimeout:a4];
  [v9 setStyle:0];
  [(ADLocationManager *)self currentLocationWithFetchRequest:v9 completion:v8];
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 timeout:(double)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithBool:v6];
    *buf = 136315650;
    v19 = "[ADLocationManager updateTemporaryAuthorizationForAccurateLocation:timeout:completion:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Received update temporary accuracy authorization, isAuthorized: %@, timeout: %.5g", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001A6018;
  v14[3] = &unk_100514BD8;
  v17 = v6;
  v14[4] = self;
  v15 = v8;
  v16 = a4;
  v13 = v8;
  dispatch_async(internalQueue, v14);
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A6334;
  v7[3] = &unk_100514BB0;
  v8 = a4;
  v6 = v8;
  [(ADLocationManager *)self updateTemporaryAuthorizationForAccurateLocation:v4 timeout:v7 completion:2.0];
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 136315650;
    v19 = "[ADLocationManager updateAuthorizationStyleWithUserSelection:timeout:completion:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Received update authorization style: %@, timeout: %.5g", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001A64D0;
  v14[3] = &unk_100517610;
  v15 = v8;
  v16 = a3;
  v14[4] = self;
  v17 = a4;
  v13 = v8;
  dispatch_async(internalQueue, v14);
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A683C;
  v7[3] = &unk_100514BB0;
  v8 = a4;
  v6 = v8;
  [(ADLocationManager *)self updateAuthorizationStyleWithUserSelection:a3 timeout:v7 completion:2.0];
}

- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 136315650;
    v18 = "[ADLocationManager requestTemporaryAccuracyAuthorizationWithStyle:timeout:completion:]";
    v19 = 2112;
    v20 = v11;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Received temporary accuracy authorization request with style: %@, timeout: %.5g", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A69D4;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v15 = v8;
  v16 = a4;
  v13 = v8;
  dispatch_async(internalQueue, block);
}

- (void)sendTemporaryAccuracyAuthorizationRequestWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  authorizationRequestCompletions = self->_authorizationRequestCompletions;
  v8 = objc_retainBlock(v6);
  [(NSMutableSet *)authorizationRequestCompletions addObject:v8];

  [(ADLocationManager *)self scheduleAuthorizationRequestTimeoutForCompletionBlock:v6 timeout:a3];
  if (!self->_locationInUseAssertion)
  {
    v9 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[ADLocationManager sendTemporaryAccuracyAuthorizationRequestWithTimeout:completion:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Will request temporary full accuracy authorization - grabbing assertion once", buf, 0xCu);
    }

    v10 = [(ADLocationManager *)self createLocationInUseAssertion];
    locationInUseAssertion = self->_locationInUseAssertion;
    self->_locationInUseAssertion = v10;
  }

  v12 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADLocationManager sendTemporaryAccuracyAuthorizationRequestWithTimeout:completion:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Sending requestTemporaryFullAccuracyAuthorizationWithPurposeKey:completion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13 = [(ADLocationManager *)self _locationManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A6E98;
  v15[3] = &unk_100514B88;
  objc_copyWeak(&v17, buf);
  v14 = v6;
  v15[4] = self;
  v16 = v14;
  [v13 requestTemporaryFullAccuracyAuthorizationWithPurposeKey:@"generic" completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 136315650;
    v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Received location authorization request with style: %@, timeout: %.5g", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001A72B0;
  v14[3] = &unk_100517610;
  v14[4] = self;
  v15 = v8;
  v16 = a4;
  v17 = a3;
  v13 = v8;
  dispatch_async(internalQueue, v14);
}

- (void)currentAuthorizationStyle:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADLocationManager currentAuthorizationStyle:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received current authorizationg style request", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A76FC;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(internalQueue, v8);
}

- (void)drainLocationFetchRequestsWithPossibleError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[ADLocationManager drainLocationFetchRequestsWithPossibleError:]";
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Draining location fetch requests with error %@", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = self->_locationFetchRequests;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v29 + 1) + 8 * i) completion];
          (v11)[2](v11, 0, v4);
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }

    [(NSMutableSet *)self->_locationFetchRequests removeAllObjects];
  }

  else
  {
    v12 = [(ADLocationManager *)self lastShiftedLocation];
    if (v12)
    {
      v13 = [(NSMutableSet *)self->_locationFetchRequests copy];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * j);
            if (![v19 style])
            {
              [v12 horizontalAccuracy];
              [v19 desiredAccuracy];
            }

            [v12 horizontalAccuracy];
            v21 = v20;
            [v19 desiredAccuracy];
            if (v21 <= v22)
            {
              v23 = [v19 completion];
              (v23)[2](v23, v12, 0);

              [(NSMutableSet *)self->_locationFetchRequests removeObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v24 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v36 = "[ADLocationManager drainLocationFetchRequestsWithPossibleError:]";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Drain location is called with no location and no error, this situation should not be possible", buf, 0xCu);
      }
    }
  }
}

- (void)drainAuthorizationRequestCompletionsWithPossibleError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[ADLocationManager drainAuthorizationRequestCompletionsWithPossibleError:]";
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Draining authorization requests with error %@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_authorizationRequestCompletions;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v19 + 1) + 8 * i) + 16))();
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(ADLocationManager *)self currentState];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_authorizationRequestCompletions;
    v11 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v15 + 1) + 8 * j) + 16))(*(*(&v15 + 1) + 8 * j));
        }

        v12 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }

  [(NSMutableSet *)self->_authorizationRequestCompletions removeAllObjects];
}

- (void)scheduleLocationFetchRequestTimeoutForRequest:(id)a3 timeout:(double)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  internalQueue = self->_internalQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A7E78;
  v10[3] = &unk_1005177E8;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_after(v7, internalQueue, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)scheduleAuthorizationRequestTimeoutForCompletionBlock:(id)a3 timeout:(double)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A8060;
  block[3] = &unk_100515FF0;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, internalQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v6 = *(a6 + 2);
  if (a5 == 10)
  {
    v6(a6, a3, a4);
  }

  else
  {
    (v6)(a6, 0, 0, a4);
  }
}

- (void)dismissedAllVisibleAssistantUIForReason:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8280;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)showingVisibleAssistantUIForReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A8410;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)updateLocationForCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A86E4;
  v15[3] = &unk_100514B40;
  v15[4] = self;
  v16 = a4;
  v7 = v16;
  v8 = objc_retainBlock(v15);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A8884;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(internalQueue, block);
}

- (BOOL)shouldSendLocationToServer:(id)a3 forAceCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 maxAge];
    v10 = [v6 _af_isOlderThanAge:v9];

    v11 = AFSiriLogContextLocation;
    v12 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v12)
      {
        v13 = v11;
        [v8 maxAge];
        v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v44 = 136315394;
        v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
        v46 = 2112;
        v47 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Not sending location to server for server request because location is too old. Max age %@", &v44, 0x16u);
      }

LABEL_18:
      v15 = 0;
      goto LABEL_19;
    }

    if (!v12)
    {
      v15 = 1;
      goto LABEL_19;
    }

    v44 = 136315138;
    v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
    v16 = "%s Sending location to server because it asked us for location update";
    v15 = 1;
    goto LABEL_10;
  }

  if (![objc_opt_class() _shouldUseOneshotLocationRequest])
  {
    if (![(ADLocationManager *)self allowAdHocSendingLocationToServer])
    {
      v17 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v44 = 136315138;
        v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Not sending location to server because running full UOD", &v44, 0xCu);
      }

      goto LABEL_18;
    }

    if ([(ADLocationManager *)self needsToSendLocation])
    {
      v11 = AFSiriLogContextLocation;
      v15 = 1;
      if (!os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v44 = 136315138;
      v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
      v16 = "%s Sending location to server because of needsToSendLocation override";
      goto LABEL_10;
    }

    v19 = [(ADLocationManager *)self locationSentToServer];
    if (v19)
    {
      if ([(ADLocationManager *)self isNavigating])
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 5.0;
      }

      v21 = [v6 timestamp];
      v22 = [v19 timestamp];
      [v21 timeIntervalSinceDate:v22];
      v24 = v23;

      if (v24 - v20 <= 2.22044605e-16)
      {
        v35 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          v44 = 136315650;
          v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
          v46 = 2048;
          v47 = v24;
          v48 = 2048;
          v49 = v20;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Not sending location to server because location age difference %.3g is less than or equal to %.3g", &v44, 0x20u);
        }

        goto LABEL_39;
      }

      [v6 horizontalAccuracy];
      v26 = v25;
      [v19 horizontalAccuracy];
      if (v26 - v27 < -2.22044605e-16)
      {
        v28 = AFSiriLogContextLocation;
        v15 = 1;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          v29 = v28;
          [v6 horizontalAccuracy];
          v31 = v30;
          [v19 horizontalAccuracy];
          v44 = 136315650;
          v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
          v46 = 2048;
          v47 = v31;
          v48 = 2048;
          v49 = v32;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Sending location to server because new location accuracy %.3g is better than old %.3g", &v44, 0x20u);
        }

        goto LABEL_40;
      }

      [v6 horizontalAccuracy];
      if (v36 - kCLLocationAccuracyHundredMeters <= 2.22044605e-16 && ([v19 horizontalAccuracy], v37 - kCLLocationAccuracyHundredMeters <= 2.22044605e-16) && (objc_msgSend(v19, "distanceFromLocation:", v6), v38 + -10.0 >= 2.22044605e-16))
      {
        v33 = AFSiriLogContextLocation;
        v15 = 1;
        if (!os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v44 = 136315138;
        v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
        v34 = "%s Sending location to server because new location is further than 10m from previously sent";
      }

      else
      {
        [v6 verticalAccuracy];
        if (v39 + -30.0 > 2.22044605e-16 || ([v19 verticalAccuracy], v40 + -30.0 > 2.22044605e-16) || (objc_msgSend(v6, "altitude"), v42 = v41, objc_msgSend(v19, "altitude"), vabdd_f64(v42, v43) < 10.0))
        {
LABEL_39:
          v15 = 0;
          goto LABEL_40;
        }

        v33 = AFSiriLogContextLocation;
        v15 = 1;
        if (!os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v44 = 136315138;
        v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
        v34 = "%s Sending location to server because location altitude has changed for more than 50 centimeters";
      }
    }

    else
    {
      v33 = AFSiriLogContextLocation;
      v15 = 1;
      if (!os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
LABEL_40:

        goto LABEL_19;
      }

      v44 = 136315138;
      v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
      v34 = "%s Sending location to server because never sent it to server during this session";
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, v34, &v44, 0xCu);
    goto LABEL_40;
  }

  v11 = AFSiriLogContextLocation;
  v15 = 1;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v44 = 136315138;
    v45 = "[ADLocationManager shouldSendLocationToServer:forAceCommand:]";
    v16 = "%s Sending location to server because because it's running on stationary device";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v16, &v44, 0xCu);
  }

LABEL_19:

  return v15;
}

- (void)updateLocationSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9314;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = [(ADLocationManager *)self currentState];
  v7 = v6;
  v8 = v4;
  v9 = +[CLLocationManager locationServicesEnabled];
  v10 = [v8 authorizationStatus];
  v11 = [v8 accuracyAuthorization];

  v22 = v10;
  [(ADLocationManager *)self setCurrentState:v9 | (v10 << 32), v11];
  if (!self->_isLocationManagerReady)
  {
    self->_isLocationManagerReady = 1;
    v12 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ADLocationManager locationManagerDidChangeAuthorization:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Got our first location authorization callback", buf, 0xCu);
    }

    dispatch_group_leave(self->_initialLocationAuthorizationCallbackGroup);
  }

  v13 = +[AFAnalytics sharedAnalytics];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001A9810;
  v26[3] = &unk_100514AB8;
  v26[6] = v11;
  v26[7] = v5;
  v26[8] = v7;
  v26[4] = self;
  v26[5] = v9 | (v10 << 32);
  [v13 logEventWithType:1929 contextProvider:v26 contextProvidingQueue:self->_internalQueue];

  if ((v5 & 0xFFFFFFFF00000001) != (v9 | (v10 << 32)) || v11 != v7)
  {
    v14 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [NSNumber numberWithBool:v9];
      v17 = [NSNumber numberWithInt:v11 == 0];
      *buf = 136315906;
      v28 = "[ADLocationManager locationManagerDidChangeAuthorization:]";
      v29 = 1024;
      v30 = v10;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Authorization status changed to %d, isEnabled: %@, preciseLocationEnabled: %@", buf, 0x26u);
    }

    v18 = HIDWORD(v5);
    if (v10 == 1 || v18 == 1)
    {
      v19 = +[NSNotificationCenter defaultCenter];
      [v19 postNotificationName:@"ADLocationRestrictionDidChangeNotification" object:0];
    }

    [(ADLocationManager *)self _cancelLocationSLATimer];
    if (v10 >= 3)
    {
      if (v10 - 3 >= 2)
      {
LABEL_31:
        [(ADLocationManager *)self drainAuthorizationRequestCompletionsWithPossibleError:0];
        goto LABEL_32;
      }

      v20 = [(ADLocationManager *)self locationForSnapshot];
      if (v20)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001A99F8;
        v24[3] = &unk_10051D4C8;
        v24[4] = self;
        [(ADLocationManager *)self _generateResponseForGetRequestOriginCommand:0 withUnshiftedLocation:v20 completion:v24];
      }

      else
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001A9A94;
        v23[3] = &unk_10051D4C8;
        v23[4] = self;
        [(ADLocationManager *)self _generateLocationUnknownResponseForGetRequestOriginCommand:0 completion:v23];
      }

      if (v18 == v22)
      {
        if (v7 && !v11)
        {
          [(ADLocationManager *)self forceLocationUpdateFromCoreLocation];
        }
      }

      else
      {
        [(ADLocationManager *)self startLocationPrefetchRoutine];
      }
    }

    else
    {
      [(ADLocationManager *)self setLastShiftedLocation:0];
      v20 = self->_requestOriginCommand;
      v21 = objc_retainBlock(self->_updateCompletion);
      if (!v21)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001A995C;
        v25[3] = &unk_10051D4C8;
        v25[4] = self;
        v21 = objc_retainBlock(v25);
      }

      if (v9)
      {
        [(ADLocationManager *)self _generateLocationDeniedResponseForGetRequestOriginCommand:v20 completion:v21];
      }

      else
      {
        [(ADLocationManager *)self _generateLocationDisabledResponseForGetRequestOriginCommand:v20 completion:v21];
      }

      if (self->_updateCompletion)
      {
        [(ADLocationManager *)self _clearCompletionState];
      }
    }

    goto LABEL_31;
  }

LABEL_32:
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[ADLocationManager locationManager:didFailWithError:]";
    v32 = 2114;
    v33 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v9 = +[AFAnalytics sharedAnalytics];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1001A9FC0;
  v28 = &unk_10051A1A0;
  v10 = v7;
  v29 = v10;
  v30 = self;
  [v9 logEventWithType:1929 contextProvider:&v25 contextProvidingQueue:self->_internalQueue];

  v11 = [v10 domain];
  v12 = [v11 isEqualToString:kCLErrorDomain];

  if (!v12)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v13 = [v10 code];
  if (!v13)
  {
    if (![objc_opt_class() _shouldUseOneshotLocationRequest])
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v14 = v13;
  if (v13 == 1)
  {
    [v6 stopUpdatingLocation];
  }

LABEL_9:
  [(ADLocationManager *)self _cancelLocationTimer];
  [(ADLocationManager *)self _cancelLocationSLATimer];
  v15 = self->_requestOriginCommand;
  if (v15)
  {
    updateCompletion = self->_updateCompletion;
    if (v14 == 1)
    {
      [(ADLocationManager *)self _generateLocationDeniedResponseForGetRequestOriginCommand:v15 completion:updateCompletion];
    }

    else
    {
      [(ADLocationManager *)self _generateLocationUnknownResponseForGetRequestOriginCommand:v15 completion:updateCompletion];
    }

    [(ADLocationManager *)self _clearCompletionState];
  }

  if ((v14 - 1) < 2)
  {
    v36 = NSUnderlyingErrorKey;
    *buf = v10;
    v17 = v10;
    v18 = [NSDictionary dictionaryWithObjects:buf forKeys:&v36 count:1];
    v19 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:6 userInfo:v18];

    [(ADLocationManager *)self drainLocationFetchRequestsWithPossibleError:v19];
    goto LABEL_21;
  }

  if (v14 == 18)
  {
    v20 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      authorizationRequestCompletions = self->_authorizationRequestCompletions;
      v22 = v20;
      v23 = [(NSMutableSet *)authorizationRequestCompletions count];
      *buf = 136315650;
      *&buf[4] = "[ADLocationManager locationManager:didFailWithError:]";
      v32 = 2112;
      v33 = v10;
      v34 = 2048;
      v35 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s CoreLocation decline presenting authorization prompt with error: %@. This error is intentionally ignored. Currently awaiting requests count: %lu", buf, 0x20u);
    }

    goto LABEL_21;
  }

LABEL_19:
  v24 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADLocationManager locationManager:didFailWithError:]";
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s LocationService not handling error %{public}@", buf, 0x16u);
  }

LABEL_21:
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v6 lastObject];
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v28 = "[ADLocationManager locationManager:didUpdateLocations:]";
    v29 = 2113;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  v9 = mach_absolute_time();
  kdebug_trace();
  [(ADLocationManager *)self _cancelLocationSLATimer];
  v10 = +[AFAnalytics sharedAnalytics];
  v25[0] = @"locationTimestamp";
  v11 = [v7 timestamp];
  [v11 timeIntervalSince1970];
  v12 = [NSNumber numberWithDouble:?];
  v26[0] = v12;
  v25[1] = @"horizontalAccuracy";
  [v7 horizontalAccuracy];
  v13 = [NSNumber numberWithDouble:?];
  v26[1] = v13;
  v25[2] = @"refID";
  v14 = [(SAGetRequestOrigin *)self->_requestOriginCommand aceId];
  v15 = v14;
  v16 = @"NULL";
  if (v14)
  {
    v16 = v14;
  }

  v26[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3, v18];
  [v10 logEventWithType:1929 machAbsoluteTime:v9 context:v17];

  [(ADLocationManager *)self _processUpdatedLocation:v7];
  objc_initWeak(buf, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001AA450;
  v23[3] = &unk_10051CB60;
  objc_copyWeak(v24, buf);
  v24[1] = a2;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001AA590;
  v21[3] = &unk_100514A90;
  objc_copyWeak(v22, buf);
  v22[1] = a2;
  [(ADLocationManager *)self shiftLocationWithTimeout:v7 timeoutHandler:v23 completion:v21];
  objc_destroyWeak(v22);
  objc_destroyWeak(v24);
  objc_destroyWeak(buf);
}

- (void)peerLocationConnectionSuggestsClearingCachedLocation:(id)a3
{
  v4 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADLocationManager peerLocationConnectionSuggestsClearingCachedLocation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AA844;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)peerLocationConnection:(id)a3 didReceiveUnsolicitedLocation:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v12 = "[ADLocationManager peerLocationConnection:didReceiveUnsolicitedLocation:]";
    v13 = 2113;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AA988;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(internalQueue, v9);
}

- (void)_processUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = [(ADLocationManager *)self lastLocation];
  v6 = self->_requestOriginCommand;
  if ([(ADLocationManager *)self shouldSendLocationToServer:v4 forAceCommand:v6])
  {
    [(ADLocationManager *)self _cancelLocationTimer];
    [(ADLocationManager *)self _generateResponseForGetRequestOriginCommand:v6 withUnshiftedLocation:v4 completion:?];
    [(ADLocationManager *)self _clearCompletionState];
  }

  v7 = v4;
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v10 = v7;
    if (v8)
    {
      if ([v7 ad_isNewerThan:v8])
      {
        v10 = v7;
      }

      else
      {
        v10 = v9;
      }
    }
  }

  v11 = v10;

  [(ADLocationManager *)self setLastLocation:v11];
  [(ADLocationManager *)self updateLocationSnapshot];
}

- (void)_requestLocationForGetRequestOrigin:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[ADLocationManager _requestLocationForGetRequestOrigin:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Requesting best location", &v13, 0xCu);
  }

  v9 = [v6 copy];
  requestOriginCommand = self->_requestOriginCommand;
  self->_requestOriginCommand = v9;

  v11 = objc_retainBlock(v7);
  updateCompletion = self->_updateCompletion;
  self->_updateCompletion = v11;

  [(ADLocationManager *)self _requestLocationWithBestAccuracy];
}

- (void)_requestLocationWithBestAccuracy
{
  if (!self->_locationTimerSource)
  {
    v3 = [(ADLocationManager *)self _locationManager];
    [v3 requestLocation];

    if (AFIsNano())
    {
      v4 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v8 = "[ADLocationManager _requestLocationWithBestAccuracy]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Asking for location from peer", buf, 0xCu);
      }

      v5 = [(ADLocationManager *)self _peerLocationConnection];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1001AAF1C;
      v6[3] = &unk_100514A68;
      v6[4] = self;
      [v5 getBestLocationWithCompletion:v6];
    }
  }

  [(ADLocationManager *)self _scheduleLocationTimerWithTimeout:10.0];
}

- (void)_startMonitoringLocationForGetRequestOrigin:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[ADLocationManager _startMonitoringLocationForGetRequestOrigin:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Starting location monitoring", &v16, 0xCu);
  }

  v9 = [v6 copy];
  requestOriginCommand = self->_requestOriginCommand;
  self->_requestOriginCommand = v9;

  v11 = objc_retainBlock(v7);
  updateCompletion = self->_updateCompletion;
  self->_updateCompletion = v11;

  [v6 desiredCLAccuracy];
  [(ADLocationManager *)self _startMonitoringLocationWithDesiredAccuracy:?];
  v13 = [v6 searchTimeout];
  [v13 doubleValue];
  v15 = v14;

  if (v15 > 0.0)
  {
    [(ADLocationManager *)self _scheduleLocationTimerWithTimeout:v15];
  }
}

- (void)_startMonitoringLocationWithDesiredAccuracy:(double)a3
{
  v5 = +[AFAnalytics sharedAnalytics];
  v11[0] = @"desiredAccuracy";
  v6 = [NSNumber numberWithDouble:a3];
  v11[1] = @"refID";
  v12[0] = v6;
  v7 = [(SAGetRequestOrigin *)self->_requestOriginCommand aceId];
  v8 = v7;
  v9 = @"NULL";
  if (v7)
  {
    v9 = v7;
  }

  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 logEventWithType:1928 context:v10];

  [(ADLocationManager *)self upgradeAccuracyIfNeeded:a3];
  [(ADLocationManager *)self startLocationUpdateSession];
  [(ADLocationManager *)self setLastLocation:0];
  [(ADLocationManager *)self _scheduleLocationSLATimer];
}

- (void)_scheduleLocationTimerWithTimeout:(double)a3
{
  [(ADLocationManager *)self _cancelLocationTimer];
  v5 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADLocationManager _scheduleLocationTimerWithTimeout:]";
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Scheduling location timer for %lf", buf, 0x16u);
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
  locationTimerSource = self->_locationTimerSource;
  self->_locationTimerSource = v6;

  v8 = self->_locationTimerSource;
  v9 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10 = self->_locationTimerSource;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AB4D8;
  v11[3] = &unk_10051D770;
  v11[4] = self;
  *&v11[5] = a3;
  dispatch_source_set_event_handler(v10, v11);
  dispatch_resume(self->_locationTimerSource);
}

- (void)_cancelLocationTimer
{
  locationTimerSource = self->_locationTimerSource;
  if (locationTimerSource)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADLocationManager _cancelLocationTimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling location timer", &v6, 0xCu);
      locationTimerSource = self->_locationTimerSource;
    }

    dispatch_source_cancel(locationTimerSource);
    v5 = self->_locationTimerSource;
    self->_locationTimerSource = 0;
  }
}

- (void)_triggerLocationABCForSubtype:(id)a3
{
  v4 = a3;
  v5 = [(SAGetRequestOrigin *)self->_requestOriginCommand aceId];
  v6 = v5;
  if (v5)
  {
    v15 = @"refID";
    v16 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[ADLocationManager _triggerLocationABCForSubtype:]";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s SERIOUS PROBLEM FETCHING LOCATION %@ %@", &v9, 0x20u);
  }
}

- (void)_clearCompletionState
{
  updateCompletion = self->_updateCompletion;
  self->_updateCompletion = 0;

  requestOriginCommand = self->_requestOriginCommand;
  self->_requestOriginCommand = 0;
}

- (void)_generateResponseForGetRequestOriginCommand:(id)a3 withStatus:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v15 = objc_opt_new();
    [v15 setStatus:v9];

    [(ADLocationManager *)self currentState];
    v12 = [NSNumber numberWithInt:v11 == 0];
    [v15 setPreciseLocationEnabled:v12];

    v13 = [v10 aceId];
    [v15 setRefId:v13];

    v14 = [v10 desiredAccuracy];

    [v15 setDesiredAccuracy:v14];
    v8[2](v8, v15);
  }
}

- (void)_generateResponseForGetRequestOriginCommand:(id)a3 withUnshiftedLocation:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v24 = "[ADLocationManager _generateResponseForGetRequestOriginCommand:withUnshiftedLocation:completion:]";
      v25 = 2113;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Attempting to shift from location: %{private}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001ABDBC;
    v19[3] = &unk_100514A18;
    objc_copyWeak(v22, buf);
    v22[1] = a2;
    v13 = v9;
    v20 = v13;
    v14 = v11;
    v21 = v14;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001ABEC8;
    v15[3] = &unk_100514A40;
    objc_copyWeak(v18, buf);
    v18[1] = a2;
    v16 = v13;
    v17 = v14;
    [(ADLocationManager *)self shiftLocationWithTimeout:v10 timeoutHandler:v19 completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (void)shiftLocationWithTimeout:(id)a3 timeoutHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADLocationManager shiftLocationWithTimeout:timeoutHandler:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Starting location shifting routine", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = dispatch_time(0, 2000000000);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AC364;
  block[3] = &unk_10051C8E0;
  p_buf = &buf;
  v14 = v9;
  v20 = v14;
  dispatch_after(v12, internalQueue, block);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001AC438;
  v16[3] = &unk_1005149F0;
  v18 = &buf;
  v15 = v10;
  v17 = v15;
  [(ADLocationManager *)self shiftLocation:v8 completion:v16];

  _Block_object_dispose(&buf, 8);
}

- (void)shiftLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 referenceFrame] == 2)
  {
    v8 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADLocationManager shiftLocation:completion:]";
      v9 = "%s Location is already shifted";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [v6 coordinate];
  v11 = v10;
  v13 = v12;
  [v6 horizontalAccuracy];
  v15 = v14;
  if (([GEOLocationShifter isLocationShiftRequiredForCoordinate:v11, v13]& 1) == 0)
  {
    v8 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADLocationManager shiftLocation:completion:]";
      v9 = "%s Location shifting is not needed";
      goto LABEL_8;
    }

LABEL_9:
    v7[2](v7, v6, 0);
    goto LABEL_10;
  }

  v16 = [(ADLocationManager *)self _locationShifter];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001AC6D8;
  v19[3] = &unk_1005149A8;
  v20 = v6;
  v21 = v7;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001AC854;
  v17[3] = &unk_10051D2F0;
  v18 = v21;
  [v16 shiftCoordinate:v19 accuracy:&stru_1005149C8 withCompletionHandler:v17 mustGoToNetworkCallback:self->_internalQueue errorHandler:v11 callbackQueue:{v13, v15}];

LABEL_10:
}

- (id)shiftLocationUsingCachedShifterFunction:(id)a3
{
  v4 = a3;
  if ([v4 referenceFrame] == 2 || (objc_msgSend(v4, "coordinate"), v6 = v5, v8 = v7, v28 = v5, v29 = v7, objc_msgSend(v4, "horizontalAccuracy"), v10 = v9, v27 = v9, (+[GEOLocationShifter isLocationShiftRequiredForCoordinate:](GEOLocationShifter, "isLocationShiftRequiredForCoordinate:", v6, v8) & 1) == 0))
  {
    v24 = v4;
  }

  else
  {
    v11 = [(ADLocationManager *)self _locationShifter];
    v12 = [v11 shiftCoordinate:&v28 accuracy:&v27 shiftedCoordinate:v6 shiftedAccuracy:{v8, v10}];

    if (v12)
    {
      v13 = v27;
      v14 = v28;
      v15 = v29;
      v16 = v4;
      v17 = CLLocationCoordinate2DMake(v14, v15);
      v18 = [CLLocation alloc];
      [v16 altitude];
      v20 = v19;
      [v16 verticalAccuracy];
      v22 = v21;
      v23 = [v16 timestamp];

      v24 = [v18 initWithCoordinate:v23 altitude:2 horizontalAccuracy:v17.latitude verticalAccuracy:v17.longitude timestamp:v20 referenceFrame:{v13, v22}];
    }

    else
    {
      v26 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v31 = "[ADLocationManager shiftLocationUsingCachedShifterFunction:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Cache-based location shifting failed", buf, 0xCu);
      }

      v24 = 0;
    }
  }

  return v24;
}

- (void)navStatusChanged:(id)a3
{
  externalQueue = self->_externalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ACC60;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(externalQueue, block);
}

- (id)_locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_opt_new();
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

- (id)_peerLocationConnection
{
  peerLocationConnection = self->_peerLocationConnection;
  if (!peerLocationConnection)
  {
    v4 = [[ADPeerLocationConnection alloc] initWithDelegate:self];
    v5 = self->_peerLocationConnection;
    self->_peerLocationConnection = v4;

    peerLocationConnection = self->_peerLocationConnection;
  }

  return peerLocationConnection;
}

- (void)setLocationSentToServer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_locationSentToServerLock);
  v5 = [v4 copy];

  locationSentToServer = self->_locationSentToServer;
  self->_locationSentToServer = v5;

  os_unfair_lock_unlock(&self->_locationSentToServerLock);
}

- (CLLocation)locationSentToServer
{
  os_unfair_lock_lock(&self->_locationSentToServerLock);
  v3 = [(CLLocation *)self->_locationSentToServer copy];
  os_unfair_lock_unlock(&self->_locationSentToServerLock);

  return v3;
}

- (void)setLastShiftedLocation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lastShiftedLocationLock);
  v5 = [v4 copy];

  lastShiftedLocation = self->_lastShiftedLocation;
  self->_lastShiftedLocation = v5;

  os_unfair_lock_unlock(&self->_lastShiftedLocationLock);
}

- (void)setLastLocation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lastLocationLock);
  v5 = [v4 copy];

  lastLocation = self->_lastLocation;
  self->_lastLocation = v5;

  os_unfair_lock_unlock(&self->_lastLocationLock);
}

- (void)dealloc
{
  v3 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADLocationManager dealloc]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:0 userInfo:0];
  [(ADLocationManager *)self drainAuthorizationRequestCompletionsWithPossibleError:v4];
  [(ADLocationManager *)self drainLocationFetchRequestsWithPossibleError:v4];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:AFPreferencesNavStatusDidChangeNotification object:0];

  if (!self->_doNotClearLocationManagerDelegateForUnitTests)
  {
    [(CLLocationManager *)self->_locationManager setDelegate:0];
  }

  [(ADLocationManager *)self _cancelLocationTimer];
  locationUpdateSessionTeardownTimer = self->_locationUpdateSessionTeardownTimer;
  if (locationUpdateSessionTeardownTimer)
  {
    dispatch_source_cancel(locationUpdateSessionTeardownTimer);
  }

  v7.receiver = self;
  v7.super_class = ADLocationManager;
  [(ADLocationManager *)&v7 dealloc];
}

- (ADLocationManager)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = ADLocationManager;
  v6 = [(ADLocationManager *)&v32 init];
  if (v6)
  {
    v7 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v34 = "[ADLocationManager initWithSerialQueue:]";
      v35 = 2048;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    v8 = dispatch_group_create();
    v9 = *(v6 + 12);
    *(v6 + 12) = v8;

    dispatch_group_enter(*(v6 + 12));
    if (AFIsNano())
    {
      [v6 _peerLocationConnection];
    }

    *(v6 + 19) = 0;
    *(v6 + 40) = 0;
    *(v6 + 195) = 1;
    objc_storeStrong(v6 + 6, a3);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

    v12 = dispatch_queue_create("ADLocationManager", v11);
    v13 = *(v6 + 1);
    *(v6 + 1) = v12;

    *(v6 + 193) = 1;
    *(v6 + 194) = AFMapsNavigationStatusIsActive();
    v14 = objc_opt_new();
    v15 = *(v6 + 15);
    *(v6 + 15) = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v6 selector:"navStatusChanged:" name:AFPreferencesNavStatusDidChangeNotification object:0];

    v17 = +[AFContextDonationService defaultService];
    [v17 registerContextTransformer:v6 forType:AFDeviceContextKeyLocation];

    v18 = *(v6 + 1);
    v19 = +[ADQueueMonitor sharedMonitor];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001AD3F4;
    v30[3] = &unk_10051C2E0;
    v31 = v18;
    v20 = v18;
    [v19 addQueue:v20 heartBeatInterval:v30 timeoutInterval:5.0 timeoutHandler:5.0];

    *(v6 + 128) = +[AFFeatureFlags isSiriLocationServicesPromptingEnabled];
    *(v6 + 224) = 0;
    *(v6 + 57) = 0;
    *(v6 + 29) = 0;
    v21 = +[NSMutableSet set];
    v22 = *(v6 + 17);
    *(v6 + 17) = v21;

    v23 = +[NSMutableSet set];
    v24 = *(v6 + 18);
    *(v6 + 18) = v23;

    *(v6 + 23) = 0;
    v25 = *(v6 + 1);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001AD510;
    v28[3] = &unk_10051DFE8;
    v26 = v6;
    v29 = v26;
    dispatch_async(v25, v28);
    v26[21] = kCLLocationAccuracyThreeKilometers;
    if (AFIsHorseman() && (AFHasGPS() & 1) == 0)
    {
      v26[21] = kCLLocationAccuracyHundredMeters;
    }
  }

  return v6;
}

- (void)fetchLocationAuthorization:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v7 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      v11 = v7;
      v12 = NSStringFromSelector(a2);
      *buf = 136315394;
      v18 = "[ADLocationManager fetchLocationAuthorization:]";
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Fetching location authorization via %@ is not supported when location service prompting feature is enabled", buf, 0x16u);

      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

    if (v6)
    {
LABEL_4:
      internalQueue = self->_internalQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001AD718;
      block[3] = &unk_10051CF58;
      v16 = v6;
      dispatch_async(internalQueue, block);
      v9 = v16;
LABEL_7:
    }
  }

  else if (v5)
  {
    v10 = self->_internalQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001AD730;
    v13[3] = &unk_10051E038;
    v13[4] = self;
    v14 = v5;
    dispatch_async(v10, v13);
    v9 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

+ (void)prepareForAssistantEnablementInBackground
{
  v2 = +[AFFeatureFlags isSiriLocationServicesPromptingEnabled];
  v3 = AFSiriLogContextLocation;
  v4 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v6 = 136315138;
      v7 = "+[ADLocationManager prepareForAssistantEnablementInBackground]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s prepareForAssistantEnablementInBackground is not available when location service prompting feature is enabled, TCC guardflow is in control of location authorization", &v6, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = 136315138;
      v7 = "+[ADLocationManager prepareForAssistantEnablementInBackground]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Preparing location subsystem for Siri...", &v6, 0xCu);
    }

    v5 = dispatch_get_global_queue(25, 0);
    dispatch_async(v5, &stru_100514B60);
  }
}

@end