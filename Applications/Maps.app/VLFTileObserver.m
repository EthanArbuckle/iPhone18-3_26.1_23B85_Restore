@interface VLFTileObserver
- (CLLocationCoordinate2D)previouslyCheckedCoordinate;
- (VLFTileObserver)initWithLocationManager:(id)a3 navigationService:(id)a4 carDisplayController:(id)a5 purpose:(int64_t)a6;
- (double)distanceThreshold;
- (void)addAvailabilityObserver:(id)a3;
- (void)checkForTileAvailabilityAtLocation:(id)a3;
- (void)checkForUnsupportedNavigationTransportType;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAvailabilityObserver:(id)a3;
- (void)setAreTilesAvailable:(BOOL)a3;
- (void)setNavigatingInUnsupportedTransportType:(BOOL)a3;
@end

@implementation VLFTileObserver

- (CLLocationCoordinate2D)previouslyCheckedCoordinate
{
  latitude = self->_previouslyCheckedCoordinate.latitude;
  longitude = self->_previouslyCheckedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (double)distanceThreshold
{
  v2 = [(VLFTileObserver *)self carDisplayController];
  [v2 state];

  GEOConfigGetDouble();
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = NSStringFromSelector("state");
  if (([v10 isEqualToString:v13] & 1) == 0)
  {

    goto LABEL_9;
  }

  v14 = [(VLFTileObserver *)self carDisplayController];

  if (v14 != v11)
  {
LABEL_9:
    v18.receiver = self;
    v18.super_class = VLFTileObserver;
    [(VLFTileObserver *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_10;
  }

  v15 = sub_100052314();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Detected carplay connectivity state changed", buf, 0xCu);
  }

  v16 = [(VLFTileObserver *)self locationManager];
  v17 = [v16 lastLocation];

  if (v17)
  {
    [(VLFTileObserver *)self checkForTileAvailabilityAtLocation:v17];
  }

LABEL_10:
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = [a3 lastLocation];
  if (v4)
  {
    [(VLFTileObserver *)self checkForTileAvailabilityAtLocation:v4];
  }

  else
  {
    v5 = sub_100052314();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Got nil location update; ignoring", &v6, 0xCu);
    }
  }
}

- (void)checkForUnsupportedNavigationTransportType
{
  v3 = [(VLFTileObserver *)self navigationService];
  v4 = [v3 isInNavigatingState];

  if ((v4 & 1) == 0)
  {
    v8 = sub_100052314();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 134349056;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Detected not navigating", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = [(VLFTileObserver *)self navigationService];
  v6 = [v5 navigationTransportType] - 1;
  if (v6 > 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_101216278[v6];
  }

  v9 = [VLFSessionTask isSupportedForTransportType:v7];

  v8 = sub_100052314();
  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v10)
    {
      v11 = [(VLFTileObserver *)self navigationService];
      v13 = 134349312;
      v14 = self;
      v15 = 1024;
      v16 = [v11 navigationTransportType];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Detected navigating in a supported transport type: %d", &v13, 0x12u);
    }

LABEL_10:

    [(VLFTileObserver *)self setNavigatingInUnsupportedTransportType:0];
    return;
  }

  if (v10)
  {
    v12 = [(VLFTileObserver *)self navigationService];
    v13 = 134349312;
    v14 = self;
    v15 = 1024;
    v16 = [v12 navigationTransportType];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Detected navigating in an unsupported transport type: %d", &v13, 0x12u);
  }

  [(VLFTileObserver *)self setNavigatingInUnsupportedTransportType:1];
  [(VLFTileObserver *)self setAreTilesAvailable:0];
}

- (void)checkForTileAvailabilityAtLocation:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "[VLFTileObserver checkForTileAvailabilityAtLocation:]";
        *&buf[12] = 2080;
        *&buf[14] = "VLFTileObserver.m";
        *&buf[22] = 1024;
        *&buf[24] = 162;
        *&buf[28] = 2080;
        *&buf[30] = "dispatch_get_main_queue()";
        *&buf[38] = 2080;
        v41 = dispatch_queue_get_label(&_dispatch_main_q);
        v42 = 2080;
        v43 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v29 = sub_10006D178();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  if ([(VLFTileObserver *)self isAvailabilityCheckInFlight])
  {
    v8 = sub_100052314();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] An availability check is currently in flight; ignoring", buf, 0xCu);
    }

