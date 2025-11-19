@interface ComponentAccelerometer
- (BOOL)isPresent;
@end

@implementation ComponentAccelerometer

- (BOOL)isPresent
{
  if (findDeviceWithName("accelerometer"))
  {
    return 1;
  }

  return findDeviceWithName("accel");
}

@end