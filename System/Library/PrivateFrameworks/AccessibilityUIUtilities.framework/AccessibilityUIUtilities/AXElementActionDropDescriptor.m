@interface AXElementActionDropDescriptor
- (CGPoint)contextSpacePoint;
- (CGPoint)fixedScreenSpacePoint;
@end

@implementation AXElementActionDropDescriptor

- (CGPoint)fixedScreenSpacePoint
{
  x = self->_fixedScreenSpacePoint.x;
  y = self->_fixedScreenSpacePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contextSpacePoint
{
  x = self->_contextSpacePoint.x;
  y = self->_contextSpacePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end