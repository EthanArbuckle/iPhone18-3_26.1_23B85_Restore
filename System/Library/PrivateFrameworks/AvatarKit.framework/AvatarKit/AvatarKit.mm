void AVTCoordinatorLoadPoseAtPath(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v6 lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 stringByAppendingPathComponent:v6];

  v12 = [v10 fileURLWithPath:v11 isDirectory:0];

  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v12 error:0];
  v14 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:v13];
  [(AVTAvatarPose *)v14 setBakedAnimationBlendFactor:1.0];
  if (v14)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v15 = avt_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    AVTCoordinatorLoadPoseAtPath_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (!v9)
  {
LABEL_7:
    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPoseAtPath_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

LABEL_10:
  v5[2](v5, v14, v9);
}

void AVTCoordinatorLoadPosesAtPaths(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v32 = a3;
  v7 = [v6 count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __AVTCoordinatorLoadPosesAtPaths_block_invoke;
        v34[3] = &unk_1E7F47A70;
        v35 = v8;
        v36 = v9;
        AVTCoordinatorLoadPoseAtPath(v5, v14, v34);

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v15 = avt_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  if (![v9 count])
  {
    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v32[2](v32, v8, v9);

  v31 = *MEMORY[0x1E69E9840];
}

void __AVTCoordinatorLoadPosesAtPaths_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

void AVTCoordinatorLoadPoseAnimationsAtPaths(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v5 = a2;
  v37 = a3;
  v6 = [v5 count];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 lastPathComponent];
        v15 = [v14 stringByDeletingPathExtension];

        v16 = MEMORY[0x1E695DFF8];
        v17 = [v39 stringByAppendingPathComponent:v13];
        v18 = [v16 fileURLWithPath:v17 isDirectory:0];

        v19 = [[AVTAvatarPoseAnimation alloc] initWithAnimatedPoseRepresentationAtURL:v18];
        [v7 addObject:v19];
        [v8 addObject:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    v20 = avt_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPoseAnimationsAtPaths_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (![v8 count])
  {
    v28 = avt_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_2(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  v37[2](v37, v7, v8);

  v36 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1BB47B0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AVTIsRunningInAppExtensionOrViewService()
{
  if (_UIApplicationIsExtension())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v2 = [v1 _isHostedInAnotherProcess];

  return v2;
}

void sub_1BB47F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AVTTrackingDataFromARFrame(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, float *a9)
{
  v16 = a2;
  v17 = a4;
  [v17 transform];
  v22 = _convertARFaceAnchorTransformToSceneKitTransform(a5, a6, a7, v16, a3, v18, v19, v20, v21);
  v60 = v23;
  v62 = v22;
  v56 = v25;
  v58 = v24;
  if (a9)
  {
    *a9 = fabsf(atan2f(-v22.n128_f32[1], v22.n128_f32[0]));
  }

  [v16 timestamp];
  *a1 = v26;
  *(a1 + 16) = v57;
  v27 = vmulq_f32(v62, v62);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_n_f32(v62, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v30 = vmulq_f32(v59, v59);
  *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
  *v30.f32 = vrsqrte_f32(v31);
  *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
  v32 = vmulq_n_f32(v59, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
  v33 = vmulq_f32(v61, v61);
  *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v33.f32 = vrsqrte_f32(v34);
  *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
  v35 = vmulq_n_f32(v61, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
  v36 = (*v29.i32 + *&v32.i32[1]) + *&v35.i32[2];
  if (v36 <= 0.0)
  {
    if (*v29.i32 <= *&v32.i32[1] || *v29.i32 <= *&v35.i32[2])
    {
      if (*&v32.i32[1] <= *&v35.i32[2])
      {
        *v38.f32 = vadd_f32(*&vzip2q_s32(v29, v32), *v35.i8);
        v37 = ((*&v35.i32[2] + 1.0) - *v29.i32) - *&v32.i32[1];
        v38.f32[2] = v37;
        v38.f32[3] = *&v29.i32[1] - *v32.i32;
      }

      else
      {
        v38.f32[0] = *&v29.i32[1] + *v32.i32;
        v37 = ((*&v32.i32[1] + 1.0) - *v29.i32) - *&v35.i32[2];
        v40 = vzip2q_s32(v29, v32).u64[0];
        v38.f32[1] = v37;
        *&v38.u32[2] = vext_s8(vadd_f32(*v35.i8, v40), vsub_f32(*v35.i8, v40), 4uLL);
      }
    }

    else
    {
      v37 = ((*v29.i32 + 1.0) - *&v32.i32[1]) - *&v35.i32[2];
      v41 = *&v29.i32[1];
      v42 = vzip2q_s32(v29, v32).u64[0];
      LODWORD(v43) = vadd_f32(v42, *v35.i8).u32[0];
      HIDWORD(v43) = vsub_f32(v42, *&v35).i32[1];
      v38.i64[0] = __PAIR64__(v41 + *v32.i32, LODWORD(v37));
      v38.i64[1] = v43;
    }
  }

  else
  {
    *v38.f32 = vsub_f32(*&vzip2q_s32(v32, vuzp1q_s32(v32, v35)), *&vtrn2q_s32(v35, vzip2q_s32(v35, v29)));
    v38.f32[2] = *&v29.i32[1] - *v32.i32;
    v37 = v36 + 1.0;
    v38.f32[3] = v36 + 1.0;
  }

  v44 = 0;
  *(a1 + 32) = vmulq_n_f32(v38, 0.5 / sqrtf(v37));
  *(a1 + 48) = a7 ^ 1;
  do
  {
    v45 = AVTBlendShapeLocationFromARIndex(v44);
    [v17 _avt_rawBlendShapeAtLocation:v45];
    *(a1 + 4 * v44 + 256) = v46;

    ++v44;
  }

  while (v44 != 51);
  v47 = AVTBlendShapeLocationFromARIndex(51);
  [v17 _avt_rawBlendShapeAtLocation:v47];
  *(a1 + 464) = v48;

  if (a8)
  {
    v49 = *(a1 + 384);
    *(a1 + 196) = *(a1 + 400);
    v50 = *(a1 + 432);
    *(a1 + 212) = *(a1 + 416);
    *(a1 + 228) = v50;
    *(a1 + 240) = *(a1 + 444);
    v51 = *(a1 + 320);
    *(a1 + 132) = *(a1 + 336);
    v52 = *(a1 + 368);
    *(a1 + 148) = *(a1 + 352);
    *(a1 + 164) = v52;
    *(a1 + 180) = v49;
    v53 = *(a1 + 256);
    *(a1 + 68) = *(a1 + 272);
    v54 = *(a1 + 304);
    *(a1 + 84) = *(a1 + 288);
    *(a1 + 100) = v54;
    *(a1 + 116) = v51;
    *(a1 + 52) = v53;
    *(a1 + 460) = *(a1 + 464);
  }

  else
  {
    v55 = [v17 blendShapes];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __AVTTrackingDataFromARFrame_block_invoke;
    v63[3] = &unk_1E7F47FB8;
    v65 = a1;
    v64 = v17;
    [v55 enumerateKeysAndObjectsUsingBlock:v63];
  }
}

__n128 _convertARFaceAnchorTransformToSceneKitTransform(uint64_t a1, uint64_t a2, int a3, void *a4, unint64_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v13 = a4;
  v14 = v13;
  if (a3)
  {
    v15 = [v13 camera];
    [v15 displayCenterTransform];
    v39 = v16;
    v41 = v17;
    v42 = v19;
    v45 = v18;

    v20 = 0;
    v21 = xmmword_1BB4F05D0;
    v21.i32[3] = v39;
    v22 = xmmword_1BB4F05E0;
    v22.i32[3] = v41;
    v23 = xmmword_1BB4F0610;
    v23.i32[3] = v45;
    v24 = vnegq_f32(v42);
    v24.i32[3] = v42.i32[3];
    v54 = a6;
    v55 = a7;
    v56 = a8;
    v57 = a9;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    do
    {
      *(&v58 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v54 + v20))), v22, v54.n128_u64[v20 / 8], 1), v23, *(&v54 + v20), 2), v24, *(&v54 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    a6 = v58;
    a7 = v59;
    a8 = v60;
    a9 = v61;
  }

  v25 = AVTARKitTransformToSceneKitTransformMatrix(a5, a1, a2);
  v29 = 0;
  v54 = a6;
  v55 = a7;
  v56 = a8;
  v57 = a9;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  do
  {
    *(&v58 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v54 + v29))), v26, v54.n128_u64[v29 / 8], 1), v27, *(&v54 + v29), 2), v28, *(&v54 + v29), 3);
    v29 += 16;
  }

  while (v29 != 64);
  v51 = v59;
  v53 = v58;
  v49 = v60;
  if (a3)
  {
    AVTGetNeutralZ();
  }

  else
  {
    v30 = vmulq_f32(v61, vdupq_n_s32(0x42C80000u));
    v30.i32[3] = v61.i32[3];
    v47 = v30;
    v31 = [v14 camera];
    [v31 transform];
    v43 = v33;
    v44 = v32;
    v38 = v35;
    v40 = v34;

    v62.columns[1] = v43;
    v62.columns[0] = v44;
    v62.columns[3] = v38;
    v62.columns[2] = v40;
    v63 = __invert_f4(v62);
    v36 = 0;
    v54 = v53;
    v55 = v51;
    v56 = v49;
    v57 = v47;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    do
    {
      *(&v58 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63.columns[0], COERCE_FLOAT(*(&v54 + v36))), v63.columns[1], v54.n128_u64[v36 / 8], 1), v63.columns[2], *(&v54 + v36), 2), v63.columns[3], *(&v54 + v36), 3);
      v36 += 16;
    }

    while (v36 != 64);
    v53 = v58;
  }

  return v53;
}

void __AVTTrackingDataFromARFrame_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = AVTBlendShapeLocationToARIndex(v9);
  if (v6 > 50)
  {
    [*(a1 + 32) _avt_rawBlendShapeAtLocation:v9];
    *(*(a1 + 40) + 4 * v6 + 256) = v8;
  }

  else
  {
    [v5 floatValue];
    *(*(a1 + 40) + 4 * v6 + 52) = v7;
  }
}

uint64_t ___slowestToFastestVideoFormatsForConfiguration_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "framesPerSecond")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 framesPerSecond];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

void sub_1BB48357C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB484548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB4848F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 104));
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB484E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB485350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4857CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB485EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t AVTPosterExpectsExtraTallContent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 showsBody];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 name];
      v5 = [v6 isEqualToString:@"giraffe"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_1BB489F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB48A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AVTPlistDatabaseMemojiAssetWithIdentifier(void *a1)
{
  v1 = a1;
  if (AVTPlistDatabaseMemojiAssetWithIdentifier::onceToken != -1)
  {
    AVTPlistDatabaseMemojiAssetWithIdentifier_cold_1();
  }

  v2 = [AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier objectForKeyedSubscript:v1];

  return v2;
}

void __AVTPlistDatabaseMemojiAssetWithIdentifier_block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = +[AVTResourceLocator generatedPlistFolderName];
  v4 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? inDirectory:? isDirectory:?];

  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  v3 = AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier;
  AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier = v2;
}

id AVTPlistDatabaseMemojiAssetsForComponentType(unint64_t a1)
{
  if (AVTPlistDatabaseMemojiAssetsForComponentType::onceToken != -1)
  {
    AVTPlistDatabaseMemojiAssetsForComponentType_cold_1();
  }

  v2 = AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType;
  v3 = AVTComponentTypeToString(a1);
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __AVTPlistDatabaseMemojiAssetsForComponentType_block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = +[AVTResourceLocator generatedPlistFolderName];
  v4 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? inDirectory:? isDirectory:?];

  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  v3 = AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType;
  AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType = v2;
}

uint64_t AVTBlendShapeLocationToARIndex(void *a1)
{
  v1 = a1;
  if (_initialiseBlendshapeMappingIfNeeded_onceToken != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v2 = [kAVTBlendShapeLocationIndices objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

id AVTBlendShapeLocationFromARIndex(uint64_t a1)
{
  if (_initialiseBlendshapeMappingIfNeeded_onceToken != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v2 = kAVTBlendShapeLocationFromARIndex[a1];

  return v2;
}

BOOL AVTMorphTargetNameIsUsedForFaceAnimation(void *a1)
{
  v1 = _initialiseBlendshapeMappingIfNeeded_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v3 = [kAVTBlendShapeLocationIndices objectForKeyedSubscript:v2];

  return v3 != 0;
}

uint64_t AVTMorphTargetNameIsUsedForBindings(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"__"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"_0_") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_backward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_forward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_rightward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_leftward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_downward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_upward"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Emoji"] ^ 1;
  }

  return v2;
}

uint64_t AVTMorphTargetNameDefinesPose(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"__"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"_0_") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_backward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_forward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_rightward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_leftward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_downward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_upward"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasPrefix:@"variant_"] ^ 1;
  }

  return v2;
}

uint64_t AVTMorphTargetNameIsOfInterestForAnimator(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"_0_"] & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_backward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_forward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_rightward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_leftward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_downward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_upward"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Emoji"] ^ 1;
  }

  return v2;
}

