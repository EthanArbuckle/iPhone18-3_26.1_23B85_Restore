@interface WeatherLocationDataProvider
- (BOOL)_shouldNotifyObservers;
- (CLLocationCoordinate2D)coordinate;
- (WeatherLocationDataProvider)init;
- (void)_notifyObserversWeatherLocationDidChange;
- (void)_updateCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_updateLocation:(id)location;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation WeatherLocationDataProvider

- (WeatherLocationDataProvider)init
{
  v7.receiver = self;
  v7.super_class = WeatherLocationDataProvider;
  v2 = [(WeatherLocationDataProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_coordinate = kCLLocationCoordinate2DInvalid;
    v4 = +[NSHashTable weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;
  }

  return v3;
}

- (void)_notifyObserversWeatherLocationDidChange
{
  v4 = [(CLLocation *)self->_location copy];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E5A4;
  block[3] = &unk_10162BD20;
  objc_copyWeak(v8, &location);
  v8[1] = a2;
  block[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_updateLocation:(id)location
{
  v4 = [location copy];
  location = self->_location;
  self->_location = v4;

  [(WeatherLocationDataProvider *)self _notifyObserversWeatherLocationDidChange];
}

- (void)_updateCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(WeatherLocationDataProvider *)self _shouldNotifyObservers])
  {
    v6 = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
    [(WeatherLocationDataProvider *)self _updateLocation:v6];
  }

  else
  {

    [(WeatherLocationDataProvider *)self _updateLocation:0];
  }
}

- (BOOL)_shouldNotifyObservers
{
  v2 = +[WeatherSettingsManager sharedManager];
  if ([v2 shouldShowAirQualityConditions])
  {
    shouldShowWeatherConditions = 1;
  }

  else
  {
    shouldShowWeatherConditions = [v2 shouldShowWeatherConditions];
  }

  return shouldShowWeatherConditions;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (CLLocationCoordinate2DIsValid(coordinate))
  {
    if ((self->_coordinate.latitude == latitude || self->_coordinate.longitude == longitude) && self->_location)
    {

      [(WeatherLocationDataProvider *)self _notifyObserversWeatherLocationDidChange];
    }

    else
    {
      self->_coordinate.latitude = latitude;
      self->_coordinate.longitude = longitude;

      [(WeatherLocationDataProvider *)self _updateCoordinate:?];
    }
  }

  else
  {
    self->_coordinate = kCLLocationCoordinate2DInvalid;

    [(WeatherLocationDataProvider *)self _updateLocation:0];
  }
}

@end