@interface ARFrame(ARFrame_NormalizedImagePoint)
- (float32x2_t)normalizedImagePointForScreenPoint:()ARFrame_NormalizedImagePoint viewportSize:orientation:;
@end

@implementation ARFrame(ARFrame_NormalizedImagePoint)

- (float32x2_t)normalizedImagePointForScreenPoint:()ARFrame_NormalizedImagePoint viewportSize:orientation:
{
  v4 = *&a2 / a3;
  v13 = v4;
  v5 = *(&a2 + 1) / a4;
  v12 = v5;
  [a1 displayTransformForOrientation:a3 viewportSize:a4];
  *v14.columns[1].f32 = vcvt_f32_f64(0);
  v14.columns[0] = v14.columns[1].u64[0];
  v14.columns[1] = v14.columns[1].u64[0];
  v14.columns[2].i64[0] = v14.columns[0].i64[0];
  __asm { FMOV            V3.2S, #1.0 }

  v14.columns[2].i64[1] = _D3;
  v15 = __invert_f3(v14);
  return vadd_f32(*v15.columns[2].f32, *&vmlaq_n_f32(vmulq_n_f32(v15.columns[0], v13), v15.columns[1], v12));
}

@end