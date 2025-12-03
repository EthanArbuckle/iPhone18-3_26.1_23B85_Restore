@interface SCNCamera(AVTExtension)
- (float32x2_t)avt_simdPostProjectionTransform;
- (uint64_t)avt_setSimdPostProjectionTransform:()AVTExtension;
- (uint64_t)avt_setSimdProjectionTransform:()AVTExtension;
@end

@implementation SCNCamera(AVTExtension)

- (uint64_t)avt_setSimdProjectionTransform:()AVTExtension
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return [self setProjectionTransform:v6];
}

- (float32x2_t)avt_simdPostProjectionTransform
{
  [self postProjectionTransform];
  result = vcvt_f32_f64(0);
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

- (uint64_t)avt_setSimdPostProjectionTransform:()AVTExtension
{
  v5[0] = vcvtq_f64_f32(a2);
  v5[1] = vcvtq_f64_f32(a3);
  v5[2] = vcvtq_f64_f32(a4);
  return [self setPostProjectionTransform:v5];
}

@end