LABEL_34:

    goto LABEL_35;
  }

  if ([(VLFTileObserver *)self isNavigatingInUnsupportedTransportType])
  {
    v8 = sub_100052314();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Currently navigating with an unsupported transport type; ignoring", buf, 0xCu);
    }

    goto LABEL_34;
  }

  v9 = [(VLFTileObserver *)self lastErrorDate];
  v10 = v9 == 0;

  if (!v10)
  {
    [(VLFTileObserver *)self errorTimeoutThreshold];
    v12 = v11;
    v13 = +[NSDate date];
    v14 = [(VLFTileObserver *)self lastErrorDate];
    [v13 timeIntervalSinceDate:v14];
    v16 = v15 >= v12;

    v8 = sub_100052314();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (!v16)
    {
      if (v17)
      {
        *buf = 134349312;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] An error occurred less than %f seconds ago; ignoring", buf, 0x16u);
      }

      goto LABEL_34;
    }

    if (v17)
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Error timeout has passed, will start checking tile availability again", buf, 0xCu);
    }

    [(VLFTileObserver *)self setLastErrorDate:0];
  }

  [v4 coordinate];
  v39 = v44;
  if (!CLLocationCoordinate2DIsValid(v44))
  {
    v8 = sub_100052314();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Invalid coordinate from location update; ignoring", buf, 0xCu);
    }

    goto LABEL_34;
  }

  [(VLFTileObserver *)self previouslyCheckedCoordinate];
  if (CLLocationCoordinate2DIsValid(v45))
  {
    [(VLFTileObserver *)self distanceThreshold];
    v19 = v18;
    CLLocationCoordinate2DGetDistanceFrom();
    v21 = v20;
    if (v20 < v19)
    {
      v8 = sub_100052314();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349568;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        *&buf[22] = 2048;
        *&buf[24] = v19;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Distance from previous tile availability check (%.2f) is less than %.2f meters; ignoring", buf, 0x20u);
      }

      goto LABEL_34;
    }
  }

  v22 = sub_100052314();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [(VLFTileObserver *)self purpose];
    *buf = 134349312;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Checking for VLF tile availability at the current location for purpose: %ld", buf, 0x16u);
  }

  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  [v4 altitude];
  VLECEFFromCoordinate();
  v31 = v38;
  v32 = v37;
  [v4 horizontalAccuracy];
  v25 = v24;
  [(VLFTileObserver *)self setAvailabilityCheckInFlight:1];
  objc_initWeak(&location, self);
  v26 = [(VLFTileObserver *)self localizer];
  v27 = [(VLFTileObserver *)self purpose];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10089FE98;
  v33[3] = &unk_10162D118;
  objc_copyWeak(&v34, &location);
  v35 = v39;
  *buf = v32;
  *&buf[16] = v31;
  *&buf[32] = v25;
  v41 = 0;
  [v26 determineAvailabilityAtLocation:buf purpose:v27 callbackQueue:&_dispatch_main_q callback:v33];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
LABEL_35:
}

- (void)setAreTilesAvailable:(BOOL)a3
{
  if (self->_areTilesAvailable != a3)
  {
    self->_areTilesAvailable = a3;
    v5 = [(VLFTileObserver *)self observers];
    [v5 tileObserver:self didChangeTileAvailability:self->_areTilesAvailable];
  }
}

- (void)setNavigatingInUnsupportedTransportType:(BOOL)a3
{
  if (self->_navigatingInUnsupportedTransportType != a3)
  {
    self->_navigatingInUnsupportedTransportType = a3;
    if (!a3)
    {
      v4 = sub_100052314();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 134349056;
        v6 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] No longer navigating in an unsupported transport type; clearing previously checked coordinate", &v5, 0xCu);
      }

      [(VLFTileObserver *)self setPreviouslyCheckedCoordinate:kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude];
    }
  }
}

- (void)removeAvailabilityObserver:(id)a3
{
  v4 = a3;
  v5 = [(VLFTileObserver *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addAvailabilityObserver:(id)a3
{
  v4 = a3;
  v5 = [(VLFTileObserver *)self observers];
  [v5 registerObserver:v4];
}

- (void)dealloc
{
  v3 = sub_100052314();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  [(MKLocationManager *)self->_locationManager stopListeningForLocationUpdates:self];
  carDisplayController = self->_carDisplayController;
  v5 = NSStringFromSelector("state");
  [(CarDisplayController *)carDisplayController removeObserver:self forKeyPath:v5 context:0];

  v6.receiver = self;
  v6.super_class = VLFTileObserver;
  [(VLFTileObserver *)&v6 dealloc];
}

- (VLFTileObserver)initWithLocationManager:(id)a3 navigationService:(id)a4 carDisplayController:(id)a5 purpose:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFTileObserver initWithLocationManager:navigationService:carDisplayController:purpose:]";
      v36 = 2080;
      v37 = "VLFTileObserver.m";
      v38 = 1024;
      v39 = 59;
      v40 = 2080;
      v41 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v12)
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFTileObserver initWithLocationManager:navigationService:carDisplayController:purpose:]";
      v36 = 2080;
      v37 = "VLFTileObserver.m";
      v38 = 1024;
      v39 = 60;
      v40 = 2080;
      v41 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v13)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFTileObserver initWithLocationManager:navigationService:carDisplayController:purpose:]";
      v36 = 2080;
      v37 = "VLFTileObserver.m";
      v38 = 1024;
      v39 = 61;
      v40 = 2080;
      v41 = "carDisplayController != nil";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v33.receiver = self;
  v33.super_class = VLFTileObserver;
  v14 = [(VLFTileObserver *)&v33 init];
  if (v14)
  {
    v15 = sub_100052314();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v14->_purpose = a6;
    v16 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VLFTileAvailabilityObserver queue:&_dispatch_main_q];
    observers = v14->_observers;
    v14->_observers = v16;

    objc_storeStrong(&v14->_locationManager, a3);
    [(MKLocationManager *)v14->_locationManager listenForLocationUpdates:v14];
    objc_storeStrong(&v14->_navigationService, a4);
    [(MNNavigationService *)v14->_navigationService registerObserver:v14];
    objc_storeStrong(&v14->_carDisplayController, a5);
    carDisplayController = v14->_carDisplayController;
    v19 = NSStringFromSelector("state");
    [(CarDisplayController *)carDisplayController addObserver:v14 forKeyPath:v19 options:0 context:0];

    [(VLFTileObserver *)v14 checkForUnsupportedNavigationTransportType];
    v20 = [[VLLocalizer alloc] initWithAuditToken:0];
    localizer = v14->_localizer;
    v14->_localizer = v20;

    v14->_previouslyCheckedCoordinate = kCLLocationCoordinate2DInvalid;
    v22 = [(MKLocationManager *)v14->_locationManager lastLocation];
    if (v22)
    {
      [(VLFTileObserver *)v14 checkForTileAvailabilityAtLocation:v22];
    }
  }

  return v14;
}

@end