@interface ARHitTestRaycasting
+ (ARHitTestResult)convertHitTestResult:(float32x4_t)result resultType:(float32x4_t)type origin:(float32x4_t)origin referenceOriginTransform:(uint64_t)transform;
+ (id)hitTestFromOrigin:(double)origin resultType:(simd_float4)type origin:(simd_float4)a5 withDirection:(simd_float4)direction referenceOriginTransform:(simd_float4)transform;
+ (uint64_t)fillPointCloud:(float32x4_t)cloud cloudFeatures:(float32x4_t)features vergenceAngleCosines:(uint64_t)cosines cloudWorldPoints:(uint64_t)points pointsWorld:(uint64_t)world covariancesWorld:(void *)covariancesWorld wideToJasperTransform:(uint64_t)transform;
@end

@implementation ARHitTestRaycasting

+ (ARHitTestResult)convertHitTestResult:(float32x4_t)result resultType:(float32x4_t)type origin:(float32x4_t)origin referenceOriginTransform:(uint64_t)transform
{
  *v25.columns[0].i64 = ARMatrix4x4MakeColumnMajorTransformFromArray((a8 + 8));
  v26 = __invert_f4(v25);
  v10 = ARWorldTransformFromVisionTransform(v26, a2, result, type, origin);
  result.i64[0] = v11;
  *type.i64 = v10;
  a2.i64[0] = v12;
  v23 = v13;
  v14 = [[ARHitTestResult alloc] initWithType:a9];
  [(ARHitTestResult *)v14 setAnchor:0];
  v15 = vsubq_f32(v23, self);
  v16 = vmulq_f32(v15, v15);
  [(ARHitTestResult *)v14 setDistance:sqrtf(v16.f32[2] + vaddv_f32(*v16.f32))];
  [(ARHitTestResult *)v14 setWorldTransform:*type.i64, *result.i64, *a2.i64, *v23.i64];
  [(ARHitTestResult *)v14 setLocalTransform:*type.i64, *result.i64, *a2.i64, *v23.i64];

  return v14;
}

+ (uint64_t)fillPointCloud:(float32x4_t)cloud cloudFeatures:(float32x4_t)features vergenceAngleCosines:(uint64_t)cosines cloudWorldPoints:(uint64_t)points pointsWorld:(uint64_t)world covariancesWorld:(void *)covariancesWorld wideToJasperTransform:(uint64_t)transform
{
  covariancesWorldCopy = covariancesWorld;
  v18 = a10;
  *v19.i64 = ARMatrix3x3FromMatrix4x4(v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v56 = v20;
  v58 = v19;
  v21.i32[3] = 0;
  v54 = v21;
  v72 = __invert_f4(*world);
  v62 = v72.columns[1];
  v64 = v72.columns[0];
  v66 = v72.columns[3];
  v68 = v72.columns[2];
  v22 = 0;
  v23 = 0;
  while (v22 < [covariancesWorldCopy count])
  {
    *v24.i64 = ARVisionVectorFromARVector(*([covariancesWorldCopy points] + 16 * v22));
    v25 = v24;
    v26 = vaddq_f32(v66, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v24.f32[0]), v62, *v24.f32, 1), v68, v24, 2));
    if (v26.n128_f32[2] >= 0.0)
    {
      v60 = v25;
      v27.n128_f64[0] = ARPointCovarianceVIOFeature(v26, v58, v56, v54, *(transform + 4 * v22));
      v27.n128_u32[3] = 0;
      v28.n128_u32[3] = 0;
      v29.n128_u32[3] = 0;
      v30 = *a11 + 12 * v23;
      *v30 = v60.i64[0];
      *(v30 + 8) = v60.i32[2];
      ARMatrix3x3CopyValues(*a12 + 36 * v23, v27, v28, v29);
      v23 = (v23 + 1);
    }

    ++v22;
  }

  if (v18)
  {
    depthPointCloud = [v18 depthPointCloud];
    if (depthPointCloud)
    {
      depthPointCloud2 = [v18 depthPointCloud];
      confidences = [depthPointCloud2 confidences];

      if (confidences)
      {
        v34 = 0;
        v70[0] = v64;
        v70[1] = v62;
        v70[2] = v68;
        v70[3] = v66;
        do
        {
          v71.columns[v34] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(self, COERCE_FLOAT(v70[v34])), a2, *&v70[v34], 1), cloud, v70[v34], 2), features, v70[v34], 3);
          ++v34;
        }

        while (v34 != 4);
        __invert_f4(v71);
        *v36.i64 = ARMatrix3x3FromMatrix4x4(v35);
        v37 = 0;
        v36.i32[3] = 0;
        v38.i32[3] = 0;
        v57 = v38;
        v59 = v36;
        v39.i32[3] = 0;
        v55 = v39;
        v49 = vdupq_n_s32(0x3A83126Fu);
        while (v37 < [v18 count])
        {
          depthPointCloud3 = [v18 depthPointCloud];
          v41 = ARCheckConfidenceJasper(*([depthPointCloud3 confidences] + 4 * v37));

          if (v41)
          {
            points = [v18 points];
            v61 = *world;
            v63 = vmulq_f32(*(points + 16 * v37), v49);
            v69 = *(world + 32);
            v65 = *(world + 16);
            v67 = *(world + 48);
            v43.n128_f64[0] = ARPointCovarianceJasper(vaddq_f32(features, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(self, v63.f32[0]), a2, *v63.f32, 1), cloud, v63, 2)), v59, v57, v55);
            v44 = vaddq_f32(v67, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v61, v63.f32[0]), vdupq_lane_s32(*v63.f32, 1), v65), vdupq_laneq_s32(v63, 2), v69));
            v43.n128_u32[3] = 0;
            v45.n128_u32[3] = 0;
            v46.n128_u32[3] = 0;
            v47 = *a11 + 12 * v23;
            *v47 = v44.i64[0];
            *(v47 + 8) = v44.i32[2];
            ARMatrix3x3CopyValues(*a12 + 36 * v23, v43, v45, v46);
            v23 = (v23 + 1);
          }

          ++v37;
        }
      }
    }
  }

  return v23;
}

