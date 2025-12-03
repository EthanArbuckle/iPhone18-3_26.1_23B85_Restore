@interface SAGetRequestOrigin
- (double)desiredCLAccuracy;
@end

@implementation SAGetRequestOrigin

- (double)desiredCLAccuracy
{
  desiredAccuracy = [(SAGetRequestOrigin *)self desiredAccuracy];
  if ([desiredAccuracy isEqualToString:SAGetRequestOriginAccuracyBestValue])
  {
    v3 = &kCLLocationAccuracyBest;
  }

  else if ([desiredAccuracy isEqualToString:SAGetRequestOriginAccuracyNearestTenMetersValue])
  {
    v3 = &kCLLocationAccuracyNearestTenMeters;
  }

  else if ([desiredAccuracy isEqualToString:SAGetRequestOriginAccuracyHundredMetersValue])
  {
    v3 = &kCLLocationAccuracyHundredMeters;
  }

  else if ([desiredAccuracy isEqualToString:SAGetRequestOriginAccuracyKilometerValue])
  {
    v3 = &kCLLocationAccuracyKilometer;
  }

  else
  {
    [desiredAccuracy isEqualToString:SAGetRequestOriginAccuracyThreeKilometersValue];
    v3 = &kCLLocationAccuracyThreeKilometers;
  }

  v4 = *v3;

  return v4;
}

@end