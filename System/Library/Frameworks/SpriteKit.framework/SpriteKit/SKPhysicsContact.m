@interface SKPhysicsContact
- (CGPoint)contactPoint;
- (CGVector)contactNormal;
@end

@implementation SKPhysicsContact

- (CGPoint)contactPoint
{
  x = self->_contactPoint.x;
  y = self->_contactPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGVector)contactNormal
{
  dx = self->_contactNormal.dx;
  dy = self->_contactNormal.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end