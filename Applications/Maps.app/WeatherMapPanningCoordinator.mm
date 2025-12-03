@interface WeatherMapPanningCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)lastCenterCoordinate;
- (WeatherMapPanningCoordinator)initWithWeatherLocationDataProvider:(id)provider;
- (void)_updateWeatherConditions;
- (void)handleMapViewRegionDidChange:(id)change forceUpdate:(BOOL)update;
@end

@implementation WeatherMapPanningCoordinator

- (void)_updateWeatherConditions
{
  [(WeatherMapPanningCoordinator *)self lastZoomLevel];
  v4 = v3;
  [(WeatherMapPanningCoordinator *)self minZoomLevelThreshold];
  if (v4 <= v5)
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  else
  {
    [(WeatherMapPanningCoordinator *)self lastCenterCoordinate];
    CLLocationCoordinate2DFromGEOLocationCoordinate2D();
    latitude = v6;
    longitude = v8;
  }

  weatherLocationDataProvider = [(WeatherMapPanningCoordinator *)self weatherLocationDataProvider];
  [weatherLocationDataProvider setCoordinate:{latitude, longitude}];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)lastCenterCoordinate
{
  latitude = self->_lastCenterCoordinate.latitude;
  longitude = self->_lastCenterCoordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)handleMapViewRegionDidChange:(id)change forceUpdate:(BOOL)update
{
  changeCopy = change;
  [(WeatherMapPanningCoordinator *)self minZoomLevelThreshold];
  if (v6 == 0.0 || ([(WeatherMapPanningCoordinator *)self lastCenterCoordinate], CLLocationCoordinate2DFromGEOLocationCoordinate2D(), !CLLocationCoordinate2DIsValid(v20)))
  {
    [changeCopy centerCoordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    [(WeatherMapPanningCoordinator *)self setLastCenterCoordinate:?];
    [changeCopy _zoomLevel];
    [(WeatherMapPanningCoordinator *)self setLastZoomLevel:?];
    [changeCopy _minimumZoomLevel];
    v8 = v7;
    [changeCopy _maximumZoomLevel];
    [(WeatherMapPanningCoordinator *)self setMinZoomLevelThreshold:v8 + (v9 - v8) * 0.444444444];
    update = 1;
  }

  [changeCopy centerCoordinate];
  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  v11 = v10;
  v13 = v12;
  [changeCopy _zoomLevel];
  v15 = v14;
  if (update || ([(WeatherMapPanningCoordinator *)self lastZoomLevel], vabdd_f64(v15, v16) > 0.00000011920929) || ([(WeatherMapPanningCoordinator *)self lastCenterCoordinate], GEOCalculateDistance(), v17 >= 5000.0))
  {
    [(WeatherMapPanningCoordinator *)self setLastCenterCoordinate:v11, v13];
    [(WeatherMapPanningCoordinator *)self setLastZoomLevel:v15];
    [(WeatherMapPanningCoordinator *)self _updateWeatherConditions];
  }
}

- (WeatherMapPanningCoordinator)initWithWeatherLocationDataProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = WeatherMapPanningCoordinator;
  v6 = [(WeatherMapPanningCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, provider);
    v7->_lastCenterCoordinate = xmmword_101215F80;
  }

  return v7;
}

@end