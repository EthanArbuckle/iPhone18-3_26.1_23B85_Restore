@interface AXMTFaceKitResult
+ (CGPoint)_iOSReferenceFocalLengthFor3DPointProjection;
+ (CGPoint)_iOSReferencePrincipalPointFor3DPointProjection;
+ (__n128)_projectZAxisVectorUsingRGBCameraDictionary:(__n128)a3 pose:(__n128)a4;
+ (void)_logIntrinsicsForInternalBuilds:(__n128)a3 withLogPrefix:(uint64_t)a4;
- (AXMTFaceKitResult)initWithError:(id)a3;
- (BOOL)hasFace;
- (CGSize)imageSize;
- (double)_rotatePose:(__n128)a3 forCameraSensorRotation:(uint64_t)a4;
- (void)_calculatePoseWithRotation:(void *)a3 translation:(void *)a4;
@end

@implementation AXMTFaceKitResult

- (AXMTFaceKitResult)initWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSError alloc];
    v4 = [v5 initWithDomain:AXSSMotionTrackingErrorDomain code:0 userInfo:0];
  }

  v9.receiver = self;
  v9.super_class = AXMTFaceKitResult;
  v6 = [(AXMTFaceKitResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, v4);
  }

  return v7;
}

- (BOOL)hasFace
{
  v2 = [(AXMTFaceKitResult *)self error];
  v3 = v2 == 0;

  return v3;
}

