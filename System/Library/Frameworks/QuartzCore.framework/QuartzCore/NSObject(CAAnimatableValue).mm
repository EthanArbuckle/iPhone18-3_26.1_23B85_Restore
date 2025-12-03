@interface NSObject(CAAnimatableValue)
- (CGColor)CA_addValue:()CAAnimatableValue multipliedBy:;
- (CGColor)CA_interpolateValue:()CAAnimatableValue byFraction:;
- (double)CA_distanceToValue:()CAAnimatableValue;
- (id)CA_interpolateValues:()CAAnimatableValue ::interpolator:;
@end

@implementation NSObject(CAAnimatableValue)

- (double)CA_distanceToValue:()CAAnimatableValue
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = CFGetTypeID(self);
  TypeID = CGColorGetTypeID();
  result = 1.0;
  if (v5 == TypeID)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v8 = CAGetColorSpace(35);
    CA_CGColorGetRGBComponents(self, v8, v13.f64);
    CA_CGColorGetRGBComponents(a3, v8, v11.f64);
    v9 = vsubq_f64(v13, v11);
    v10 = vsubq_f64(v14, v12);
    return sqrt(vaddvq_f64(vmlaq_f64(vmulq_f64(v9, v9), v10, v10)));
  }

  return result;
}

- (id)CA_interpolateValues:()CAAnimatableValue ::interpolator:
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = CFGetTypeID(self);
  if (v11 == CGColorGetTypeID())
  {
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    v12 = CAGetColorSpace(35);
    CA_CGColorGetRGBComponents(self, v12, v28);
    CA_CGColorGetRGBComponents(a4, v12, v27);
    if (a3)
    {
      v13 = v29;
      CA_CGColorGetRGBComponents(a3, v12, v29);
      if (a5)
      {
LABEL_4:
        v14 = v26;
        CA_CGColorGetRGBComponents(a5, v12, v26);
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
      if (a5)
      {
        goto LABEL_4;
      }
    }

    v14 = 0;
LABEL_10:
    v17 = 1;
    CA::Render::ValueInterpolator::mix_n<double>(a6, 4, v30, v13, v28, v27, v14);
    CGColorGetContentHeadroom();
    v19 = v18;
    CGColorGetContentHeadroom();
    v21 = v20;
    CGColorGetContentHeadroom();
    v23 = v22;
    CGColorGetContentHeadroom();
    *v25 = v19;
    v25[1] = v21;
    v25[2] = v23;
    v25[3] = v24;
    do
    {
      if (v19 < *&v25[v17])
      {
        v19 = *&v25[v17];
      }

      ++v17;
    }

    while (v17 != 4);
    return CGColorCreateWithContentHeadroom();
  }

  v15 = a6->f64[0];
  *&v15 = a6->f64[0];

  return [self CA_interpolateValue:a4 byFraction:v15];
}

- (CGColor)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = CFGetTypeID(self);
  if (v7 == CGColorGetTypeID())
  {
    memset(&v23, 0, 32);
    *v21 = 0u;
    v22 = 0u;
    v8 = CAGetColorSpace(35);
    CA_CGColorGetRGBComponents(self, v8, &v23.var0);
    CA_CGColorGetRGBComponents(a4, v8, v21);
    v9 = 0;
    v10 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    do
    {
      *(&v23.var0 + v9 * 8) = vmlaq_f64(*(&v23.var0 + v9 * 8), v10, vsubq_f64(*&v21[v9], *(&v23.var0 + v9 * 8)));
      v9 += 2;
    }

    while (v9 != 4);
    CGColorGetContentHeadroom();
    CGColorGetContentHeadroom();
    return CGColorCreateWithContentHeadroom();
  }

  else if (v7 == CGPathGetTypeID())
  {
    v13 = CA::Render::Path::new_path(self, v12);
    v15 = CA::Render::Path::new_path(a4, v14);
    v23.var0 = a2;
    memset(&v23.var1, 0, 112);
    v21[0] = 0;
    CA::Render::mix_objects(v21, v13, v15, &v23);
    v16 = v21[0];
    if (v21[0])
    {
      if (*(v21[0] + 12) == 38)
      {
        v17 = (v21[0] + 8);
        if (!atomic_fetch_add(v21[0] + 2, 1u))
        {
          v16 = 0;
          atomic_fetch_add(v17, 0xFFFFFFFF);
        }

        v18 = CA::Render::Path::cg_path(v16);
        v19 = CGPathRetain(v18);
        if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v16 + 16))(v16);
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v21[0];
      if (v21[0] && atomic_fetch_add(v21[0] + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v20 + 16))(v20);
      }
    }

    else
    {
      v19 = 0;
    }

    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }

    return v19;
  }

  else if (a2 >= 0.5)
  {
    return a4;
  }

  else
  {
    return self;
  }
}

- (CGColor)CA_addValue:()CAAnimatableValue multipliedBy:
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  v7 = CFGetTypeID(self);
  if (v7 == CGColorGetTypeID())
  {
    memset(v14, 0, sizeof(v14));
    memset(v13, 0, sizeof(v13));
    v8 = CAGetColorSpace(35);
    CA_CGColorGetRGBComponents(selfCopy, v8, v14);
    CA_CGColorGetRGBComponents(a3, v8, v13);
    v9 = 0;
    v10 = vdupq_lane_s64(COERCE__INT64(a4), 0);
    do
    {
      v14[v9] = vmlaq_f64(v14[v9], v10, v13[v9]);
      ++v9;
    }

    while (v9 != 2);
    CGColorGetContentHeadroom();
    CGColorGetContentHeadroom();
    return CGColorCreateWithContentHeadroom();
  }

  if (v7 != CGPathGetTypeID())
  {
    return selfCopy;
  }

  v11 = CGPathRetain(selfCopy);

  return v11;
}

@end