@interface AVTMassSpringDamperSystem
- (AVTMassSpringDamperSystem)init;
- (_DWORD)initWithPerceptualDuration:(float)duration bounce:;
- (char)initWithMass:(float)mass stiffness:(double)stiffness damping:;
- (double)float3ValueAtTime:(float32x4_t)time initialValue:(float32x4_t)value initialVelocity:(float32x4_t)velocity targetValue:;
- (void)_updateParameters;
- (void)float3VelocityAtTime:(float32x4_t)time initialValue:(double)value initialVelocity:(float32x4_t)velocity targetValue:;
@end

@implementation AVTMassSpringDamperSystem

- (AVTMassSpringDamperSystem)init
{
  v5.receiver = self;
  v5.super_class = AVTMassSpringDamperSystem;
  v2 = [(AVTMassSpringDamperSystem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_mass = 0x42C8000000000000;
    v2->_damping = 10.0;
    v2->_allowsOverdamping = 0;
    [(AVTMassSpringDamperSystem *)v2 _updateParameters];
  }

  return v3;
}

- (void)_updateParameters
{
  mass = self->_mass;
  stiffness = self->_stiffness;
  v4 = sqrtf(stiffness / mass);
  v5 = sqrtf(stiffness * mass);
  v6 = self->_damping / (v5 + v5);
  self->w0 = v4;
  self->zeta = v6;
  if (v6 < 1.0)
  {
    v7 = 1.0 - v6 * v6;
LABEL_3:
    self->wd = sqrt(v7) * v4;
    return;
  }

  if (v6 > 1.0 && self->_allowsOverdamping)
  {
    v7 = v6 * v6 + -1.0;
    goto LABEL_3;
  }
}

- (char)initWithMass:(float)mass stiffness:(double)stiffness damping:
{
  if (!self)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = AVTMassSpringDamperSystem;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = v5;
  if (v5)
  {
    v7 = 0.0;
    if (a2 >= 0.0)
    {
      v7 = a2;
    }

    *(v5 + 2) = v7;
    *(v5 + 12) = vbsl_s8(vcltz_f32(__PAIR64__(LODWORD(stiffness), LODWORD(mass))), 0x4120000042C80000, __PAIR64__(LODWORD(stiffness), LODWORD(mass)));
    v5[24] = 1;
    [v5 _updateParameters];
  }

  return v6;
}

- (_DWORD)initWithPerceptualDuration:(float)duration bounce:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = AVTMassSpringDamperSystem;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[2] = 1065353216;
    if (a2 <= 0.0)
    {
      v8 = INFINITY;
    }

    else
    {
      v7 = 6.28318531 / a2;
      v8 = v7 * v7;
    }

    *(v5 + 3) = v8;
    if (duration >= 0.0)
    {
      v9 = 1.0 - duration;
    }

    else
    {
      v9 = 1.0 / (duration + 1.0);
    }

    v10 = v9 * 12.5663706 / a2;
    *(v5 + 4) = v10;
    *(v5 + 24) = 1;
    [v5 _updateParameters];
  }

  return v6;
}

- (double)float3ValueAtTime:(float32x4_t)time initialValue:(float32x4_t)value initialVelocity:(float32x4_t)velocity targetValue:
{
  if (self)
  {
    velocityCopy = velocity;
    v7 = vabdq_f32(time, velocity);
    v8.i64[0] = 0x3400000034000000;
    v8.i64[1] = 0x3400000034000000;
    v9 = vcgtq_f32(v8, v7);
    v9.i32[3] = v9.i32[2];
    if ((vminvq_u32(v9) & 0x80000000) == 0)
    {
      v10 = vsubq_f32(time, velocityCopy);
      v11 = *(self + 40);
      v44 = velocityCopy;
      if (v11 >= 1.0)
      {
        if (v11 > 1.0 && *(self + 24) == 1)
        {
          v21 = *(self + 48);
          v22 = *(self + 32);
          v23 = v21 - v11 * v22;
          v24 = v23;
          v25 = vmlaq_n_f32(vnegq_f32(value), v10, v24);
          v26 = v21 + v21;
          *&v26 = v21 + v21;
          v27 = vdupq_lane_s32(*&v26, 0);
          v28 = vdivq_f32(v25, v27);
          v25.f32[0] = v21 + v11 * v22;
          v40 = vdivq_f32(vmlaq_n_f32(value, v10, v25.f32[0]), v27);
          v42 = v28;
          v29 = exp(-(v21 + v11 * v22) * a2);
          v38 = v29;
          v30 = exp(v23 * a2);
          v20 = vmlaq_n_f32(vmulq_n_f32(v40, v30), v42, v38);
        }

        else
        {
          v31 = *(self + 32);
          v32 = v31;
          v33 = vmlaq_n_f32(value, v10, v32);
          v34 = a2;
          v43 = vmlaq_n_f32(v10, v33, v34);
          v35 = exp(-(a2 * v31));
          v20 = vmulq_n_f32(v43, v35);
        }

        velocityCopy = v44;
      }

      else
      {
        v12 = *(self + 32);
        v13 = v11 * v12;
        *&v13 = v11 * v12;
        v14 = vmlaq_n_f32(value, v10, *&v13);
        v15 = *(self + 48);
        *&v13 = v15;
        v39 = vdivq_f32(v14, vdupq_lane_s32(*&v13, 0));
        v41 = v10;
        v16 = exp(-(a2 * v11) * v12);
        v37 = v16;
        v17 = __sincos_stret(v15 * a2);
        velocityCopy = v44;
        cosval = v17.__cosval;
        sinval = v17.__sinval;
        v20 = vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v39, sinval), v41, cosval), v37);
      }

      velocityCopy.i64[0] = vaddq_f32(velocityCopy, v20).u64[0];
    }
  }

  else
  {
    velocityCopy.i64[0] = 0;
  }

  return *velocityCopy.i64;
}

- (void)float3VelocityAtTime:(float32x4_t)time initialValue:(double)value initialVelocity:(float32x4_t)velocity targetValue:
{
  if (self)
  {
    v6.i64[0] = 0x3400000034000000;
    v6.i64[1] = 0x3400000034000000;
    v7 = vcgtq_f32(v6, vabdq_f32(time, velocity));
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      v8 = *(self + 40);
      if (v8 >= 1.0)
      {
        if (v8 > 1.0 && *(self + 24) == 1)
        {
          v10 = *(self + 48);
          v11 = *(self + 32);
          v12 = v10 - v8 * v11;
          exp(-(v10 + v8 * v11) * a2);
          exp(v12 * a2);
        }

        else
        {
          exp(-(a2 * *(self + 32)));
        }
      }

      else
      {
        v9 = *(self + 48);
        exp(-(a2 * v8) * *(self + 32));
        __sincos_stret(v9 * a2);
      }
    }
  }
}

@end