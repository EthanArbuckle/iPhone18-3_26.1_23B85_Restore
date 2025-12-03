@interface SHLMutableLibraryTrack
- (CLLocation)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLocation:(id)location;
@end

@implementation SHLMutableLibraryTrack

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHLLibraryTrack allocWithZone:zone];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (void)setLocation:(id)location
{
  objc_storeStrong(&self->_location, location);
  locationCopy = location;
  [SHLLocationTransformer coordinateFromLocation:locationCopy];
  v7 = v6;
  v9 = v8;

  [(SHLLibraryTrack *)self setLocationCoordinate:v7, v9];
}

- (CLLocation)location
{
  location = self->_location;
  if (location)
  {
    v3 = location;
  }

  else
  {
    [(SHLLibraryTrack *)self locationCoordinate];
    v3 = [SHLLocationTransformer locationFromCoordinate:?];
  }

  return v3;
}

@end