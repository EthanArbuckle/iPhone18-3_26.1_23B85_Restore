@interface SKPhysicsWorld
- (CGVector)gravity;
- (vector_float3)sampleFieldsAt:(vector_float3)position;
@end

@implementation SKPhysicsWorld

- (vector_float3)sampleFieldsAt:(vector_float3)position
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (CGVector)gravity
{
  dx = self->_gravity.dx;
  dy = self->_gravity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end