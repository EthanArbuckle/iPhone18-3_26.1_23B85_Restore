@interface SCNPhysicsVortexField
- (SCNPhysicsVortexField)init;
- (void)setDirection:(SCNVector3)direction;
@end

@implementation SCNPhysicsVortexField

- (SCNPhysicsVortexField)init
{
  v3.receiver = self;
  v3.super_class = SCNPhysicsVortexField;
  return [(SCNPhysicsField *)&v3 init];
}

- (void)setDirection:(SCNVector3)direction
{
  z = direction.z;
  y = direction.y;
  x = direction.x;
  v12.receiver = self;
  v12.super_class = SCNPhysicsVortexField;
  [(SCNPhysicsField *)&v12 setDirection:?];
  v7 = [-[SCNNode scene](self->super._node "scene")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SCNPhysicsVortexField_setDirection___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [v7 _postCommandWithBlock:v8];
}

__n128 __38__SCNPhysicsVortexField_setDirection___block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    a2.n128_u64[0] = *(a1 + 40);
    a2.n128_u32[2] = *(a1 + 48);
    v2[15] = a2;
  }

  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

@end