void ___initialiseBlendshapeMappingIfNeeded_block_invoke()
{
  v38[51] = *MEMORY[0x1E69E9840];
  if (AVTFaceTrackingIsSupported_onceToken != -1)
  {
    ___initialiseBlendshapeMappingIfNeeded_block_invoke_cold_1();
  }

  if (AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported == 1)
  {
    v37 = 0;
    CVAFaceTrackingCopySemantics();
    v0 = [0 objectForKeyedSubscript:*MEMORY[0x1E698BFC0]];
  }

  else
  {
    v1 = *MEMORY[0x1E69862B8];
    v38[0] = *MEMORY[0x1E69862B0];
    v38[1] = v1;
    v2 = *MEMORY[0x1E6986308];
    v38[2] = *MEMORY[0x1E6986300];
    v38[3] = v2;
    v3 = *MEMORY[0x1E69862C8];
    v38[4] = *MEMORY[0x1E69862C0];
    v38[5] = v3;
    v4 = *MEMORY[0x1E69862D8];
    v38[6] = *MEMORY[0x1E69862D0];
    v38[7] = v4;
    v5 = *MEMORY[0x1E6986318];
    v38[8] = *MEMORY[0x1E6986310];
    v38[9] = v5;
    v6 = *MEMORY[0x1E69862E8];
    v38[10] = *MEMORY[0x1E69862E0];
    v38[11] = v6;
    v7 = *MEMORY[0x1E69862F8];
    v38[12] = *MEMORY[0x1E69862F0];
    v38[13] = v7;
    v8 = *MEMORY[0x1E6986278];
    v38[14] = *MEMORY[0x1E6986270];
    v38[15] = v8;
    v9 = *MEMORY[0x1E6986288];
    v38[16] = *MEMORY[0x1E6986280];
    v38[17] = v9;
    v10 = *MEMORY[0x1E6986330];
    v38[18] = *MEMORY[0x1E6986290];
    v38[19] = v10;
    v11 = *MEMORY[0x1E6986328];
    v38[20] = *MEMORY[0x1E6986340];
    v38[21] = v11;
    v12 = *MEMORY[0x1E6986320];
    v38[22] = *MEMORY[0x1E6986338];
    v38[23] = v12;
    v13 = *MEMORY[0x1E69863F0];
    v38[24] = *MEMORY[0x1E69863E8];
    v38[25] = v13;
    v14 = *MEMORY[0x1E6986380];
    v38[26] = *MEMORY[0x1E6986378];
    v38[27] = v14;
    v15 = *MEMORY[0x1E69863A8];
    v38[28] = *MEMORY[0x1E69863B0];
    v38[29] = v15;
    v16 = *MEMORY[0x1E69863D0];
    v38[30] = *MEMORY[0x1E69863C8];
    v38[31] = v16;
    v17 = *MEMORY[0x1E6986350];
    v38[32] = *MEMORY[0x1E6986348];
    v38[33] = v17;
    v18 = *MEMORY[0x1E69863E0];
    v38[34] = *MEMORY[0x1E69863D8];
    v38[35] = v18;
    v19 = *MEMORY[0x1E6986360];
    v38[36] = *MEMORY[0x1E6986358];
    v38[37] = v19;
    v20 = *MEMORY[0x1E6986390];
    v38[38] = *MEMORY[0x1E6986388];
    v38[39] = v20;
    v21 = *MEMORY[0x1E6986368];
    v38[40] = *MEMORY[0x1E6986398];
    v38[41] = v21;
    v22 = *MEMORY[0x1E69863A0];
    v38[42] = *MEMORY[0x1E6986370];
    v38[43] = v22;
    v23 = *MEMORY[0x1E69863C0];
    v38[44] = *MEMORY[0x1E69863B8];
    v38[45] = v23;
    v24 = *MEMORY[0x1E6986400];
    v38[46] = *MEMORY[0x1E69863F8];
    v38[47] = v24;
    v25 = *MEMORY[0x1E69862A0];
    v38[48] = *MEMORY[0x1E6986298];
    v38[49] = v25;
    v38[50] = *MEMORY[0x1E69862A8];
    v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:51];
  }

  if ([v0 count] != 51)
  {
    ___initialiseBlendshapeMappingIfNeeded_block_invoke_cold_2();
  }

  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:52];
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = ___initialiseBlendshapeMappingIfNeeded_block_invoke_2;
  v35 = &unk_1E7F48530;
  v36 = v26;
  v27 = v26;
  [v0 enumerateObjectsUsingBlock:&v32];
  v28 = *MEMORY[0x1E6986408];
  objc_storeStrong(&qword_1EBC59028, *MEMORY[0x1E6986408]);
  [v27 setObject:&unk_1F39D9380 forKeyedSubscript:{v28, v32, v33, v34, v35}];
  v29 = [v27 copy];
  v30 = kAVTBlendShapeLocationIndices;
  kAVTBlendShapeLocationIndices = v29;

  v31 = *MEMORY[0x1E69E9840];
}

void ___initialiseBlendshapeMappingIfNeeded_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong(&kAVTBlendShapeLocationFromARIndex[a3], a2);
  v6 = a2;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t __AVTFaceTrackingIsSupported_block_invoke()
{
  v0 = MGIsQuestionValid();
  if (v0)
  {
    LOBYTE(v0) = MGGetBoolAnswer();
  }

  AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported = v0;
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported |= result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *AVTComponentTypeToString(unint64_t a1)
{
  if (a1 > 0x29)
  {
    return 0;
  }

  else
  {
    return off_1E7F48580[a1];
  }
}

uint64_t AVTComponentTypeFromString(void *a1)
{
  v1 = a1;
  if (AVTComponentTypeFromString_onceToken != -1)
  {
    AVTComponentTypeFromString_cold_1();
  }

  v2 = [AVTComponentTypeFromString_nameToType objectForKeyedSubscript:v1];
  if (v2)
  {
    v3 = [AVTComponentTypeFromString_nameToType objectForKeyedSubscript:v1];
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 42;
  }

  return v4;
}

void __AVTComponentTypeFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:42];
  v1 = AVTComponentTypeFromString_nameToType;
  AVTComponentTypeFromString_nameToType = v0;

  for (i = 0; i != 42; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v4 = AVTComponentTypeFromString_nameToType;
    v5 = AVTComponentTypeToString(i);
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

uint64_t AVTBodyRegionForComponentType(uint64_t a1)
{
  if ((a1 - 34) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1BB4F0710[a1 - 34];
  }
}

void _AVTAvatarPoseImportSceneKitAnimation(void *a1, void *a2, void *a3, void *a4, __int128 *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  [v10 subAnimations];
  v67 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = v64 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v14)
  {
    v15 = *v65;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v64 + 1) + 8 * i);
        v18 = a5[1];
        v68 = *a5;
        v69 = v18;
        _AVTAvatarPoseImportSceneKitAnimation(v9, v17, v11, v12, &v68);
      }

      v14 = [v13 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v14);
  }

  if (![v13 count])
  {
    v61 = [v10 keyPath];
    v19 = [v61 containsString:@"morpher.weights"];
    v59 = [v61 componentsSeparatedByString:@"/"];
    v60 = [v59 lastObject];
    v21 = [v60 rangeOfString:@"."];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    if (v22 == 1)
    {
      v58 = [v9 name];
      v23 = v60;
    }

    else
    {
      v24 = v20;
      v58 = [v60 substringToIndex:v21];
      v23 = [v60 substringFromIndex:v21 + v24];

      [v10 setKeyPath:v23];
      [MEMORY[0x1E697A8D8] flush];
      v61 = v23;
    }

    if (([v23 isEqualToString:@"transform"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"position") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"orientation") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"rotation") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"eulerAngles") & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"scale"))
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 0;
      v25 = [v10 caAnimation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        *&v68 = 0;
        *(&v68 + 1) = &v68;
        *&v69 = 0x3032000000;
        *(&v69 + 1) = __Block_byref_object_copy__3;
        v70 = __Block_byref_object_dispose__3;
        v71 = 0;
        v27 = [v26 values];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = ___AVTAvatarPoseImportSceneKitAnimation_block_invoke;
        v63[3] = &unk_1E7F48AE0;
        v63[4] = &v68;
        v63[5] = &v72;
        [v27 enumerateObjectsUsingBlock:v63];

        _Block_object_dispose(&v68, 8);
      }

      else
      {
        v26 = avt_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          _AVTAvatarPoseImportSceneKitAnimation_cold_2(v29, &v68, v26);
        }
      }

      if (*(v73 + 24) == 1)
      {
        v30 = [v12 objectForKeyedSubscript:v58];
        if (!v30)
        {
          v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v12 setObject:v30 forKeyedSubscript:v58];
        }

        v31 = MEMORY[0x1E69DF2B0];
        v32 = [v10 caAnimation];
        v33 = [v31 animationWithCAAnimation:v32];

        [v30 addObject:v33];
      }

      v34 = &v72;
    }

    else
    {
      if (!v19)
      {
        v38 = avt_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          _AVTAvatarPoseImportSceneKitAnimation_cold_1(v10, v38);
        }

        goto LABEL_31;
      }

      *&v68 = 0;
      *(&v68 + 1) = &v68;
      *&v69 = 0x2020000000;
      BYTE8(v69) = 0;
      v57 = [v10 caAnimation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v57;
        v37 = [v36 values];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = ___AVTAvatarPoseImportSceneKitAnimation_block_invoke_249;
        v62[3] = &unk_1E7F48B08;
        v62[4] = &v68;
        [v37 enumerateObjectsUsingBlock:v62];
      }

      else
      {
        v36 = avt_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          _AVTAvatarPoseImportSceneKitAnimation_cold_2(v40, &v72, v36);
        }
      }

      if (*(*(&v68 + 1) + 24) == 1)
      {
        v55 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"morpher\\.weights\\[([0-9]+)\\]" options:0 error:0];
        v56 = [v55 matchesInString:v61 options:0 range:{0, objc_msgSend(v61, "length")}];
        if ([v56 count])
        {
          v41 = [v56 firstObject];
          v42 = [v41 rangeAtIndex:1];
          v44 = v43;

          v45 = [v61 substringWithRange:{v42, v44}];
          v46 = [v45 integerValue];
          v47 = [v9 morpher];
          v48 = [v47 targets];
          v49 = [v48 objectAtIndexedSubscript:v46];
          v54 = [v49 name];

          v61 = v54;
        }

        else
        {
          v45 = avt_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            _AVTAvatarPoseImportSceneKitAnimation_cold_3(v45);
          }
        }

        if (v61 && AVTMorphTargetNameDefinesPose(v61))
        {
          v50 = [v11 objectForKeyedSubscript:v61];
          if (!v50)
          {
            v51 = MEMORY[0x1E69DF2B0];
            v52 = [v10 caAnimation];
            v53 = [v51 animationWithCAAnimation:v52];

            [v11 setObject:v53 forKeyedSubscript:v61];
          }
        }
      }

      v34 = &v68;
    }

    _Block_object_dispose(v34, 8);
LABEL_31:
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id AVTGetCapturedColorTexture(__CVBuffer *a1, __CVMetalTextureCache *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = 0;
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType > 1380401728)
    {
      switch(PixelFormatType)
      {
        case 1380411457:
          v6 = MTLPixelFormatRGBA16Float;
          break;
        case 1380410945:
          v6 = MTLPixelFormatRGBA32Float;
          break;
        case 1380401729:
          v6 = MTLPixelFormatRGBA8Unorm_sRGB;
          break;
        default:
          goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (PixelFormatType != 875836534)
    {
      if (PixelFormatType == 1111970369)
      {
        v6 = MTLPixelFormatBGRA8Unorm_sRGB;
      }

      else
      {
        if (PixelFormatType != 1278226488)
        {
          goto LABEL_24;
        }

        v6 = MTLPixelFormatR8Unorm;
      }

      goto LABEL_23;
    }

LABEL_11:
    v6 = MTLPixelFormatR8Unorm_sRGB|0x200;
LABEL_23:
    v5 = AVTGetPixelBufferTexture(a1, a2, v6);
    goto LABEL_24;
  }

  if (PixelFormatType > 875704933)
  {
    if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
    {
      v6 = MTLPixelFormatR8Unorm|0x200;
      goto LABEL_23;
    }

    if (PixelFormatType != 875836518)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    v6 = 520;
    goto LABEL_23;
  }

LABEL_24:

  return v5;
}

void __AVTDebugARMask_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
  AVTDebugARMask_debugMode = [v0 BOOLForKey:@"avatarKit.showARLayers"];
}

id AVTGetPixelBufferTexture(__CVBuffer *a1, __CVMetalTextureCache *a2, MTLPixelFormat a3)
{
  if (a1 && (Width = CVPixelBufferGetWidth(a1), Height = CVPixelBufferGetHeight(a1), image = 0, !CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a2, a1, 0, a3, Width, Height, 0, &image)))
  {
    v8 = CVMetalTextureGetTexture(image);
    CFRelease(image);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__n128 AVTColor4WithCGColor(CGColor *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (CGColorGetColorSpace(a1) == v2)
  {
    v4 = CGColorRetain(a1);
  }

  else
  {
    v3 = MEMORY[0x1BFB0E2A0](v2, 0);
    v4 = CGColorTransformConvertColor();
    CFRelease(v3);
  }

  CFRelease(v2);
  NumberOfComponents = CGColorGetNumberOfComponents(v4);
  Components = CGColorGetComponents(v4);
  if (NumberOfComponents < 4)
  {
    v8 = xmmword_1BB4F06F0;
    if (NumberOfComponents)
    {
      if (NumberOfComponents == 3)
      {
        goto LABEL_6;
      }

      if (NumberOfComponents == 2)
      {
        *&v11 = Components->f64[1];
        v8.i32[3] = v11;
      }

      *&v12 = Components->f64[0];
      v8.i32[0] = v12;
      v8.i32[1] = v12;
      v8.i32[2] = v12;
    }

    v14 = v8;
    goto LABEL_13;
  }

  *&v7 = Components[1].f64[1];
  v8.i64[0] = 0;
  v8.i32[2] = 0;
  v8.i32[3] = v7;
LABEL_6:
  *v9.i8 = vcvt_f32_f64(*Components);
  v9.i32[3] = vextq_s8(v8, v8, 8uLL).i32[1];
  *&v10 = Components[1].f64[0];
  v9.i32[2] = v10;
  v14 = v9;
LABEL_13:
  CGColorRelease(v4);
  return v14;
}

double AVTGetColorComponents(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 avt_colorToColor4];
  return result;
}

__n128 AVTGetColorComponentsMetal(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    [v1 avt_colorToColor4];
    v4 = v2;
  }

  else
  {
    v4 = 0uLL;
  }

  v13 = v4;
  if (v4.f32[0] <= 0.04045)
  {
    v2.f32[0] = v4.f32[0] / 12.92;
  }

  else
  {
    v2.f32[0] = powf((v4.f32[0] + 0.055) / 1.055, 2.4);
    v4 = v13;
  }

  v12 = v2;
  if (v4.f32[1] <= 0.04045)
  {
    v6 = v4.f32[1] / 12.92;
  }

  else
  {
    v5 = powf((v4.f32[1] + 0.055) / 1.055, 2.4);
    v4 = v13;
    v6 = v5;
  }

  if (v4.f32[2] <= 0.04045)
  {
    v7 = v4.f32[2] / 12.92;
  }

  else
  {
    v11 = v6;
    v7 = powf((v4.f32[2] + 0.055) / 1.055, 2.4);
    v6 = v11;
    v4 = v13;
  }

  v8 = v12;
  v8.f32[1] = v6;
  v8.f32[2] = v7;
  v9 = vmulq_laneq_f32(v8, v4, 3);
  v9.i32[3] = v4.i32[3];
  v14 = v9;

  return v14;
}

float AVTGetNeutralZ()
{
  if (AVTGetNeutralZ_onceToken != -1)
  {
    AVTGetNeutralZ_cold_1();
  }

  return *&AVTGetNeutralZ_avt_neutral_z;
}

