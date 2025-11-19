@interface SCNPhysicsBallSocketJoint
+ (SCNPhysicsBallSocketJoint)jointWithBody:(SCNPhysicsBody *)body anchor:(SCNVector3)anchor;
+ (SCNPhysicsBallSocketJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB anchorB:(SCNVector3)anchorB;
- (SCNPhysicsBallSocketJoint)initWithBody:(id)a3 anchor:(SCNVector3)a4;
- (SCNPhysicsBallSocketJoint)initWithBodyA:(id)a3 anchorA:(SCNVector3)a4 bodyB:(id)a5 anchorB:(SCNVector3)a6;
- (SCNPhysicsBallSocketJoint)initWithCoder:(id)a3;
- (SCNVector3)anchorA;
- (SCNVector3)anchorB;
- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4;
- (void)_copyDefinition:(id *)a3;
- (void)_willRemoveFromPhysicsWorld:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAnchorA:(SCNVector3)anchorA;
- (void)setAnchorB:(SCNVector3)anchorB;
@end

@implementation SCNPhysicsBallSocketJoint

- (void)dealloc
{
  constraint = self->_constraint;
  if (constraint)
  {
    (*(constraint->var0 + 1))(constraint, a2);
  }

  v4.receiver = self;
  v4.super_class = SCNPhysicsBallSocketJoint;
  [(SCNPhysicsBallSocketJoint *)&v4 dealloc];
}

- (SCNPhysicsBallSocketJoint)initWithBodyA:(id)a3 anchorA:(SCNVector3)a4 bodyB:(id)a5 anchorB:(SCNVector3)a6
{
  z = a6.z;
  y = a6.y;
  x = a6.x;
  v10 = a4.z;
  v11 = a4.y;
  v12 = a4.x;
  v16.receiver = self;
  v16.super_class = SCNPhysicsBallSocketJoint;
  v14 = [(SCNPhysicsBallSocketJoint *)&v16 init];
  if (v14)
  {
    v14->_definition.bodyA = a3;
    v14->_definition.anchorA.x = v12;
    v14->_definition.anchorA.y = v11;
    v14->_definition.anchorA.z = v10;
    v14->_definition.bodyB = a5;
    v14->_definition.anchorB.x = x;
    v14->_definition.anchorB.y = y;
    v14->_definition.anchorB.z = z;
  }

  return v14;
}

- (SCNPhysicsBallSocketJoint)initWithBody:(id)a3 anchor:(SCNVector3)a4
{
  z = a4.z;
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = SCNPhysicsBallSocketJoint;
  v8 = [(SCNPhysicsBallSocketJoint *)&v10 init];
  if (v8)
  {
    v8->_definition.bodyA = a3;
    v8->_definition.anchorA.x = x;
    v8->_definition.anchorA.y = y;
    v8->_definition.anchorA.z = z;
  }

  return v8;
}

+ (SCNPhysicsBallSocketJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB anchorB:(SCNVector3)anchorB
{
  z = anchorB.z;
  y = anchorB.y;
  x = anchorB.x;
  v10 = anchorA.z;
  v11 = anchorA.y;
  v12 = anchorA.x;
  v14 = [a1 alloc];
  *&v15 = v12;
  *&v16 = v11;
  *&v17 = v10;
  *&v18 = x;
  *&v19 = y;
  *&v20 = z;
  v21 = [v14 initWithBodyA:bodyA anchorA:bodyB bodyB:v15 anchorB:{v16, v17, v18, v19, v20}];

  return v21;
}

+ (SCNPhysicsBallSocketJoint)jointWithBody:(SCNPhysicsBody *)body anchor:(SCNVector3)anchor
{
  z = anchor.z;
  y = anchor.y;
  x = anchor.x;
  v8 = [a1 alloc];
  *&v9 = x;
  *&v10 = y;
  *&v11 = z;
  v12 = [v8 initWithBody:body anchor:{v9, v10, v11}];

  return v12;
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
  v4[2] = __40__SCNPhysicsBallSocketJoint_setAnchorA___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorA;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __40__SCNPhysicsBallSocketJoint_setAnchorA___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    *&v2 = *(a1 + 40);
    *(&v2 + 1) = *(a1 + 48);
    *(v1 + 368) = v2;
  }

  return *&v2;
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
  v4[2] = __40__SCNPhysicsBallSocketJoint_setAnchorB___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorB;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __40__SCNPhysicsBallSocketJoint_setAnchorB___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    *&v2 = *(a1 + 40);
    *(&v2 + 1) = *(a1 + 48);
    *(v1 + 384) = v2;
  }

  return *&v2;
}

- (void)_copyDefinition:(id *)a3
{
  v3 = *&self->_definition.anchorB.y;
  v4 = *&self->_definition.anchorA.x;
  *a3->var0 = *&self->_definition.bodyA;
  *&a3->var0[16] = v4;
  *&a3->var0[32] = v3;
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
  v12[0] = *a4->var0;
  v12[1] = v10;
  v13 = *&a4->var0[32];
  self->_constraint = _createConstraintFromDefinition(v12);
  v11 = [a3 _handle];
  (*(*v11 + 112))(v11, self->_constraint, 0);
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
    self->_world = 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsBallSocketJoint;
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

  SCNEncodeVector3(a3, @"anchorA", p_definition->anchorA.x, p_definition->anchorA.y, p_definition->anchorA.z);
  SCNEncodeVector3(a3, @"anchorB", p_definition->anchorB.x, p_definition->anchorB.y, p_definition->anchorB.z);
}

- (SCNPhysicsBallSocketJoint)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SCNPhysicsBallSocketJoint;
  v4 = [(SCNPhysicsBehavior *)&v11 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_definition.anchorA.x = SCNDecodeVector3(a3, @"anchorA");
    v4->_definition.anchorA.y = v6;
    v4->_definition.anchorA.z = v7;
    v4->_definition.anchorB.x = SCNDecodeVector3(a3, @"anchorB");
    v4->_definition.anchorB.y = v8;
    v4->_definition.anchorB.z = v9;
    v4->_definition.bodyA = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyA"];
    v4->_definition.bodyB = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyB"];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end