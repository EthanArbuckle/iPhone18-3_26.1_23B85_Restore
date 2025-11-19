@interface ABPKDirectScalingParams
- (ABPKDirectScalingParams)initWithInputResolution:(CGSize)a3 andOutputResolution:(CGSize)a4;
@end

@implementation ABPKDirectScalingParams

- (ABPKDirectScalingParams)initWithInputResolution:(CGSize)a3 andOutputResolution:(CGSize)a4
{
  width = a4.width;
  height = a4.height;
  v10 = a3.height;
  v9 = a3.width;
  v11.receiver = self;
  v11.super_class = ABPKDirectScalingParams;
  result = [(ABPKDirectScalingParams *)&v11 init];
  if (result)
  {
    v5.f64[0] = height;
    v5.f64[1] = width;
    v6.f64[0] = v10;
    v6.f64[1] = v9;
    *&result->_heightScale = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vcvt_f32_f64(v5)), v6));
  }

  return result;
}

@end