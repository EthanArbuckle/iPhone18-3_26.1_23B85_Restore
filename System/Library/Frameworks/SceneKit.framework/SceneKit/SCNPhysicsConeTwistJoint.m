@interface SCNPhysicsConeTwistJoint
+ (SCNPhysicsConeTwistJoint)jointWithBody:(SCNPhysicsBody *)body frame:(SCNMatrix4 *)frame;
+ (SCNPhysicsConeTwistJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA frameA:(SCNMatrix4 *)frameA bodyB:(SCNPhysicsBody *)bodyB frameB:(SCNMatrix4 *)frameB;
- (SCNMatrix4)frameA;
- (SCNMatrix4)frameB;
- (SCNPhysicsConeTwistJoint)initWithBody:(id)a3 frame:(SCNMatrix4 *)a4;
- (SCNPhysicsConeTwistJoint)initWithBodyA:(id)a3 frameA:(SCNMatrix4 *)a4 bodyB:(id)a5 frameB:(SCNMatrix4 *)a6;
- (SCNPhysicsConeTwistJoint)initWithCoder:(id)a3;
- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4;
- (void)_copyDefinition:(id *)a3;
- (void)_willRemoveFromPhysicsWorld:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFrameA:(SCNMatrix4 *)frameA;
- (void)setFrameB:(SCNMatrix4 *)frameB;
- (void)setMaximumAngularLimit1:(CGFloat)maximumAngularLimit1;
- (void)setMaximumAngularLimit2:(CGFloat)maximumAngularLimit2;
- (void)setMaximumTwistAngle:(CGFloat)maximumTwistAngle;
@end

@implementation SCNPhysicsConeTwistJoint

- (void)dealloc
{
  constraint = self->_constraint;
  if (constraint)
  {
    (*(constraint->var0 + 1))(constraint, a2);
  }

  v4.receiver = self;
  v4.super_class = SCNPhysicsConeTwistJoint;
  [(SCNPhysicsConeTwistJoint *)&v4 dealloc];
}

- (SCNPhysicsConeTwistJoint)initWithBodyA:(id)a3 frameA:(SCNMatrix4 *)a4 bodyB:(id)a5 frameB:(SCNMatrix4 *)a6
{
  v18.receiver = self;
  v18.super_class = SCNPhysicsConeTwistJoint;
  v10 = [(SCNPhysicsConeTwistJoint *)&v18 init];
  if (v10)
  {
    *(v10 + 1) = a3;
    v11 = *&a4->m11;
    v12 = *&a4->m21;
    v13 = *&a4->m31;
    *(v10 + 4) = *&a4->m41;
    *(v10 + 3) = v13;
    *(v10 + 2) = v12;
    *(v10 + 1) = v11;
    *(v10 + 10) = a5;
    v14 = *&a6->m41;
    v16 = *&a6->m11;
    v15 = *&a6->m21;
    *(v10 + 120) = *&a6->m31;
    *(v10 + 136) = v14;
    *(v10 + 88) = v16;
    *(v10 + 104) = v15;
    *(v10 + 152) = vdupq_n_s64(0x3FE921FB54442D18uLL);
    *(v10 + 21) = 0x3FE921FB54442D18;
  }

  return v10;
}

- (SCNPhysicsConeTwistJoint)initWithBody:(id)a3 frame:(SCNMatrix4 *)a4
{
  v11.receiver = self;
  v11.super_class = SCNPhysicsConeTwistJoint;
  v6 = [(SCNPhysicsConeTwistJoint *)&v11 init];
  if (v6)
  {
    v6->_definition.bodyA = a3;
    v7 = *&a4->m11;
    v8 = *&a4->m21;
    v9 = *&a4->m31;
    *&v6->_definition.frameA.m41 = *&a4->m41;
    *&v6->_definition.frameA.m31 = v9;
    *&v6->_definition.frameA.m21 = v8;
    *&v6->_definition.frameA.m11 = v7;
  }

  return v6;
}

+ (SCNPhysicsConeTwistJoint)jointWithBodyA:(SCNPhysicsBody *)bodyA frameA:(SCNMatrix4 *)frameA bodyB:(SCNPhysicsBody *)bodyB frameB:(SCNMatrix4 *)frameB
{
  v10 = [a1 alloc];
  v11 = *&frameA->m21;
  v17[0] = *&frameA->m11;
  v17[1] = v11;
  v12 = *&frameA->m41;
  v17[2] = *&frameA->m31;
  v17[3] = v12;
  v13 = *&frameB->m21;
  v16[0] = *&frameB->m11;
  v16[1] = v13;
  v14 = *&frameB->m41;
  v16[2] = *&frameB->m31;
  v16[3] = v14;
  return [v10 initWithBodyA:bodyA frameA:v17 bodyB:bodyB frameB:v16];
}

+ (SCNPhysicsConeTwistJoint)jointWithBody:(SCNPhysicsBody *)body frame:(SCNMatrix4 *)frame
{
  v6 = [a1 alloc];
  v7 = *&frame->m21;
  v10[0] = *&frame->m11;
  v10[1] = v7;
  v8 = *&frame->m41;
  v10[2] = *&frame->m31;
  v10[3] = v8;
  return [v6 initWithBody:body frame:v10];
}

- (SCNMatrix4)frameA
{
  v3 = *&self->m31;
  *&retstr->m11 = *&self->m21;
  *&retstr->m21 = v3;
  v4 = *&self[1].m11;
  *&retstr->m31 = *&self->m41;
  *&retstr->m41 = v4;
  return self;
}

- (void)setFrameA:(SCNMatrix4 *)frameA
{
  v3 = *&frameA->m31;
  v4 = *&frameA->m41;
  v5 = *&frameA->m21;
  *&self->_definition.frameA.m11 = *&frameA->m11;
  *&self->_definition.frameA.m41 = v4;
  *&self->_definition.frameA.m31 = v3;
  *&self->_definition.frameA.m21 = v5;
  world = self->_world;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__SCNPhysicsConeTwistJoint_setFrameA___block_invoke;
  v10[3] = &unk_2782FE328;
  v10[4] = self;
  v7 = *&frameA->m11;
  v8 = *&frameA->m21;
  v9 = *&frameA->m41;
  v13 = *&frameA->m31;
  v14 = v9;
  v11 = v7;
  v12 = v8;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v10];
}

