@interface SCNPhysicsSliderJoint
+ (SCNPhysicsSliderJoint)jointWithBody:(SCNPhysicsBody *)body axis:(SCNVector3)axis anchor:(SCNVector3)anchor;
+ (SCNPhysicsSliderJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB;
- (SCNPhysicsSliderJoint)initWithBodyA:(id)a axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(id)b axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB;
- (SCNPhysicsSliderJoint)initWithCoder:(id)coder;
- (SCNVector3)anchorA;
- (SCNVector3)anchorB;
- (SCNVector3)axisA;
- (SCNVector3)axisB;
- (void)_addToPhysicsWorld:(id)world definition:(id *)definition;
- (void)_copyDefinition:(id *)definition;
- (void)_willRemoveFromPhysicsWorld:(id)world;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(SCNVector3)anchorA;
- (void)setAnchorB:(SCNVector3)anchorB;
- (void)setAxisA:(SCNVector3)axisA;
- (void)setAxisB:(SCNVector3)axisB;
- (void)setMaximumAngularLimit:(CGFloat)maximumAngularLimit;
- (void)setMaximumLinearLimit:(CGFloat)maximumLinearLimit;
- (void)setMinimumAngularLimit:(CGFloat)minimumAngularLimit;
- (void)setMinimumLinearLimit:(CGFloat)minimumLinearLimit;
- (void)setMotorMaximumForce:(CGFloat)motorMaximumForce;
- (void)setMotorMaximumTorque:(CGFloat)motorMaximumTorque;
- (void)setMotorTargetAngularVelocity:(CGFloat)motorTargetAngularVelocity;
- (void)setMotorTargetLinearVelocity:(CGFloat)motorTargetLinearVelocity;
@end

@implementation SCNPhysicsSliderJoint

- (void)dealloc
{
  p_definition = &self->_definition;

  constraint = self->_constraint;
  if (constraint)
  {
    (*(constraint->var0 + 1))(constraint);
  }

  v5.receiver = self;
  v5.super_class = SCNPhysicsSliderJoint;
  [(SCNPhysicsSliderJoint *)&v5 dealloc];
}

- (SCNPhysicsSliderJoint)initWithBodyA:(id)a axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(id)b axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB
{
  z = anchorA.z;
  y = anchorA.y;
  x = anchorA.x;
  v12 = axisA.z;
  v13 = axisA.y;
  v14 = axisA.x;
  v18.receiver = self;
  v18.super_class = SCNPhysicsSliderJoint;
  v16 = [(SCNPhysicsSliderJoint *)&v18 init:a];
  if (v16)
  {
    *(v16 + 1) = a;
    *(v16 + 6) = v14;
    *(v16 + 7) = v13;
    *(v16 + 8) = v12;
    *(v16 + 9) = x;
    *(v16 + 10) = y;
    *(v16 + 11) = z;
    *(v16 + 2) = b;
    *(v16 + 4) = axisB;
    *(v16 + 15) = v19;
    *(v16 + 16) = v20;
    *(v16 + 17) = v21;
    *(v16 + 72) = xmmword_21C2A3D20;
    *(v16 + 88) = xmmword_21C2A3D30;
    *(v16 + 16) = 0x3FF0000000000000;
    *(v16 + 14) = 0x3FF0000000000000;
  }

  return v16;
}

+ (SCNPhysicsSliderJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA axisA:(SCNVector3)axisA anchorA:(SCNVector3)anchorA bodyB:(SCNPhysicsBody *)bodyB axisB:(SCNVector3)axisB anchorB:(SCNVector3)anchorB
{
  z = anchorA.z;
  y = anchorA.y;
  x = anchorA.x;
  v12 = axisA.z;
  v13 = axisA.y;
  v14 = axisA.x;
  v16 = [self alloc];
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

+ (SCNPhysicsSliderJoint)jointWithBody:(SCNPhysicsBody *)body axis:(SCNVector3)axis anchor:(SCNVector3)anchor
{
  z = anchor.z;
  y = anchor.y;
  x = anchor.x;
  v8 = axis.z;
  v9 = axis.y;
  v10 = axis.x;
  v12 = [self alloc];
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
  v4[2] = __34__SCNPhysicsSliderJoint_setAxisA___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = axisA;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __34__SCNPhysicsSliderJoint_setAxisA___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  if (v1)
  {
    v2 = *(result + 40);
    v3 = *(result + 44);
    v4 = *(result + 48);
    v5 = (v3 * v3) + (v2 * v2);
    v6 = 1.0 / sqrtf(v5);
    v7 = -(v3 * v6);
    v8 = v2 * v6;
    v9 = -(v4 * (v2 * v6));
    v10 = v4 * v7;
    v11 = v5 * v6;
    v12 = 0.0;
    v13 = (v4 * v4) + (v3 * v3);
    v14 = 1.0 / sqrtf(v13);
    v15 = -(v4 * v14);
    v16 = v3 * v14;
    v17 = v13 * v14;
    if (fabsf(v4) <= 0.70711)
    {
      v17 = v9;
    }

    else
    {
      v8 = v15;
      v7 = 0.0;
      v12 = v16;
      v11 = v2 * v15;
      v10 = -(v2 * v16);
    }

    LODWORD(v18) = *(result + 40);
    *(&v18 + 1) = v7;
    *(&v18 + 1) = LODWORD(v17);
    LODWORD(v19) = *(result + 44);
    *(&v19 + 1) = v8;
    *(&v19 + 1) = LODWORD(v10);
    LODWORD(v20) = *(result + 48);
    *(&v20 + 1) = v12;
    *(&v20 + 1) = LODWORD(v11);
    *(v1 + 80) = v18;
    *(v1 + 96) = v19;
    *(v1 + 112) = v20;
    v21.n128_f64[0] = btSliderConstraint::calculateTransforms(v1, (*(v1 + 40) + 16), (*(v1 + 48) + 16));
    v22 = *(*v1 + 16);

    return v22(v1, v21);
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
  v4[2] = __34__SCNPhysicsSliderJoint_setAxisB___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = axisB;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __34__SCNPhysicsSliderJoint_setAxisB___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  if (v1)
  {
    v2 = *(result + 40);
    v3 = *(result + 44);
    v4 = *(result + 48);
    v5 = (v3 * v3) + (v2 * v2);
    v6 = 1.0 / sqrtf(v5);
    v7 = -(v3 * v6);
    v8 = v2 * v6;
    v9 = -(v4 * (v2 * v6));
    v10 = v4 * v7;
    v11 = v5 * v6;
    v12 = 0.0;
    v13 = (v4 * v4) + (v3 * v3);
    v14 = 1.0 / sqrtf(v13);
    v15 = -(v4 * v14);
    v16 = v3 * v14;
    v17 = v13 * v14;
    if (fabsf(v4) <= 0.70711)
    {
      v17 = v9;
    }

    else
    {
      v8 = v15;
      v7 = 0.0;
      v12 = v16;
      v11 = v2 * v15;
      v10 = -(v2 * v16);
    }

    LODWORD(v18) = *(result + 40);
    *(&v18 + 1) = v7;
    *(&v18 + 1) = LODWORD(v17);
    LODWORD(v19) = *(result + 44);
    *(&v19 + 1) = v8;
    *(&v19 + 1) = LODWORD(v10);
    LODWORD(v20) = *(result + 48);
    *(&v20 + 1) = v12;
    *(&v20 + 1) = LODWORD(v11);
    *(v1 + 144) = v18;
    *(v1 + 160) = v19;
    *(v1 + 176) = v20;
    v21.n128_f64[0] = btSliderConstraint::calculateTransforms(v1, (*(v1 + 40) + 16), (*(v1 + 48) + 16));
    v22 = *(*v1 + 16);

    return v22(v1, v21);
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
  v4[2] = __36__SCNPhysicsSliderJoint_setAnchorA___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorA;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __36__SCNPhysicsSliderJoint_setAnchorA___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  if (v1)
  {
    *&v2 = *(result + 40);
    *(&v2 + 1) = *(result + 48);
    *(v1 + 128) = v2;
    v3.n128_f64[0] = btSliderConstraint::calculateTransforms(v1, (*(v1 + 40) + 16), (*(v1 + 48) + 16));
    v4 = *(*v1 + 16);

    return v4(v1, v3);
  }

  return result;
}

- (SCNVector3)anchorB
{
  x = self->_definition.axisB.x;
  y = self->_definition.axisB.y;
  z = self->_definition.axisB.z;
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
  v4[2] = __36__SCNPhysicsSliderJoint_setAnchorB___block_invoke;
  v4[3] = &unk_2782FB848;
  v4[4] = self;
  v5 = anchorB;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

uint64_t __36__SCNPhysicsSliderJoint_setAnchorB___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  if (v1)
  {
    *&v2 = *(result + 40);
    *(&v2 + 1) = *(result + 48);
    *(v1 + 192) = v2;
    v3.n128_f64[0] = btSliderConstraint::calculateTransforms(v1, (*(v1 + 40) + 16), (*(v1 + 48) + 16));
    v4 = *(*v1 + 16);

    return v4(v1, v3);
  }

  return result;
}

- (void)setMinimumLinearLimit:(CGFloat)minimumLinearLimit
{
  self->_definition.minLinearLimit = minimumLinearLimit;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SCNPhysicsSliderJoint_setMinimumLinearLimit___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = minimumLinearLimit;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __47__SCNPhysicsSliderJoint_setMinimumLinearLimit___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 212) = result;
  }

  return result;
}

- (void)setMaximumLinearLimit:(CGFloat)maximumLinearLimit
{
  self->_definition.maxLinearLimit = maximumLinearLimit;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SCNPhysicsSliderJoint_setMaximumLinearLimit___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = maximumLinearLimit;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __47__SCNPhysicsSliderJoint_setMaximumLinearLimit___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 216) = result;
  }

  return result;
}

- (void)setMinimumAngularLimit:(CGFloat)minimumAngularLimit
{
  self->_definition.minAngularLimit = minimumAngularLimit;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SCNPhysicsSliderJoint_setMinimumAngularLimit___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = minimumAngularLimit;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

void __48__SCNPhysicsSliderJoint_setMinimumAngularLimit___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = fmodf(v2, 6.2832);
    if (v3 >= -3.1416)
    {
      if (v3 > 3.1416)
      {
        v3 = v3 + -6.2832;
      }
    }

    else
    {
      v3 = v3 + 6.2832;
    }

    *(v1 + 220) = v3;
  }
}

