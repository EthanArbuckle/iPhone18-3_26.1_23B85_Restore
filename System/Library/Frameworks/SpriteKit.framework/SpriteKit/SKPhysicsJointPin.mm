@interface SKPhysicsJointPin
+ (SKPhysicsJointPin)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor;
- (CGPoint)anchor;
@end

@implementation SKPhysicsJointPin

+ (SKPhysicsJointPin)jointWithBodyA:(SKPhysicsBody *)bodyA bodyB:(SKPhysicsBody *)bodyB anchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  v8 = bodyA;
  v9 = bodyB;
  node = [(SKPhysicsBody *)v8 node];
  [node updatePhysicsPositionAndScaleFromSprite];

  node2 = [(SKPhysicsBody *)v9 node];
  [node2 updatePhysicsPositionAndScaleFromSprite];

  v12 = [MEMORY[0x277D3D158] jointWithBodyA:v8 bodyB:v9 anchor:{x, y}];

  return v12;
}

- (CGPoint)anchor
{
  objc_copyStruct(v4, &self->_anchor, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end