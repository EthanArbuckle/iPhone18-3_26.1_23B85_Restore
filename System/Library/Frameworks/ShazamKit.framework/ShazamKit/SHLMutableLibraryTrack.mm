@interface SHLMutableLibraryTrack
- (CLLocation)location;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLocation:(id)a3;
@end

@implementation SHLMutableLibraryTrack

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHLLibraryTrack allocWithZone:a3];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (void)setLocation:(id)a3
{
  objc_storeStrong(&self->_location, a3);
  v5 = a3;
  [SHLLocationTransformer coordinateFromLocation:v5];
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