- (double)_rotatePose:(__n128)a3 forCameraSensorRotation:(uint64_t)a4
{
  v6 = a1.n128_f64[0];
  if (a6)
  {
    v75 = a1.n128_u64[0];
    if (a6 == 180 || a6 == 270)
    {
      v67 = matrix_identity_float4x4.columns[3];
      v68 = matrix_identity_float4x4.columns[2];
      *&v8 = AXMTEulerAnglesFromMatrix(a1, a2, a3);
      if (a6 == 270)
      {
        v70 = v8;
        v38 = __sincosf_stret(-0.5 * *&v8);
        v39 = vmulq_n_f32(xmmword_1000345B0, v38.__sinval);
        v39.i32[3] = LODWORD(v38.__cosval);
        *v40.i64 = sub_100026B40(v39);
        v64 = v41;
        v66 = v40;
        v62 = v42;
        v43 = __sincosf_stret(vmuls_lane_f32(-0.5, *&v70, 1));
        v44 = vmulq_n_f32(xmmword_1000345C0, v43.__sinval);
        v44.i32[3] = LODWORD(v43.__cosval);
        *v45.i64 = sub_100026B40(v44);
        v74 = v46;
        v77 = v45;
        v72 = v47;
        v48 = __sincosf_stret((*(&v70 + 2) + 3.1416) * 0.5);
        v49 = vmulq_n_f32(xmmword_1000343C0, v48.__sinval);
        v49.i32[3] = LODWORD(v48.__cosval);
        *v50.i64 = sub_100026B40(v49);
        v51 = 0;
        v50.i32[3] = 0;
        HIDWORD(v52) = 0;
        v53.i32[3] = 0;
        v78 = v50;
        v79 = v52;
        v80 = v53;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v51 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(*(&v78 + v51 * 4))), v64, *&v78.f32[v51], 1), v62, *(&v78 + v51 * 4), 2);
          v51 += 4;
        }

        while (v51 != 12);
        v54 = 0;
        v78 = v82;
        v79 = v83;
        v80 = v84;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v54 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, COERCE_FLOAT(*(&v78 + v54 * 4))), v74, *&v78.f32[v54], 1), v72, *(&v78 + v54 * 4), 2);
          v54 += 4;
        }

        while (v54 != 12);
        AXMTMatrix4x4FromRotationAndTranslation();
        v55 = 0;
        v78 = v56;
        v79 = v57;
        v80 = v58;
        v81 = v59;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        do
        {
          *(&v82 + v55) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1000345C0, COERCE_FLOAT(*(&v78 + v55))), xmmword_1000345D0, *&v78.f32[v55 / 4], 1), v68, *(&v78 + v55), 2), v67, *(&v78 + v55), 3);
          v55 += 16;
        }

        while (v55 != 64);
        return *v82.i64;
      }

      if (a6 == 180)
      {
        v69 = v8;
        v9 = __sincosf_stret(0.5 * *&v8);
        v10 = vmulq_n_f32(xmmword_1000345B0, v9.__sinval);
        v10.i32[3] = LODWORD(v9.__cosval);
        *v11.i64 = sub_100026B40(v10);
        v63 = v12;
        v65 = v11;
        v61 = v13;
        v14 = __sincosf_stret(vmuls_lane_f32(-0.5, *&v69, 1));
        v15 = vmulq_n_f32(xmmword_1000345C0, v14.__sinval);
        v15.i32[3] = LODWORD(v14.__cosval);
        *v16.i64 = sub_100026B40(v15);
        v73 = v17;
        v76 = v16;
        v71 = v18;
        v19 = __sincosf_stret((-3.1416 - *(&v69 + 2)) * 0.5);
        v20 = vmulq_n_f32(xmmword_1000343C0, v19.__sinval);
        v20.i32[3] = LODWORD(v19.__cosval);
        *v21.i64 = sub_100026B40(v20);
        v22 = 0;
        v21.i32[3] = 0;
        HIDWORD(v23) = 0;
        v24.i32[3] = 0;
        v78 = v21;
        v79 = v23;
        v80 = v24;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v22 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(&v78 + v22 * 4))), v63, *&v78.f32[v22], 1), v61, *(&v78 + v22 * 4), 2);
          v22 += 4;
        }

        while (v22 != 12);
        v25 = 0;
        v78 = v82;
        v79 = v83;
        v80 = v84;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v25 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, COERCE_FLOAT(*(&v78 + v25 * 4))), v73, *&v78.f32[v25], 1), v71, *(&v78 + v25 * 4), 2);
          v25 += 4;
        }

        while (v25 != 12);
        AXMTMatrix4x4FromRotationAndTranslation();
        v26 = 0;
        v27 = matrix_identity_float4x4.columns[0];
        v78 = v28;
        v79 = v29;
        v80 = v30;
        v81 = v31;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        do
        {
          *(&v82 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v78 + v26))), xmmword_1000345E0, *&v78.f32[v26 / 4], 1), v68, *(&v78 + v26), 2), v67, *(&v78 + v26), 3);
          v26 += 16;
        }

        while (v26 != 64);
        v32 = 0;
        v33 = v82;
        v34 = v83;
        v35 = v84;
        v36 = v85;
        v78 = v27;
        v79 = xmmword_1000345E0;
        v80 = v68;
        v81 = v67;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        do
        {
          *(&v82 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v78 + v32))), v34, *&v78.f32[v32 / 4], 1), v35, *(&v78 + v32), 2), v36, *(&v78 + v32), 3);
          v32 += 16;
        }

        while (v32 != 64);
        return *v82.i64;
      }
    }

    else
    {
      v37 = AXSSLogForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10002930C();
      }
    }

    return *&v75;
  }

  return v6;
}

- (void)_calculatePoseWithRotation:(void *)a3 translation:(void *)a4
{
  v5 = a4;
  AXMTMatrix3x3FromArray(a3);
  AXMTVector3FromArray(v5);

  AXMTMatrix4x4FromRotationAndTranslation();
}

