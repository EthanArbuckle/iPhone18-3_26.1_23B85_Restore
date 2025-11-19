@interface ARSkipTileBounds
+ (double)_normalizeLongitude:(double)result;
- (ARSkipTileBounds)initWithCoordinate:(CLLocationCoordinate2D)a3;
- (BOOL)isInside:(CLLocationCoordinate2D)a3;
@end

@implementation ARSkipTileBounds

+ (double)_normalizeLongitude:(double)result
{
  if (result == 180.0)
  {
    return -180.0;
  }

  return result;
}

- (ARSkipTileBounds)initWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10.receiver = self;
  v10.super_class = ARSkipTileBounds;
  v5 = [(ARSkipTileBounds *)&v10 init];
  if (v5)
  {
    [objc_opt_class() _normalizeLongitude:longitude];
    *&v6 = v6 * 10.0;
    v7 = floorf(*&v6) / 10.0;
    v5->_minLongitude = v7;
    v5->_maxLongitude = v7 + 0.1;
    *&v7 = latitude * 10.0;
    v8 = floorf(*&v7) / 10.0;
    v5->_minLatitude = v8;
    v5->_maxLatitude = v8 + 0.1;
  }

  return v5;
}

- (BOOL)isInside:(CLLocationCoordinate2D)a3
{
  latitude = a3.latitude;
  [objc_opt_class() _normalizeLongitude:a3.longitude];
  return self->_minLatitude <= latitude && latitude < self->_maxLatitude && self->_minLongitude <= v5 && v5 < self->_maxLongitude;
}

@end