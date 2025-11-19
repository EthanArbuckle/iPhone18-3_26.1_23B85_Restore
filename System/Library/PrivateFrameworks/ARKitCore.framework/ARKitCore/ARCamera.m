@interface ARCamera
- (ARCamera)initWithCoder:(id)a3;
- (ARCamera)initWithIntrinsics:(__n128)a3 imageResolution:(__n128)a4 devicePosition:(CGFloat)a5 radialDistortion:(CGFloat)a6 tangentialDistortion:(__n128)a7 exposureDuration:(double)a8 calibrationData:(uint64_t)a9 extrinsicsMap:(int64_t)a10 captureLens:(__int128 *)a11;
- (BOOL)isEqual:(id)a3;
- (CGPoint)focalLength;
- (CGPoint)principalPoint;
- (CGPoint)projectPoint:(simd_float3)point orientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize;
- (CGSize)imageResolution;
- (__n128)extrinsicMatrix4x4ToDeviceType:(uint64_t)a1;
- (__n128)radialDistortion;
- (__n128)setIntrinsics:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
- (double)displayCenterTransform;
- (id)_description:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromImageData:(id)a3;
- (simd_float3)eulerAngles;
- (simd_float3)unprojectPoint:(CGPoint)point ontoPlaneWithTransform:(simd_float4x4)planeTransform orientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize;
- (simd_float3x3)intrinsics;
- (simd_float4x4)projectionMatrix;
- (simd_float4x4)projectionMatrixForOrientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize zNear:(CGFloat)zNear zFar:(CGFloat)zFar;
- (simd_float4x4)transform;
- (simd_float4x4)viewMatrixForOrientation:(UIInterfaceOrientation)orientation;
- (uint64_t)extrinsicMatrixToDeviceType:(void *)a1;
- (uint64_t)initWithIntrinsics:(double)a3 imageResolution:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setRadialDistortion:(ARCamera *)self;
@end

@implementation ARCamera

- (uint64_t)initWithIntrinsics:(double)a3 imageResolution:(double)a4
{
  v9 = objc_opt_new();
  memset(v15, 0, sizeof(v15));
  v10 = [a1 initWithIntrinsics:0 imageResolution:v15 devicePosition:0 radialDistortion:v9 tangentialDistortion:0 exposureDuration:a2 calibrationData:a3 extrinsicsMap:a4 captureLens:{a5, a6, 0.0, 0.0}];

  return v10;
}

- (ARCamera)initWithIntrinsics:(__n128)a3 imageResolution:(__n128)a4 devicePosition:(CGFloat)a5 radialDistortion:(CGFloat)a6 tangentialDistortion:(__n128)a7 exposureDuration:(double)a8 calibrationData:(uint64_t)a9 extrinsicsMap:(int64_t)a10 captureLens:(__int128 *)a11
{
  v35 = a11[1];
  v36 = *a11;
  v22 = a12;
  v23 = a13;
  v38.receiver = a1;
  v38.super_class = ARCamera;
  v24 = [(ARCamera *)&v38 init];
  v25 = v24;
  if (v24)
  {
    v24->_imageResolution.width = a5;
    v24->_imageResolution.height = a6;
    *&v24->_anon_90[16] = a3;
    *&v24->_anon_90[32] = a4;
    v24->_devicePosition = a10;
    *&v24->_radialDistortion[16] = v35;
    *v24->_anon_90 = a2;
    *v24->_tangentialDistortion = a7;
    *v24->_radialDistortion = v36;
    v24->_exposureDuration = a8;
    objc_storeStrong(&v24->_calibrationData, a12);
    v26 = [v23 copy];
    extrinsicsMap = v25->_extrinsicsMap;
    v25->_extrinsicsMap = v26;

    v28 = MEMORY[0x1E69E9B18];
    v29 = *(MEMORY[0x1E69E9B18] + 16);
    *&v25[1].super.isa = *MEMORY[0x1E69E9B18];
    *&v25[1]._trackingState = v29;
    v30 = *(v28 + 48);
    *&v25[1]._exposureDuration = *(v28 + 32);
    *&v25[1]._devicePosition = v30;
    v25->_trackingState = 0;
    v25->_trackingStateReason = 0;
    v25->_captureLens = a14;
  }

  return v25;
}