void __AVTGetNeutralZ_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    AVTGetNeutralZ_avt_neutral_z = -1091693445;
  }
}

void *PerfTimesCreate@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  result = malloc_type_malloc(24 * a1, 0x1000040504FFAC1uLL);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 20) = a1;
  *(a2 + 24) = a1 != 0;
  return result;
}

void PerfTimesPush(os_unfair_lock_t lock, __int128 *a2)
{
  if (lock && lock[5]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(lock);
    v4 = *&lock[2]._os_unfair_lock_opaque + 24 * lock[4]._os_unfair_lock_opaque;
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    os_unfair_lock_opaque = lock[4]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque == lock[5]._os_unfair_lock_opaque - 1)
    {
      v7 = 0;
      LOBYTE(lock[6]._os_unfair_lock_opaque) = 1;
    }

    else
    {
      v7 = os_unfair_lock_opaque + 1;
    }

    lock[4]._os_unfair_lock_opaque = v7;

    os_unfair_lock_unlock(lock);
  }
}

uint64_t PerfTimesNextIndex(uint64_t a1, int a2)
{
  if (*(a1 + 20) == a2)
  {
    return 0;
  }

  else
  {
    return (a2 + 1);
  }
}

void PerfTimesForEach(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && *(a1 + 20))
  {
    v10 = v3;
    os_unfair_lock_lock(a1);
    v4 = *(a1 + 24);
    if (v4 == 1)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 20) == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 + 1;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v4 == 0;
    v8 = 16;
    if (!v7)
    {
      v8 = 20;
    }

    v9 = *(a1 + v8);
    if (v9 >= 1)
    {
      do
      {
        v10[2](v10, *(a1 + 8) + 24 * v6);
        if (*(a1 + 20) == v6)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        --v9;
      }

      while (v9);
    }

    os_unfair_lock_unlock(a1);
    v3 = v10;
  }
}

double PerfTimesMinForKind(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FEFFFFFFFFFFFFFLL;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesMinForKind_block_invoke;
  v4[3] = &unk_1E7F48BB0;
  v5 = a2;
  v4[4] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1BB49969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMinForKind_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8 * *(result + 40));
  v3 = *(*(result + 32) + 8);
  if (v2 < *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  return result;
}

double PerfTimesMaxForKind(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x10000000000000;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesMaxForKind_block_invoke;
  v4[3] = &unk_1E7F48BB0;
  v5 = a2;
  v4[4] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1BB49978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMaxForKind_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8 * *(result + 40));
  v3 = *(*(result + 32) + 8);
  if (v2 > *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  return result;
}

double PerfTimesMin(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x7FEFFFFFFFFFFFFFLL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesMin_block_invoke;
  v3[3] = &unk_1E7F48BD8;
  v3[4] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1BB499878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMin_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 24);
  v4 = *(*(result + 32) + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

double PerfTimesMax(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x10000000000000;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesMax_block_invoke;
  v3[3] = &unk_1E7F48BD8;
  v3[4] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1BB499978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMax_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 24);
  v4 = *(*(result + 32) + 8);
  if (v3 > *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

double PerfTimesAverageLatency(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesAverageLatency_block_invoke;
  v3[3] = &unk_1E7F48C00;
  v3[4] = &v8;
  v3[5] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v9[3] / v5[6];
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
  return v1;
}

void sub_1BB499AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesAverageLatency_block_invoke(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + i) + *(*(*(result + 32) + 8) + 24);
  }

  ++*(*(*(result + 40) + 8) + 24);
  return result;
}

double PerfTimesAverageLatencyForKind(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesAverageLatencyForKind_block_invoke;
  v4[3] = &unk_1E7F48C28;
  v5 = a2;
  v4[4] = &v10;
  v4[5] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v11[3] / v7[6];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v2;
}

void sub_1BB499BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

double __PerfTimesAverageLatencyForKind_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(a2 + 8 * *(a1 + 48)) + *(v2 + 24);
  *(v2 + 24) = result;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

__n128 AVTARKitTransformToSceneKitTransformMatrix(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    if (a1 == 2 && (a2 - 2) < 3)
    {
      v6 = qword_1BB4F08D0[a2 - 2];
      goto LABEL_9;
    }
  }

  else
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AVTARKitTransformToSceneKitTransformMatrix_cold_1(a1, v5);
    }
  }

  v6 = 0;
LABEL_9:
  v7 = v6 + 3;
  v8 = v6 + 2;
  if (a3 != 2)
  {
    v8 = v6;
  }

  if (a3 == 3)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 4)
  {
    v9 = v7;
  }

  if (v9 >= 4)
  {
    v9 -= 4;
  }

  v10 = &AVTARKitTransformToSceneKitTransformMatrix_rotationMatrices + 64 * v9;
  result = *v10;
  v12 = *(v10 + 1);
  return result;
}

__n128 AVTSceneKitTextureCoordinatesForCaptureDeviceTexture(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v9 = v7;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      *&_Q0 = 1065353216;
      v25 = _Q0;
      *&_Q0 = 0x3F80000000000000;
      v26 = _Q0;
      __asm { FMOV            V0.2S, #1.0 }

      v15 = [v7 width];
      goto LABEL_13;
    }

    if (a4 == 4)
    {
      *&_Q0 = 0x3F80000000000000;
      v24 = _Q0;
      *&_Q0 = 1065353216;
      v26 = _Q0;
      __asm { FMOV            V0.2S, #1.0 }

      v15 = [v7 width];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      __asm { FMOV            V0.2S, #1.0 }

      v23 = _Q0;
      *&_Q0 = 0;
      goto LABEL_9;
    }

LABEL_11:
    *&_Q0 = 0;
    v23 = _Q0;
    *&_Q0 = 0;
    v26 = _Q0;
    goto LABEL_12;
  }

  *&_Q0 = 0;
  v23 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

LABEL_9:
  v26 = _Q0;
LABEL_12:
  v15 = [v7 width];
LABEL_13:
  v17 = v15;
  v18 = [v9 height];
  if (a4 <= 2)
  {
    v17 = [v9 height];
    v18 = [v9 width];
  }

  v19 = a3 * v17;
  v20 = a2 * v18;
  v21 = v26;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *&v21 = ((*&v26 + -0.5) * (v19 / v20)) + 0.5;
      v26 = v21;
    }
  }

  else
  {
    *(&v21 + 1) = ((*(&v26 + 1) + -0.5) * (v20 / v19)) + 0.5;
    v26 = v21;
  }

  return v26;
}

id AVTRenderingCacheFolderURL()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = [(AVTResourceLocator *)v0 rootCacheURL];

  return v1;
}

void AVTSetARCompositingEnabled(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 set_enableARMode:a2];
  v8 = [v3 pointOfView];

  if (a2)
  {
    v4 = 0.82;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v8 camera];
  v6 = [v5 grain];
  *&v7 = v4;
  [v6 setIntensity:v7];
}

void AVTApplyARGrainIfNeeded(void *a1, void *a2)
{
  v23 = a1;
  v3 = a2;
  v4 = [v23 pointOfView];
  v5 = [v4 camera];
  v6 = [v5 grain];
  [v3 cameraGrainIntensity];
  if (*&v7 == 0.0)
  {
    [v6 setIntensity:0.0];
  }

  else
  {
    LODWORD(v7) = 1062333317;
    [v6 setIntensity:v7];
    [v23 _backingSize];
    v9 = v8;
    v11 = v10;
    v12 = [v3 camera];
    [v12 imageResolution];
    v14 = v13;
    v16 = v15;

    v17 = v14;
    v18 = v16;
    v19 = fmax(v9, v11);
    v20 = fmin(v9, v11);
    *&v21 = fmaxf(v19 / v17, v20 / v18);
    [v6 setScale:v21];
    [v6 setColored:1];
    v22 = [v3 cameraGrainTexture];
    [v6 setTexture:v22];

    [v3 cameraGrainIntensity];
    [v6 setSlice:?];
  }
}

id AVTMTLTextureDescriptorCreateFromTexture(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E69741B8];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    [v3 setTextureType:{objc_msgSend(v2, "textureType")}];
    [v3 setPixelFormat:objc_msgSend(v2, "pixelFormat")];
    [v3 setWidth:{objc_msgSend(v2, "width")}];
    [v3 setHeight:{objc_msgSend(v2, "height")}];
    [v3 setDepth:{objc_msgSend(v2, "depth")}];
    [v3 setMipmapLevelCount:{objc_msgSend(v2, "mipmapLevelCount")}];
    [v3 setSampleCount:{objc_msgSend(v2, "sampleCount")}];
    [v3 setArrayLength:{objc_msgSend(v2, "arrayLength")}];
    [v3 setCpuCacheMode:{objc_msgSend(v2, "cpuCacheMode")}];
    [v3 setStorageMode:{objc_msgSend(v2, "storageMode")}];
    v4 = [v2 usage];

    [v3 setUsage:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id plistWithVector(__n128 a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = numberFromDouble(a1.n128_f32[0]);
  v2 = numberFromDouble(a1.n128_f32[1]);
  v3 = numberFromDouble(a1.n128_f32[2]);
  if ([v1 isEqualToNumber:{v2, a1.n128_u64[0]}] && objc_msgSend(v1, "isEqualToNumber:", v3))
  {
    v4 = v1;
  }

  else
  {
    v9[0] = @"x";
    v9[1] = @"y";
    v10[0] = v1;
    v10[1] = v2;
    v9[2] = @"z";
    v10[2] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  v5 = v4;

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id numberFromDouble(double a1)
{
  v2 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:3 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v3 = [MEMORY[0x1E696AB90] numberWithDouble:a1];
  v4 = [v3 decimalNumberByRoundingAccordingToBehavior:v2];

  return v4;
}

id AVTMergeSpecializationSettings(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = __AVTMergeSpecializationSettings(0, v4, v3, @"ARKit driven morpher", v5);
  v7 = objc_opt_class();
  v8 = __AVTMergeSpecializationSettings(v6, v4, v3, @"ARKit driven material", v7);

  v9 = objc_opt_class();
  v10 = __AVTMergeSpecializationSettings(v8, v4, v3, @"ARKit disabled blendshapes", v9);

  v11 = objc_opt_class();
  v12 = __AVTMergeSpecializationSettings(v10, v4, v3, @"dynamics", v11);

  v13 = objc_opt_class();
  v14 = __AVTMergeSpecializationSettings(v12, v4, v3, @"AR", v13);

  return v14;
}

id __AVTMergeSpecializationSettings(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a3;
  v12 = [a2 objectForKeyedSubscript:v10];
  v13 = [v11 objectForKeyedSubscript:v10];

  if (v12 | v13)
  {
    if (objc_opt_class() == a5)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = v16;
      if (v12)
      {
        [v16 addEntriesFromDictionary:v12];
      }

      if (v13)
      {
        [v15 addEntriesFromDictionary:v13];
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = v14;
      if (v12)
      {
        [v14 addObjectsFromArray:v12];
      }

      if (v13)
      {
        [v15 addObjectsFromArray:v13];
      }
    }

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v9 setObject:v15 forKeyedSubscript:v10];
  }

  return v9;
}

void sub_1BB49F068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AVTColorApplyVariation(void *a1, void *a2, void *a3, double a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v10 = v8;
  if (*&a4 == 0.0)
  {
    goto LABEL_2;
  }

  if (*&a4 <= 0.0)
  {
    if (v7)
    {
      *v16.i64 = AVTGetColorComponents(v6, v9);
      v21 = v16;
      *v18.i64 = AVTGetColorComponents(v7, v17);
      v15 = vmlsq_lane_f32(v21, vsubq_f32(v18, v21), *&a4, 0);
      goto LABEL_8;
    }

LABEL_2:
    v11 = v6;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_2;
  }

  *v12.i64 = AVTGetColorComponents(v6, v9);
  v21 = v12;
  *v14.i64 = AVTGetColorComponents(v10, v13);
  v15 = vmlaq_n_f32(v21, vsubq_f32(v14, v21), *&a4);
LABEL_8:
  v11 = [MEMORY[0x1E69DC888] colorWithRed:v15.f32[0] green:v15.f32[1] blue:v15.f32[2] alpha:{v15.f32[3], *&v21}];
LABEL_9:
  v19 = v11;

  return v19;
}

void *_scanColor(void *result, float *a2, float *a3, float *a4, float *a5)
{
  if (result)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    result = sscanf([result UTF8String], "%d %d %d %d", &v14, &v13, &v12 + 4, &v12);
    v9 = v13 / 255.0;
    v10 = 1.0;
    v11 = SHIDWORD(v12) / 255.0;
    if (result != 3)
    {
      if (result == 1)
      {
        v9 = v14 / 255.0;
        v11 = v9;
      }

      else
      {
        v10 = v12 / 255.0;
      }
    }

    *a2 = v14 / 255.0;
    *a3 = v9;
    *a4 = v11;
    *a5 = v10;
  }

  return result;
}

__n128 AVTAvatarPoseRepresentationGetTransform(void *a1)
{
  v1 = a1;
  if ([v1 count] == 16)
  {
    v60 = [v1 objectAtIndexedSubscript:0];
    [v60 floatValue];
    v68 = v2;
    v58 = [v1 objectAtIndexedSubscript:1];
    [v58 floatValue];
    v66 = v3;
    v56 = [v1 objectAtIndexedSubscript:2];
    [v56 floatValue];
    v64 = v4;
    v55 = [v1 objectAtIndexedSubscript:3];
    [v55 floatValue];
    v5.i64[0] = __PAIR64__(v66, v68);
    v5.i64[1] = __PAIR64__(v6, v64);
    v69 = v5;
    v54 = [v1 objectAtIndexedSubscript:4];
    [v54 floatValue];
    v53 = [v1 objectAtIndexedSubscript:5];
    [v53 floatValue];
    v52 = [v1 objectAtIndexedSubscript:6];
    [v52 floatValue];
    v7 = [v1 objectAtIndexedSubscript:7];
    [v7 floatValue];
    v8 = [v1 objectAtIndexedSubscript:8];
    [v8 floatValue];
    v9 = [v1 objectAtIndexedSubscript:9];
    [v9 floatValue];
    v10 = [v1 objectAtIndexedSubscript:10];
    [v10 floatValue];
    v11 = [v1 objectAtIndexedSubscript:11];
    [v11 floatValue];
    v12 = [v1 objectAtIndexedSubscript:12];
    [v12 floatValue];
    v13 = [v1 objectAtIndexedSubscript:13];
    [v13 floatValue];
    v14 = [v1 objectAtIndexedSubscript:14];
    [v14 floatValue];
    v15 = [v1 objectAtIndexedSubscript:15];
    [v15 floatValue];
  }

  else
  {
    v16 = v1;
    v17 = [v16 objectAtIndexedSubscript:0];
    [v17 floatValue];
    v62 = v18;
    v19 = [v16 objectAtIndexedSubscript:1];
    [v19 floatValue];
    v70 = v20;
    v21 = [v16 objectAtIndexedSubscript:2];

    [v21 floatValue];
    v22 = v62;
    v22.i32[1] = v70;
    v22.i32[2] = v23;
    v63 = v22;

    v24 = v16;
    v25 = [v24 objectAtIndexedSubscript:3];
    [v25 floatValue];
    v65 = v26;
    v27 = [v24 objectAtIndexedSubscript:4];
    [v27 floatValue];
    v71 = v28;
    v29 = [v24 objectAtIndexedSubscript:5];
    [v29 floatValue];
    v67 = v30;
    v31 = [v24 objectAtIndexedSubscript:6];

    [v31 floatValue];
    v32 = v65;
    v32.f32[1] = v71;
    v32.f32[2] = v67;
    v59 = v32;
    v32.i32[3] = v33;
    v57 = v32;

    v34 = v24;
    if ([v34 count] == 10)
    {
      v35 = [v34 objectAtIndexedSubscript:7];
      [v35 floatValue];
      v61 = v36;
      v37 = [v34 objectAtIndexedSubscript:8];
      [v37 floatValue];
      v38 = [v34 objectAtIndexedSubscript:9];
      [v38 floatValue];
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      v61 = *&_Q0;
    }

    v44 = *MEMORY[0x1E69E9B18];
    v45 = *(MEMORY[0x1E69E9B18] + 16);
    v46 = vmulq_f32(v57, v57);
    v47 = vaddq_f32(v46, v46);
    v48 = vmulq_laneq_f32(v59, v57, 3);
    v44.f32[0] = (1.0 - v47.f32[1]) - v47.f32[2];
    v44.f32[1] = ((v65.f32[0] * v71) + v48.f32[2]) + ((v65.f32[0] * v71) + v48.f32[2]);
    v44.f32[2] = ((v65.f32[0] * v67) - v48.f32[1]) + ((v65.f32[0] * v67) - v48.f32[1]);
    v49 = *(MEMORY[0x1E69E9B18] + 32);
    v69 = vmulq_n_f32(v44, v61);
    v50 = vaddq_f32(v63, *(MEMORY[0x1E69E9B18] + 48));
  }

  return v69;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

id AVTFixVFXShaderModifierFromSCNShaderModifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 containsString:@"_surface.ambient"])
  {
    v5 = [v3 mutableCopy];
    [v5 replaceOccurrencesOfString:@"_surface.ambientOcclusion" withString:@"_surface.$ambientOcclusion" options:0 range:{0, objc_msgSend(v5, "length")}];
    if ([v5 containsString:@"_surface.ambient"])
    {
      v6 = [v4 isEqualToString:*MEMORY[0x1E69DF3B0]];
      v7 = [v5 length];
      if (v6)
      {
        v8 = @"kAmbient";
      }

      else
      {
        v8 = @"float4 kAmbient";
      }

      [v5 replaceOccurrencesOfString:@"_surface.ambient" withString:v8 options:0 range:{0, v7}];
      [v5 replaceOccurrencesOfString:@"_surface.$ambientOcclusion" withString:@"_surface.ambientOcclusion" options:0 range:{0, objc_msgSend(v5, "length")}];
      v9 = [v5 copy];

      goto LABEL_9;
    }
  }

  v9 = v3;
