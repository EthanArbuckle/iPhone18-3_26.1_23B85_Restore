@interface SALocation
- (id)_convertedLocation;
@end

@implementation SALocation

- (id)_convertedLocation
{
  v3 = objc_alloc_init(SFLatLng);
  v4 = [(SALocation *)self latitude];
  [v4 doubleValue];
  [v3 setLat:?];

  v5 = [(SALocation *)self longitude];
  [v5 doubleValue];
  [v3 setLng:?];

  return v3;
}

@end