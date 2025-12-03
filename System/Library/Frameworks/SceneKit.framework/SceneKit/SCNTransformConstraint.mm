@interface SCNTransformConstraint
+ (SCNTransformConstraint)orientationConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
+ (SCNTransformConstraint)positionConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
+ (SCNTransformConstraint)transformConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
- (SCNTransformConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block;
- (id)initPositionInWorld:(BOOL)world withBlock:(id)block;
- (id)initTransformInWorld:(BOOL)world withBlock:(id)block;
@end

@implementation SCNTransformConstraint

- (id)initTransformInWorld:(BOOL)world withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNTransformConstraint_initTransformInWorld_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    worldCopy = world;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"transform");
  }

  return v6;
}

void *__57__SCNTransformConstraint_initTransformInWorld_withBlock___block_invoke(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  memset(&v21, 0, sizeof(v21));
  if (*(a1 + 40) == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a4);
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
    C3DNodeGetMatrix(a4, &v20);
    WorldMatrix = &v20;
  }

  [SCNNode nodeWithNodeRef:a4, C3DMatrix4x4ToSCNMatrix4(WorldMatrix, &v21).n128_f64[0]];
  memset(&v20, 0, sizeof(v20));
  v10 = *(*(a1 + 32) + 16);
  a = v21;
  v10(&v20);
  a = v21;
  v18 = v20;
  result = SCNMatrix4EqualToMatrix4(&a, &v18);
  if ((result & 1) == 0)
  {
    memset(&a, 0, sizeof(a));
    C3DMatrix4x4FromSCNMatrix4(&a, &v20);
    if (*(a1 + 40) == 1)
    {
      Parent = C3DNodeGetParent(a4);
      if (Parent)
      {
        memset(&v18, 0, sizeof(v18));
        v13 = C3DNodeGetWorldMatrix(Parent);
        C3DMatrix4x4Invert(v13, &v18);
        C3DMatrix4x4Mult(&a, &v18, &a);
      }
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a5);
    v15 = TargetAddress;
    if (a2 != 1.0)
    {
      C3DMatrix4x4Interpolate(TargetAddress, &a, &a, a2);
    }

    Target = C3DModelTargetGetTarget(a5);
    v17 = C3DSizeOfBaseType(11);
    return C3DSetValue(Target, v15, &a, v17, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

- (id)initPositionInWorld:(BOOL)world withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SCNTransformConstraint_initPositionInWorld_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    worldCopy = world;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"translation");
  }

  return v6;
}

void *__56__SCNTransformConstraint_initPositionInWorld_withBlock___block_invoke(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a4);
    *(v30.columns[0].i64 + 4) = 0;
    v30.columns[0].i32[0] = 0;
    C3DMatrix4x4GetTranslation(WorldMatrix, &v30);
    v9 = v30.columns[0];
  }

  else
  {
    *v9.i64 = C3DNodeGetPosition(a4);
  }

  b = v9.i64[0];
  v10 = v9.f32[2];
  [SCNNode nodeWithNodeRef:a4];
  *v11.i64 = (*(*(a1 + 32) + 16))();
  v26 = v11;
  v23 = v12;
  v24 = v13;
  *&v32.x = b;
  v32.z = v10;
  result = SCNVector3EqualToVector3(*v11.f32, v32);
  if ((result & 1) == 0)
  {
    v15 = v26;
    v15.i32[1] = v23;
    v15.i32[2] = v24;
    v31 = v15;
    v27 = v15;
    if (*(a1 + 40) == 1)
    {
      Parent = C3DNodeGetParent(a4);
      if (Parent)
      {
        memset(&v30, 0, sizeof(v30));
        v17 = C3DNodeGetWorldMatrix(Parent);
        C3DMatrix4x4Invert(v17, &v30);
        v29[0] = v30.columns[0];
        v29[1] = v30.columns[1];
        v29[2] = v30.columns[2];
        v29[3] = v30.columns[3];
        *v18.i64 = C3DVector3MultMatrix4x4(v29, v27);
        v27 = v18;
        v31 = v18;
      }
    }

    if (a2 != 1.0)
    {
      *v19.i64 = C3DNodeGetPosition(a4);
      v31 = vmlaq_n_f32(v19, vsubq_f32(v27, v19), a2);
    }

    Target = C3DModelTargetGetTarget(a5);
    TargetAddress = C3DModelTargetGetTargetAddress(a5);
    v22 = C3DSizeOfBaseType(9);
    return C3DSetValue(Target, TargetAddress, &v31, v22, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SCNTransformConstraint_initOrientationInWorldSpace_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    spaceCopy = space;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"quaternion");
  }

  return v6;
}