LABEL_9:

  return v9;
}

void __AVTFixMaterialsContainingSceneKitShaderModifiersInVFXNodeHierarchy_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a2 model];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shaderModifiers];
    v20 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = AVTFixVFXShaderModifiersFromSCNShaderModifiers(v4, &v20);

      [v3 setShaderModifiers:v6];
    }

    else
    {
      v6 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v3 materials];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v15 = 0;
          v13 = [v12 shaderModifiers];

          if (v13)
          {
            v6 = AVTFixVFXShaderModifiersFromSCNShaderModifiers(v13, &v15);

            [v12 setShaderModifiers:v6];
          }

          else
          {
            v6 = 0;
          }

          if (((v20 & 1) != 0 || v15 == 1) && [v12 blendMode] != 1)
          {
            [v12 setBlendMode:1];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

id AVTFixVFXShaderModifiersFromSCNShaderModifiers(void *a1, _BYTE *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __AVTFixVFXShaderModifiersFromSCNShaderModifiers_block_invoke;
  v8[3] = &unk_1E7F48FF0;
  v8[4] = v3;
  v8[5] = &v9;
  v8[6] = &v15;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  *a2 = *(v16 + 24);
  v4 = v10[5];
  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_1BB4A692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AVTFixVFXShaderModifiersFromSCNShaderModifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = AVTFixVFXShaderModifierFromSCNShaderModifier(v5, v11);

  if (v6 != v5)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = [*(a1 + 32) mutableCopy];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 setObject:v6 forKeyedSubscript:v11];
  }
}

void __copy_assignment_8_8_t0w72_s72_s80_t88w8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  objc_storeStrong((a1 + 72), *(a2 + 72));
  objc_storeStrong((a1 + 80), *(a2 + 80));
  *(a1 + 88) = *(a2 + 88);
}

__CFString *AVTPrereleaseStickerPackForStickerPack(void *a1)
{
  v1 = a1;
  v2 = @"stickers";
  if ([(__CFString *)v1 isEqualToString:@"stickers"])
  {
    v3 = @"stickersPrerelease";
  }

  else
  {
    v2 = @"posesPack";
    if ([(__CFString *)v1 isEqualToString:@"posesPack"])
    {
      v3 = @"posesPackPrerelease";
    }

    else
    {
      v2 = @"memojiEditorCarousel";
      if ([(__CFString *)v1 isEqualToString:@"memojiEditorCarousel"])
      {
        v3 = @"memojiEditorCarouselPrerelease";
      }

      else
      {
        v2 = @"memojiEditorCarousel_poses";
        v4 = [(__CFString *)v1 isEqualToString:@"memojiEditorCarousel_poses"];
        v5 = v1;
        if (!v4)
        {
          goto LABEL_12;
        }

        v3 = @"memojiEditorCarousel_posesPrerelease";
      }
    }
  }

  if (AVTPrecompiledStickerPackIsEmpty(v3))
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

LABEL_12:
  v6 = v5;

  return v6;
}

BOOL AVTPrecompiledStickerPackIsEmpty(void *a1)
{
  v1 = AVTPrecompiledStickerPackPlist(a1);
  v2 = [v1 count] == 0;

  return v2;
}

id AVTPrecompiledStickerPackPlistForPuppetNamed(void *a1, void *a2)
{
  v3 = a2;
  v4 = AVTPrecompiledStickerPackPlist(a1);
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v5 = [v4 objectForKeyedSubscript:@"animoji"];
  }

  return v5;
}

id AVTPrecompiledStickerPackPlist(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"stickers"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_11();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers;
LABEL_41:
    v3 = v2;
    goto LABEL_42;
  }

  if ([v1 isEqualToString:@"stickersPrerelease"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_1809 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_10();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"posesPack"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_1812 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_9();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"posesPackPrerelease"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2176 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_8();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"memojiEditorCarousel"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2179 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_7();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"memojiEditorCarouselPrerelease"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2195 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_6();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"memojiEditorCarousel_poses"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2198 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_5();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"memojiEditorCarousel_posesPrerelease"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2214 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_4();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"memojiEditorThumbnails"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2217 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_3();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:@"allStickers"])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2239 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_2();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers;
    goto LABEL_41;
  }

  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    AVTPrecompiledStickerPackPlist_cold_1(v1, v5, v6, v7, v8, v9, v10, v11);
  }

  v3 = 0;
LABEL_42:

  return v3;
}

void __AVTPrecompiledStickerPackPlist_block_invoke()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers = &unk_1F39E3548;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_2()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_3()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack = &unk_1F39E3570;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_4()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_5()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel = &unk_1F39E3598;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_6()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_7()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses = &unk_1F39E35C0;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_8()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_9()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails = &unk_1F39E35E8;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_10()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers = &unk_1F39E3610;
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t AVTAvatarKitSnapshotVersionNumber()
{
  if (AVTAvatarKitSnapshotVersionNumber_onceToken != -1)
  {
    AVTAvatarKitSnapshotVersionNumber_cold_1();
  }

  return AVTAvatarKitSnapshotVersionNumber_kAVTAvatarKitSnapshotVersionNumber;
}

void __AVTAvatarKitSnapshotVersionNumber_block_invoke()
{
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v9 infoDictionary];
  v1 = [v0 objectForKeyedSubscript:@"CFBundleVersion"];

  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];
  v4 = [v3 integerValue];

  if ([v2 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];
  }

  if ([v2 count] < 3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v2 objectAtIndexedSubscript:2];
    v8 = [v7 integerValue];
  }

  AVTAvatarKitSnapshotVersionNumber_kAVTAvatarKitSnapshotVersionNumber = v8 + 1000 * (v6 + 1000 * v4);
}

id AVTAvatarKitSnapshotVersionString()
{
  if (AVTAvatarKitSnapshotVersionString_onceToken != -1)
  {
    AVTAvatarKitSnapshotVersionString_cold_1();
  }

  v1 = AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString;

  return v1;
}

void __AVTAvatarKitSnapshotVersionString_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v3 infoDictionary];
  v1 = [v0 objectForKeyedSubscript:@"CFBundleVersion"];
  v2 = AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString;
  AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString = v1;
}

uint64_t AVTAvatarKitSnapshotVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 firstObject];
  v3 = [v2 integerValue];

  if ([v1 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v1 objectAtIndexedSubscript:1];
    v5 = [v4 integerValue];
  }

  if ([v1 count] < 3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v1 objectAtIndexedSubscript:2];
    v7 = [v6 integerValue];
  }

  return v7 + 1000 * (v5 + 1000 * v3);
}

id AVTSceneKitSnapshotVersionString()
{
  if (AVTSceneKitSnapshotVersionString_onceToken != -1)
  {
    AVTSceneKitSnapshotVersionString_cold_1();
  }

  v1 = AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString;

  return v1;
}

void __AVTSceneKitSnapshotVersionString_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v0)
  {
    v1 = avt_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __AVTSceneKitSnapshotVersionString_block_invoke_cold_1();
    }
  }

  v2 = [v0 infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"CFBundleVersion"];
  v4 = AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString;
  AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString = v3;
}

BOOL AVTNodeMatchesHierarchyEnumerationOptions(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 & 1) != 0 && ([v3 morpher], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = 0;
  }

  else if ((a2 & 2) != 0)
  {
    v7 = [v4 model];
    v6 = v7 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void AVTInitializeShaderCache()
{
  if (AVTInitializeShaderCache_onceToken != -1)
  {
    AVTInitializeShaderCache_cold_1();
  }
}

void __AVTInitializeShaderCache_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [v0 load];
  v1 = +[AVTResourceLocator sharedResourceLocator];
  v2 = [(AVTResourceLocator *)v1 urlForFrameworkResourceAtPath:0 isDirectory:?];

  if (v2)
  {
    MEMORY[0x1BFB0E720](v2);
  }

  else
  {
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __AVTInitializeShaderCache_block_invoke_cold_1();
    }
  }
}

void sub_1BB4AAB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4AC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float AVTMorphWeightApplyBlinkCorrection(void *a1, float a2)
{
  v3 = a1;
  if (([v3 isEqualToString:*MEMORY[0x1E69862B0]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69862B8]))
  {
    v4 = a2;
    if (a2 < 0.0)
    {
      v4 = 0.0;
    }

    v5 = v4 * 1.1;
    v6 = pow(fminf(v5, 1.0), 0.666666667);
    a2 = fminf(v6, 1.0);
  }

  return a2;
}

float AVTMorphWeightApplyCorrectionForTongue(void *a1, float a2, float a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 != -1.0 && (([v5 isEqualToString:*MEMORY[0x1E6986368]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6986398]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69863A8]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6986388]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6986390]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69863B8]) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6986340])))
  {
    a2 = (1.0 - a3) * a2;
  }

  return a2;
}

void sub_1BB4ADFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4B0EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 144));
  _Unwind_Resume(a1);
}

double AVTDebugViewValueForIndex(uint64_t a1, int a2)
{
  v2 = a1 + 24;
  v3 = a1 + 16;
  v4 = a1 + 8;
  if (a2 != 1)
  {
    v4 = a1;
  }

  if (a2 != 2)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  return *v2;
}

void sub_1BB4B426C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B5190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B54E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB4B6328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B6944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B7FC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_8(id *a1, void *a2, void *a3)
{

  [(AVTViewTransitionHelper *)a1 transitionViewToStickerConfiguration:a2 fallbackPose:a3 duration:v5 style:v4 avatar:v3 completionHandler:0 simultaneousAnimationsBlock:v7];
}

id OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return a5;
}

id avt_default_log()
{
  if (avt_default_log_once != -1)
  {
    avt_default_log_cold_1();
  }

  v1 = avt_default_log_logger;

  return v1;
}

uint64_t __avt_default_log_block_invoke()
{
  v0 = os_log_create("com.apple.avatarkit", "AvatarKit");
  v1 = avt_default_log_logger;
  avt_default_log_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL AVTLogAllowsInternalCrash()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v1 isEqualToString:@"com.apple.loginwindow"])
  {

    return 0;
  }

  v2 = [v1 isEqualToString:@"com.apple.SecurityAgent"];

  return !v2;
}

id AVTEditorMetadata()
{
  if (AVTEditorMetadata_onceToken != -1)
  {
    AVTEditorMetadata_cold_1();
  }

  v1 = AVTEditorMetadata_kAVTEditorMetadata;

  return v1;
}

void __AVTEditorMetadata_block_invoke()
{
  v0 = MEMORY[0x1E696AE40];
  v3 = AVTPrecompiledMemojiEditorMetadata();
  v1 = [v0 dataWithPropertyList:v3 format:200 options:0 error:0];
  v2 = AVTEditorMetadata_kAVTEditorMetadata;
  AVTEditorMetadata_kAVTEditorMetadata = v1;
}

id AVTPrereleaseEditorMetadata()
{
  if (AVTPrereleaseEditorMetadata_onceToken != -1)
  {
    AVTPrereleaseEditorMetadata_cold_1();
  }

  v1 = AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata;

  return v1;
}

