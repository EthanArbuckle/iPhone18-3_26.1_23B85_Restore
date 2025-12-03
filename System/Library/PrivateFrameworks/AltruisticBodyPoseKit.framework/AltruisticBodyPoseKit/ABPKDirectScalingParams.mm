@interface ABPKDirectScalingParams
- (ABPKDirectScalingParams)initWithInputResolution:(CGSize)resolution andOutputResolution:(CGSize)outputResolution;
@end

@implementation ABPKDirectScalingParams

- (ABPKDirectScalingParams)initWithInputResolution:(CGSize)resolution andOutputResolution:(CGSize)outputResolution
{
  width = outputResolution.width;
  height = outputResolution.height;
  v10 = resolution.height;
  v9 = resolution.width;
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