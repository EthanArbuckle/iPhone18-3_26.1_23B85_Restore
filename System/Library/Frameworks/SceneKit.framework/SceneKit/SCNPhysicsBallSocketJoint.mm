@interface SCNPhysicsBallSocketJoint
+ (SCNPhysicsBallSocketJoint)jointWithBody:(SCNPhysicsBody *)body anchor:(SCNVector3)anchor;
+ (SCNPhysicsBallSocketJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB anchorB:(SCNVector3)anchorB;
- (SCNPhysicsBallSocketJoint)initWithBody:(id)body anchor:(SCNVector3)anchor;
- (SCNPhysicsBallSocketJoint)initWithBodyA:(id)a anchorA:(SCNVector3)anchorA bodyB:(id)b anchorB:(SCNVector3)anchorB;
- (SCNPhysicsBallSocketJoint)initWithCoder:(id)coder;
- (SCNVector3)anchorA;
- (SCNVector3)anchorB;
- (void)_addToPhysicsWorld:(id)world definition:(id *)definition;
- (void)_copyDefinition:(id *)definition;
- (void)_willRemoveFromPhysicsWorld:(id)world;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (SCNPhysicsBallSocketJoint)initWithBodyA:(id)a anchorA:(SCNVector3)anchorA bodyB:(id)b anchorB:(SCNVector3)anchorB
{
  z = anchorB.z;
  y = anchorB.y;
  x = anchorB.x;
  v10 = anchorA.z;
  v11 = anchorA.y;
  v12 = anchorA.x;
  v16.receiver = self;
  v16.super_class = SCNPhysicsBallSocketJoint;
  v14 = [(SCNPhysicsBallSocketJoint *)&v16 init];
  if (v14)
  {
    v14->_definition.bodyA = a;
    v14->_definition.anchorA.x = v12;
    v14->_definition.anchorA.y = v11;
    v14->_definition.anchorA.z = v10;
    v14->_definition.bodyB = b;
    v14->_definition.anchorB.x = x;
    v14->_definition.anchorB.y = y;
    v14->_definition.anchorB.z = z;
  }

  return v14;
}

- (SCNPhysicsBallSocketJoint)initWithBody:(id)body anchor:(SCNVector3)anchor
{
  z = anchor.z;
  y = anchor.y;
  x = anchor.x;
  v10.receiver = self;
  v10.super_class = SCNPhysicsBallSocketJoint;
  v8 = [(SCNPhysicsBallSocketJoint *)&v10 init];
  if (v8)
  {
    v8->_definition.bodyA = body;
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
  v14 = [self alloc];
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
  v8 = [self alloc];
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

- (void)_copyDefinition:(id *)definition
{
  v3 = *&self->_definition.anchorB.y;
  v4 = *&self->_definition.anchorA.x;
  *definition->var0 = *&self->_definition.bodyA;
  *&definition->var0[16] = v4;
  *&definition->var0[32] = v3;
}

- (void)_addToPhysicsWorld:(id)world definition:(id *)definition
{
  world = self->_world;
  if (world)
  {
    v8 = world == world;
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

  self->_world = world;
  v10 = *&definition->var0[16];
  v12[0] = *definition->var0;
  v12[1] = v10;
  v13 = *&definition->var0[32];
  self->_constraint = _createConstraintFromDefinition(v12);
  _handle = [world _handle];
  (*(*_handle + 112))(_handle, self->_constraint, 0);
}

- (void)_willRemoveFromPhysicsWorld:(id)world
{
  if (self->_constraint)
  {
    _handle = [world _handle];
    (*(*_handle + 120))(_handle, self->_constraint);
    constraint = self->_constraint;
    if (constraint)
    {
      (*(constraint->var0 + 1))(constraint);
    }

    self->_constraint = 0;
    self->_world = 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsBallSocketJoint;
  [(SCNPhysicsBehavior *)&v7 encodeWithCoder:?];
  p_definition = &self->_definition;
  if (p_definition->bodyA)
  {
    [coder encodeObject:p_definition->bodyA forKey:@"bodyA"];
  }

  bodyB = p_definition->bodyB;
  if (bodyB)
  {
    [coder encodeObject:bodyB forKey:@"bodyB"];
  }

  SCNEncodeVector3(coder, @"anchorA", p_definition->anchorA.x, p_definition->anchorA.y, p_definition->anchorA.z);
  SCNEncodeVector3(coder, @"anchorB", p_definition->anchorB.x, p_definition->anchorB.y, p_definition->anchorB.z);
}

- (SCNPhysicsBallSocketJoint)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = SCNPhysicsBallSocketJoint;
  v4 = [(SCNPhysicsBehavior *)&v11 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_definition.anchorA.x = SCNDecodeVector3(coder, @"anchorA");
    v4->_definition.anchorA.y = v6;
    v4->_definition.anchorA.z = v7;
    v4->_definition.anchorB.x = SCNDecodeVector3(coder, @"anchorB");
    v4->_definition.anchorB.y = v8;
    v4->_definition.anchorB.z = v9;
    v4->_definition.bodyA = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bodyA"];
    v4->_definition.bodyB = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bodyB"];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end