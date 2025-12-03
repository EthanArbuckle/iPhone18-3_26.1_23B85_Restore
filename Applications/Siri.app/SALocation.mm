@interface SALocation
- (id)_convertedLocation;
@end

@implementation SALocation

- (id)_convertedLocation
{
  v3 = objc_alloc_init(SFLatLng);
  latitude = [(SALocation *)self latitude];
  [latitude doubleValue];
  [v3 setLat:?];

  longitude = [(SALocation *)self longitude];
  [longitude doubleValue];
  [v3 setLng:?];

  return v3;
}

@end