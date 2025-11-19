@interface ADAnchoredVector
+ (id)vectorWithOrigin:(id)a1 direction:(SEL)a2;
+ (id)vectorWithTransform:(double)a3;
- (double)intersectWithPlane:(float32x4_t)a3 normal:;
@end

@implementation ADAnchoredVector

- (double)intersectWithPlane:(float32x4_t)a3 normal:
{
  v3 = a1[2];
  v4 = vmulq_f32(v3, a3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  if (fabsf(v5) < 0.00000011921)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "cannot find intersection: ray is perpendicular to plane normal";
      v8 = &v14;
LABEL_10:
      _os_log_error_impl(&dword_2402F6000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      return 0.0;
    }

    return 0.0;
  }

  v9 = a1[1];
  v10 = vmulq_f32(vsubq_f32(a2, v9), a3);
  v11 = (v10.f32[2] + vaddv_f32(*v10.f32)) / v5;
  if (v11 < 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "cannot find intersection: plane is behind ray origin";
      v8 = &v13;
      goto LABEL_10;
    }

    return 0.0;
  }

  *&result = vmlaq_n_f32(v9, v3, v11).u64[0];
  return result;
}

+ (id)vectorWithTransform:(double)a3
{
  v4 = [ADAnchoredVector vectorWithOrigin:0.0 direction:0.0];
  v5 = [v4 vectorByChangingPOV:{a1, a2, a3, a4}];

  return v5;
}

+ (id)vectorWithOrigin:(id)a1 direction:(SEL)a2
{
  v6 = v3;
  v7 = v2;
  v4 = objc_opt_new();
  [v4 setOrigin:v7];
  [v4 setDirection:v6];

  return v4;
}

@end