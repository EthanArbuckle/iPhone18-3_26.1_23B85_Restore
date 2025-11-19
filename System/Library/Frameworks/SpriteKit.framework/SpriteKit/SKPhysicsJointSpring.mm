@interface SKPhysicsJointSpring
+ (SKPhysicsJointSpring)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
@end

@implementation SKPhysicsJointSpring

+ (SKPhysicsJointSpring)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  v11 = bodyA;
  v12 = bodyB;
  v13 = [(SKPhysicsBody *)v11 node];
  [v13 updatePhysicsPositionAndScaleFromSprite];

  v14 = [(SKPhysicsBody *)v12 node];
  [v14 updatePhysicsPositionAndScaleFromSprite];

  v15 = [MEMORY[0x277D3D148] jointWithBodyA:v11 bodyB:v12 anchorA:v9 anchorB:{v8, x, y}];

  return v15;
}

@end