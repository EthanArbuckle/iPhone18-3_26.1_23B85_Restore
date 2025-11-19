@interface SCNPhysicsHingeJoint
+ (SCNPhysicsHingeJoint)jointWithBody:(SCNPhysicsBody *)body axis:(SCNVector3)axis anchor:(SCNVector3)anchor;
+ (SCNPhysicsHingeJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB;
- (SCNPhysicsHingeJoint)initWithBodyA:(id)a3 axisA:(SCNVector3)a4 anchorA:(SCNVector3)a5 bodyB:(id)a6 axisB:(SCNVector3)a7 anchorB:(SCNVector3)a8;
- (SCNPhysicsHingeJoint)initWithCoder:(id)a3;
- (SCNVector3)anchorA;
- (SCNVector3)anchorB;
- (SCNVector3)axisA;
- (SCNVector3)axisB;
- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4;
- (void)_copyDefinition:(id *)a3;
- (void)_willRemoveFromPhysicsWorld:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAnchorA:(SCNVector3)anchorA;
- (void)setAnchorB:(SCNVector3)anchorB;
- (void)setAxisA:(SCNVector3)axisA;
- (void)setAxisB:(SCNVector3)axisB;
@end

@implementation SCNPhysicsHingeJoint

- (void)dealloc
{
  constraint = self->_constraint;
  if (constraint)
  {
    (*(constraint->var0 + 1))(constraint, a2);
  }

  v4.receiver = self;
  v4.super_class = SCNPhysicsHingeJoint;
  [(SCNPhysicsHingeJoint *)&v4 dealloc];
}

- (SCNPhysicsHingeJoint)initWithBodyA:(id)a3 axisA:(SCNVector3)a4 anchorA:(SCNVector3)a5 bodyB:(id)a6 axisB:(SCNVector3)a7 anchorB:(SCNVector3)a8
{
  z = a5.z;
  y = a5.y;
  x = a5.x;
  v12 = a4.z;
  v13 = a4.y;
  v14 = a4.x;
  v18.receiver = self;
  v18.super_class = SCNPhysicsHingeJoint;
  v16 = [(SCNPhysicsHingeJoint *)&v18 init:a3];
  if (v16)
  {
    v16->_definition.bodyA = a3;
    v16->_definition.axisA.x = v14;
    v16->_definition.axisA.y = v13;
    v16->_definition.axisA.z = v12;
    v16->_definition.anchorA.x = x;
    v16->_definition.anchorA.y = y;
    v16->_definition.anchorA.z = z;
    v16->_definition.bodyB = a6;
    v16->_definition.axisB = a7;
    v16->_definition.anchorB.x = v19;
    v16->_definition.anchorB.y = v20;
    v16->_definition.anchorB.z = v21;
  }

  return v16;
}

+ (SCNPhysicsHingeJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB
{
  z = anchorA.z;
  y = anchorA.y;
  x = anchorA.x;
  v12 = axisA.z;
  v13 = axisA.y;
  v14 = axisA.x;
  v16 = [a1 alloc];
  HIDWORD(v25) = v28;
  *(&v25 + 4) = v27;
  *&v25 = axisB.z;
  *&v17 = v14;
  *&v18 = v13;
  *&v19 = v12;
  *&v20 = x;
  *&v21 = y;
  *&v22 = z;
  v23 = [v16 initWithBodyA:bodyA axisA:bodyB anchorA:v17 bodyB:v18 axisB:v19 anchorB:{v20, v21, v22, *&axisB.x, v25}];

  return v23;
}

+ (SCNPhysicsHingeJoint)jointWithBody:(SCNPhysicsBody *)body axis:(SCNVector3)axis anchor:(SCNVector3)anchor
{
  z = anchor.z;
  y = anchor.y;
  x = anchor.x;
  v8 = axis.z;
  v9 = axis.y;
  v10 = axis.x;
  v12 = [a1 alloc];
  *&v13 = v10;
  *&v14 = v9;
  *&v15 = v8;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;
  v19 = [v12 initWithBody:body axis:v13 anchor:{v14, v15, v16, v17, v18}];

  return v19;
}

- (SCNVector3)axisA
{
  x = self->_definition.axisA.x;
  y = self->_definition.axisA.y;
  z = self->_definition.axisA.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAxisA:(SCNVector3)axisA
{
  self->_definition.axisA = axisA;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNPhysicsHingeJoint_setAxisA___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = axisA;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __33__SCNPhysicsHingeJoint_setAxisA___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v4.i64[0] = *(a1 + 40);
    v4.i64[1] = *(a1 + 48);
    return btHingeConstraint::setAxis(v2, &v4);
  }

  return result;
}

- (SCNVector3)axisB
{
  x = self->_definition.axisB.x;
  y = self->_definition.axisB.y;
  z = self->_definition.axisB.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAxisB:(SCNVector3)axisB
{
  self->_definition.axisB = axisB;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNPhysicsHingeJoint_setAxisB___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = axisB;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __33__SCNPhysicsHingeJoint_setAxisB___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v4.i64[0] = *(a1 + 40);
    v4.i64[1] = *(a1 + 48);
    return btHingeConstraint::setAxis(v2, &v4);
  }

  return result;
}

- (SCNVector3)anchorA
{
  x = self->_definition.anchorA.x;
  y = self->_definition.anchorA.y;
  z = self->_definition.anchorA.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAnchorA:(SCNVector3)anchorA
{
  self->_definition.anchorA = anchorA;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SCNPhysicsHingeJoint_setAnchorA___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorA;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __35__SCNPhysicsHingeJoint_setAnchorA___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    v3 = *(result + 672);
    v8.var0.var0[0] = *(result + 656);
    v8.var0.var0[1] = v3;
    v4 = *(result + 688);
    v5 = *(result + 736);
    v7.var0.var0[0] = *(result + 720);
    v7.var0.var0[1] = v5;
    v6 = *(result + 768);
    v7.var0.var0[2] = *(result + 752);
    v7.var1 = v6;
    *v3.var0.var0 = *(a1 + 40);
    *&v3.var0.var0[2] = *(a1 + 48);
    v8.var0.var0[2] = v4;
    v8.var1 = v3;
    return btHingeConstraint::setFrames(result, &v8, &v7);
  }

  return result;
}

- (SCNVector3)anchorB
{
  x = self->_definition.anchorB.x;
  y = self->_definition.anchorB.y;
  z = self->_definition.anchorB.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAnchorB:(SCNVector3)anchorB
{
  self->_definition.anchorB = anchorB;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SCNPhysicsHingeJoint_setAnchorB___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorB;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __35__SCNPhysicsHingeJoint_setAnchorB___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    v3 = *(result + 672);
    v7.var0.var0[0] = *(result + 656);
    v7.var0.var0[1] = v3;
    v4 = *(result + 704);
    v7.var0.var0[2] = *(result + 688);
    v7.var1 = v4;
    v5 = *(result + 736);
    v6.var0.var0[0] = *(result + 720);
    v6.var0.var0[1] = v5;
    *v5.var0.var0 = *(a1 + 40);
    *&v5.var0.var0[2] = *(a1 + 48);
    v6.var0.var0[2] = *(result + 752);
    v6.var1 = v5;
    return btHingeConstraint::setFrames(result, &v7, &v6);
  }

  return result;
}

- (void)_copyDefinition:(id *)a3
{
  v3 = *&self->_definition.axisA.z;
  v5 = *&self->_definition.bodyA;
  v4 = *&self->_definition.anchorA.x;
  *&a3->var0[32] = *&self->_definition.anchorB.y;
  *&a3->var0[48] = v3;
  *a3->var0 = v5;
  *&a3->var0[16] = v4;
}

- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4
{
  world = self->_world;
  if (world)
  {
    v8 = world == a3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNPhysicsHingeJoint _addToPhysicsWorld:v9 definition:?];
    }
  }

  self->_world = a3;
  v10 = *&a4->var0[16];
  v13[0] = *a4->var0;
  v13[1] = v10;
  v11 = *&a4->var0[48];
  v13[2] = *&a4->var0[32];
  v13[3] = v11;
  self->_constraint = _createConstraintFromDefinition(v13);
  v12 = [a3 _handle];
  (*(*v12 + 112))(v12, self->_constraint, 0);
}

