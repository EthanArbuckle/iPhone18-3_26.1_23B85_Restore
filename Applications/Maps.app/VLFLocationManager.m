@interface VLFLocationManager
+ (VLFLocationManager)sharedLocationManager;
- (CLLocation)lastLocation;
- (VLFLocationManager)init;
- (void)_stopLocationUpdatesFromTimer;
- (void)addObserver:(id)a3;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation VLFLocationManager

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = dispatch_queue_get_label(&_dispatch_main_q);
        v24 = dispatch_queue_get_label(0);
        *buf = 136316418;
        v35 = "[VLFLocationManager locationManager:didUpdateLocations:]";
        v36 = 2080;
        v37 = "VLFLocationManager.m";
        v38 = 1024;
        v39 = 164;
        v40 = 2080;
        v41 = "dispatch_get_main_queue()";
        v42 = 2080;
        v43 = v23;
        v44 = 2080;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
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
  }

  if ([v7 count])
  {
    v27 = v7;
    v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = sub_10006D1CC();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v16 isCoordinateFused];
            *buf = 138478083;
            v19 = @"NO";
            if (v18)
            {
              v19 = @"YES";
            }

            v35 = v16;
            v36 = 2113;
            v37 = v19;
            v20 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Got a location update: %{private}@; fused: %{private}@", buf, 0x16u);
          }

          os_unfair_lock_lock(&self->_lastLocationLock);
          objc_storeStrong(&self->_lastLocation, v16);
          os_unfair_lock_unlock(&self->_lastLocationLock);
          v21 = [(VLFLocationManager *)self observers];
          [v21 locationManager:self didUpdateLocation:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v7 = v27;
    v6 = v28;
  }
}

- (void)_stopLocationUpdatesFromTimer
{
  os_unfair_lock_lock(&self->_observingLock);
  v3 = [(VLFLocationManager *)self stopLocationUpdatesTimer];

  if (v3)
  {
    [(VLFLocationManager *)self setStopLocationUpdatesTimer:0];
    v4 = [(VLFLocationManager *)self locationManager];
    [v4 stopUpdatingLocation];
  }

  os_unfair_lock_unlock(&self->_observingLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10006D1CC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v23 = v7;
      v24 = 2048;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Removing observer: <%@: %p>", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_observingLock);
    v8 = [(VLFLocationManager *)self observers];
    v9 = [v8 hasObservers];

    v10 = [(VLFLocationManager *)self observers];
    [v10 unregisterObserver:v4];

    v11 = [(VLFLocationManager *)self observers];
    v12 = [v11 hasObservers];

    if (v9 != v12)
    {
      v13 = sub_10006D1CC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Removed the last observer; starting the location update disable timer", buf, 2u);
      }

      objc_initWeak(buf, self);
      v14 = &_dispatch_main_q;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100BFBFBC;
      v20[3] = &unk_1016616E8;
      objc_copyWeak(&v21, buf);
      v15 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v20 block:5.0];
      [(VLFLocationManager *)self setStopLocationUpdatesTimer:v15];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    os_unfair_lock_unlock(&self->_observingLock);
  }

  else
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[VLFLocationManager removeObserver:]";
      v24 = 2080;
      v25 = "VLFLocationManager.m";
      v26 = 1024;
      v27 = 122;
      v28 = 2080;
      v29 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v19 = sub_10006D1CC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Observer should not be nil", buf, 2u);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10006D1CC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v20 = 138412546;
      v21 = v7;
      v22 = 2048;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Adding observer: <%@: %p>", &v20, 0x16u);
    }

    os_unfair_lock_lock(&self->_observingLock);
    v8 = [(VLFLocationManager *)self observers];
    v9 = [v8 hasObservers];

    v10 = [(VLFLocationManager *)self observers];
    [v10 registerObserver:v4];

    v11 = [(VLFLocationManager *)self observers];
    v12 = [v11 hasObservers];

    v13 = [(VLFLocationManager *)self stopLocationUpdatesTimer];

    [(VLFLocationManager *)self setStopLocationUpdatesTimer:0];
    if (v9 != v12)
    {
      v14 = sub_10006D1CC();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v15)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got the first observer but the location disable timer never fired; keeping location updates going", &v20, 2u);
        }
      }

      else
      {
        if (v15)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got the first observer; start updating location", &v20, 2u);
        }

        v14 = [(VLFLocationManager *)self locationManager];
        [v14 startUpdatingLocation];
      }
    }

    os_unfair_lock_unlock(&self->_observingLock);
  }

  else
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[VLFLocationManager addObserver:]";
      v22 = 2080;
      v23 = "VLFLocationManager.m";
      v24 = 1024;
      v25 = 91;
      v26 = 2080;
      v27 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v20, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }

    v19 = sub_10006D1CC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Observer should not be nil", &v20, 2u);
    }
  }
}

- (CLLocation)lastLocation
{
  os_unfair_lock_lock(&self->_lastLocationLock);
  v3 = self->_lastLocation;
  os_unfair_lock_unlock(&self->_lastLocationLock);

  return v3;
}

- (VLFLocationManager)init
{
  v9.receiver = self;
  v9.super_class = VLFLocationManager;
  v2 = [(VLFLocationManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_observingLock._os_unfair_lock_opaque = 0;
    v4 = [[CLLocationManager alloc] _initWithDelegate:v2 onQueue:&_dispatch_main_q];
    locationManager = v3->_locationManager;
    v3->_locationManager = v4;

    [(CLLocationManager *)v3->_locationManager _setFusionInfoEnabled:1];
    [(CLLocationManager *)v3->_locationManager setDesiredAccuracy:kCLLocationAccuracyLeech];
    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VLFLocationManagerDelegate queue:&_dispatch_main_q];
    observers = v3->_observers;
    v3->_observers = v6;
  }

  return v3;
}

+ (VLFLocationManager)sharedLocationManager
{
  if (qword_10195EAD0 != -1)
  {
    dispatch_once(&qword_10195EAD0, &stru_10164D870);
  }

  v3 = qword_10195EAC8;

  return v3;
}

@end