+ (void)_logIntrinsicsForInternalBuilds:(__n128)a3 withLogPrefix:(uint64_t)a4
{
  v6 = a6;
  if (qword_100054638 != -1)
  {
    sub_100029394();
  }

  if (byte_100054630 == 1)
  {
    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138414594;
      v12 = v6;
      v13 = 2048;
      v14 = a1.n128_f32[0];
      v15 = 2048;
      v16 = a2.n128_f32[0];
      v17 = 2048;
      v18 = a3.n128_f32[0];
      v19 = 2048;
      v20 = a1.n128_f32[1];
      v21 = 2048;
      v22 = a2.n128_f32[1];
      v23 = 2048;
      v24 = a3.n128_f32[1];
      v25 = 2048;
      v26 = a1.n128_f32[2];
      v27 = 2048;
      v28 = a2.n128_f32[2];
      v29 = 2048;
      v30 = a3.n128_f32[2];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ intrinsics: ((%f, %f, %f), (%f, %f, %f), (%f, %f, %f)", buf, 0x66u);
    }
  }
}

+ (CGPoint)_iOSReferenceFocalLengthFor3DPointProjection
{
  if (qword_100054650 != -1)
  {
    sub_1000293A8();
  }

  v2 = *&qword_100054640;
  v3 = *&qword_100054648;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_iOSReferencePrincipalPointFor3DPointProjection
{
  if (qword_100054668 != -1)
  {
    sub_1000293BC();
  }

  v2 = *&qword_100054658;
  v3 = *&qword_100054660;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (__n128)_projectZAxisVectorUsingRGBCameraDictionary:(__n128)a3 pose:(__n128)a4
{
  v8 = a7;
  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:sub_100025CDC()];
    v10 = AXMTMatrix3x3FromArray(v9).n128_u64[0];
    v47 = v11;
    v49 = *&v10;
    v45 = v12;

    [a1 _logIntrinsicsForInternalBuilds:@"Original FaceKit" withLogPrefix:{v49, v47, v45}];
    [a1 _iOSReferenceFocalLengthFor3DPointProjection];
    v14 = v13;
    v16 = v15;
    [a1 _iOSReferencePrincipalPointFor3DPointProjection];
    v17 = v14;
    v18 = v17;
    v19 = v16;
    LODWORD(v20) = 0;
    *(&v20 + 1) = v19;
    v48 = *&v20;
    v50 = LODWORD(v18);
    *&v21 = v21;
    *&v22 = v22;
    __asm { FMOV            V2.4S, #1.0 }

    _Q2.i64[0] = __PAIR64__(LODWORD(v22), LODWORD(v21));
    v46 = _Q2;
    [a1 _logIntrinsicsForInternalBuilds:@"targetIntrinsics" withLogPrefix:{COERCE_DOUBLE(LODWORD(v18)), v20}];
    v28 = [v8 objectForKeyedSubscript:sub_100025BE8()];
    v29 = [v28 objectForKeyedSubscript:sub_100025A00()];
    AXMTMatrix3x3FromArray(v29);

    v30 = [v8 objectForKeyedSubscript:sub_100025BE8()];
    v31 = [v30 objectForKeyedSubscript:sub_100025AF4()];
    AXMTVector3FromArray(v31);

    AXMTMatrix4x4FromRotationAndTranslation();
    v32 = 0;
    v56 = v33;
    v57 = v34;
    v58 = v35;
    v59 = v36;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    do
    {
      *(&v60 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v56 + v32))), v48, v56.n128_u64[v32 / 8], 1), v46, *(&v56 + v32), 2), 0, *(&v56 + v32), 3);
      v32 += 16;
    }

    while (v32 != 64);
    v37 = 0;
    v38 = v60;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v56 = a2;
    v57 = a3;
    v58 = a4;
    v59 = a5;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    do
    {
      *(&v60 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v56 + v37))), v39, v56.n128_u64[v37 / 8], 1), v40, *(&v56 + v37), 2), v41, *(&v56 + v37), 3);
      v37 += 16;
    }

    while (v37 != 64);
    v42 = vaddq_f32(v63, vaddq_f32(v62, vmlaq_f32(vmulq_f32(v60, 0), 0, v61)));
    v43 = vcvtq_f64_f32(vdiv_f32(*v42.i8, vdup_laneq_s32(v42, 2)));
  }

  else
  {
    v43 = NSZeroPoint;
  }

  v55 = v43;

  return v55;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end