- (void)setMaximumAngularLimit:(CGFloat)maximumAngularLimit
{
  self->_definition.maxAngularLimit = maximumAngularLimit;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SCNPhysicsSliderJoint_setMaximumAngularLimit___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = maximumAngularLimit;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

void __48__SCNPhysicsSliderJoint_setMaximumAngularLimit___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = fmodf(v2, 6.2832);
    if (v3 >= -3.1416)
    {
      if (v3 > 3.1416)
      {
        v3 = v3 + -6.2832;
      }
    }

    else
    {
      v3 = v3 + 6.2832;
    }

    *(v1 + 224) = v3;
  }
}

- (void)setMotorTargetLinearVelocity:(CGFloat)motorTargetLinearVelocity
{
  self->_definition.motorTargetLinearVelocity = motorTargetLinearVelocity;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCNPhysicsSliderJoint_setMotorTargetLinearVelocity___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = motorTargetLinearVelocity;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __54__SCNPhysicsSliderJoint_setMotorTargetLinearVelocity___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    v2 = *(a1 + 40);
    *(v1 + 1216) = v2 != 0.0;
    result = v2;
    *(*(*(a1 + 32) + 136) + 1220) = result;
  }

  return result;
}

- (void)setMotorMaximumForce:(CGFloat)motorMaximumForce
{
  self->_definition.motorMaximumForce = motorMaximumForce;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SCNPhysicsSliderJoint_setMotorMaximumForce___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = motorMaximumForce;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __46__SCNPhysicsSliderJoint_setMotorMaximumForce___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 1224) = result;
  }

  return result;
}