void __AVTPrereleaseEditorMetadata_block_invoke()
{
  v4 = AVTPrecompiledMemojiPrereleaseEditorMetadata();
  if ([v4 count])
  {
    v0 = v4;
  }

  else
  {
    v1 = AVTPrecompiledMemojiEditorMetadata();

    v0 = v1;
  }

  v5 = v0;
  v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:v0 format:200 options:0 error:0];
  v3 = AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata;
  AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata = v2;
}

id AVTMakePresetLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  if (!AVTPresetCategoryIsPairable(a1))
  {
    v4 = AVTPresetCategoryToString(a1);
    goto LABEL_6;
  }

  v4 = AVTPresetCategoryPairToString(a1);
  if ([v3 isEqualToString:@"none"])
  {
LABEL_6:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, v3];
    goto LABEL_7;
  }

  if (AVTPresetCategoryIsOnLeftInPair(a1))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_LEFT", v4, v3];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_RIGHT", v4, v3];
  }

  v5 = LABEL_7:;
  v6 = [v5 uppercaseString];

  return v6;
}

id AVTMakePresetPairLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AVTPresetCategoryPairToString(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, v3];

  v6 = [v5 uppercaseString];

  return v6;
}

id AVTMakeColorPresetLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AVTPresetCategoryToColorCategoryString(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, v3];

  v6 = [v5 uppercaseString];

  return v6;
}

id AVTLocalizedEditorString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F39AEE78 table:@"memoji_editor"];

  return v4;
}

void *AVTLocalizedPresetString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = AVTMakePresetLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:v6 value:&stru_1F39AEE78 table:@"memoji_presets"];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedPresetPairString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = AVTMakePresetPairLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:v6 value:&stru_1F39AEE78 table:@"memoji_presets"];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedPaletteString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = AVTMakeColorPresetLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:v6 value:&stru_1F39AEE78 table:@"memoji_palettes"];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedStickerName(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F39AEE78 table:@"stickers"];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1BB4BBB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4BC4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4BDAE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id AVTUpgradesForPresetCategory(unint64_t a1, unsigned int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = AVTPrecompiledMemojiPresetPlist();
  v4 = [v17 objectForKeyedSubscript:@"upgrade"];
  v16 = [v4 objectForKeyedSubscript:@"preset-categories"];

  if (v16)
  {
    v5 = AVTPresetCategoryToString(a1);
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__6;
    v29 = __Block_byref_object_dispose__6;
    v30 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v16;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"upgrade-if-version-less-than", v16}];
          v12 = v11;
          if (!v11 || [v11 unsignedIntegerValue] > a2)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __AVTUpgradesForPresetCategory_block_invoke;
            v18[3] = &unk_1E7F496F8;
            v19 = v5;
            v20 = &v25;
            [v10 enumerateKeysAndObjectsUsingBlock:v18];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v7);
    }

    v13 = v26[5];
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1BB4BE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AVTPresetCategoryToString(unint64_t a1)
{
  if (a1 > 0x27)
  {
    return 0;
  }

  else
  {
    return off_1E7F497F0[a1];
  }
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AVTUpgradesForPresetCategory_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isEqualToString:*(a1 + 32)])
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      [v6 addObject:v10];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v10];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

id AVTUpgradePresetIdentifierIfNeeded(unint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = AVTPrecompiledMemojiPresetPlist();
  v7 = [v6 objectForKeyedSubscript:@"upgrade"];
  v8 = [v7 objectForKeyedSubscript:@"preset-identifiers"];

  v9 = _AVTRemapIdentifier(a1, v5, a3, v8);

  return v9;
}

id _AVTRemapIdentifier(unint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v26 = AVTPresetCategoryToString(a1);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      v12 = a3;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"upgrade-if-version-less-than"];
          v16 = v15;
          if (!v15 || [v15 unsignedIntegerValue] > v12)
          {
            v17 = [v14 objectForKeyedSubscript:v26];
            v18 = [v17 objectForKeyedSubscript:v7];
            v19 = v18;
            if (v18)
            {
              v20 = v18;

              v7 = v20;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v21 = v7;
    v8 = v24;
  }

  else
  {
    v21 = v7;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

id AVTPresetCategoriesPairs()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"earrings_left";
  v6[1] = @"earrings_right";
  v7[0] = @"earrings";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v7[1] = @"audio";
  v8[0] = v0;
  v5[0] = @"audio_left";
  v5[1] = @"audio_right";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v8[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void *AVTUpgradePairedPresetCategoriesIfNeeded(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  AVTPresetCategoriesPairs();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  v2 = 0;
  if (v18)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * i);
        v5 = [v1 objectForKeyedSubscript:v4];

        if (v5)
        {
          if (!v2)
          {
            v2 = [v1 mutableCopy];
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = [obj objectForKeyedSubscript:v4];
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v21;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v21 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v20 + 1) + 8 * j);
                v12 = [v1 objectForKeyedSubscript:v4];
                [v2 setObject:v12 forKeyedSubscript:v11];
              }

              v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v8);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  if (v2)
  {
    v13 = v2;
  }

  else
  {
    v13 = v1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

id AVTUpgradeColorPresetIdentifierIfNeeded(unint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = AVTColorPalettes();
  v7 = [v6 objectForKeyedSubscript:@"upgrade"];
  v8 = [v7 objectForKeyedSubscript:@"color-preset-identifiers"];

  v9 = _AVTRemapIdentifier(a1, v5, a3, v8);

  return v9;
}

id AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(unint64_t a1, void *a2, unint64_t a3, _DWORD *a4, unsigned int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v8 = AVTPrecompiledMemojiPresetPlist();
  v9 = [v8 objectForKeyedSubscript:@"upgrade"];
  v10 = [v9 objectForKeyedSubscript:@"preset-colors"];

  if (v10)
  {
    v11 = AVTPresetCategoryToString(a1);
    if (a3 >= 3)
    {
      v30 = avt_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier_cold_1(v30);
      }

      v29 = 0;
    }

    else
    {
      v33 = v10;
      v34 = v8;
      v38 = off_1E7F49930[a3];
      v40 = off_1E7F49948[a3];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v42 = 0;
        v14 = *v45;
        v15 = a5;
        v36 = *v45;
        v37 = a5;
        v35 = v11;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v44 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:@"upgrade-if-version-less-than"];
            v19 = v18;
            if (!v18 || [v18 unsignedIntegerValue] > v15)
            {
              v20 = [v17 objectForKeyedSubscript:v11];
              v21 = [v20 objectForKeyedSubscript:v43];
              v22 = v21;
              if (v21)
              {
                v23 = v13;
                v24 = [v21 objectForKeyedSubscript:v40];
                v25 = v24;
                if (v24)
                {
                  v26 = v24;

                  v27 = [v22 objectForKeyedSubscript:v38];
                  [v27 floatValue];
                  *a4 = v28;

                  v42 = v26;
                  v11 = v35;
                  v14 = v36;
                  v15 = v37;
                }

                v13 = v23;
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v13);
      }

      else
      {
        v42 = 0;
      }

      v29 = v42;
      v10 = v33;
      v8 = v34;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v29;
}

__CFString *AVTPresetCategoryPairToString(unint64_t a1)
{
  v2 = a1 - 25;
  if (a1 - 25 < 7 && ((0x63u >> v2) & 1) != 0)
  {
    v3 = off_1E7F49960[v2];
  }

  else
  {
    v3 = AVTPresetCategoryToString(a1);
  }

  return v3;
}

__CFString *AVTPresetCategoryToColorCategoryString(unint64_t a1)
{
  if (a1 - 25 < 2)
  {
    v2 = @"audio";
  }

  else if (a1 - 30 >= 2)
  {
    if (a1)
    {
      v2 = AVTPresetCategoryToString(a1);
    }

    else
    {
      v2 = @"skin";
    }
  }

  else
  {
    v2 = @"earrings";
  }

  return v2;
}

uint64_t AVTColorCategoryFromString(void *a1)
{
  v1 = a1;
  if (AVTColorCategoryFromString_onceToken != -1)
  {
    AVTColorCategoryFromString_cold_1();
  }

  v2 = [AVTColorCategoryFromString_nameToCategory objectForKeyedSubscript:v1];
  if (v2)
  {
    v3 = [AVTColorCategoryFromString_nameToCategory objectForKeyedSubscript:v1];
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 40;
  }

  return v4;
}

void __AVTColorCategoryFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:40];
  v1 = AVTColorCategoryFromString_nameToCategory;
  AVTColorCategoryFromString_nameToCategory = v0;

  for (i = 0; i != 40; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v4 = AVTColorCategoryFromString_nameToCategory;
    v5 = AVTPresetCategoryToColorCategoryString(i);
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

uint64_t AVTPresetCategoryFromString(void *a1)
{
  v1 = a1;
  if (AVTPresetCategoryFromString_onceToken != -1)
  {
    AVTPresetCategoryFromString_cold_1();
  }

  v2 = [AVTPresetCategoryFromString_nameToCategory objectForKeyedSubscript:v1];
  if (v2)
  {
    v3 = [AVTPresetCategoryFromString_nameToCategory objectForKeyedSubscript:v1];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 40;
  }

  return v4;
}

void __AVTPresetCategoryFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:40];
  v1 = AVTPresetCategoryFromString_nameToCategory;
  AVTPresetCategoryFromString_nameToCategory = v0;

  for (i = 0; i != 40; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v4 = AVTPresetCategoryFromString_nameToCategory;
    v5 = AVTPresetCategoryToString(i);
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

uint64_t AVTPresetCategoryToComponentType(unint64_t a1)
{
  if (a1 >= 0x29)
  {
    AVTPresetCategoryToComponentType_cold_1();
  }

  return qword_1BB4F0A90[a1];
}

uint64_t AVTAvatarBodyPartForComponentType(uint64_t a1)
{
  if ((a1 - 34) > 7)
  {
    return 1;
  }

  else
  {
    return qword_1BB4F0BD8[a1 - 34];
  }
}

uint64_t AVTEnumeratePresetCategories(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = 0; i != 40; ++i)
    {
      result = (*(v1 + 16))(v1, i);
    }
  }

  return result;
}

void AVTEvaluateNameMatchingRules(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = [v7 objectForKeyedSubscript:@"exclude"];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    v11 = [v7 objectForKeyedSubscript:@"include"];

    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __AVTEvaluateNameMatchingRules_block_invoke;
    v16[3] = &unk_1E7F49720;
    v13 = isKindOfClass & 1;
    v20 = v9;
    v21 = v10;
    v22 = v7;
    v17 = v8;
    v18 = v11;
    v19 = v5;
    v23 = v13;
    v14 = v11;
    v15 = v8;
    [v6 enumerateHierarchyUsingBlock:v16];
  }
}

void __AVTEvaluateNameMatchingRules_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 name];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_30;
  }

  if (*(a1 + 56) == 1)
  {
    if ([v4 containsString:*(a1 + 32)])
    {
      goto LABEL_30;
    }
  }

  else if (*(a1 + 57) == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 containsString:*(*(&v20 + 1) + 8 * v10)])
        {
          goto LABEL_29;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v8)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  if (*(a1 + 58) != 1)
  {
    if (*(a1 + 59) != 1)
    {
      goto LABEL_30;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 40);
    v11 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 containsString:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            (*(*(a1 + 48) + 16))();
            goto LABEL_29;
          }
        }

        v12 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if ([v5 containsString:*(a1 + 40)])
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_30:

  v15 = *MEMORY[0x1E69E9840];
}

void __AVTPresetLoadPresetsIfNeeded_block_invoke()
{
  v0 = AVTPrecompiledMemojiPresetPlist();
  [v0 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_318];
  [v0 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_360];
}

void __destructor_8_s72_s80(uint64_t a1)
{
  v2 = *(a1 + 80);
}

id AVTSetInitialValuesExportedAsAnimations(void *a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      AVTSetInitialValuesExportedAsAnimations_cold_1();
    }

    v13 = v7;
    v14 = [v13 animations];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v35 = v13;
      v36 = v7;
      v19 = 0;
      v20 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = AVTSetInitialValuesExportedAsAnimations(v37, v22, a3, v8);
          if (v23)
          {
            [v15 addObject:v23];
          }

          v19 |= v23 != v22;
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);

      v13 = v35;
      v7 = v36;
      if (v19)
      {
        if ([v15 count])
        {
          v12 = [v35 copy];
          [v12 setAnimations:v15];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    v12 = v13;
LABEL_27:

    goto LABEL_28;
  }

  v9 = v7;
  v10 = [v9 keyTimes];
  v11 = [v10 count];

  if ((a3 & 2) != 0 || v11 == 1)
  {
    v24 = [v9 values];
    v25 = [v24 objectAtIndexedSubscript:0];

    v26 = [v9 keyPath];
    [v37 setValue:v25 forKeyPath:v26];

    v27 = [v9 keyTimes];
    v28 = [v27 count];

    if (v8 && v28 >= 2)
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = [v37 name];
      v31 = [v9 keyTimes];
      v32 = [v29 stringWithFormat:@"Removed animation with more than one keyframe from %@ (%d keyframes)", v30, objc_msgSend(v31, "count")];
      v8[2](v8, v32);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

LABEL_28:
  v33 = *MEMORY[0x1E69E9840];

  return v12;
}

id AVTCloneSceneKitNodesAndMaterials(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v2 = a1;
  v3 = [[v1 alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  v4 = _AVTNodeDeepCopyWithCache(v2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___AVTNodeDeepCopy_block_invoke;
  v7[3] = &unk_1E7F499F0;
  v8 = v3;
  v5 = v3;
  [v2 enumerateHierarchyUsingBlock:v7];

  return v4;
}

id AVTMergeSceneKitShaderModifiers(void *a1, void *a2, void *a3, void *a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22[0] = *MEMORY[0x1E697A9D0];
  v22[1] = *MEMORY[0x1E697A9E0];
  v22[2] = *MEMORY[0x1E697A9D8];
  v22[3] = *MEMORY[0x1E697A9C8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v12 = v22[i];
    v13 = [v21 objectForKeyedSubscript:v12];
    v14 = [v8 objectForKeyedSubscript:v12];
    v15 = AVTMergeSceneKitShaderModifiersForEntryPoint(v13, v7, v14, v9);
    if (v15)
    {
      [v10 setObject:v15 forKeyedSubscript:v12];
    }
  }

  if ([v10 count])
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  for (j = 3; j != -1; --j)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

id AVTMergeSceneKitShaderModifiersForEntryPoint(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7 | v10)
  {
    if (v8 | v9)
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      _AVTSplitShaderModifier(v7, v8, &v26, &v25, &v24);
      v13 = v26;
      v14 = v25;
      v15 = v24;
      v20 = v13;
      if (v10)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        _AVTSplitShaderModifier(v9, v10, &v23, &v22, &v21);
        v16 = v23;
        v17 = v22;
        v18 = v21;
        v12 = AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts(v13, v14, v15, v16, v17, v18);
      }

      else
      {
        v12 = AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode(v13, v14, v15, v9);
      }

      goto LABEL_10;
    }

    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
LABEL_10:

  return v12;
}

void _AVTSplitShaderModifier(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = a1;
  v9 = a2;
  v10 = [v26 rangeOfString:@"#pragma arguments\n"];
  v11 = [v26 rangeOfString:@"#pragma declaration\n"];
  v12 = [v26 rangeOfString:@"#pragma body\n"];
  v14 = v13;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v10 - v11, v10 <= v11))
    {
      v16 = v26;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        _AVTSplitShaderModifier_cold_2();
      }

      v15 = v12 - v11;
    }

    else
    {
      v16 = v26;
    }

    v19 = [v16 substringWithRange:{v11, v15}];
    goto LABEL_15;
  }

  if ([v26 containsString:@"#pragma declaration\n"])
  {
    _AVTSplitShaderModifier_cold_1();
  }

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v26 substringToIndex:v10];
LABEL_15:
    v17 = v19;
    goto LABEL_16;
  }

  v17 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
  {
    *a3 = [v26 substringToIndex:v12];
    v18 = v26;
    goto LABEL_26;
  }