void *__64__SCNTransformConstraint_initOrientationInWorldSpace_withBlock___block_invoke(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    v56.columns[0] = 0uLL;
    C3DNodeGetWorldOrientation(a4, &v56);
    v8 = v56.columns[0];
  }

  else
  {
    C3DNodeGetQuaternion(a4);
  }

  ba = v8;
  [SCNNode nodeWithNodeRef:a4];
  *&v9.x = (*(*(a1 + 32) + 16))();
  v49 = v9;
  v44 = v10;
  v45 = v11;
  v46 = v12;
  result = SCNVector4EqualToVector4(v9, ba);
  if ((result & 1) == 0)
  {
    v14 = v49;
    v14.y = v44;
    v14.z = v45;
    v15 = v14;
    v15.i32[3] = v46;
    b = v15;
    v57 = v15;
    if (*(a1 + 40) == 1)
    {
      v50 = v14;
      Parent = C3DNodeGetParent(a4);
      if (Parent)
      {
        memset(&v56, 0, sizeof(v56));
        WorldMatrix = C3DNodeGetWorldMatrix(Parent);
        C3DMatrix4x4Invert(WorldMatrix, &v56);
        v55[0] = v56.columns[0];
        v55[1] = v56.columns[1];
        v55[2] = v56.columns[2];
        v55[3] = v56.columns[3];
        *v18.i64 = C3DMatrix4x4GetRotation(v55);
        v19 = v18;
        v19.i32[3] = v18.i32[0];
        v20 = v50;
        v21 = vzip1q_s32(v20, v20);
        v21.i32[0] = v50.i32[2];
        v22 = vuzp1q_s32(v20, v20);
        v22.i32[0] = v50.i32[1];
        v57 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v19, vextq_s8(vdupq_laneq_s32(b, 3), b, 4uLL)), xmmword_21C27FD00), b, v18, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v21)), v22, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
        b = v57;
      }
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a5);
    v25 = TargetAddress;
    v26 = a2;
    if (a2 != 1.0)
    {
      _Q6 = *TargetAddress;
      _Q0 = vmulq_f32(*TargetAddress, b);
      _S1 = b.z;
      __asm { FMLA            S0, S1, V6.S[2] }

      _Q2.i32[0] = LODWORD(b.w);
      v33 = -(_Q0.f32[0] + (COERCE_FLOAT(HIDWORD(*TargetAddress)) * b.w));
      __asm { FMLA            S0, S2, V6.S[3] }

      _Q2.i64[0] = 0;
      v35 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q2, _Q0), 0), vnegq_f32(b), b);
      if (_Q0.f32[0] < 0.0)
      {
        _Q0.f32[0] = v33;
      }

      if (1.0 - _Q0.f32[0] <= 0.00100000005)
      {
        v41 = 1.0 - a2;
      }

      else
      {
        v51 = v35;
        bb = *TargetAddress;
        v36 = acosf(_Q0.f32[0]);
        v37 = sinf(v36);
        v38 = sinf((1.0 - a2) * v36);
        v39 = v36 * a2;
        v48 = v38 / v37;
        v40 = sinf(v39);
        v41 = v48;
        v35 = v51;
        _Q6 = bb;
        v26 = v40 / v37;
      }

      v57 = vmlaq_n_f32(vmulq_n_f32(v35, v26), _Q6, v41);
    }

    Target = C3DModelTargetGetTarget(a5);
    v43 = C3DSizeOfBaseType(10);
    return C3DSetValue(Target, v25, &v57, v43, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

+ (SCNTransformConstraint)transformConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initTransformInWorld:world withBlock:block];

  return v4;
}

+ (SCNTransformConstraint)positionConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initPositionInWorld:world withBlock:block];

  return v4;
}

+ (SCNTransformConstraint)orientationConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initOrientationInWorldSpace:world withBlock:block];

  return v4;
}

- (SCNTransformConstraint)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNTransformConstraint;
  v4 = [(SCNConstraint *)&v6 init];
  if (v4)
  {
    v4->super._constraintRef = C3DConstraintCreateProcedural(&__block_literal_global_131, @"transform");
    [(SCNConstraint *)v4 finalizeDecodeConstraint:coder];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  Copy = C3DConstraintProceduralCreateCopy(self->super._constraintRef);
  [v4 setConstraintRef:Copy];
  CFRelease(Copy);
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

@end