@interface SKPhysicsJoint
- (CGVector)reactionForce;
@end

@implementation SKPhysicsJoint

- (CGVector)reactionForce
{
  dx = self->reactionForce.dx;
  dy = self->reactionForce.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end