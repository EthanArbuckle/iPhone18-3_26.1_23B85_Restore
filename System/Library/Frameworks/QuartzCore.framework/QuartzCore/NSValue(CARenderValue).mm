@interface NSValue(CARenderValue)
- (_DWORD)CA_copyRenderValue;
- (uint64_t)CA_copyNumericValue:()CARenderValue;
- (uint64_t)CA_numericValueCount;
@end

@implementation NSValue(CARenderValue)

- (uint64_t)CA_numericValueCount
{
  objCType = [self objCType];
  v2 = objCType;
  if (!objCType)
  {
    goto LABEL_18;
  }

  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 4;
  }

  if (!strcmp(v2, "{CGPoint=dd}") || !strcmp(v2, "{CGSize=dd}"))
  {
    return 2;
  }

  if (!strcmp(v2, "{CATransform3D=dddddddddddddddd}"))
  {
    return 16;
  }

  if (!strcmp(v2, "{CAPoint3D=ddd}"))
  {
    return 3;
  }

  if (!strcmp(v2, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
  {
    return 8;
  }

LABEL_18:
  if (!strcmp(v2, "{CAColorMatrix=ffffffffffffffffffff}"))
  {
    return 20;
  }

  return 0;
}

- (_DWORD)CA_copyRenderValue
{
  v53 = *MEMORY[0x1E69E9840];
  objCType = [self objCType];
  v3 = objCType;
  if (objCType)
  {
    if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      [self rectValue];
      *v9.i64 = v8;
      v9.i64[1] = v6;
      v10.f64[0] = 0.0;
      v12.i64[0] = *&v11.f64[0];
      v12.i64[1] = v7;
      v13 = vdupq_lane_s64(vcgtq_f64(v10, v11).i64[0], 0);
      v14.i64[1] = v6;
      *v14.i64 = v11.f64[0] + v8;
      v15 = vbslq_s8(v13, v14, v9);
      v9.i64[1] = v7;
      *v9.i64 = -v11.f64[0];
      v16 = vbslq_s8(v13, v9, v12);
      if (*&v7 < 0.0)
      {
        v15.f64[1] = *&v7 + *&v6;
        v16.f64[1] = -*&v7;
      }

      v38 = v15;
      v39 = vaddq_f64(v16, v15);
      v17 = &v38;
      v18 = 4;
      return CA::Render::Vector::new_vector(v18, v17, v4);
    }

    if (!strcmp(v3, "{CGPoint=dd}"))
    {
      [self pointValue];
    }

    else
    {
      if (strcmp(v3, "{CGSize=dd}"))
      {
        if (!strcmp(v3, "{CATransform3D=dddddddddddddddd}"))
        {
          if (self)
          {
            [self CATransform3DValue];
            v25 = v38;
            v24 = v39;
            v27 = v40;
            v26 = v41;
            v29 = v42;
            v28 = v43;
            v31 = v44;
            v30 = v45;
          }

          else
          {
            v30 = 0uLL;
            v31 = 0uLL;
            v28 = 0uLL;
            v29 = 0uLL;
            v26 = 0uLL;
            v27 = 0uLL;
            v24 = 0uLL;
            v25 = 0uLL;
          }

          v38 = v25;
          v39 = v24;
          v40 = v27;
          v41 = v26;
          v42 = v29;
          v43 = v28;
          v44 = v31;
          v45 = v30;
          v17 = &v38;
          v18 = 16;
          return CA::Render::Vector::new_vector(v18, v17, v4);
        }

        if (!strcmp(v3, "{CGAffineTransform=dddddd}"))
        {
          if (self)
          {
            [self CA_CGAffineTransformValue];
            v33 = v38;
            v32 = v39;
            v34 = v40;
          }

          else
          {
            v34 = 0uLL;
            v32 = 0uLL;
            v33 = 0uLL;
          }

          v38 = v33;
          v39 = v32;
          v40 = v34;
          v17 = &v38;
          v18 = 6;
          return CA::Render::Vector::new_vector(v18, v17, v4);
        }

        if (!strcmp(v3, "{CAPoint3D=ddd}"))
        {
          [self CAPoint3DValue];
          v38.f64[0] = v35;
          v38.f64[1] = v36;
          v39.f64[0] = v37;
          v17 = &v38;
          v18 = 3;
          return CA::Render::Vector::new_vector(v18, v17, v4);
        }

        if (!strcmp(v3, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          if (self)
          {
            [self CACornerRadiiValue];
          }

          v48 = v38;
          v49 = v39;
          v50 = v40;
          v51 = v41;
          v17 = &v48;
          v18 = 8;
          return CA::Render::Vector::new_vector(v18, v17, v4);
        }

        goto LABEL_9;
      }

      [self sizeValue];
    }

    v38.f64[0] = v22;
    v38.f64[1] = v23;
    v17 = &v38;
    v18 = 2;
    return CA::Render::Vector::new_vector(v18, v17, v4);
  }

LABEL_9:
  if (strcmp(v3, "{CAColorMatrix=ffffffffffffffffffff}"))
  {
    return 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  [self getValue:&v48 size:80];
  v19 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = &v38;
  v38 = 0u;
  v39 = 0u;
  do
  {
    v21 = *(&v48 + v19);
    *v20 = vcvtq_f64_f32(*v21.f32);
    v20[1] = vcvt_hight_f64_f32(v21);
    v20 += 2;
    v19 += 16;
  }

  while (v19 != 80);
  v17 = &v38;
  v18 = 20;
  return CA::Render::Vector::new_vector(v18, v17, v4);
}

- (uint64_t)CA_copyNumericValue:()CARenderValue
{
  v15 = *MEMORY[0x1E69E9840];
  objCType = [self objCType];
  v6 = objCType;
  if (!objCType)
  {
    goto LABEL_8;
  }

  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [self rectValue];
    *a3 = v8;
    a3[1] = v9;
    a3[2] = v8 + v10;
    a3[3] = v9 + v11;
    return 4;
  }

  if (!strcmp(v6, "{CGPoint=dd}") || !strcmp(v6, "{CGSize=dd}"))
  {
    [self getValue:a3 size:16];
    return 2;
  }

  if (!strcmp(v6, "{CATransform3D=dddddddddddddddd}"))
  {
    [self getValue:a3 size:128];
    return 16;
  }

  if (!strcmp(v6, "{CAPoint3D=ddd}"))
  {
    [self getValue:a3 size:24];
    return 3;
  }

  if (!strcmp(v6, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
  {
    [self getValue:a3 size:64];
    return 8;
  }

  else
  {
LABEL_8:
    if (!strcmp(v6, "{CAColorMatrix=ffffffffffffffffffff}"))
    {
      memset(v14, 0, sizeof(v14));
      [self getValue:v14 size:80];
      for (i = 0; i != 5; ++i)
      {
        v13 = v14[i];
        *a3 = vcvtq_f64_f32(*v13.f32);
        *(a3 + 1) = vcvt_hight_f64_f32(v13);
        a3 += 4;
      }

      return 20;
    }

    else
    {
      return 0;
    }
  }
}

@end