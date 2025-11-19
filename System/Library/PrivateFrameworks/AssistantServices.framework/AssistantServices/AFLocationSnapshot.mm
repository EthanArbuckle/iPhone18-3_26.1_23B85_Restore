@interface AFLocationSnapshot
- (id)initWithLocation:(id)a3 locationManagerState:(ADLocationManagerState)a4;
@end

@implementation AFLocationSnapshot

- (id)initWithLocation:(id)a3 locationManagerState:(ADLocationManagerState)a4
{
  accuracyAuthorization = a4.accuracyAuthorization;
  if (a4.locationServicesEnabled)
  {
    if (a4.authorizationStatus > 2uLL)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(&unk_1003F0438 + ((*&a4.locationServicesEnabled >> 29) & 0x7FFFFFFF8));
    }
  }

  else
  {
    v5 = 2;
  }

  v6 = a3;
  [v6 coordinate];
  v7 = [NSNumber numberWithDouble:?];
  [v6 coordinate];
  v9 = [NSNumber numberWithDouble:v8];
  [v6 altitude];
  v10 = [NSNumber numberWithDouble:?];
  [v6 course];
  v11 = [NSNumber numberWithDouble:?];
  [v6 speed];
  v12 = [NSNumber numberWithDouble:?];
  [v6 verticalAccuracy];
  v13 = [NSNumber numberWithDouble:?];
  [v6 horizontalAccuracy];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  LOBYTE(v19) = accuracyAuthorization == 0;
  v17 = [(AFLocationSnapshot *)self initWithLatitude:v7 longitude:v9 altitude:v10 direction:v11 speed:v12 verticalAccuracy:v13 horizontalAccuracy:v16 preciseLocationEnabled:v19 accessState:v5];

  return v17;
}

@end