- (void)_willRemoveFromPhysicsWorld:(id)a3
{
  if (self->_constraint)
  {
    v4 = [a3 _handle];
    (*(*v4 + 120))(v4, self->_constraint);
    constraint = self->_constraint;
    if (constraint)
    {
      (*(constraint->var0 + 1))(constraint);
    }

    self->_constraint = 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsHingeJoint;
  [(SCNPhysicsBehavior *)&v7 encodeWithCoder:?];
  p_definition = &self->_definition;
  if (p_definition->bodyA)
  {
    [a3 encodeObject:p_definition->bodyA forKey:@"bodyA"];
  }

  bodyB = p_definition->bodyB;
  if (bodyB)
  {
    [a3 encodeObject:bodyB forKey:@"bodyB"];
  }

  SCNEncodeVector3(a3, @"axisA", p_definition->axisA.x, p_definition->axisA.y, p_definition->axisA.z);
  SCNEncodeVector3(a3, @"axisB", p_definition->axisB.x, p_definition->axisB.y, p_definition->axisB.z);
  SCNEncodeVector3(a3, @"anchorA", p_definition->anchorA.x, p_definition->anchorA.y, p_definition->anchorA.z);
  SCNEncodeVector3(a3, @"anchorB", p_definition->anchorB.x, p_definition->anchorB.y, p_definition->anchorB.z);
}

- (SCNPhysicsHingeJoint)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = SCNPhysicsHingeJoint;
  v4 = [(SCNPhysicsBehavior *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_definition.axisA.x = SCNDecodeVector3(a3, @"axisA");
    v4->_definition.axisA.y = v6;
    v4->_definition.axisA.z = v7;
    v4->_definition.axisB.x = SCNDecodeVector3(a3, @"axisB");
    v4->_definition.axisB.y = v8;
    v4->_definition.axisB.z = v9;
    v4->_definition.anchorA.x = SCNDecodeVector3(a3, @"anchorA");
    v4->_definition.anchorA.y = v10;
    v4->_definition.anchorA.z = v11;
    v4->_definition.anchorB.x = SCNDecodeVector3(a3, @"anchorB");
    v4->_definition.anchorB.y = v12;
    v4->_definition.anchorB.z = v13;
    v4->_definition.bodyA = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyA"];
    v4->_definition.bodyB = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyB"];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end