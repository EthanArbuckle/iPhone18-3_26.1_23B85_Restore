@interface SCNActionTargetState
- (SCNVector3)euler;
- (SCNVector3)position;
- (SCNVector3)scale;
- (SCNVector4)rotation;
@end

@implementation SCNActionTargetState

- (SCNVector3)position
{
  x = self->position.x;
  y = self->position.y;
  z = self->position.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector3)euler
{
  x = self->euler.x;
  y = self->euler.y;
  z = self->euler.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector4)rotation
{
  x = self->rotation.x;
  y = self->rotation.y;
  z = self->rotation.z;
  w = self->rotation.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector3)scale
{
  x = self->scale.x;
  y = self->scale.y;
  z = self->scale.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end