LABEL_16:
  *a3 = v17;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v26;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 > v10)
    {
      v20 = [v26 substringWithRange:{v10, v11 - v10}];
      goto LABEL_22;
    }

LABEL_26:
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AVTSplitShaderModifier_cold_3();
    }

    *a4 = [v18 substringWithRange:{v10, v12 - v10}];
    goto LABEL_28;
  }

  if ([v26 containsString:@"#pragma arguments"])
  {
    _AVTSplitShaderModifier_cold_5();
  }

  v20 = 0;
LABEL_22:
  *a4 = v20;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_28:
    if (v9)
    {
      v22 = [v26 substringWithRange:{v12, v14}];
      v23 = [v26 substringWithRange:{v12 + v14, objc_msgSend(v26, "length") - (v12 + v14)}];
      v24 = v9[2](v9, v23);

      *a5 = [v22 stringByAppendingString:v24];

      goto LABEL_34;
    }

    v21 = [v26 substringWithRange:{v12, objc_msgSend(v26, "length") - v12}];
    goto LABEL_31;
  }

  if ([v26 containsString:@"#pragma body"])
  {
    _AVTSplitShaderModifier_cold_4();
  }

  if (!v9)
  {
    v25 = v26;
    goto LABEL_33;
  }

  v21 = v9[2](v9, v26);
LABEL_31:
  v25 = v21;
LABEL_33:
  *a5 = v25;
LABEL_34:
}

id AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1F39AEE78;
  }

  v18 = v17;
  if ([v11 length])
  {
    v19 = [(__CFString *)v18 rangeOfString:@"#pragma declaration\n"];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v18 containsString:@"#pragma declaration"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_1();
      }

      v21 = v11;
    }

    else
    {
      v21 = [(__CFString *)v18 stringByReplacingCharactersInRange:v19 withString:v20, v11];
    }

    v22 = v21;

    v18 = v22;
  }

  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = &stru_1F39AEE78;
  }

  v24 = v23;
  v43 = v12;
  if ([v12 length])
  {
    v25 = [(__CFString *)v24 rangeOfString:@"#pragma arguments\n"];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v24 containsString:@"#pragma arguments"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_2();
      }

      v27 = v12;
    }

    else
    {
      v27 = [(__CFString *)v24 stringByReplacingCharactersInRange:v25 withString:v26, v12];
    }

    v28 = v27;

    v24 = v28;
  }

  if (v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = &stru_1F39AEE78;
  }

  v30 = v29;
  if ([v13 length])
  {
    v31 = [(__CFString *)v30 rangeOfString:@"#pragma body\n"];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v30 containsString:@"#pragma body"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_3();
      }

      v33 = v11;
      v34 = [(__CFString *)v30 rangeOfString:@"#pragma transparent\n"];
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v34;
        v42 = v35;
        v37 = [(__CFString *)v30 mutableCopy];
        [(__CFString *)v37 insertString:v13 atIndex:v38 + v42];
        goto LABEL_30;
      }

      v36 = v13;
    }

    else
    {
      v33 = v11;
      v36 = [(__CFString *)v30 stringByReplacingCharactersInRange:v31 withString:v32, v13];
    }

    v37 = v36;
LABEL_30:

    v30 = v37;
    v11 = v33;
  }

  v39 = [(__CFString *)v18 stringByAppendingString:v24];
  v40 = [v39 stringByAppendingString:v30];

  return v40;
}

__CFString *AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (![v9 length])
  {
    v12 = v10;
    goto LABEL_26;
  }

  v11 = &stru_1F39AEE78;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;
  if ([v7 length])
  {
    v13 = [(__CFString *)v12 rangeOfString:@"#pragma declaration\n"];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma declaration"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_1();
      }

      v15 = [v7 stringByAppendingString:v12];
    }

    else
    {
      v15 = [(__CFString *)v12 stringByReplacingCharactersInRange:v13 withString:v14, v7];
    }

    v16 = v15;

    v12 = v16;
  }

  if ([v8 length])
  {
    v17 = [(__CFString *)v12 rangeOfString:@"#pragma arguments\n"];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma arguments"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_2();
      }

      v19 = [v8 stringByAppendingString:v12];
    }

    else
    {
      v19 = [(__CFString *)v12 stringByReplacingCharactersInRange:v17 withString:v18, v8];
    }

    v20 = v19;

    v12 = v20;
  }

  if (v9)
  {
    v21 = [(__CFString *)v12 rangeOfString:@"#pragma body\n"];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma body"])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_3();
      }

      v23 = [(__CFString *)v12 rangeOfString:@"#pragma transparent\n"];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v23;
        v28 = v24;
        v26 = [(__CFString *)v12 mutableCopy];
        [(__CFString *)v26 insertString:v9 atIndex:v27 + v28];
        goto LABEL_25;
      }

      v25 = [(__CFString *)v12 stringByAppendingString:v9];
    }

    else
    {
      v25 = [(__CFString *)v12 stringByReplacingCharactersInRange:v21 withString:v22, v9];
    }

    v26 = v25;
LABEL_25:

    v12 = v26;
  }

LABEL_26:

  return v12;
}

__CFString *AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v10 length])
  {
    v11 = &stru_1F39AEE78;
    if (v7)
    {
      v11 = v7;
    }

    v12 = v11;
    if ([v8 length])
    {
      v13 = [(__CFString *)v12 rangeOfString:@"#pragma declaration\n"];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:@"#pragma declaration"])
        {
          AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts_cold_1();
        }

        v15 = [v8 stringByAppendingString:v12];
      }

      else
      {
        v15 = [(__CFString *)v12 stringByReplacingCharactersInRange:v13 withString:v14, v8];
      }

      v17 = v15;

      v12 = v17;
    }

    if ([v9 length])
    {
      v18 = [(__CFString *)v12 rangeOfString:@"#pragma arguments\n"];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:@"#pragma arguments"])
        {
          AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts_cold_2();
        }

        v20 = [v9 stringByAppendingString:v12];
      }

      else
      {
        v20 = [(__CFString *)v12 stringByReplacingCharactersInRange:v18 withString:v19, v9];
      }

      v21 = v20;

      v12 = v21;
    }

    v16 = [(__CFString *)v12 stringByAppendingString:v10];
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

id _AVTNodeDeepCopyWithCache(void *a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    goto LABEL_53;
  }

  v10 = objc_alloc_init(MEMORY[0x1E697A8B0]);
  [v7 setObject:v10 forKey:v6];
  v11 = [v6 name];
  [v10 setName:v11];

  [v6 simdTransform];
  [v10 setSimdTransform:?];
  [v10 setHidden:{objc_msgSend(v6, "isHidden")}];
  [v6 opacity];
  [v10 setOpacity:?];
  [v10 setRenderingOrder:{objc_msgSend(v6, "renderingOrder")}];
  [v10 setCategoryBitMask:{objc_msgSend(v6, "categoryBitMask")}];
  v12 = [v6 light];
  [v10 setLight:v12];

  v13 = [v6 camera];
  [v10 setCamera:v13];

  [v10 setCastsShadow:{objc_msgSend(v6, "castsShadow")}];
  [v10 setUsesDepthPrePass:{objc_msgSend(v6, "usesDepthPrePass")}];
  v14 = [v6 valueForKey:@"_valueForKey"];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = ___AVTNodeDeepCopyWithCache_block_invoke;
  v97[3] = &unk_1E7F48E68;
  v15 = v10;
  v98 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v97];
  v16 = [v6 geometry];
  v78 = v16;
  v79 = v14;
  if (v16)
  {
    v17 = v16;
    v18 = [v7 objectForKey:v16];
    if (!v18)
    {
      v74 = v6;
      v19 = [v17 copy];
      [v7 setObject:v19 forKey:v17];
      v20 = [v17 tessellator];
      v21 = [v20 copy];
      v76 = v19;
      [v19 setTessellator:v21];

      v22 = MEMORY[0x1E695DF70];
      v23 = [v17 materials];
      v24 = [v22 arrayWithCapacity:{objc_msgSend(v23, "count")}];

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v25 = [v17 materials];
      v26 = [v25 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v94;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v94 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v93 + 1) + 8 * i);
            v31 = [v7 objectForKey:v30];
            if (!v31)
            {
              v31 = [v30 copy];
              [v7 setObject:v31 forKey:v30];
            }

            [v24 addObject:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v93 objects:v102 count:16];
        }

        while (v27);
      }

      v18 = v76;
      [v76 setMaterials:v24];

      v6 = v74;
    }

    [v15 setGeometry:v18];
  }

  v32 = [v6 morpher];
  if (v32)
  {
    v33 = [v7 objectForKey:v32];
    if (!v33)
    {
      v33 = [v32 copy];
      [v7 setObject:v33 forKey:v32];
    }

    [v15 setMorpher:v33];
  }

  v77 = v32;
  v34 = [v6 skinner];
  if (v34)
  {
    v35 = [v7 objectForKey:v34];
    if (v35)
    {
LABEL_44:
      [v15 setSkinner:{v35, v70}];

      goto LABEL_45;
    }

    v36 = [v34 bones];
    v37 = [v34 skeleton];
    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
    v73 = v36;
    v75 = v6;
    v72 = v37;
    if (v37)
    {
      v39 = v37;
      while (v39 != v5)
      {
        v40 = [v39 parentNode];

        v39 = v40;
        if (!v40)
        {
          goto LABEL_26;
        }
      }

      v49 = [v34 skeleton];
      v71 = _AVTNodeDeepCopyWithCache(v5, v49, v7);

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v50 = v36;
      v51 = [v50 countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (!v51)
      {
        goto LABEL_43;
      }

      v52 = v51;
      v70 = v34;
      v53 = *v90;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v90 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = _AVTNodeDeepCopyWithCache(v5, *(*(&v89 + 1) + 8 * j), v7);
          [v38 addObject:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v89 objects:v101 count:16];
      }

      while (v52);
    }

    else
    {
LABEL_26:
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v41 = v36;
      v42 = [v41 countByEnumeratingWithState:&v85 objects:v100 count:16];
      if (!v42)
      {
        v71 = 0;
        goto LABEL_43;
      }

      v43 = v42;
      v70 = v34;
      v44 = *v86;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v86 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v85 + 1) + 8 * k);
          v47 = objc_alloc_init(MEMORY[0x1E697A8B0]);
          v48 = [v46 name];
          [v47 setName:v48];

          [v38 addObject:v47];
        }

        v43 = [v41 countByEnumeratingWithState:&v85 objects:v100 count:16];
      }

      while (v43);
      v71 = 0;
    }

    v34 = v70;
    v36 = v73;
LABEL_43:

    v56 = MEMORY[0x1E697A8D0];
    v57 = [v15 geometry];
    v58 = [v34 boneInverseBindTransforms];
    v59 = [v34 boneWeights];
    v60 = [v34 boneIndices];
    v35 = [v56 skinnerWithBaseGeometry:v57 bones:v38 boneInverseBindTransforms:v58 boneWeights:v59 boneIndices:v60];

    [v34 baseGeometryBindTransform];
    v84[0] = v84[4];
    v84[1] = v84[5];
    v84[2] = v84[6];
    v84[3] = v84[7];
    [v35 setBaseGeometryBindTransform:v84];
    [v35 setSkeleton:v71];
    [v7 setObject:v35 forKey:v34];

    v6 = v75;
    goto LABEL_44;
  }

LABEL_45:
  v61 = v34;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v62 = [v6 childNodes];
  v63 = [v62 countByEnumeratingWithState:&v80 objects:v99 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v81;
    do
    {
      for (m = 0; m != v64; ++m)
      {
        if (*v81 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = _AVTNodeDeepCopyWithCache(v5, *(*(&v80 + 1) + 8 * m), v7);
        [v15 addChildNode:v67];
      }

      v64 = [v62 countByEnumeratingWithState:&v80 objects:v99 count:16];
    }

    while (v64);
  }

  v9 = v15;
LABEL_53:

  v68 = *MEMORY[0x1E69E9840];

  return v9;
}