- (ARCamera)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ARCamera *)self init];
  if (v5)
  {
    [v4 decodeSizeForKey:@"imageResolution"];
    v5->_imageResolution.width = v6;
    v5->_imageResolution.height = v7;
    [v4 decodeDoubleForKey:@"exposureDuration"];
    v5->_exposureDuration = v8;
    [v4 decodeFloatForKey:@"exposureOffset"];
    v5->_exposureOffset = v9;
    [v4 ar_decodeMatrix3x3ForKey:@"intrinsics"];
    *&v5->_anon_90[8] = v10;
    *&v5->_anon_90[24] = v11;
    *v5->_anon_90 = v12;
    *&v5->_anon_90[16] = v13;
    *&v5->_anon_90[40] = v14;
    *&v5->_anon_90[32] = v15;
    [v4 ar_decodeMatrix4x4ForKey:@"transform"];
    *&v5[1].super.isa = v16;
    *&v5[1]._trackingState = v17;
    *&v5[1]._exposureDuration = v18;
    *&v5[1]._devicePosition = v19;
    v5->_trackingState = [v4 decodeIntegerForKey:@"trackingState"];
    v5->_trackingStateReason = [v4 decodeIntegerForKey:@"trackingStateReason"];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"extrinsicsMap"];
    extrinsicsMap = v5->_extrinsicsMap;
    v5->_extrinsicsMap = v24;

    v5->_captureLens = [v4 decodeIntegerForKey:@"captureLens"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  v7 = a3;
  [v7 encodeSize:@"imageResolution" forKey:{width, height}];
  [v7 encodeDouble:@"exposureDuration" forKey:self->_exposureDuration];
  *&v6 = self->_exposureOffset;
  [v7 encodeFloat:@"exposureOffset" forKey:v6];
  [v7 ar_encodeMatrix3x3:@"intrinsics" forKey:{*self->_anon_90, *&self->_anon_90[16], *&self->_anon_90[32]}];
  [v7 ar_encodeMatrix4x4:@"transform" forKey:{*&self[1].super.isa, *&self[1]._trackingState, self[1]._exposureDuration, *&self[1]._devicePosition}];
  [v7 encodeInteger:self->_trackingState forKey:@"trackingState"];
  [v7 encodeInteger:self->_trackingStateReason forKey:@"trackingStateReason"];
  [v7 encodeObject:self->_extrinsicsMap forKey:@"extrinsicsMap"];
  [v7 encodeInteger:self->_captureLens forKey:@"captureLens"];
}

- (simd_float3)eulerAngles
{
  [(ARCamera *)self transform];

  *result.i64 = AREulerAnglesFromMatrix(v2, v3, v4);
  return result;
}

