@interface NSValue(AVTExtensions)
+ (id)avt_valueWithFloat4x4:()AVTExtensions;
- (double)avt_float4x4Value;
@end

@implementation NSValue(AVTExtensions)

+ (id)avt_valueWithFloat4x4:()AVTExtensions
{
  v7[0] = vcvtq_f64_f32(*a2.f32);
  v7[1] = vcvt_hight_f64_f32(a2);
  v7[2] = vcvtq_f64_f32(*a3.f32);
  v7[3] = vcvt_hight_f64_f32(a3);
  v7[4] = vcvtq_f64_f32(*a4.f32);
  v7[5] = vcvt_hight_f64_f32(a4);
  v7[6] = vcvtq_f64_f32(*a5.f32);
  v7[7] = vcvt_hight_f64_f32(a5);
  v5 = [self valueWithCATransform3D:v7];

  return v5;
}

- (double)avt_float4x4Value
{
  if (!strcmp([self objCType], "{?=[4]}"))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    [self getValue:&v13];
  }

  else if (!strcmp([self objCType], "{CATransform3D=dddddddddddddddd}"))
  {
    [self CATransform3DValue];
    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v6);
    v14 = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v8);
    v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
    v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
  }

  else
  {
    v2 = *(MEMORY[0x1E69E9B18] + 16);
    v13 = *MEMORY[0x1E69E9B18];
    v14 = v2;
    v3 = *(MEMORY[0x1E69E9B18] + 48);
    v15 = *(MEMORY[0x1E69E9B18] + 32);
    v16 = v3;
  }

  return *v13.i64;
}

@end