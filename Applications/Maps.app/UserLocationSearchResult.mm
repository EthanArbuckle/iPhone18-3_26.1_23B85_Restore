@interface UserLocationSearchResult
- (UserLocationSearchResult)init;
- (double)accuracy;
- (void)_updateFloorOrdinal:(int)ordinal;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setLocation:(id)location;
- (void)setReverseGeocoded:(BOOL)geocoded;
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

    defaultName = [(SearchResult *)v2 defaultName];
    place = [(SearchResultRepr *)v2 place];
    [place setName:defaultName];
  }

  return v2;
}

- (void)locationManagerApprovalDidChange:(id)change
{
  defaultName = [(SearchResult *)self defaultName];
  place = [(SearchResultRepr *)self place];
  name = [place name];
  v6 = [name isEqualToString:defaultName];

  if ((v6 & 1) == 0)
  {
    place2 = [(SearchResultRepr *)self place];
    [place2 setName:defaultName];
  }
}

- (void)setReverseGeocoded:(BOOL)geocoded
{
  geocodedCopy = geocoded;
  if (geocoded)
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
  [(SearchResult *)&v8 setReverseGeocoded:geocodedCopy];
}

- (void)_updateFloorOrdinal:(int)ordinal
{
  if (ordinal == 0x7FFFFFFF)
  {
    [(SearchResultRepr *)self setHasFloorOrdinal:0];
  }

  else
  {
    [(SearchResultRepr *)self setFloorOrdinal:?];
  }
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  location = self->_location;
  v9 = locationCopy;
  if (location != locationCopy)
  {
    objc_storeStrong(&self->_location, location);
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
  location = [(UserLocationSearchResult *)self location];
  [location horizontalAccuracy];
  v4 = v3;

  return v4;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
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