- (void)setMotorTargetAngularVelocity:(CGFloat)motorTargetAngularVelocity
{
  self->_definition.motorTargetAngularVelocity = motorTargetAngularVelocity;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SCNPhysicsSliderJoint_setMotorTargetAngularVelocity___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = motorTargetAngularVelocity;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __55__SCNPhysicsSliderJoint_setMotorTargetAngularVelocity___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    v2 = *(a1 + 40);
    *(v1 + 1232) = v2 != 0.0;
    result = v2;
    *(*(*(a1 + 32) + 136) + 1236) = result;
  }

  return result;
}

- (void)setMotorMaximumTorque:(CGFloat)motorMaximumTorque
{
  self->_definition.motorMaximumTorque = motorMaximumTorque;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SCNPhysicsSliderJoint_setMotorMaximumTorque___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = motorMaximumTorque;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

float __47__SCNPhysicsSliderJoint_setMotorMaximumTorque___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 1240) = result;
  }

  return result;
}

- (void)_copyDefinition:(id *)definition
{
  v3 = *&self->_definition.axisB.z;
  v5 = *&self->_definition.bodyA;
  v4 = *&self->_definition.axisA.x;
  *&definition->var0[32] = *&self->_definition.anchorA.y;
  *&definition->var0[48] = v3;
  *definition->var0 = v5;
  *&definition->var0[16] = v4;
  v6 = *&self->_definition.motorTargetAngularVelocity;
  v8 = *&self->_definition.minLinearLimit;
  v7 = *&self->_definition.minAngularLimit;
  *&definition->var0[96] = *&self->_definition.motorTargetLinearVelocity;
  *&definition->var0[112] = v6;
  *&definition->var0[64] = v8;
  *&definition->var0[80] = v7;
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
  v10 = *&definition->var0[80];
  v15[4] = *&definition->var0[64];
  v15[5] = v10;
  v11 = *&definition->var0[112];
  v15[6] = *&definition->var0[96];
  v15[7] = v11;
  v12 = *&definition->var0[16];
  v15[0] = *definition->var0;
  v15[1] = v12;
  v13 = *&definition->var0[48];
  v15[2] = *&definition->var0[32];
  v15[3] = v13;
  self->_constraint = _createConstraintFromDefinition(v15);
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
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsSliderJoint;
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

  SCNEncodeVector3(coder, @"axisA", p_definition->axisA.x, p_definition->axisA.y, p_definition->axisA.z);
  SCNEncodeVector3(coder, @"axisB", p_definition->axisB.x, p_definition->axisB.y, p_definition->axisB.z);
  SCNEncodeVector3(coder, @"anchorA", p_definition->anchorA.x, p_definition->anchorA.y, p_definition->anchorA.z);
  SCNEncodeVector3(coder, @"anchorB", p_definition->anchorB.x, p_definition->anchorB.y, p_definition->anchorB.z);
  [coder encodeDouble:@"minLinearLimit" forKey:p_definition->minLinearLimit];
  [coder encodeDouble:@"maxLinearLimit" forKey:p_definition->maxLinearLimit];
  [coder encodeDouble:@"minAngularLimit" forKey:p_definition->minAngularLimit];
  [coder encodeDouble:@"maxAngularLimit" forKey:p_definition->maxAngularLimit];
  [coder encodeDouble:@"motorTargetLinearVelocity" forKey:p_definition->motorTargetLinearVelocity];
  [coder encodeDouble:@"motorMaximumForce" forKey:p_definition->motorMaximumForce];
  [coder encodeDouble:@"motorTargetAngularVelocity" forKey:p_definition->motorTargetAngularVelocity];
  [coder encodeDouble:@"motorMaximumTorque" forKey:p_definition->motorMaximumTorque];
}

