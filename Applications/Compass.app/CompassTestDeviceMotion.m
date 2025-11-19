@interface CompassTestDeviceMotion
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
@end

@implementation CompassTestDeviceMotion

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end