+ (id)hitTestFromOrigin:(double)origin resultType:(simd_float4)type origin:(simd_float4)a5 withDirection:(simd_float4)direction referenceOriginTransform:(simd_float4)transform
{
  v12 = a9;
  v13 = v12;
  if (a10 == 4 || a10 == 2)
  {
    camera = [v12 camera];
    [camera transform];
    *&v19 = ARVisionCameraTransformFromWorldTransform(v15, v16, v17, v18, type, a5, direction, transform);
    v52[0] = v19;
    v52[1] = v20;
    v52[2] = v21;
    v52[3] = v22;

    referenceFeaturePoints = [v13 referenceFeaturePoints];
    v24 = [referenceFeaturePoints count];
    v49 = v24;
    capturedPointCloudData = [v13 capturedPointCloudData];
    v26 = capturedPointCloudData;
    if (capturedPointCloudData)
    {
      v24 += [capturedPointCloudData count];
      v49 = v24;
    }

    camera2 = [v13 camera];
    [camera2 extrinsicMatrix4x4ToDeviceType:*MEMORY[0x1E6986930]];
    v38 = v29;
    v39 = v28;
    v36 = v31;
    v37 = v30;

    std::vector<CV3DHitTestPoint3D>::vector[abi:ne200100](v48, v24);
    std::vector<CV3DHitTestCovariance3D>::vector[abi:ne200100](v47, v24);
    featurePoints = [v13 featurePoints];
    v33 = [self fillPointCloud:v52 cloudFeatures:referenceFeaturePoints vergenceAngleCosines:objc_msgSend(featurePoints cloudWorldPoints:"vergenceAngleCosines") pointsWorld:v26 covariancesWorld:v48 wideToJasperTransform:{v47, v39, v38, v37, *vmulq_f32(v36, vdupq_n_s32(0x3A83126Fu)).i64}];

    if (v24 != v33)
    {
      v49 = v33;
      std::vector<CV3DHitTestPoint3D>::resize(v48, v33);
      std::vector<CV3DHitTestCovariance3D>::resize(v47, v33);
    }

    v50 = v48[0];
    v51 = v47[0];
    v34 = [[ARRaycastQuery alloc] initWithOrigin:2 direction:a10 == 4 allowingTarget:a2 alignment:origin];
    ARInitializeHitTestIntent(v46, v34, 0, type, a5, direction, transform);
    CV3DHitTestingDefaultParameters();
    CV3DPerformHitTestPointCloud();
    ARReleaseHitTestIntent(v46);

    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }

    if (v48[0])
    {
      v48[1] = v48[0];
      operator delete(v48[0]);
    }
  }

  return 0;
}

@end