@interface ARPlaneData
+ (double)_surfaceToWorldTransformForPlane:(uint64_t)a3 pivot:(float64x2_t *)a4;
+ (double)transformAnchorToPlaneAnchorConvention:(float32x4_t)a3;
+ (float)_pivotForPlane:(CV3DPlaneDetectionPlane *)a3;
+ (float)_surfacePivotForPlane:(CV3DSurfaceDetectionPlane *)a3;
+ (id)anchorForDetectionResult:(CV3DSurfaceDetectionResult *)a3;
- (ARPlaneData)initWithDetectionResult:(CV3DPlaneDetectionPlaneList *)a3 detectionTypeMask:(unint64_t)a4 sceneUnderstandingEnabled:(BOOL)a5;
- (NSDictionary)tracingEntry;
- (__n128)initWithDetectionResult:(__n128)a3 detectionTypeMask:(__n128)a4 sceneUnderstandingEnabled:(__n128)a5 renderingFromVision:(double)a6 atTimestamp:;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(__n128)a6;
@end

@implementation ARPlaneData

- (ARPlaneData)initWithDetectionResult:(CV3DPlaneDetectionPlaneList *)a3 detectionTypeMask:(unint64_t)a4 sceneUnderstandingEnabled:(BOOL)a5
{
  v22.receiver = self;
  v22.super_class = ARPlaneData;
  v8 = [(ARPlaneData *)&v22 init];
  if (v8)
  {
    v9 = [[ARCV3DPlaneDetectionPlaneList alloc] initWithDetectionResult:a3];
    detectionResult = v8->_detectionResult;
    v8->_detectionResult = v9;

    v8->_detectionTypeMask = a4;
    v8->_sceneUnderstandingEnabled = a5;
    *&v11 = ARVisionToRenderingCoordinateTransform();
    *v8->_anon_20 = v11;
    *&v8->_anon_20[16] = v12;
    *&v8->_anon_20[32] = v13;
    *&v8->_anon_20[48] = v14;
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[ARCV3DPlaneDetectionPlaneList numberOfPlanes](v8->_detectionResult, "numberOfPlanes")}];
    for (i = 0; i < [(ARCV3DPlaneDetectionPlaneList *)v8->_detectionResult numberOfPlanes]; ++i)
    {
      [(ARCV3DPlaneDetectionPlaneList *)v8->_detectionResult planeAtIndex:i];
      v17 = CV3DPlaneDetectionPlaneCopyUUID();
      if (v17)
      {
        v18 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v17];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
        [(NSDictionary *)v15 setObject:v19 forKey:v18];

        CFRelease(v17);
      }
    }

    planeIdentifiers = v8->_planeIdentifiers;
    v8->_planeIdentifiers = v15;
  }

  return v8;
}

