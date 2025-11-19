@interface WeatherMapPanningCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)lastCenterCoordinate;
- (WeatherMapPanningCoordinator)initWithWeatherLocationDataProvider:(id)a3;
- (void)_updateWeatherConditions;
- (void)handleMapViewRegionDidChange:(id)a3 forceUpdate:(BOOL)a4;
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

  v10 = [(WeatherMapPanningCoordinator *)self weatherLocationDataProvider];
  [v10 setCoordinate:{latitude, longitude}];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)lastCenterCoordinate
{
  latitude = self->_lastCenterCoordinate.latitude;
  longitude = self->_lastCenterCoordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)handleMapViewRegionDidChange:(id)a3 forceUpdate:(BOOL)a4
{
  v18 = a3;
  [(WeatherMapPanningCoordinator *)self minZoomLevelThreshold];
  if (v6 == 0.0 || ([(WeatherMapPanningCoordinator *)self lastCenterCoordinate], CLLocationCoordinate2DFromGEOLocationCoordinate2D(), !CLLocationCoordinate2DIsValid(v20)))
  {
    [v18 centerCoordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    [(WeatherMapPanningCoordinator *)self setLastCenterCoordinate:?];
    [v18 _zoomLevel];
    [(WeatherMapPanningCoordinator *)self setLastZoomLevel:?];
    [v18 _minimumZoomLevel];
    v8 = v7;
    [v18 _maximumZoomLevel];
    [(WeatherMapPanningCoordinator *)self setMinZoomLevelThreshold:v8 + (v9 - v8) * 0.444444444];
    a4 = 1;
  }

  [v18 centerCoordinate];
  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  v11 = v10;
  v13 = v12;
  [v18 _zoomLevel];
  v15 = v14;
  if (a4 || ([(WeatherMapPanningCoordinator *)self lastZoomLevel], vabdd_f64(v15, v16) > 0.00000011920929) || ([(WeatherMapPanningCoordinator *)self lastCenterCoordinate], GEOCalculateDistance(), v17 >= 5000.0))
  {
    [(WeatherMapPanningCoordinator *)self setLastCenterCoordinate:v11, v13];
    [(WeatherMapPanningCoordinator *)self setLastZoomLevel:v15];
    [(WeatherMapPanningCoordinator *)self _updateWeatherConditions];
  }
}

- (WeatherMapPanningCoordinator)initWithWeatherLocationDataProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WeatherMapPanningCoordinator;
  v6 = [(WeatherMapPanningCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, a3);
    v7->_lastCenterCoordinate = xmmword_101215F80;
  }

  return v7;
}

@end