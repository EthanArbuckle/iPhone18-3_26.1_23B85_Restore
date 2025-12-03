@interface NSValue(Core3DKitAdditions)
+ (uint64_t)SCN_valueWithCGPoint:()Core3DKitAdditions;
+ (uint64_t)SCN_valueWithSimdMatrix4:()Core3DKitAdditions;
+ (uint64_t)valueWithSCNMatrix4:()Core3DKitAdditions;
- (double)SCN_CGPointValue;
- (float)SCNVector4Value;
- (float32_t)SCNVector3Value;
- (float64_t)SCN_simdMatrix4Value;
- (uint64_t)SCNMatrix4Value;
@end

@implementation NSValue(Core3DKitAdditions)

+ (uint64_t)SCN_valueWithCGPoint:()Core3DKitAdditions
{
  *v3 = self;
  *&v3[1] = a2;
  return [MEMORY[0x277CCAE60] valueWithBytes:v3 objCType:"{CGPoint=dd}"];
}

- (double)SCN_CGPointValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return *v2;
}

- (float32_t)SCNVector3Value
{
  if (!strcmp([self objCType], "{SCNVector3=fff}"))
  {
    v7 = 0.0;
    v6 = 0;
    [self getValue:&v6 size:12];
  }

  else if (!strcmp([self objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v4 = 0u;
    v5 = 0u;
    [self getValue:&v4 size:32];
    v2 = *&v5;
    v6 = vcvt_f32_f64(v4);
    v7 = v2;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
  }

  return v6.f32[0];
}

- (float)SCNVector4Value
{
  if (!strcmp([self objCType], "{SCNVector4=ffff}"))
  {
    v5 = 0;
    [self getValue:&v5 size:16];
  }

  else if (!strcmp([self objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v3 = 0u;
    v4 = 0u;
    [self getValue:&v3 size:32];
    v5 = vcvt_hight_f32_f64(vcvt_f32_f64(v3), v4);
  }

  else
  {
    v5 = SCNVector4Zero;
  }

  return v5.x;
}

+ (uint64_t)valueWithSCNMatrix4:()Core3DKitAdditions
{
  v3 = vcvtq_f64_f32(a3[1]);
  v8[0] = vcvtq_f64_f32(*a3);
  v8[1] = v3;
  v4 = vcvtq_f64_f32(a3[3]);
  v8[2] = vcvtq_f64_f32(a3[2]);
  v8[3] = v4;
  v5 = vcvtq_f64_f32(a3[5]);
  v8[4] = vcvtq_f64_f32(a3[4]);
  v8[5] = v5;
  v6 = vcvtq_f64_f32(a3[7]);
  v8[6] = vcvtq_f64_f32(a3[6]);
  v8[7] = v6;
  return [self valueWithCATransform3D:v8];
}

- (uint64_t)SCNMatrix4Value
{
  if (!strcmp([self objCType], "{SCNMatrix4=ffffffffffffffff}"))
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;

    return [self getValue:a2 size:64];
  }

  else
  {
    result = strcmp([self objCType], "{CATransform3D=dddddddddddddddd}");
    if (result)
    {
      result = strcmp([self objCType], "{?=[4]}");
      if (result)
      {
        *a2->f32 = SCNMatrix4Identity;
        return result;
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [self getValue:&v9 size:64];
      v5 = v9;
      v6 = v10;
      v7 = v11;
      v8 = v12;
    }

    else
    {
      v5 = 0uLL;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0u;
      v10 = 0u;
      if (self)
      {
        result = [self CATransform3DValue];
        v5 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
        v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
        v7 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
        v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v16);
      }
    }

    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

+ (uint64_t)SCN_valueWithSimdMatrix4:()Core3DKitAdditions
{
  v6[0] = vcvtq_f64_f32(*a2.f32);
  v6[1] = vcvt_hight_f64_f32(a2);
  v6[2] = vcvtq_f64_f32(*a3.f32);
  v6[3] = vcvt_hight_f64_f32(a3);
  v6[4] = vcvtq_f64_f32(*a4.f32);
  v6[5] = vcvt_hight_f64_f32(a4);
  v6[6] = vcvtq_f64_f32(*a5.f32);
  v6[7] = vcvt_hight_f64_f32(a5);
  return [self valueWithCATransform3D:v6];
}

- (float64_t)SCN_simdMatrix4Value
{
  if (!strcmp([self objCType], "{?=[4]}"))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    [self getValue:&v17 size:64];
  }

  else if (!strcmp([self objCType], "{SCNMatrix4=ffffffffffffffff}"))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    [self getValue:&v9 size:64];
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
  }

  else if (!strcmp([self objCType], "{CATransform3D=dddddddddddddddd}"))
  {
    if (self)
    {
      [self CATransform3DValue];
      v4 = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v16);
      v5 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
      v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      v7 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
    }

    else
    {
      v7 = 0uLL;
      v6 = 0uLL;
      v5 = 0uLL;
      v4 = 0uLL;
    }

    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = v4;
  }

  else
  {
    v2 = *(MEMORY[0x277D860B8] + 16);
    v17 = *MEMORY[0x277D860B8];
    v18 = v2;
    v3 = *(MEMORY[0x277D860B8] + 48);
    v19 = *(MEMORY[0x277D860B8] + 32);
    v20 = v3;
  }

  return v17.f64[0];
}

@end