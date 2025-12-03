@interface SKPhysicsJointLimit
+ (SKPhysicsJointLimit)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
@end

@implementation SKPhysicsJointLimit

+ (SKPhysicsJointLimit)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  v11 = bodyA;
  v12 = bodyB;
  node = [(SKPhysicsBody *)v11 node];
  [node updatePhysicsPositionAndScaleFromSprite];

  node2 = [(SKPhysicsBody *)v12 node];
  [node2 updatePhysicsPositionAndScaleFromSprite];

  v15 = [MEMORY[0x277D3D160] jointWithBodyA:v11 bodyB:v12 anchorA:v9 anchorB:{v8, x, y}];

  return v15;
}

@end