uint64_t __38__SCNPhysicsConeTwistJoint_setFrameA___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 176))
  {
    v2 = *(result + 44);
    v3 = *(result + 48);
    v4 = *(result + 56);
    v5 = *(result + 60);
    v6 = *(result + 64);
    v7 = *(result + 72);
    v8 = *(result + 76);
    v9 = *(result + 80);
    v10 = *(result + 96);
    v25[0] = *(result + 40);
    v25[1] = v4;
    v25[2] = v7;
    v25[3] = 0;
    v25[4] = v2;
    v25[5] = v5;
    v25[6] = v8;
    v25[7] = 0;
    v25[8] = v3;
    v25[9] = v6;
    v25[10] = v9;
    v25[11] = 0;
    v26 = *(result + 88);
    v27 = v10;
    v28 = 0;
    v11 = *(v1 + 92);
    v12 = *(v1 + 96);
    v13 = *(v1 + 104);
    v14 = *(v1 + 108);
    v15 = *(v1 + 112);
    v16 = *(v1 + 120);
    v17 = *(v1 + 124);
    v18 = *(v1 + 128);
    v19 = *(v1 + 144);
    v20 = *(v1 + 136);
    v21[0] = *(v1 + 88);
    v21[1] = v13;
    v21[2] = v16;
    v21[3] = 0;
    v21[4] = v11;
    v21[5] = v14;
    v21[6] = v17;
    v21[7] = 0;
    v21[8] = v12;
    v21[9] = v15;
    v21[10] = v18;
    v21[11] = 0;
    v22 = v20;
    v23 = v19;
    v24 = 0;
    return (*(**(v1 + 176) + 88))(*(v1 + 176), v25, v21);
  }

  return result;
}

- (SCNMatrix4)frameB
{
  v3 = *&self->m31;
  *&retstr->m11 = *&self->m21;
  *&retstr->m21 = v3;
  v4 = *&self[1].m11;
  *&retstr->m31 = *&self->m41;
  *&retstr->m41 = v4;
  return self;
}

- (void)setFrameB:(SCNMatrix4 *)frameB
{
  v3 = *&frameB->m41;
  v5 = *&frameB->m11;
  v4 = *&frameB->m21;
  *&self->_definition.frameB.m31 = *&frameB->m31;
  *&self->_definition.frameB.m41 = v3;
  *&self->_definition.frameB.m11 = v5;
  *&self->_definition.frameB.m21 = v4;
  world = self->_world;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__SCNPhysicsConeTwistJoint_setFrameB___block_invoke;
  v10[3] = &unk_2782FE328;
  v10[4] = self;
  v7 = *&frameB->m11;
  v8 = *&frameB->m21;
  v9 = *&frameB->m41;
  v13 = *&frameB->m31;
  v14 = v9;
  v11 = v7;
  v12 = v8;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v10];
}

uint64_t __38__SCNPhysicsConeTwistJoint_setFrameB___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 176))
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 36);
    v6 = *(v1 + 40);
    v7 = *(v1 + 48);
    v8 = *(v1 + 52);
    v9 = *(v1 + 56);
    v10 = *(v1 + 72);
    v11 = *(v1 + 64);
    v25[0] = *(v1 + 16);
    v25[1] = v4;
    v25[2] = v7;
    v25[3] = 0;
    v25[4] = v2;
    v25[5] = v5;
    v25[6] = v8;
    v25[7] = 0;
    v25[8] = v3;
    v25[9] = v6;
    v25[10] = v9;
    v25[11] = 0;
    v26 = v11;
    v27 = v10;
    v28 = 0;
    v12 = *(result + 44);
    v13 = *(result + 48);
    v14 = *(result + 56);
    v15 = *(result + 60);
    v16 = *(result + 64);
    v17 = *(result + 72);
    v18 = *(result + 76);
    v19 = *(result + 80);
    v20 = *(result + 96);
    v21[0] = *(result + 40);
    v21[1] = v14;
    v21[2] = v17;
    v21[3] = 0;
    v21[4] = v12;
    v21[5] = v15;
    v21[6] = v18;
    v21[7] = 0;
    v21[8] = v13;
    v21[9] = v16;
    v21[10] = v19;
    v21[11] = 0;
    v22 = *(result + 88);
    v23 = v20;
    v24 = 0;
    return (*(**(v1 + 176) + 88))(*(v1 + 176), v25, v21);
  }

  return result;
}

