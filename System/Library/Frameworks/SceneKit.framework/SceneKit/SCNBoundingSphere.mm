@interface SCNBoundingSphere
- (SCNVector3)center;
@end

@implementation SCNBoundingSphere

- (SCNVector3)center
{
  x = self->center.x;
  y = self->center.y;
  z = self->center.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end