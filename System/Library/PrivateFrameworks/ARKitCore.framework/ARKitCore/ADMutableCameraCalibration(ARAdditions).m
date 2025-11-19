@interface ADMutableCameraCalibration(ARAdditions)
- (uint64_t)scaleAllowStretch:()ARAdditions;
@end

@implementation ADMutableCameraCalibration(ARAdditions)

- (uint64_t)scaleAllowStretch:()ARAdditions
{
  [a1 referenceDimensions];
  v18 = v4;
  [a1 referenceDimensions];
  v17 = v5;
  [a1 setReferenceDimensions:{a2, a3}];
  [a1 intrinsicMatrix];
  v6.f64[0] = a2;
  v6.f64[1] = a3;
  v7.f64[0] = v18;
  v7.f64[1] = v17;
  v8 = vcvt_f32_f64(vdivq_f64(v6, v7));
  v21 = *&v8;
  [a1 setIntrinsicMatrix:{COERCE_DOUBLE(__PAIR64__(v12, COERCE_UNSIGNED_INT(vmuls_n_f32(v9, v8.f32[0])))), COERCE_DOUBLE(__PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v10, v8, 1)), v13)), COERCE_DOUBLE(vmul_f32(v11, v8))}];
  v14 = [a1 distortionModel];
  [v14 scale:v21];

  [a1 pixelSize];
  *&v15 = *&v15 / *&v21;

  return [a1 setPixelSize:v15];
}

@end