- (CGPoint)focalLength
{
  v2 = *self->_anon_90;
  v3 = *&self->_anon_90[20];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)principalPoint
{
  v2 = vcvtq_f64_f32(*&self->_anon_90[32]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (double)displayCenterTransform
{
  v1 = [a1 devicePosition];

  *&result = ARDisplayCenterTransformForCaptureDevicePosition(v1).n128_u64[0];
  return result;
}

- (simd_float4x4)projectionMatrix
{
  [(ARCamera *)self projectionMatrixForOrientation:3 viewportSize:self->_imageResolution.width zNear:self->_imageResolution.height zFar:0.00100000005, 0.0];
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  result.columns[0].i64[0] = v2;
  return result;
}

- (id)_description:(BOOL)a3
{
  v3 = a3;
  trackingState = self->_trackingState;
  if (trackingState)
  {
    if (trackingState == 2)
    {
      v8 = @"Normal";
    }

    else if (trackingState == 1)
    {
      trackingStateReason = self->_trackingStateReason;
      if (trackingStateReason >= 5)
      {
        v7 = @"Undefined";
      }

      else
      {
        v7 = off_1E817D450[trackingStateReason];
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"Limited", v7];
    }

    else
    {
      v8 = @"Undefined";
    }
  }

  else
  {
    v8 = @"NotAvailable";
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  imageResolution = self->_imageResolution;
  exposureDuration = self->_exposureDuration;
  exposureOffset = self->_exposureOffset;
  v14 = *self->_anon_90;
  v15 = *&self->_anon_90[20];
  v16 = COERCE_FLOAT(*&self->_anon_90[32]);
  v17 = COERCE_FLOAT(HIDWORD(*&self->_anon_90[32]));
  v18 = ARMatrix4x4Description(v3, *&self[1].super.isa, *&self[1]._trackingState, *&self[1]._exposureDuration, *&self[1]._devicePosition);
  v19 = [v9 stringWithFormat:@"<%@: %p imageResolution=(%.f, %.f) exposureDuration=%.f exposureOffset=%.f focalLength=(%.03f, %.03f) principalPoint=(%.03f, %.03f) trackingState=%@ transform=%@>", v11, self, imageResolution, *&exposureDuration, *&exposureOffset, *&v14, *&v15, *&v16, *&v17, v8, v18];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v7 = self->_imageResolution.width == *&v5[4].i64[1] && self->_imageResolution.height == *v5[5].i64;
    v10 = v7 && self->_exposureDuration == *v5[2].i64 && self->_exposureOffset == v5->f32[2] && (v8.i64[0] = 0x3400000034000000, v8.i64[1] = 0x3400000034000000, v9 = vandq_s8(vandq_s8(vcgeq_f32(v8, vabdq_f32(*&self->_anon_90[16], v5[10])), vcgeq_f32(v8, vabdq_f32(*self->_anon_90, v5[9]))), vcgeq_f32(v8, vabdq_f32(*&self->_anon_90[32], v5[11]))), v9.i32[3] = v9.i32[2], (vminvq_u32(v9) & 0x80000000) != 0) && AREqualTransforms(*&self[1].super.isa, *&self[1]._trackingState, *&self[1]._exposureDuration, *&self[1]._devicePosition, v5[12], v5[13], v5[14], v5[15]) && self->_trackingState == v6[2] && self->_trackingStateReason == v6[3] && [(NSDictionary *)self->_extrinsicsMap isEqualToDictionary:v6[5]]&& self->_captureLens == v6[8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGPoint)projectPoint:(simd_float3)point orientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize
{
  width = viewportSize.width;
  height = viewportSize.height;
  [(ARCamera *)self viewMatrixForOrientation:?];
  v25 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, point.f32[0]), v8, *point.f32, 1), v9, point, 2));
  [(ARCamera *)self projectionMatrixForOrientation:orientation viewportSize:width zNear:height zFar:0.000000100000001, 0.0];
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, v25.f32[0]), _Q1, *v25.f32, 1), v13, v25, 2), v14, v25, 3);
  *v15.i8 = vdiv_f32(*v15.i8, *&vdupq_laneq_s32(v15, 2));
  __asm { FMOV            V1.2S, #1.0 }

  v13.i32[0] = vadd_f32(*v15.i8, *_Q1.f32).u32[0];
  v13.i32[1] = vsub_f32(*&_Q1, *&v15).i32[1];
  v20 = vcvtq_f64_f32(*v13.f32);
  *v13.i64 = width;
  *&v13.i64[1] = height;
  __asm { FMOV            V1.2D, #0.5 }

  v22 = vmulq_f64(vmulq_f64(v13, v20), _Q1);
  v23 = v22.f64[1];
  result.x = v22.f64[0];
  result.y = v23;
  return result;
}

- (simd_float3)unprojectPoint:(CGPoint)point ontoPlaneWithTransform:(simd_float4x4)planeTransform orientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize
{
  v47 = planeTransform.columns[3];
  v48 = planeTransform.columns[1];
  v8 = point.x / viewportSize.width;
  v44 = (v8 * 2.0) + -1.0;
  v9 = point.y / viewportSize.height;
  v42 = (v9 * -2.0) + 1.0;
  [(ARCamera *)self projectionMatrixForOrientation:viewportSize.width viewportSize:viewportSize.height zNear:0.1 zFar:0.0, *planeTransform.columns[2].i64];
  v55 = __invert_f4(v54);
  v45 = vaddq_f32(v55.columns[3], vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v55.columns[0], v44), v55.columns[1], v42), 0, v55.columns[2]));
  v43 = vdupq_laneq_s32(v45, 3);
  v10 = ARCameraToDisplayRotation(orientation) * 3.14159265 / 180.0;
  v11 = __sincosf_stret(v10 * 0.5);
  v12 = vmulq_n_f32(xmmword_1C25C86A0, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  *&v13 = simd_matrix4x4(v12);
  v40 = v14;
  v41 = v13;
  v38 = v16;
  v39 = v15;
  [(ARCamera *)self transform];
  v21 = 0;
  v49[0] = v41;
  v49[1] = v40;
  v49[2] = v39;
  v49[3] = v38;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  do
  {
    *(&v50 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(v49[v21])), v18, *&v49[v21], 1), v19, v49[v21], 2), v20, v49[v21], 3);
    ++v21;
  }

  while (v21 != 4);
  v22 = vdivq_f32(v45, v43);
  v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, v22.f32[0]), v51, *v22.f32, 1), v52, v22, 2), v53, v22, 3);
  [(ARCamera *)self transform];
  v24 = vsubq_f32(v46, v23);
  v25 = vmulq_f32(v24, v24);
  *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
  *v25.f32 = vrsqrte_f32(v26);
  *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
  v27 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  v28 = vmulq_f32(v48, v27);
  v29 = vmulq_f32(v48, vsubq_f32(v47, v23));
  v30 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v28.i8), vzip2_s32(*v29.i8, *v28.i8)));
  if (fabsf(v30.f32[1]) < 0.00000011921)
  {
    return xmmword_1C25C9210;
  }

  __asm { FMOV            V5.2S, #1.0 }

  v36 = vand_s8(vbsl_s8(0x8000000080000000, _D5, v30), vorr_s8(vcltz_f32(v30), vcgtz_f32(v30)));
  if ((vmvn_s8(vceq_f32(v36, vdup_lane_s32(v36, 1))).u8[0] & 1) == 0)
  {
    return vmlaq_n_f32(v23, v27, v30.f32[0] / v30.f32[1]);
  }

  return xmmword_1C25C9210;
}