- (SCNPhysicsSliderJoint)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = SCNPhysicsSliderJoint;
  v4 = [(SCNPhysicsBehavior *)&v23 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_definition.axisA.x = SCNDecodeVector3(coder, @"axisA");
    v4->_definition.axisA.y = v6;
    v4->_definition.axisA.z = v7;
    v4->_definition.axisB.x = SCNDecodeVector3(coder, @"axisB");
    v4->_definition.axisB.y = v8;
    v4->_definition.axisB.z = v9;
    v4->_definition.anchorA.x = SCNDecodeVector3(coder, @"anchorA");
    v4->_definition.anchorA.y = v10;
    v4->_definition.anchorA.z = v11;
    v4->_definition.anchorB.x = SCNDecodeVector3(coder, @"anchorB");
    v4->_definition.anchorB.y = v12;
    v4->_definition.anchorB.z = v13;
    v4->_definition.bodyA = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bodyA"];
    v4->_definition.bodyB = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bodyB"];
    [coder decodeDoubleForKey:@"minLinearLimit"];
    v4->_definition.minLinearLimit = v14;
    [coder decodeDoubleForKey:@"maxLinearLimit"];
    v4->_definition.maxLinearLimit = v15;
    [coder decodeDoubleForKey:@"minAngularLimit"];
    v4->_definition.minAngularLimit = v16;
    [coder decodeDoubleForKey:@"maxAngularLimit"];
    v4->_definition.maxAngularLimit = v17;
    [coder decodeDoubleForKey:@"motorTargetLinearVelocity"];
    v4->_definition.motorTargetLinearVelocity = v18;
    [coder decodeDoubleForKey:@"motorMaximumForce"];
    v4->_definition.motorMaximumForce = v19;
    [coder decodeDoubleForKey:@"motorTargetAngularVelocity"];
    v4->_definition.motorTargetAngularVelocity = v20;
    [coder decodeDoubleForKey:@"motorMaximumTorque"];
    v4->_definition.motorMaximumTorque = v21;
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end