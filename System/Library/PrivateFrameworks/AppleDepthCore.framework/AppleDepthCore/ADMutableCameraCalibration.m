@interface ADMutableCameraCalibration
- (ADMutableCameraCalibration)init;
- (BOOL)adjustForImageRotation:(int64_t)a3;
- (BOOL)scale:(CGSize)a3;
- (__n128)setCameraToPlatformTransform:(__n128)a3;
- (__n128)setIntrinsicMatrix:(__n128)a3;
- (void)centerCrop:(CGSize)a3;
- (void)crop:(CGRect)a3;
- (void)setDistortionModel:(id)a3;
@end

@implementation ADMutableCameraCalibration

- (BOOL)adjustForImageRotation:(int64_t)a3
{
  [(ADCameraCalibration *)self intrinsicMatrix];
  v34 = v5;
  v35 = v6;
  v36 = vcvtq_f64_f32(v7);
  [(ADCameraCalibration *)self referenceDimensions];
  v10 = rotateUVPoint(a3, v36.f64[0], v36.f64[1], v8, v9);
  v12 = v11 != *(MEMORY[0x277CBF348] + 8) || v10 != *MEMORY[0x277CBF348];
  if (v12)
  {
    LODWORD(v13) = 0;
    HIDWORD(v13) = v35;
    *&v14 = v10;
    *&v15 = v11;
    __asm { FMOV            V2.4S, #1.0 }

    [(ADMutableCameraCalibration *)self setIntrinsicMatrix:COERCE_DOUBLE(v34), v13, COERCE_DOUBLE(__PAIR64__(v15, v14))];
    v21 = [(ADCameraCalibration *)self distortionModel];
    [(ADCameraCalibration *)self referenceDimensions];
    [v21 adjustForImageRotation:a3 forDimensions:?];

    [(ADCameraCalibration *)self referenceDimensions];
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v23 = v22;
    }

    [(ADMutableCameraCalibration *)self setReferenceDimensions:v24, v23];
    v25 = 0.0;
    if ((a3 - 1) <= 2)
    {
      v25 = flt_2404CA3DC[a3 - 1];
    }

    v26 = __sincosf_stret(v25);
    *&v27 = v26.__cosval;
    *(&v27 + 1) = -v26.__sinval;
    v37 = v27;
    [(ADCameraCalibration *)self cameraToPlatformTransform];
    v28 = 0;
    v29.i32[3] = 0;
    v30.i32[3] = 0;
    v31.i32[3] = 0;
    v32.i32[3] = 1.0;
    v38[0] = v37;
    v38[1] = v26;
    v38[2] = xmmword_2404C8650;
    v38[3] = xmmword_2404C8660;
    do
    {
      *(&v39 + v28 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v38[v28])), v30, *&v38[v28], 1), v31, v38[v28], 2), v32, v38[v28], 3);
      ++v28;
    }

    while (v28 != 4);
    [(ADMutableCameraCalibration *)self setCameraToPlatformTransform:*&v39, *&v40, *&v41, *&v42];
  }

  return v12;
}

- (BOOL)scale:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x277D85DE8];
  v7 = self->super._referenceDimensions.width;
  v6 = self->super._referenceDimensions.height;
  v8 = fabs(v6 * a3.width - v7 * a3.height);
  v9 = a3.width * (v7 * 0.001);
  if (v8 > v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      v17 = v7;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = height;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot scale camera calibration. referenceDimensions (%f, %f) has a different aspect ratio than requested dimensions (%f, %f)", buf, 0x2Au);
    }
  }

  else
  {
    *&v3 = a3.width / v7;
    self->super._referenceDimensions = a3;
    v11 = *&self->super._anon_10[32];
    v12 = *&self->super._anon_10[20] * *&v3;
    v15 = v3;
    *self->super._anon_10 = *self->super._anon_10 * *&v3;
    *&self->super._anon_10[20] = v12;
    *&self->super._anon_10[40] = v11.i32[2];
    *&self->super._anon_10[32] = vmulq_n_f32(v11, *&v3).u64[0];
    v13 = [(ADCameraCalibration *)self distortionModel];
    [v13 scale:v15];

    self->super._pixelSize = self->super._pixelSize / *&v15;
  }

  return v8 <= v9;
}

- (void)centerCrop:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ADCameraCalibration *)self referenceDimensions];
  v7 = v6 - width;
  [(ADCameraCalibration *)self referenceDimensions];
  *&v8 = v8 - height;
  v9 = (*&v8 * 0.5);

  [(ADMutableCameraCalibration *)self crop:(v7 * 0.5), v9, width, height];
}

- (void)crop:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  [(ADCameraCalibration *)self referenceDimensions];
  v7 = v6;
  v9 = v8;
  [(ADMutableCameraCalibration *)self setReferenceDimensions:width, height];
  [(ADCameraCalibration *)self intrinsicMatrix];
  v11.f64[0] = x;
  v11.f64[1] = y;
  [(ADMutableCameraCalibration *)self setIntrinsicMatrix:v12, v13, COERCE_DOUBLE(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(v10), v11)))];
  if (objc_opt_respondsToSelector())
  {
    v15 = [(ADCameraCalibration *)self distortionModel];
    [v15 crop:x fromDimensions:{y, width, height, v7, v9}];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"distortion model does not implement a crop method" userInfo:0];
      objc_exception_throw(v14);
    }

    v15 = [(ADCameraCalibration *)self distortionModel];
    [v15 crop:{x, y, width, height}];
  }
}

- (void)setDistortionModel:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  distortionModel = self->super._distortionModel;
  self->super._distortionModel = v4;

  MEMORY[0x2821F96F8](v4, distortionModel);
}

- (__n128)setCameraToPlatformTransform:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)setIntrinsicMatrix:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

- (ADMutableCameraCalibration)init
{
  if (self)
  {
    v3 = objc_opt_new();
    distortionModel = self->super._distortionModel;
    self->super._distortionModel = v3;
  }

  return self;
}

@end