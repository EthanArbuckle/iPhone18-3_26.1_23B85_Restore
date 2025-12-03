@interface SCNPhysicsLinearGravityField
- (void)setDirection:(SCNVector3)direction;
@end

@implementation SCNPhysicsLinearGravityField

- (void)setDirection:(SCNVector3)direction
{
  z = direction.z;
  y = direction.y;
  x = direction.x;
  v12.receiver = self;
  v12.super_class = SCNPhysicsLinearGravityField;
  [(SCNPhysicsField *)&v12 setDirection:?];
  v7 = [-[SCNNode scene](self->super._node "scene")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SCNPhysicsLinearGravityField_setDirection___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [v7 _postCommandWithBlock:v8];
}

_OWORD *__45__SCNPhysicsLinearGravityField_setDirection___block_invoke(uint64_t a1, __n128 a2)
{
  result = *(*(a1 + 32) + 120);
  if (result)
  {
    a2.n128_u64[0] = *(a1 + 40);
    a2.n128_u32[2] = *(a1 + 48);
    v4 = a2;
    return c3dPhysicsFieldLinearGravity::setGravity(result, &v4);
  }

  return result;
}

@end