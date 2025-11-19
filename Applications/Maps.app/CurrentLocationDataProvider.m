@interface CurrentLocationDataProvider
- (CurrentLocationDataProvider)init;
- (GEOObserverHashTable)observers;
- (void)_updateCurrentLocationAndNotifyObservers:(BOOL)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation CurrentLocationDataProvider

- (void)_updateCurrentLocationAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    if ([(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation])
    {
      v6 = [(MKLocationManager *)self->_locationManager currentLocation];
    }

    else
    {
      v6 = 0;
    }

    if (v6 == self->_currentLocation)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(GEOLocation *)v6 isEqual:?];
    }

    v8 = sub_1000410AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      if (v6)
      {
        [(GEOLocation *)v6 coordinate];
        v14 = [NSString stringWithFormat:@"%+.8f, %+.8f", v12, v13];
      }

      else
      {
        v14 = 0;
      }

      v15 = @"YES";
      if (v7)
      {
        v15 = @"NO";
      }

      v16 = v15;
      *buf = 138413058;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@, currentLocation = %@, currentLocationChanged = %@", buf, 0x2Au);
      if (v6)
      {
      }
    }

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLocation, v6);
      if (v3)
      {
        [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
      }
    }
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    locationManager = self->_locationManager;
    if (a3)
    {
      [(MKLocationManager *)locationManager startLocationUpdateWithObserver:self];

      [(CurrentLocationDataProvider *)self _updateCurrentLocationAndNotifyObservers:0];
    }

    else
    {

      [(MKLocationManager *)locationManager stopLocationUpdateWithObserver:self];
    }
  }
}

- (CurrentLocationDataProvider)init
{
  v6.receiver = self;
  v6.super_class = CurrentLocationDataProvider;
  v2 = [(CurrentLocationDataProvider *)&v6 init];
  if (v2)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    locationManager = v2->_locationManager;
    v2->_locationManager = v3;
  }

  return v2;
}

@end