- (void)setMaximumAngularLimit1:(CGFloat)maximumAngularLimit1
{
  self->_definition.maximumAngularLimit1 = maximumAngularLimit1;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SCNPhysicsConeTwistJoint_setMaximumAngularLimit1___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = maximumAngularLimit1;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

double __52__SCNPhysicsConeTwistJoint_setMaximumAngularLimit1___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = *(a1 + 40);
    *(v2 + 512) = v3;
    *(v2 + 516) = vcvt_f32_f64(*(v1 + 160));
    result = 0.000000381469873;
    *(v2 + 496) = 0x3E99999A3F000000;
    *(v2 + 504) = 1065353216;
  }

  return result;
}

- (void)setMaximumAngularLimit2:(CGFloat)maximumAngularLimit2
{
  self->_definition.maximumAngularLimit2 = maximumAngularLimit2;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SCNPhysicsConeTwistJoint_setMaximumAngularLimit2___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = maximumAngularLimit2;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

double __52__SCNPhysicsConeTwistJoint_setMaximumAngularLimit2___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = v1 + 8;
    v4 = *(v3 + 144);
    v5 = *(a1 + 40);
    v6 = *(v3 + 160);
    *(v2 + 512) = v4;
    *(v2 + 516) = v5;
    *(v2 + 520) = v6;
    result = 0.000000381469873;
    *(v2 + 496) = 0x3E99999A3F000000;
    *(v2 + 504) = 1065353216;
  }

  return result;
}

- (void)setMaximumTwistAngle:(CGFloat)maximumTwistAngle
{
  self->_definition.maximumTwistAngle = maximumTwistAngle;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SCNPhysicsConeTwistJoint_setMaximumTwistAngle___block_invoke;
  v4[3] = &unk_2782FB7D0;
  v4[4] = self;
  *&v4[5] = maximumTwistAngle;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

double __49__SCNPhysicsConeTwistJoint_setMaximumTwistAngle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = *(a1 + 40);
    v2[64] = vcvt_f32_f64(*(v1 + 152));
    v2[65].f32[0] = v3;
    result = 0.000000381469873;
    v2[62] = 0x3E99999A3F000000;
    v2[63].i32[0] = 1065353216;
  }

  return result;
}

- (void)_copyDefinition:(id *)a3
{
  v4 = *&self->_definition.frameA.m13;
  v3 = *&self->_definition.frameA.m23;
  *a3->var0 = *&self->_definition.bodyA;
  *&a3->var0[16] = v4;
  *&a3->var0[32] = v3;
  v5 = *&self->_definition.frameB.m21;
  v7 = *&self->_definition.frameA.m33;
  v6 = *&self->_definition.frameA.m43;
  *&a3->var0[80] = *&self->_definition.frameB.m11;
  *&a3->var0[96] = v5;
  *&a3->var0[48] = v7;
  *&a3->var0[64] = v6;
  v9 = *&self->_definition.frameB.m41;
  v8 = *&self->_definition.maximumAngularLimit1;
  v10 = *&self->_definition.frameB.m31;
  *&a3->var0[160] = self->_definition.maximumTwistAngle;
  *&a3->var0[128] = v9;
  *&a3->var0[144] = v8;
  *&a3->var0[112] = v10;
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
  v10 = *&a4->var0[144];
  v16[8] = *&a4->var0[128];
  v16[9] = v10;
  v17 = *&a4->var0[160];
  v11 = *&a4->var0[80];
  v16[4] = *&a4->var0[64];
  v16[5] = v11;
  v12 = *&a4->var0[112];
  v16[6] = *&a4->var0[96];
  v16[7] = v12;
  v13 = *&a4->var0[16];
  v16[0] = *a4->var0;
  v16[1] = v13;
  v14 = *&a4->var0[48];
  v16[2] = *&a4->var0[32];
  v16[3] = v14;
  self->_constraint = _createConstraintFromDefinition(v16);
  v15 = [a3 _handle];
  (*(*v15 + 112))(v15, self->_constraint, 0);
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
  v7.super_class = SCNPhysicsConeTwistJoint;
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
}

- (SCNPhysicsConeTwistJoint)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsConeTwistJoint;
  v4 = [(SCNPhysicsBehavior *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_definition.bodyA = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyA"];
    v4->_definition.bodyB = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bodyB"];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end