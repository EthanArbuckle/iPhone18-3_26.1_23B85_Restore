@interface SAGetRequestOrigin
- (double)desiredCLAccuracy;
@end

@implementation SAGetRequestOrigin

- (double)desiredCLAccuracy
{
  v2 = [(SAGetRequestOrigin *)self desiredAccuracy];
  if ([v2 isEqualToString:SAGetRequestOriginAccuracyBestValue])
  {
    v3 = &kCLLocationAccuracyBest;
  }

  else if ([v2 isEqualToString:SAGetRequestOriginAccuracyNearestTenMetersValue])
  {
    v3 = &kCLLocationAccuracyNearestTenMeters;
  }

  else if ([v2 isEqualToString:SAGetRequestOriginAccuracyHundredMetersValue])
  {
    v3 = &kCLLocationAccuracyHundredMeters;
  }

  else if ([v2 isEqualToString:SAGetRequestOriginAccuracyKilometerValue])
  {
    v3 = &kCLLocationAccuracyKilometer;
  }

  else
  {
    [v2 isEqualToString:SAGetRequestOriginAccuracyThreeKilometersValue];
    v3 = &kCLLocationAccuracyThreeKilometers;
  }

  v4 = *v3;

  return v4;
}

@end