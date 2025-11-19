@interface UIColor(AVTAdditions)
- (__n64)avt_colorToColor4;
@end

@implementation UIColor(AVTAdditions)

- (__n64)avt_colorToColor4
{
  v1 = [a1 CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(v1);
  Components = CGColorGetComponents(v1);
  *v4.i32 = Components->f64[0];
  switch(NumberOfComponents)
  {
    case 3:
      v7 = Components->f64[1];
      v8 = Components[1].f64[0];
      __asm { FMOV            V0.4S, #1.0 }

      result.n64_f32[0] = Components->f64[0];
      result.n64_f32[1] = v7;
      break;
    case 2:
      v5 = Components->f64[1];
      return vdupq_lane_s32(v4, 0).u64[0];
    case 1:
      return vdupq_lane_s32(v4, 0).u64[0];
    default:
      *&v14 = Components->f64[1];
      v4.i32[1] = v14;
      return vcvt_hight_f32_f64(v4, Components[1]).u64[0];
  }

  return result;
}

@end