- (__n128)initWithDetectionResult:(__n128)a3 detectionTypeMask:(__n128)a4 sceneUnderstandingEnabled:(__n128)a5 renderingFromVision:(double)a6 atTimestamp:
{
  result = [a1 initWithDetectionResult:? detectionTypeMask:? sceneUnderstandingEnabled:?];
  if (result)
  {
    result[2] = a2;
    result[3] = a3;
    result[4] = a4;
    result[5] = a5;
    result[6].n128_f64[0] = a6;
  }

  return result;
}

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(__n128)a6
{
  *&v44[32] = a8;
  *&v44[48] = a9;
  *v44 = a6;
  *&v44[16] = a7;
  v65 = *MEMORY[0x1E69E9840];
  v42 = a11;
  v46 = a12;
  if ((*(a1 + 104) & 3) != 0)
  {
    v48 = [MEMORY[0x1E695DF90] dictionary];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v14 = v42;
    v15 = [v14 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v15)
    {
      v16 = *v54;
      do
      {
        v17 = 0;
        do
        {
          if (*v54 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v53 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v20 = *(a1 + 8);
            v21 = [v19 identifier];
            v22 = [v20 objectForKey:v21];
            LOBYTE(v20) = v22 == 0;

            if (v20)
            {
              if (_ARLogGeneral(void)::onceToken != -1)
              {
                [ARPlaneData anchorsForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
              }

              v24 = _ARLogGeneral(void)::logObj;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                v27 = [v19 identifier];
                *buf = 138543874;
                v59 = v26;
                v60 = 2048;
                v61 = a1;
                v62 = 2114;
                v63 = v27;
                _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Plane anchor removed by plane detection: %{public}@", buf, 0x20u);
              }

              [v46 addObject:v19];
            }

            else
            {
              v23 = [v19 identifier];
              [v48 setObject:v19 forKey:v23];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v15);
    }

    v45 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = [*(a1 + 8) allKeys];
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v29)
    {
      v30 = *v50;
      v31 = *MEMORY[0x1E69C6C88];
      v43 = *MEMORY[0x1E69C6C98];
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v49 + 1) + 8 * i);
          v34 = [*(a1 + 8) objectForKey:{v33, v42}];
          v35 = [v34 unsignedLongValue];

          v36 = [*(a1 + 112) planeAtIndex:v35];
          if (!CV3DPlaneDetectionPlaneAge())
          {
            v37 = *(a1 + 104);
            if ((v37 & 1) == 0)
            {
              if ((v31 & CV3DPlaneDetectionPlaneGetOrientation()) != 0)
              {
                continue;
              }

              v37 = *(a1 + 104);
            }

            if ((v37 & 2) != 0 || (v43 & CV3DPlaneDetectionPlaneGetOrientation()) == 0)
            {
              v38 = [v48 objectForKey:v33];
              v47.columns[0] = *(a1 + 32);
              v47.columns[1] = *(a1 + 48);
              v47.columns[2] = *(a1 + 64);
              v47.columns[3] = *(a1 + 80);
              v39 = *(a1 + 16);
              if (v38)
              {
                ARUpdatePlaneAnchorFromCV3DPlane(v38, v36, *v44, v47, v39, [a1 applyPivotRotation], *(a1 + 104));
              }

              else
              {
                ARCreatePlaneAnchorFromCV3DPlane(v36, v33, *v44, v47, v39, [a1 applyPivotRotation], *(a1 + 104));
              }
              v40 = ;
              [v45 addObject:v40];
            }
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v45 = MEMORY[0x1E695E0F0];
  }

  return v45;
}

+ (float)_pivotForPlane:(CV3DPlaneDetectionPlane *)a3
{
  v3 = CV3DPlaneDetectionPlaneExtentOrientedBoundingBox();
  Orientation = CV3DPlaneDetectionPlaneGetOrientation();
  result = 0.0;
  if (Orientation == *MEMORY[0x1E69C6C88] && v3 != 0)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if ((atomic_load_explicit(&qword_1EBF41CE8, memory_order_acquire) & 1) == 0)
    {
      ARCreatePlaneAnchorFromCV3DPlane();
    }

    v8 = 0;
    v9 = *&_MergedGlobals_1;
    result = 0.0;
    do
    {
      v10 = v8 + 1;
      v11 = vsub_f32(*(&v17 + 8 * v8), *(&v17 + 8 * ((v8 + 1) & 3)));
      v12 = vmul_f32(v11, v11);
      *v12.i32 = sqrtf(*&v12.i32[1] + (v11.f32[0] * v11.f32[0]));
      *&v5 = vdiv_f32(v11, vdup_lane_s32(v12, 0));
      if (*&v5 >= v9)
      {
        v13 = v5;
        result = acosf(fminf(fmaxf(*&v5, -1.0), 1.0));
        *(&v5 + 1) = *(&v13 + 1);
        if (*(&v13 + 1) < 0.0)
        {
          result = -result;
        }
      }

      v8 = v10;
    }

    while (v10 != 4);
  }

  return result;
}

+ (double)transformAnchorToPlaneAnchorConvention:(float32x4_t)a3
{
  v12 = __invert_f4(*_PromotedConst_1);
  v4 = 0;
  v10 = v12;
  do
  {
    *(&v11 + v4 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*&v10.columns[v4])), a2, *v10.columns[v4].f32, 1), a3, v10.columns[v4], 2), a4, v10.columns[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  return *&v11;
}

- (NSDictionary)tracingEntry
{
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v4 = [v3 mutableCopy];

  LOBYTE(v3) = [(ARPlaneData *)self detectionTypeMask];
  v5 = [(ARPlaneData *)self detectionTypeMask];
  v6 = objc_opt_new();
  v7 = v6;
  if (v3)
  {
    [v6 addObject:@"Horizontal"];
  }

  if ((v5 & 2) != 0)
  {
    [v7 addObject:@"Vertical"];
  }

  v8 = [v7 componentsJoinedByString:@"|"];
  [v4 setObject:v8 forKeyedSubscript:@"detectionType"];

  return v4;
}