- (simd_float4x4)projectionMatrixForOrientation:(UIInterfaceOrientation)orientation viewportSize:(CGSize)viewportSize zNear:(CGFloat)zNear zFar:(CGFloat)zFar
{
  height = viewportSize.height;
  width = viewportSize.width;
  v27 = *&self->_anon_90[16];
  v26 = *self->_anon_90;
  v9 = ARCameraToDisplayRotation(orientation);
  v10 = ARAdjustIntrincisForOrientation(v9, *&v26, *&v27);
  v13 = self->_imageResolution.height;
  if (v9 == 90 || v9 == -90)
  {
    v14 = self->_imageResolution.width;
  }

  else
  {
    v14 = self->_imageResolution.height;
    v13 = self->_imageResolution.width;
  }

  v15 = ARAdjustIntrinsicsForViewportSize(*&v10, v11, v12, v13, v14, width, height);

  *&v18 = ARMatrixMakeFrustum(v15, v16, v17, width, height);
  result.columns[3].i64[1] = v25;
  result.columns[3].i64[0] = v24;
  result.columns[2].i64[1] = v23;
  result.columns[2].i64[0] = v22;
  result.columns[1].i64[1] = v21;
  result.columns[1].i64[0] = v20;
  result.columns[0].i64[1] = v19;
  result.columns[0].i64[0] = v18;
  return result;
}

