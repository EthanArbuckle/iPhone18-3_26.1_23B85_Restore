@interface UserLocationSearchResult
- (UserLocationSearchResult)init;
- (double)accuracy;
- (void)_updateFloorOrdinal:(int)a3;
- (void)locationManagerApprovalDidChange:(id)a3;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
- (void)setLocation:(id)a3;
- (void)setReverseGeocoded:(BOOL)a3;
@end

@implementation UserLocationSearchResult

- (UserLocationSearchResult)init
{
  v7.receiver = self;
  v7.super_class = UserLocationSearchResult;
  v2 = [(SearchResult *)&v7 initWithType:4];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v4 = [(SearchResult *)v2 defaultName];
    v5 = [(SearchResultRepr *)v2 place];
    [v5 setName:v4];
  }

  return v2;
}

- (void)locationManagerApprovalDidChange:(id)a3
{
  v8 = [(SearchResult *)self defaultName];
  v4 = [(SearchResultRepr *)self place];
  v5 = [v4 name];
  v6 = [v5 isEqualToString:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(SearchResultRepr *)self place];
    [v7 setName:v8];
  }
}

- (void)setReverseGeocoded:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    self->_reverseGeocodeUpdateTime = CFAbsoluteTimeGetCurrent();
    [(SearchResult *)self coordinate];
    self->_reverseGeocodeCoordinate.latitude = v5;
    self->_reverseGeocodeCoordinate.longitude = v6;
    [(UserLocationSearchResult *)self accuracy];
    self->_reverseGeocodeAccuracy = v7;
  }

  v8.receiver = self;
  v8.super_class = UserLocationSearchResult;
  [(SearchResult *)&v8 setReverseGeocoded:v3];
}

- (void)_updateFloorOrdinal:(int)a3
{
  if (a3 == 0x7FFFFFFF)
  {
    [(SearchResultRepr *)self setHasFloorOrdinal:0];
  }

  else
  {
    [(SearchResultRepr *)self setFloorOrdinal:?];
  }
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  location = self->_location;
  v9 = v5;
  if (location != v5)
  {
    objc_storeStrong(&self->_location, a3);
    location = self->_location;
  }

  [(UserLocationSearchResult *)self _updateFloorOrdinal:sub_100054304(location)];
  [(CLLocation *)v9 horizontalAccuracy];
  if (vabdd_f64(v7, self->_reverseGeocodeAccuracy) > 50.0)
  {
    [(SearchResult *)self clearLocationInformation];
    if (self->_selected)
    {
      v8 = +[CustomLocationManager sharedManager];
      [v8 processSearchResult:self traits:0];
    }
  }
}

- (double)accuracy
{
  v2 = [(UserLocationSearchResult *)self location];
  [v2 horizontalAccuracy];
  v4 = v3;

  return v4;
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = CFAbsoluteTimeGetCurrent() - self->_reverseGeocodeUpdateTime;
  GEOCalculateDistance();
  v8 = v7;
  if (v6 > 60.0 || v7 > 500.0)
  {
    [(SearchResult *)self clearLocationInformation];
    if (self->_selected && v8 > 500.0)
    {
      v9 = +[CustomLocationManager sharedManager];
      [v9 processSearchResult:self traits:0];
    }
  }

  self->super._coordinate.latitude = latitude;
  self->super._coordinate.longitude = longitude;

  [(SearchResult *)self _syncGEOPlaceWithCoordinate];
}

@end