@interface NSAffineTransform(CAAnimatableValue)
- (void)CA_addValue:()CAAnimatableValue multipliedBy:;
- (void)CA_interpolateValue:()CAAnimatableValue byFraction:;
@end

@implementation NSAffineTransform(CAAnimatableValue)

- (void)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self CA_CGAffineTransformValue];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v18[0] = v15;
  v18[1] = v16;
  v18[2] = v17;
  if (a4)
  {
    [a4 CA_CGAffineTransformValue];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  transform = [MEMORY[0x1E696AA98] transform];
  v9 = v12;
  v10 = v13;
  v11 = v14;
  [transform setTransformStruct:&v9];
  return transform;
}

- (void)CA_addValue:()CAAnimatableValue multipliedBy:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self CA_CGAffineTransformValue];
    v18 = *v25;
    v19 = *&v25[16];
    v20 = v26;
    if (a3)
    {
LABEL_3:
      [a3 CA_CGAffineTransformValue];
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
LABEL_6:
  *v25 = v22;
  *&v25[16] = v23;
  v26 = v24;
  if ((a4 & 0x80000000) != 0)
  {
    v6.f64[0] = *&v25[24];
    v7.f64[0] = *&v25[24];
    v7.f64[1] = *&v25[16];
    v8 = vmulq_f64(v7, *v25);
    v9 = vsubq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0];
    if (v9 != 0.0)
    {
      v10 = 1.0 / v9;
      v11 = vmulq_n_f64(*&v25[8], v10);
      v6.f64[1] = *v25;
      v12 = vmulq_n_f64(v6, v10);
      *v25 = v12.f64[0];
      *&v25[8] = vnegq_f64(v11);
      *&v25[24] = v12.f64[1];
      v13 = vmulq_f64(v26, v11);
      v26 = vmlsq_f64(vextq_s8(v13, v13, 8uLL), v12, v26);
    }

    a4 = -a4;
  }

  CA::Mat2Impl::mat2_pow(v25, a4);
  v16 = vmlaq_n_f64(vmulq_n_f64(v18, *&v25[16]), v19, *&v25[24]);
  v17 = vmlaq_n_f64(vmulq_n_f64(v18, *v25), v19, *&v25[8]);
  v21 = vmlaq_n_f64(vmlaq_n_f64(v20, v18, v26.f64[0]), v19, v26.f64[1]);
  transform = [MEMORY[0x1E696AA98] transform];
  v22 = v17;
  v23 = v16;
  v24 = v21;
  [transform setTransformStruct:&v22];
  return transform;
}

@end