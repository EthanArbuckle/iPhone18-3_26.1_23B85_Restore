@interface VFXCamera(AVTExtension)
- (float32x2_t)avt_simdPostProjectionTransform;
- (uint64_t)avt_setSimdPostProjectionTransform:()AVTExtension;
@end

@implementation VFXCamera(AVTExtension)

- (float32x2_t)avt_simdPostProjectionTransform
{
  [a1 postProjectionTransform];
  result = vcvt_f32_f64(0);
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

- (uint64_t)avt_setSimdPostProjectionTransform:()AVTExtension
{
  v5[0] = vcvtq_f64_f32(a2);
  v5[1] = vcvtq_f64_f32(a3);
  v5[2] = vcvtq_f64_f32(a4);
  return [a1 setPostProjectionTransform:v5];
}

@end