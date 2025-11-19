@interface CMVehicleState
+ (BOOL)isAvailable;
@end

@implementation CMVehicleState

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 32) & 1;
  }

  return v2;
}

@end