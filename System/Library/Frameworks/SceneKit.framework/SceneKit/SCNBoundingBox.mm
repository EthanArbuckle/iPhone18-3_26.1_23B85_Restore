@interface SCNBoundingBox
- (SCNVector3)max;
- (SCNVector3)min;
@end

@implementation SCNBoundingBox

- (SCNVector3)min
{
  x = self->min.x;
  y = self->min.y;
  z = self->min.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector3)max
{
  x = self->max.x;
  y = self->max.y;
  z = self->max.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end