void _AVTMemojiRandomize(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  v23 = v25;
  do
  {
    v6 = [AVTPreset availablePresetsForCategory:v5, v23];
    if ([v6 count])
    {
      v7 = arc4random_uniform([v6 count]);
      v8 = 1.0;
      if ((v5 - 1) <= 0x22)
      {
        v8 = dbl_1BB4F0D38[v5 - 1];
      }

      if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
      {
        _AVTMemojiRandomize_cold_1();
      }

      if (drand48() <= v8)
      {
        v10 = v7;
      }

      else
      {
        v9 = [v6 indexOfObjectPassingTest:&__block_literal_global_537];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }
      }

      v11 = [v6 objectAtIndex:v10];
      v3[2](v3, v11, v5);
    }

    v12 = [AVTColorPreset colorPresetsForCategory:v5];
    if ([v12 count])
    {
      v13 = arc4random_uniform([v12 count]);
      if (v5)
      {
        if (v5 == 10)
        {
          v14 = 1;
        }

        else
        {
          if (v5 != 1)
          {
LABEL_21:
            v15 = [v12 objectAtIndex:v13];
            if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
            {
              _AVTMemojiRandomize_cold_1();
            }

            v16 = drand48();
            *&v16 = v16;
            *&v16 = (*&v16 * 2.0) + -1.0;
            v17 = [v15 colorPresetWithVariation:v16];

            v4[2](v4, v17, v5, 0);
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v25[0] = ___AVTMemojiRandomize_block_invoke_2;
            v25[1] = &unk_1E7F49DC8;
            v26 = v4;
            [v17 enumerateDerivedColorPresetsUsingBlock:v24];

            goto LABEL_24;
          }

          v14 = 7;
        }
      }

      else
      {
        v14 = 8;
      }

      v13 = arc4random_uniform(v14);
      goto LABEL_21;
    }

LABEL_24:
    if (v5 != 7)
    {
      for (i = 1; i != 3; ++i)
      {
        v19 = v12;
        v12 = [AVTColorPreset colorPresetsForCategory:v5 colorIndex:i];

        if ([v12 count])
        {
          v20 = [v12 objectAtIndex:{arc4random_uniform(objc_msgSend(v12, "count"))}];
          if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
          {
            _AVTMemojiRandomize_cold_1();
          }

          v21 = drand48();
          *&v21 = v21;
          *&v21 = (*&v21 * 2.0) + -1.0;
          v22 = [v20 colorPresetWithVariation:v21];

          v4[2](v4, v22, v5, i);
        }
      }
    }

    ++v5;
  }

  while (v5 != 40);
}

double AVTRGB2HSB(__n128 a1)
{
  if (a1.n128_f32[0] >= a1.n128_f32[1])
  {
    v1 = a1.n128_f32[0];
  }

  else
  {
    v1 = a1.n128_f32[1];
  }

  if (a1.n128_f32[0] >= a1.n128_f32[1])
  {
    v2 = a1.n128_f32[1];
  }

  else
  {
    v2 = a1.n128_f32[0];
  }

  if (v1 >= a1.n128_f32[2])
  {
    v3 = v1;
  }

  else
  {
    v3 = a1.n128_f32[2];
  }

  if (v2 >= a1.n128_f32[2])
  {
    v4 = a1.n128_f32[2];
  }

  else
  {
    v4 = v2;
  }

  v5 = v3 - v4;
  v6 = 0.0;
  if ((v3 - v4) != 0.0)
  {
    v7 = ((a1.n128_f32[0] - a1.n128_f32[1]) / v5) + 4.0;
    if (a1.n128_f32[1] == v3)
    {
      v7 = ((a1.n128_f32[2] - a1.n128_f32[0]) / v5) + 2.0;
    }

    v8 = (a1.n128_f32[1] - a1.n128_f32[2]) / v5;
    if (a1.n128_f32[0] != v3)
    {
      v8 = v7;
    }

    v6 = v8 * 60.0;
    if ((v8 * 60.0) < 0.0)
    {
      v6 = v6 + 360.0;
    }
  }

  v9 = v5 / v3;
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  *&v10 = v6 / 360.0;
  *(&v10 + 1) = v9;
  return v10;
}

double AVTHSB2RGB(__n128 a1)
{
  v1 = 0.0;
  v2 = fmaxf(fminf(a1.n128_f32[1], 1.0), 0.0);
  *&v3 = fmaxf(fminf(a1.n128_f32[2], 1.0), 0.0);
  if (v2 != 0.0)
  {
    v6 = fmaxf(fminf(a1.n128_f32[0], 1.0), 0.0) * 360.0;
    if (v6 != 360.0)
    {
      v1 = v6 / 60.0;
    }

    v7 = v1;
    v8 = v1 - v1;
    v9 = *&v3 * (1.0 - v2);
    v10 = *&v3 * (1.0 - (v2 * v8));
    v11 = *&v3 * (1.0 - (v2 * (1.0 - v8)));
    if (v7 > 1)
    {
      switch(v7)
      {
        case 2:
          v4 = *&v3;
          break;
        case 3:
          v4 = v10;
          break;
        case 4:
          v4 = *&v3 * (1.0 - v2);
          *&v3 = v11;
          goto LABEL_3;
        default:
LABEL_18:
          v4 = *&v3 * (1.0 - v2);
          goto LABEL_3;
      }

      *&v3 = v9;
      goto LABEL_3;
    }

    if (!v7)
    {
      v4 = v11;
      goto LABEL_3;
    }

    if (v7 == 1)
    {
      v4 = *&v3;
      *&v3 = v10;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  v4 = *&v3;
LABEL_3:
  *(&v3 + 1) = v4;
  return v3;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB4CDCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4CF2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4D1310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

uint64_t AVTInterpolateBasicAnimationFloat(void *a1, float a2)
{
  v3 = a1;
  v4 = [v3 fromValue];
  [v4 floatValue];
  v6 = v5;

  v7 = [v3 toValue];

  [v7 floatValue];
  v9 = v8;

  v11 = MEMORY[0x1E696AD98];

  *&v10 = v6 + (a2 * (v9 - v6));
  return [v11 numberWithFloat:v10];
}

uint64_t AVTInterpolateBasicAnimationFloat4(void *a1, float a2)
{
  v2 = a1;
  v3 = [v2 fromValue];
  [v3 avt_float4Value];
  v11 = v4;

  v5 = [v2 toValue];

  [v5 avt_float4Value];
  v10 = v6;

  *&v7 = vmlaq_n_f32(v11, vsubq_f32(v10, v11), a2).u64[0];
  v8 = MEMORY[0x1E696B098];

  return [v8 avt_valueWithFloat4_usableWithKVCForSCNVector4:v7];
}

uint64_t AVTInterpolateBasicAnimationQuaternion(void *a1, float a2)
{
  v3 = a1;
  v4 = [v3 fromValue];
  [v4 avt_float4Value];
  v43 = v5;

  v6 = [v3 toValue];

  [v6 avt_float4Value];
  v41 = v7;

  v8 = vmulq_f32(v43, v41);
  v9 = vextq_s8(v8, v8, 8uLL);
  *v8.f32 = vadd_f32(*v8.f32, *v9.f32);
  v8.f32[0] = vaddv_f32(*v8.f32);
  v9.i64[0] = 0;
  v10 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v8, v9)), 0), vnegq_f32(v41), v41);
  v11 = 1.0;
  v12 = 1.0 - a2;
  v13 = vsubq_f32(v43, v10);
  v14 = vmulq_f32(v13, v13);
  v42 = v10;
  v15 = vaddq_f32(v43, v10);
  v16 = vmulq_f32(v15, v15);
  v17 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
  v18 = v17 + v17;
  v19 = (v17 + v17) == 0.0;
  v20 = 1.0;
  if (!v19)
  {
    v20 = sinf(v18) / v18;
  }

  v21 = v20;
  v22 = vrecpe_f32(LODWORD(v20));
  v23 = vmul_f32(v22, vrecps_f32(LODWORD(v21), v22));
  LODWORD(v24) = vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).u32[0];
  if ((v12 * v18) != 0.0)
  {
    v39 = v24;
    v23.f32[0] = sinf(v12 * v18);
    v24 = v39;
    v11 = v23.f32[0] / (v12 * v18);
  }

  v23.f32[0] = v12 * (v24 * v11);
  v25 = vdupq_lane_s32(v23, 0);
  v26 = v18 * a2;
  v27 = 1.0;
  if (v26 != 0.0)
  {
    v38 = v25;
    v40 = v24;
    v28 = sinf(v26);
    v25 = v38;
    v24 = v40;
    v27 = v28 / v26;
  }

  v29 = vmlaq_f32(vmulq_n_f32(v42, (v24 * v27) * a2), v43, v25);
  v30 = vmulq_f32(v29, v29);
  v31 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
  if (vaddv_f32(v31) == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v33 = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
    v34 = vrsqrte_f32(v33);
    v35 = vmul_f32(v34, vrsqrts_f32(v33, vmul_f32(v34, v34)));
    *&v32 = vmulq_n_f32(v29, vmul_f32(v35, vrsqrts_f32(v33, vmul_f32(v35, v35))).f32[0]).u64[0];
  }

  v36 = MEMORY[0x1E696B098];

  return [v36 avt_valueWithFloat4_usableWithKVCForSCNVector4:v32];
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB4D8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

id AVTPrecompiledAnimojiSpecializationSettings()
{
  if (AVTPrecompiledAnimojiSpecializationSettings_onceToken != -1)
  {
    AVTPrecompiledAnimojiSpecializationSettings_cold_1();
  }

  v1 = AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings;

  return v1;
}

void __AVTPrecompiledAnimojiSpecializationSettings_block_invoke()
{
  v0 = AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings;
  AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings = &unk_1F39E6248;
}

id AVTPrecompiledMemojiAssetWithIdentifier(void *a1)
{
  v1 = AVTPrecompiledMemojiAssetWithIdentifier_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AVTPrecompiledMemojiAssetWithIdentifier_cold_1();
  }

  v3 = [AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier objectForKeyedSubscript:v2];

  return v3;
}

void __AVTPrecompiledMemojiAssetWithIdentifier_block_invoke()
{
  v0 = AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier;
  AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier = &unk_1F39FFE00;
}

id AVTPrecompiledMemojiAssetsForComponentType(unint64_t a1)
{
  if (AVTPrecompiledMemojiAssetsForComponentType_onceToken != -1)
  {
    AVTPrecompiledMemojiAssetsForComponentType_cold_1();
  }

  v2 = AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType;
  v3 = AVTComponentTypeToString(a1);
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __AVTPrecompiledMemojiAssetsForComponentType_block_invoke()
{
  v0 = AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType;
  AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType = &unk_1F3A00300;
}

id AVTPrecompiledMemojiCompositorPropertyNames()
{
  if (AVTPrecompiledMemojiCompositorPropertyNames_onceToken != -1)
  {
    AVTPrecompiledMemojiCompositorPropertyNames_cold_1();
  }

  v1 = AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames;

  return v1;
}

void __AVTPrecompiledMemojiCompositorPropertyNames_block_invoke()
{
  v0 = AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames;
  AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames = &unk_1F39DC688;
}

id AVTPrecompiledMemojiColorPalettes()
{
  if (AVTPrecompiledMemojiColorPalettes_onceToken != -1)
  {
    AVTPrecompiledMemojiColorPalettes_cold_1();
  }

  v1 = AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes;

  return v1;
}

void __AVTPrecompiledMemojiColorPalettes_block_invoke()
{
  v0 = AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes;
  AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes = &unk_1F3A13130;
}

id AVTPrecompiledMemojiPresetPlist()
{
  if (AVTPrecompiledMemojiPresetPlist_onceToken != -1)
  {
    AVTPrecompiledMemojiPresetPlist_cold_1();
  }

  v1 = AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets;

  return v1;
}

void __AVTPrecompiledMemojiPresetPlist_block_invoke()
{
  v0 = AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets;
  AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets = &unk_1F3A28EE0;
}

id AVTPrecompiledMemojiEditorMetadata()
{
  if (AVTPrecompiledMemojiEditorMetadata_onceToken != -1)
  {
    AVTPrecompiledMemojiEditorMetadata_cold_1();
  }

  v1 = AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor;

  return v1;
}

void __AVTPrecompiledMemojiEditorMetadata_block_invoke()
{
  v0 = AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor;
  AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor = &unk_1F3A322B0;
}

id AVTPrecompiledMemojiPrereleaseEditorMetadata()
{
  if (AVTPrecompiledMemojiPrereleaseEditorMetadata_onceToken != -1)
  {
    AVTPrecompiledMemojiPrereleaseEditorMetadata_cold_1();
  }

  v1 = AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease;

  return v1;
}

void __AVTPrecompiledMemojiPrereleaseEditorMetadata_block_invoke()
{
  v0 = AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease;
  AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease = MEMORY[0x1E695E0F8];
}

id AVTPrecompiledToyboxAnimojiNames()
{
  if (AVTPrecompiledToyboxAnimojiNames_onceToken != -1)
  {
    AVTPrecompiledToyboxAnimojiNames_cold_1();
  }

  v1 = AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames;

  return v1;
}

void __AVTPrecompiledToyboxAnimojiNames_block_invoke()
{
  v0 = AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames;
  AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames = &unk_1F39E1170;
}

id _AVTPoseRoundingBehaviour()
{
  if (_AVTPoseRoundingBehaviour_onceToken != -1)
  {
    _AVTPoseRoundingBehaviour_cold_1();
  }

  v1 = _AVTPoseRoundingBehaviour_behavior;

  return v1;
}

void sub_1BB4DB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AVTUpgradeVFXWorldOptions(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1 || (v1 = a1, ![a1 count]))
  {
    v6 = *MEMORY[0x1E69DF3E0];
    v7[0] = MEMORY[0x1E695E118];
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69DF3E0]];
LABEL_6:
    v2 = *MEMORY[0x1E69E9840];
    return v1;
  }

  v4 = [v1 mutableCopy];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69DF3E0]];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id AVTCloneNodesAndMaterials(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v2 = a1;
  v3 = [[v1 alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  v4 = _AVTNodeDeepCopyWithCache_0(v2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___AVTNodeDeepCopy_block_invoke_0;
  v7[3] = &unk_1E7F47B10;
  v8 = v3;
  v5 = v3;
  [v2 enumerateHierarchyUsingBlock:v7];

  return v4;
}

id AVTMergeShaderModifiers(void *a1, void *a2, void *a3, void *a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22[0] = *MEMORY[0x1E69DF3C8];
  v22[1] = *MEMORY[0x1E69DF3C0];
  v22[2] = *MEMORY[0x1E69DF3B8];
  v22[3] = *MEMORY[0x1E69DF3B0];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v12 = v22[i];
    v13 = [v21 objectForKeyedSubscript:v12];
    v14 = [v8 objectForKeyedSubscript:v12];
    v15 = AVTMergeShaderModifiersForEntryPoint(v13, v7, v14, v9);
    if (v15)
    {
      [v10 setObject:v15 forKeyedSubscript:v12];
    }
  }

  if ([v10 count])
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  for (j = 3; j != -1; --j)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

id AVTMergeShaderModifiersForEntryPoint(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7 | v10)
  {
    if (v8 | v9)
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      _AVTSplitShaderModifier_0(v7, v8, &v26, &v25, &v24);
      v13 = v26;
      v14 = v25;
      v15 = v24;
      v20 = v13;
      if (v10)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        _AVTSplitShaderModifier_0(v9, v10, &v23, &v22, &v21);
        v16 = v23;
        v17 = v22;
        v18 = v21;
        v12 = AVTMergeShaderModifiersForEntryPointWithPartsAndParts(v13, v14, v15, v16, v17, v18);
      }

      else
      {
        v12 = AVTMergeShaderModifiersForEntryPointWithPartsAndCode(v13, v14, v15, v9);
      }

      goto LABEL_10;
    }

    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
LABEL_10:

  return v12;
}

void _AVTSplitShaderModifier_0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = a1;
  v9 = a2;
  v10 = [v26 rangeOfString:@"#pragma arguments\n"];
  v11 = [v26 rangeOfString:@"#pragma declaration\n"];
  v12 = [v26 rangeOfString:@"#pragma body\n"];
  v14 = v13;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v10 - v11, v10 <= v11))
    {
      v16 = v26;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        _AVTSplitShaderModifier_cold_2_0();
      }

      v15 = v12 - v11;
    }

    else
    {
      v16 = v26;
    }

    v19 = [v16 substringWithRange:{v11, v15}];
    goto LABEL_15;
  }

  if ([v26 containsString:@"#pragma declaration\n"])
  {
    _AVTSplitShaderModifier_cold_1_0();
  }

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v26 substringToIndex:v10];
LABEL_15:
    v17 = v19;
    goto LABEL_16;
  }

  v17 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
  {
    *a3 = [v26 substringToIndex:v12];
    v18 = v26;
    goto LABEL_26;
  }

