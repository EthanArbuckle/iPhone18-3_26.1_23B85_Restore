@interface SKPhysicsJointSliding
+ (SKPhysicsJointSliding)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor axis:(CGVector)axis;
@end

@implementation SKPhysicsJointSliding

+ (SKPhysicsJointSliding)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor axis:(CGVector)axis
{
  dy = axis.dy;
  dx = axis.dx;
  y = anchor.y;
  x = anchor.x;
  v11 = bodyA;
  v12 = bodyB;
  node = [(SKPhysicsBody *)v11 node];
  [node updatePhysicsPositionAndScaleFromSprite];

  node2 = [(SKPhysicsBody *)v12 node];
  [node2 updatePhysicsPositionAndScaleFromSprite];

  v15 = [MEMORY[0x277D3D150] jointWithBodyA:v11 bodyB:v12 anchor:x axis:{y, dx, dy}];

  return v15;
}

@end