+ (float)_surfacePivotForPlane:(CV3DSurfaceDetectionPlane *)a3
{
  result = 0.0;
  if (a3->var3 == 1)
  {
    var5 = a3->var5;
    if (var5)
    {
      v25 = v9;
      v26 = v8;
      v27 = v7;
      v28 = v6;
      v29 = v3;
      v30 = v4;
      for (i = 0; i != 4; ++i)
      {
        *(&v19 + i) = vcvt_f32_f64(*(var5 + i));
      }

      v22 = v19;
      v23 = v20;
      v24 = v21;
      if ((atomic_load_explicit(&qword_1EBF41CE8, memory_order_acquire) & 1) == 0)
      {
        +[ARPlaneData _surfacePivotForPlane:];
      }

      v13 = 0;
      v14 = *&_MergedGlobals_1;
      result = 0.0;
      do
      {
        v15 = v13 + 1;
        v16 = vsub_f32(*(&v22 + 8 * v13), *(&v22 + 8 * ((v13 + 1) & 3)));
        v17 = vmul_f32(v16, v16);
        *v17.i32 = sqrtf(*&v17.i32[1] + (v16.f32[0] * v16.f32[0]));
        *&v5 = vdiv_f32(v16, vdup_lane_s32(v17, 0));
        if (*&v5 >= v14)
        {
          v18 = v5;
          result = acosf(fminf(fmaxf(*&v5, -1.0), 1.0));
          *(&v5 + 1) = *(&v18 + 1);
          if (*(&v18 + 1) < 0.0)
          {
            result = -result;
          }
        }

        v13 = v15;
      }

      while (v15 != 4);
    }
  }

  return result;
}

+ (double)_surfaceToWorldTransformForPlane:(uint64_t)a3 pivot:(float64x2_t *)a4
{
  if (a1 == 0.0)
  {
    return ARMatrix4x4MakeColumnMajorTransformFromArray(a4 + 3);
  }

  v5 = __sincosf_stret(a1 * 0.5);
  v6 = vmulq_n_f32(xmmword_1C25C86A0, v5.__sinval);
  v6.i32[3] = LODWORD(v5.__cosval);
  *&v7 = simd_matrix4x4(v6);
  v17 = v8;
  v18 = v7;
  v19 = v10;
  v20 = v9;
  *v11.i64 = ARMatrix4x4MakeColumnMajorTransformFromArray(a4 + 3);
  v15 = 0;
  v21[0] = v18;
  v21[1] = v17;
  v21[2] = v20;
  v21[3] = v19;
  do
  {
    *(&v22 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v21[v15])), v12, *&v21[v15], 1), v13, v21[v15], 2), v14, v21[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  return *&v22;
}

+ (id)anchorForDetectionResult:(CV3DSurfaceDetectionResult *)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  if (a3->var1)
  {
    v6 = 0;
    do
    {
      v7 = &a3->var0[v6];
      v8 = v7->var3 != 1;
      [a1 _surfacePivotForPlane:v7];
      [a1 _surfaceToWorldTransformForPlane:v7 pivot:?];
      v39 = v10;
      v41 = v9;
      v35 = v12;
      v37 = v11;
      *v13.i64 = ARVisionToRenderingCoordinateTransform();
      v33 = v14;
      v34 = v13;
      v31 = v16;
      v32 = v15;
      *&v17 = ARRenderingToVisionCoordinateTransform();
      v21 = 0;
      v43 = v41;
      v44 = v39;
      v45 = v37;
      v46 = v35;
      do
      {
        *(&v47 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v43 + v21))), v33, *(&v43 + v21), 1), v32, *(&v43 + v21), 2), v31, *(&v43 + v21), 3);
        v21 += 16;
      }

      while (v21 != 64);
      v22 = 0;
      v23 = v47;
      v24 = v48;
      v25 = v49;
      v26 = v50;
      v43 = v17;
      v44 = v18;
      v45 = v19;
      v46 = v20;
      do
      {
        *(&v47 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v43 + v22))), v24, *(&v43 + v22), 1), v25, *(&v43 + v22), 2), v26, *(&v43 + v22), 3);
        v22 += 16;
      }

      while (v22 != 64);
      v40 = *v48.i64;
      v42 = *v47.i64;
      v36 = *v50.i64;
      v38 = *v49.i64;
      v27 = [ARPlaneAnchor alloc];
      v28 = [MEMORY[0x1E696AFB0] ar_zeroUUID];
      v29 = [(ARPlaneAnchor *)v27 initWithIdentifier:v28 transform:v8 alignment:v42, v40, v38, v36];

      [v5 addObject:v29];
      ++v6;
    }

    while (v6 < a3->var1);
  }

  return v5;
}

+ (void)_surfacePivotForPlane:.cold.1()
{
  if (__cxa_guard_acquire(&qword_1EBF41CE8))
  {
    v0 = OUTLINED_FUNCTION_0(&_MergedGlobals_1);

    __cxa_guard_release(v0);
  }
}

@end