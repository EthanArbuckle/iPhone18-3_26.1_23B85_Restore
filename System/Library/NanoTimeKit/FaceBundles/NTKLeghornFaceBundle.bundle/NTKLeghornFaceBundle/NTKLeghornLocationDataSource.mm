@interface NTKLeghornLocationDataSource
+ (id)sharedInstance;
- (NTKLeghornLocationDataSource)init;
- (void)_ntkLocationManagerDidUpdateLocation:(id)location;
- (void)_startLocationManager;
- (void)_startNTKLocationManager;
- (void)_stopLocationManager;
- (void)_stopNTKLocationManager;
- (void)_updateLocation:(id)location;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)start;
- (void)stop;
@end

@implementation NTKLeghornLocationDataSource

- (NTKLeghornLocationDataSource)init
{
  v19.receiver = self;
  v19.super_class = NTKLeghornLocationDataSource;
  v2 = [(NTKLeghornLocationDataSource *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.ultraData.location", v3);
    v5 = NTKLocationBundle();
    v8 = objc_msgSend_bundlePath(v5, v6, v7);

    objc_storeStrong(&v2->_locationQueue, v4);
    currentLocation = v2->_currentLocation;
    v2->_currentLocation = 0;

    objc_initWeak(&location, v2);
    locationQueue = v2->_locationQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23BEBD5A4;
    v14[3] = &unk_278BA0F58;
    objc_copyWeak(&v17, &location);
    v15 = v8;
    v16 = v4;
    v11 = v4;
    v12 = v8;
    dispatch_async(locationQueue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKLeghornLocationDataSource;
  [(NTKLeghornLocationDataSource *)&v4 dealloc];
}

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF038);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF038, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (void)_updateLocation:(id)location
{
  v27 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clLocationUpdateCount = self->_clLocationUpdateCount;
    slcLocationUpdateCount = self->_slcLocationUpdateCount;
    v19 = 136315906;
    v20 = "[NTKLeghornLocationDataSource _updateLocation:]";
    v21 = 2048;
    v22 = clLocationUpdateCount;
    v23 = 2048;
    v24 = slcLocationUpdateCount;
    v25 = 2112;
    v26 = locationCopy;
    _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: cl-updates = %llu, slc-updates = %llu @ %@", &v19, 0x2Au);
  }

  if (locationCopy)
  {
    currentLocation = self->_currentLocation;
    if (currentLocation && (objc_msgSend_timestamp(currentLocation, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceNow(v11, v12, v13), v15 = v14, v11, v15 > 0.0))
    {
      p_super = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_currentLocation;
        v19 = 136315650;
        v20 = "[NTKLeghornLocationDataSource _updateLocation:]";
        v21 = 2112;
        v22 = locationCopy;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_23BEB1000, p_super, OS_LOG_TYPE_DEFAULT, "%s: received stale location %@, which is older than %@ - ignoring", &v19, 0x20u);
      }
    }

    else
    {
      v16 = locationCopy;
      p_super = &self->_currentLocation->super;
      self->_currentLocation = v16;
    }
  }

  else
  {
    p_super = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6C00(p_super);
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v6 = objc_msgSend_lastObject(locations, a2, v4, manager);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEBD9B4;
  block[3] = &unk_278BA0F80;
  objc_copyWeak(&v10, &location);
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NTKLeghornLocationDataSource locationManager:didFailWithError:]";
    v8 = 2112;
    v9 = errorCopy;
    _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: error = %@", &v6, 0x16u);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v21 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v7 = objc_msgSend_authorizationStatus(authorizationCopy, v5, v6);
  v8 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend__limitsPrecision(authorizationCopy, v9, v10);
    v11 = LogBool();
    *buf = 136315650;
    v16 = "[NTKLeghornLocationDataSource locationManagerDidChangeAuthorization:]";
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_23BEB1000, v8, OS_LOG_TYPE_DEFAULT, "%s authorizationStatus = to (%d), coarse location = %@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BEBDC5C;
  v12[3] = &unk_278BA0FA8;
  objc_copyWeak(&v13, buf);
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)_startLocationManager
{
  v3 = self->_currentLocation == 0;
  objc_initWeak(&location, self);
  locationQueue = self->_locationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEBDD74;
  block[3] = &unk_278BA0FD0;
  objc_copyWeak(&v6, &location);
  v7 = v3;
  dispatch_async(locationQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_stopLocationManager
{
  objc_initWeak(&location, self);
  locationQueue = self->_locationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23BEBDFA4;
  v4[3] = &unk_278BA0FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(locationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_ntkLocationManagerDidUpdateLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ++self->_slcLocationUpdateCount;
  objc_msgSend__updateLocation_(self, v4, v5, locationCopy);
}

- (void)_startNTKLocationManager
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_locationManagerToken)
  {
    v3 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[NTKLeghornLocationDataSource _startNTKLocationManager]";
      _os_log_impl(&dword_23BEB1000, v3, OS_LOG_TYPE_DEFAULT, "%s: starting NTKLocationManager updates", buf, 0xCu);
    }

    v6 = objc_msgSend_sharedLocationManager(MEMORY[0x277D2C070], v4, v5);
    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23BEBE28C;
    v11[3] = &unk_278BA1020;
    objc_copyWeak(&v12, buf);
    v9 = objc_msgSend_startLocationUpdatesWithIdentifier_handler_(v6, v7, v8, @"ntk.ultra2025", v11);
    locationManagerToken = self->_locationManagerToken;
    self->_locationManagerToken = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_stopNTKLocationManager
{
  if (self->_locationManagerToken)
  {
    v4 = objc_msgSend_sharedLocationManager(MEMORY[0x277D2C070], a2, v2);
    objc_msgSend_stopLocationUpdatesForToken_(v4, v5, v6, self->_locationManagerToken);

    locationManagerToken = self->_locationManagerToken;
    self->_locationManagerToken = 0;
  }
}

- (void)stop
{
  v7.receiver = self;
  v7.super_class = NTKLeghornLocationDataSource;
  [(NTKFoghornDataSource *)&v7 stop];
  objc_msgSend__stopLocationManager(self, v3, v4);
  objc_msgSend__stopNTKLocationManager(self, v5, v6);
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = NTKLeghornLocationDataSource;
  [(NTKFoghornDataSource *)&v7 start];
  objc_msgSend__startLocationManager(self, v3, v4);
  objc_msgSend__startNTKLocationManager(self, v5, v6);
}

@end