LABEL_16:
  *a3 = v17;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v26;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 > v10)
    {
      v20 = [v26 substringWithRange:{v10, v11 - v10}];
      goto LABEL_22;
    }

LABEL_26:
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AVTSplitShaderModifier_cold_3_0();
    }

    *a4 = [v18 substringWithRange:{v10, v12 - v10}];
    goto LABEL_28;
  }

  if ([v26 containsString:@"#pragma arguments"])
  {
    _AVTSplitShaderModifier_cold_5_0();
  }

  v20 = 0;
LABEL_22:
  *a4 = v20;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_28:
    if (v9)
    {
      v22 = [v26 substringWithRange:{v12, v14}];
      v23 = [v26 substringWithRange:{v12 + v14, objc_msgSend(v26, "length") - (v12 + v14)}];
      v24 = v9[2](v9, v23);

      *a5 = [v22 stringByAppendingString:v24];

      goto LABEL_34;
    }

    v21 = [v26 substringWithRange:{v12, objc_msgSend(v26, "length") - v12}];
    goto LABEL_31;
  }

  if ([v26 containsString:@"#pragma body"])
  {
    _AVTSplitShaderModifier_cold_4_0();
  }

  if (!v9)
  {
    v25 = v26;
    goto LABEL_33;
  }

  v21 = v9[2](v9, v26);
LABEL_31:
  v25 = v21;
LABEL_33:
  *a5 = v25;
LABEL_34:
}

id AVTMergeShaderModifiersForEntryPointWithPartsAndParts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1F39AEE78;
  }

  v18 = v17;
  if ([v11 length])
  {
    v19 = [(__CFString *)v18 rangeOfString:@"#pragma declaration\n"];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v18 containsString:@"#pragma declaration"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_1();
      }

      v21 = v11;
    }

    else
    {
      v21 = [(__CFString *)v18 stringByReplacingCharactersInRange:v19 withString:v20, v11];
    }

    v22 = v21;

    v18 = v22;
  }

  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = &stru_1F39AEE78;
  }

  v24 = v23;
  v43 = v12;
  if ([v12 length])
  {
    v25 = [(__CFString *)v24 rangeOfString:@"#pragma arguments\n"];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v24 containsString:@"#pragma arguments"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_2();
      }

      v27 = v12;
    }

    else
    {
      v27 = [(__CFString *)v24 stringByReplacingCharactersInRange:v25 withString:v26, v12];
    }

    v28 = v27;

    v24 = v28;
  }

  if (v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = &stru_1F39AEE78;
  }

  v30 = v29;
  if ([v13 length])
  {
    v31 = [(__CFString *)v30 rangeOfString:@"#pragma body\n"];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v30 containsString:@"#pragma body"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_3();
      }

      v33 = v11;
      v34 = [(__CFString *)v30 rangeOfString:@"#pragma transparent\n"];
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v34;
        v42 = v35;
        v37 = [(__CFString *)v30 mutableCopy];
        [(__CFString *)v37 insertString:v13 atIndex:v38 + v42];
        goto LABEL_30;
      }

      v36 = v13;
    }

    else
    {
      v33 = v11;
      v36 = [(__CFString *)v30 stringByReplacingCharactersInRange:v31 withString:v32, v13];
    }

    v37 = v36;
LABEL_30:

    v30 = v37;
    v11 = v33;
  }

  v39 = [(__CFString *)v18 stringByAppendingString:v24];
  v40 = [v39 stringByAppendingString:v30];

  return v40;
}

__CFString *AVTMergeShaderModifiersForEntryPointWithPartsAndCode(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (![v9 length])
  {
    v12 = v10;
    goto LABEL_26;
  }

  v11 = &stru_1F39AEE78;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;
  if ([v7 length])
  {
    v13 = [(__CFString *)v12 rangeOfString:@"#pragma declaration\n"];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma declaration"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_1();
      }

      v15 = [v7 stringByAppendingString:v12];
    }

    else
    {
      v15 = [(__CFString *)v12 stringByReplacingCharactersInRange:v13 withString:v14, v7];
    }

    v16 = v15;

    v12 = v16;
  }

  if ([v8 length])
  {
    v17 = [(__CFString *)v12 rangeOfString:@"#pragma arguments\n"];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma arguments"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_2();
      }

      v19 = [v8 stringByAppendingString:v12];
    }

    else
    {
      v19 = [(__CFString *)v12 stringByReplacingCharactersInRange:v17 withString:v18, v8];
    }

    v20 = v19;

    v12 = v20;
  }

  if (v9)
  {
    v21 = [(__CFString *)v12 rangeOfString:@"#pragma body\n"];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:@"#pragma body"])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_3();
      }

      v23 = [(__CFString *)v12 rangeOfString:@"#pragma transparent\n"];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v23;
        v28 = v24;
        v26 = [(__CFString *)v12 mutableCopy];
        [(__CFString *)v26 insertString:v9 atIndex:v27 + v28];
        goto LABEL_25;
      }

      v25 = [(__CFString *)v12 stringByAppendingString:v9];
    }

    else
    {
      v25 = [(__CFString *)v12 stringByReplacingCharactersInRange:v21 withString:v22, v9];
    }

    v26 = v25;
LABEL_25:

    v12 = v26;
  }

LABEL_26:

  return v12;
}

__CFString *AVTMergeShaderModifiersForEntryPointWithCodeAndParts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v10 length])
  {
    v11 = &stru_1F39AEE78;
    if (v7)
    {
      v11 = v7;
    }

    v12 = v11;
    if ([v8 length])
    {
      v13 = [(__CFString *)v12 rangeOfString:@"#pragma declaration\n"];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:@"#pragma declaration"])
        {
          AVTMergeShaderModifiersForEntryPointWithCodeAndParts_cold_1();
        }

        v15 = [v8 stringByAppendingString:v12];
      }

      else
      {
        v15 = [(__CFString *)v12 stringByReplacingCharactersInRange:v13 withString:v14, v8];
      }

      v17 = v15;

      v12 = v17;
    }

    if ([v9 length])
    {
      v18 = [(__CFString *)v12 rangeOfString:@"#pragma arguments\n"];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:@"#pragma arguments"])
        {
          AVTMergeShaderModifiersForEntryPointWithCodeAndParts_cold_2();
        }

        v20 = [v9 stringByAppendingString:v12];
      }

      else
      {
        v20 = [(__CFString *)v12 stringByReplacingCharactersInRange:v18 withString:v19, v9];
      }

      v21 = v20;

      v12 = v21;
    }

    v16 = [(__CFString *)v12 stringByAppendingString:v10];
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

id _AVTNodeDeepCopyWithCache_0(void *a1, void *a2, void *a3)
{
  v106 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    goto LABEL_55;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69DF330]);
  [v7 setObject:v10 forKey:v6];
  v11 = [v6 name];
  [v10 setName:v11];

  [v6 transform];
  [v10 setTransform:?];
  [v10 setHidden:{objc_msgSend(v6, "isHidden")}];
  [v6 opacity];
  [v10 setOpacity:?];
  [v10 setRenderingOrder:{objc_msgSend(v6, "renderingOrder")}];
  [v10 setCategoryBitMask:{objc_msgSend(v6, "categoryBitMask")}];
  v12 = [v6 light];
  [v10 setLight:v12];

  v13 = [v6 camera];
  [v10 setCamera:v13];

  [v10 setCastsShadow:{objc_msgSend(v6, "castsShadow")}];
  [v10 setUsesDepthPrePass:{objc_msgSend(v6, "usesDepthPrePass")}];
  v14 = [v6 valueForKey:@"_valueForKey"];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = ___AVTNodeDeepCopyWithCache_block_invoke_0;
  v100[3] = &unk_1E7F48E68;
  v15 = v10;
  v101 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v100];
  v16 = [v6 model];
  v81 = v16;
  if (v16)
  {
    v17 = [v7 objectForKey:v16];
    if (!v17)
    {
      v75 = v14;
      v77 = v6;
      v18 = [v16 copy];
      [v7 setObject:v18 forKey:v16];
      v19 = [v16 tessellator];
      v20 = [v19 copy];
      [v18 setTessellator:v20];

      v21 = [v16 mesh];
      v22 = [v7 objectForKey:v21];
      if (!v22)
      {
        v22 = [v21 copy];
        [v7 setObject:v22 forKey:v21];
      }

      v79 = v21;
      v82 = v18;
      v73 = v22;
      [v18 setMesh:v22];
      v23 = MEMORY[0x1E695DF70];
      v24 = [v16 materials];
      v25 = [v23 arrayWithCapacity:{objc_msgSend(v24, "count")}];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v26 = [v16 materials];
      v27 = [v26 countByEnumeratingWithState:&v96 objects:v105 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v97;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v97 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v96 + 1) + 8 * i);
            v32 = [v7 objectForKey:v31];
            if (!v32)
            {
              v32 = [v31 copy];
              [v7 setObject:v32 forKey:v31];
            }

            [v25 addObject:v32];
          }

          v28 = [v26 countByEnumeratingWithState:&v96 objects:v105 count:16];
        }

        while (v28);
      }

      v17 = v82;
      [v82 setMaterials:v25];

      v14 = v75;
      v6 = v77;
      v16 = v81;
    }

    [v15 setModel:v17];
  }

  v33 = [v6 morpher];
  if (v33)
  {
    v34 = [v7 objectForKey:v33];
    if (!v34)
    {
      v34 = [v33 copy];
      [v7 setObject:v34 forKey:v33];
    }

    [v15 setMorpher:v34];
  }

  v80 = v33;
  v35 = [v6 skinner];
  v83 = v35;
  if (v35)
  {
    v36 = v35;
    v37 = [v7 objectForKey:v35];
    if (v37)
    {
LABEL_46:
      [v15 setSkinner:{v37, v71}];

      goto LABEL_47;
    }

    v76 = v14;
    v38 = [v36 bones];
    v39 = [v36 skeleton];
    v74 = v38;
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v38, "count")}];
    v78 = v6;
    v72 = v39;
    if (v39)
    {
      v41 = v39;
      while (v41 != v5)
      {
        v42 = [v41 parentNode];

        v41 = v42;
        if (!v42)
        {
          goto LABEL_28;
        }
      }

      v51 = [v36 skeleton];
      v71 = _AVTNodeDeepCopyWithCache_0(v5, v51, v7);

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v52 = v74;
      v53 = [v52 countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (!v53)
      {
        goto LABEL_45;
      }

      v54 = v53;
      v55 = *v93;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v93 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = _AVTNodeDeepCopyWithCache_0(v5, *(*(&v92 + 1) + 8 * j), v7);
          [v40 addObject:v57];
        }

        v54 = [v52 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v54);
    }

    else
    {
LABEL_28:
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v43 = v74;
      v44 = [v43 countByEnumeratingWithState:&v88 objects:v103 count:16];
      if (!v44)
      {
        v71 = 0;
        goto LABEL_45;
      }

      v45 = v44;
      v46 = *v89;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v89 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v88 + 1) + 8 * k);
          v49 = objc_alloc_init(MEMORY[0x1E69DF330]);
          v50 = [v48 name];
          [v49 setName:v50];

          [v40 addObject:v49];
        }

        v45 = [v43 countByEnumeratingWithState:&v88 objects:v103 count:16];
      }

      while (v45);
      v71 = 0;
    }

    v16 = v81;
    v36 = v83;
LABEL_45:

    v58 = MEMORY[0x1E69DF368];
    v59 = [v16 mesh];
    v60 = [v36 boneInverseBindTransforms];
    v61 = [v83 boneWeights];
    v62 = [v83 boneIndices];
    v37 = [v58 skinnerWithBaseMesh:v59 bones:v40 boneInverseBindTransforms:v60 boneWeights:v61 boneIndices:v62];

    [v83 baseMeshBindTransform];
    [v37 setBaseMeshBindTransform:?];
    [v37 setSkeleton:v71];
    [v7 setObject:v37 forKey:v83];

    v14 = v76;
    v6 = v78;
    goto LABEL_46;
  }

LABEL_47:
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v63 = [v6 childNodes];
  v64 = [v63 countByEnumeratingWithState:&v84 objects:v102 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v85;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v85 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = _AVTNodeDeepCopyWithCache_0(v5, *(*(&v84 + 1) + 8 * m), v7);
        [v15 addChildNode:v68];
      }

      v65 = [v63 countByEnumeratingWithState:&v84 objects:v102 count:16];
    }

    while (v65);
  }

  v9 = v15;
LABEL_55:

  v69 = *MEMORY[0x1E69E9840];

  return v9;
}

void AVTCoordinatorLoadPoseAtPath_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void AVTCoordinatorLoadPoseAtPath_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void AVTCoordinatorLoadPosesAtPaths_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void AVTCoordinatorLoadPosesAtPaths_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void AVTCoordinatorLoadPoseAnimationsAtPaths_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void _AVTAvatarPoseImportSceneKitAnimation_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 keyPath];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unknown animation target %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void _AVTAvatarPoseImportSceneKitAnimation_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_4(&dword_1BB472000, a2, a3, "Error: Unreachable code: Unsupported CAPropertyAnimation subclass (%@)", a2);
}

void AVTARKitTransformToSceneKitTransformMatrix_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unsupported worldAlignment %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void AVTPrecompiledStickerPackPlist_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Could not find precompiled sticker pack %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __AVTSceneKitSnapshotVersionString_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __AVTInitializeShaderCache_block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [0 path];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BB4E7754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4E78DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}