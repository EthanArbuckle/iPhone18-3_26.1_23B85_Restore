@interface AXPIFingerEventTouchInfo
- (CGPoint)normalizedLocation;
@end

@implementation AXPIFingerEventTouchInfo

- (CGPoint)normalizedLocation
{
  x = self->_normalizedLocation.x;
  y = self->_normalizedLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end