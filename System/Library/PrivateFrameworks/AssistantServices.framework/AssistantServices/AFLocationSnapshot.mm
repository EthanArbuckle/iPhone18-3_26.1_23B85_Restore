@interface AFLocationSnapshot
- (id)initWithLocation:(id)location locationManagerState:(ADLocationManagerState)state;
@end

@implementation AFLocationSnapshot

- (id)initWithLocation:(id)location locationManagerState:(ADLocationManagerState)state
{
  accuracyAuthorization = state.accuracyAuthorization;
  if (state.locationServicesEnabled)
  {
    if (state.authorizationStatus > 2uLL)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(&unk_1003F0438 + ((*&state.locationServicesEnabled >> 29) & 0x7FFFFFFF8));
    }
  }

  else
  {
    v5 = 2;
  }

  locationCopy = location;
  [locationCopy coordinate];
  v7 = [NSNumber numberWithDouble:?];
  [locationCopy coordinate];
  v9 = [NSNumber numberWithDouble:v8];
  [locationCopy altitude];
  v10 = [NSNumber numberWithDouble:?];
  [locationCopy course];
  v11 = [NSNumber numberWithDouble:?];
  [locationCopy speed];
  v12 = [NSNumber numberWithDouble:?];
  [locationCopy verticalAccuracy];
  v13 = [NSNumber numberWithDouble:?];
  [locationCopy horizontalAccuracy];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  LOBYTE(v19) = accuracyAuthorization == 0;
  v17 = [(AFLocationSnapshot *)self initWithLatitude:v7 longitude:v9 altitude:v10 direction:v11 speed:v12 verticalAccuracy:v13 horizontalAccuracy:v16 preciseLocationEnabled:v19 accessState:v5];

  return v17;
}

@end