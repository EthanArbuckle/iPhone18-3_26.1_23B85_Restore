@interface BCDeviceState
- (BOOL)isLocked;
@end

@implementation BCDeviceState

- (BOOL)isLocked
{
  v2 = sub_10000BD00();
  if (v2 != 1)
  {
    LOBYTE(v2) = sub_10000BD00() == 2;
  }

  return v2;
}

@end