- (simd_float4x4)viewMatrixForOrientation:(UIInterfaceOrientation)orientation
{
  v4 = ARCameraToDisplayRotation(orientation) * 3.14159265 / 180.0;
  v5 = __sincosf_stret(v4 * 0.5);
  v6 = vmulq_n_f32(xmmword_1C25C86A0, v5.__sinval);
  v6.i32[3] = LODWORD(v5.__cosval);
  *&v7 = simd_matrix4x4(v6);
  v19 = v8;
  v20 = v7;
  v17 = v10;
  v18 = v9;
  [(ARCamera *)self transform];
  v15 = 0;
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  memset(&v22, 0, sizeof(v22));
  do
  {
    v22.columns[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v21[v15])), v12, *&v21[v15], 1), v13, v21[v15], 2), v14, v21[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  v16 = v22;

  return __invert_f4(v16);
}

- (uint64_t)extrinsicMatrixToDeviceType:(void *)a1
{
  [a1 extrinsicMatrix4x4ToDeviceType:?];

  return ARMatrix4x3FromMatrix4x4(v1, v2, v3, v4);
}

- (__n128)extrinsicMatrix4x4ToDeviceType:(uint64_t)a1
{
  v1 = [*(a1 + 40) objectForKeyedSubscript:?];
  v2 = v1;
  if (v1)
  {
    [v1 matrix];
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9B18];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIntrinsics:imageResolution:", *self->_anon_90, *&self->_anon_90[16], *&self->_anon_90[32], self->_imageResolution.width, self->_imageResolution.height}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 96) = *self->_tangentialDistortion;
    v6 = *&self->_radialDistortion[16];
    *(v4 + 112) = *self->_radialDistortion;
    *(v4 + 128) = v6;
    v7 = *&self[1].super.isa;
    v8 = *&self[1]._trackingState;
    v9 = *&self[1]._devicePosition;
    *(v4 + 224) = *&self[1]._exposureDuration;
    *(v4 + 240) = v9;
    *(v4 + 192) = v7;
    *(v4 + 208) = v8;
    *(v4 + 16) = self->_trackingState;
    *(v4 + 24) = self->_trackingStateReason;
    *(v4 + 48) = self->_devicePosition;
    *(v4 + 32) = self->_exposureDuration;
    *(v4 + 8) = self->_exposureOffset;
    objc_storeStrong((v4 + 56), self->_calibrationData);
    objc_storeStrong((v5 + 40), self->_extrinsicsMap);
    *(v5 + 64) = self->_captureLens;
  }

  return v5;
}

- (simd_float4x4)transform
{
  v2 = *&self[1].super.isa;
  v3 = *&self[1]._trackingState;
  v4 = *&self[1]._exposureDuration;
  v5 = *&self[1]._devicePosition;
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setTransform:(__n128)a3
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

- (simd_float3x3)intrinsics
{
  v2 = *self->_anon_90;
  v3 = *&self->_anon_90[16];
  v4 = *&self->_anon_90[32];
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setIntrinsics:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)radialDistortion
{
  result = *(a1 + 112);
  v3 = *(a1 + 128);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (void)setRadialDistortion:(ARCamera *)self
{
  v3 = v2[1];
  *self->_radialDistortion = *v2;
  *&self->_radialDistortion[16] = v3;
}

- (id)initFromImageData:(id)a3
{
  v4 = a3;
  [v4 cameraIntrinsics];
  v24 = v6;
  v25 = v5;
  v23 = v7;
  [v4 imageResolution];
  v9 = v8;
  v11 = v10;
  v12 = [v4 cameraPosition];
  if (v4)
  {
    [v4 radialDistortion];
    [v4 tangentialDistortion];
  }

  else
  {
    [0 tangentialDistortion];
  }

  v22 = v13;
  [v4 exposureDuration];
  v15 = v14;
  v16 = [v4 calibrationData];
  v17 = [v4 extrinsicsMap];
  v26[0] = v21;
  v26[1] = v20;
  v18 = -[ARCamera initWithIntrinsics:imageResolution:devicePosition:radialDistortion:tangentialDistortion:exposureDuration:calibrationData:extrinsicsMap:captureLens:](self, "initWithIntrinsics:imageResolution:devicePosition:radialDistortion:tangentialDistortion:exposureDuration:calibrationData:extrinsicsMap:captureLens:", v12, v26, v16, v17, [v4 captureLens], v25, v24, v23, v9, v11, v22, v15);

  return v18;
}

@end