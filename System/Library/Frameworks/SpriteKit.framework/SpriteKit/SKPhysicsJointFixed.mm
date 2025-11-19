@interface SKPhysicsJointFixed
+ (SKPhysicsJointFixed)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor;
@end

@implementation SKPhysicsJointFixed

+ (SKPhysicsJointFixed)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  v8 = bodyA;
  v9 = bodyB;
  v10 = [(SKPhysicsBody *)v8 node];
  [v10 updatePhysicsPositionAndScaleFromSprite];

  v11 = [(SKPhysicsBody *)v9 node];
  [v11 updatePhysicsPositionAndScaleFromSprite];

  v12 = [MEMORY[0x277D3D168] jointWithBodyA:v8 bodyB:v9 anchor:{x, y}];

  return v12;
}

@end