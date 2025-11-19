@interface AR3DSkeletonRegistrationTechnique
- (BOOL)_estimateCameraPoseFromMatchingImageData:(id)a3 to3DData:(id)a4 worldTrackingPose:(id)a5 pCameraFromBody:(id *)a6 depthData:(id)a7 pScaleOut:(float *)a8;
- (BOOL)isEqual:(id)a3;
- (float)_estimateScaleFromDepthData:(__n128)a3 imageData:(__n128)a4 cameraPoseFromBody:(__n128)a5 skeleton:(uint64_t)a6;
- (float)_estimateScaleFromJasperCloud:(double)a3 cameraPoseFromBody:(double)a4 skeleton:(double)a5;
- (id).cxx_construct;
- (id)processResultData:(id)a3 timestamp:(double)a4 context:(id)a5;
- (void)prepare:(BOOL)a3;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (void)resetState;
@end

@implementation AR3DSkeletonRegistrationTechnique

- (void)prepare:(BOOL)a3
{
  if (!self->_abpkRegistration)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698A920]);
    abpkRegistration = self->_abpkRegistration;
    self->_abpkRegistration = v4;
  }

  if (!self->_abpkScaleEstimation)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698A928]);
    abpkScaleEstimation = self->_abpkScaleEstimation;
    self->_abpkScaleEstimation = v6;
  }

  [(AR3DSkeletonRegistrationTechnique *)self resetState];
}

- (void)resetState
{
  self->_is_tracking = 0;
  self->_last_btr_poses_idx = -1;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrectionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (id)processResultData:(id)a3 timestamp:(double)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_11];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
  }

  currentWorldTrackingPose = self->_currentWorldTrackingPose;
  self->_currentWorldTrackingPose = v8;

  return v6;
}

uint64_t __73__AR3DSkeletonRegistrationTechnique_processResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *(MEMORY[0x1E69E9B18] + 16);
  v34 = *MEMORY[0x1E69E9B18];
  v35 = v7;
  v8 = *(MEMORY[0x1E69E9B18] + 48);
  v36 = *(MEMORY[0x1E69E9B18] + 32);
  v37 = v8;
  v33 = -1.0;
  v9 = [v6 imageData];
  [v9 timestamp];
  kdebug_trace();

  v10 = [v6 resultDataOfClass:objc_opt_class()];
  v11 = [v10 firstObject];

  v12 = [v6 resultDataOfClass:objc_opt_class()];
  v13 = [v12 firstObject];

  v14 = [v11 detectedSkeletons];
  v15 = [v14 firstObject];
  LODWORD(v16) = 981668463;
  v17 = [v15 createResultScaledByFactor:v16];

  v18 = _ARLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v41 = v20;
    v42 = 2048;
    v43 = self;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Estimating camera pose and scale", buf, 0x16u);
  }

  v21 = [v6 imageData];
  v22 = [(AR3DSkeletonRegistrationTechnique *)self _estimateCameraPoseFromMatchingImageData:v21 to3DData:v17 worldTrackingPose:self->_currentWorldTrackingPose pCameraFromBody:&v34 depthData:v13 pScaleOut:&v33];

  v23 = [v6 imageData];
  [v23 timestamp];
  kdebug_trace();

  v24 = _ARLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138543618;
    v41 = v26;
    v42 = 2048;
    v43 = self;
    _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating result", buf, 0x16u);
  }

  if (v22)
  {
    self->_last_detection_timestamp = a3;
    self->_is_tracking = 1;
    if (v33 > 0.0)
    {
      self->_estimatedScale = v33;
    }

    v27 = objc_opt_new();
    [v27 setTimestamp:a3];
    *&v28 = self->_estimatedScale;
    [v27 setEstimatedScaleFactor:v28];
    v29 = vmulq_n_f32(v37, self->_estimatedScale);
    v29.i32[3] = 1.0;
    v37 = v29;
    [v27 setVisionTransform:{*&v34, *&v35, *&v36}];
    v30 = [(ARTechnique *)self delegate];
    v39 = v27;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    [v30 technique:self didOutputResultData:v31 timestamp:v6 context:a3];
  }

  else
  {
    if (self->_is_tracking && a3 - self->_last_detection_timestamp > 1.0)
    {
      [(AR3DSkeletonRegistrationTechnique *)self resetState];
    }

    v27 = objc_opt_new();
    LODWORD(v32) = -1.0;
    [v27 setEstimatedScaleFactor:v32];
    [v27 setTimestamp:a3];
    v30 = [(ARTechnique *)self delegate];
    v38 = v27;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [v30 technique:self didOutputResultData:v31 timestamp:v6 context:a3];
  }
}

- (BOOL)_estimateCameraPoseFromMatchingImageData:(id)a3 to3DData:(id)a4 worldTrackingPose:(id)a5 pCameraFromBody:(id *)a6 depthData:(id)a7 pScaleOut:(float *)a8
{
  v113 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v19 = _ARLogTechnique();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing image data.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!v14)
  {
    v19 = _ARLogTechnique();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing lifted data.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    v19 = _ARLogTechnique();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing currentWorldTrackingPose", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (self->_is_tracking || ([v15 worldTrackingState], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "vioTrackingState"), v17, !v18))
  {
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    [v13 cameraIntrinsics];
    DWORD2(v107) = v26;
    DWORD2(v108) = v27;
    *&v107 = v28;
    *&v108 = v29;
    DWORD2(v109) = v30;
    *&v109 = v31;
    v32 = [v14 skeletonDetectionResult2D];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 liftingData];

      if (v34)
      {
        if (ARIsANEVersionEqualOrPriorToH12())
        {
          abpkRegistration = self->_abpkRegistration;
          [v13 imageResolution];
          v36 = v35;
          v38 = v37;
          v39 = [v33 liftingData];
          v40 = -[ABPKCameraRegistration estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:](abpkRegistration, "estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:", [v39 rotatedJoints], objc_msgSend(v14, "joints"), objc_msgSend(v14, "jointCount"), *&v107, *&v108, *&v109, v36, v38);
        }

        else
        {
          v100 = [v33 jointCount];
          v49 = [v33 liftingData];
          v50 = [v49 rotatedJoints];
          v51 = [v33 liftingData];
          v52 = [v51 rotatedJoints];
          memset(buf, 0, 24);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, v50, v52 + 8 * v100, (v52 + 8 * v100 - v50) >> 3);

          v53 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          while ([v33 jointCount] > v53)
          {
            if (!*([v33 jointTrackingStates] + 4 * v53))
            {
              *(*buf + 8 * v53) = _D8;
            }

            ++v53;
          }

          v59 = self->_abpkRegistration;
          [v13 imageResolution];
          v40 = -[ABPKCameraRegistration estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:](v59, "estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:", *buf, [v14 joints], objc_msgSend(v14, "jointCount"), *&v107, *&v108, *&v109, v60, v61);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        if (v40 && [v40 registrationValid])
        {
          [v40 cameraFromBodyPose];
          *a6 = v62;
          *(a6 + 1) = v63;
          *(a6 + 2) = v64;
          *(a6 + 3) = v65;
          if ([(AR3DSkeletonRegistrationTechnique *)self automaticSkeletonScaleEstimationEnabled])
          {
            v66 = [v15 worldTrackingState];
            v67 = [v66 vioTrackingState] == 0;

            if (v67)
            {
              self->_last_btr_poses_idx = (self->_last_btr_poses_idx + 1) % 5;
              [v40 cameraFromBodyPose];
              *buf = v71;
              *&buf[16] = v72;
              v111 = v73;
              v112 = v74;
              last_btr_poses_idx = self->_last_btr_poses_idx;
              [v13 timestamp];
              v77 = [v15 worldTrackingState];
              v78 = [v77 state];

              v79 = [v15 worldMappingStatus] != 3 && objc_msgSend(v15, "worldMappingStatus") != 2;
              if (v78 == 2 || v79)
              {
                [v15 timestamp];
                p_cam_from_vio = &self->_last_btr_poses.__elems_[0].cam_from_vio;
                v82 = 2520;
                while (vabdd_f64(*&p_cam_from_vio[1].m_data[1], v80) >= 0.0085)
                {
                  p_cam_from_vio = (p_cam_from_vio + 504);
                  v82 -= 504;
                  if (!v82)
                  {
                    goto LABEL_62;
                  }
                }

                [v15 visionCameraTransform];
                v83 = 0;
                v102[0] = v84;
                v102[1] = v85;
                v102[2] = v86;
                v102[3] = v87;
                v103 = xmmword_1C25C85D0;
                v104 = unk_1C25C85E0;
                v105 = xmmword_1C25C85F0;
                v106 = unk_1C25C8600;
                v88 = &v103;
                do
                {
                  for (i = 0; i != 4; ++i)
                  {
                    LODWORD(v88[i]) = *(&v102[i] + (v83 & 3));
                  }

                  ++v83;
                  v88 = (v88 + 4);
                }

                while (v83 != 3);
                v90 = v104;
                *p_cam_from_vio->m_data = v103;
                *&p_cam_from_vio->m_data[4] = v90;
                v91 = v106;
                *&p_cam_from_vio->m_data[8] = v105;
                *&p_cam_from_vio->m_data[12] = v91;
                [v15 timestamp];
                *&p_cam_from_vio[1].m_data[3] = v92;
                if (ARDeviceSupportsJasper())
                {
                  v93 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodytracking.useAppleDepthForScale"];
                  v94 = *a6;
                  v95 = *(a6 + 1);
                  v96 = *(a6 + 2);
                  v97 = *(a6 + 3);
                  if (v93)
                  {
                    [(AR3DSkeletonRegistrationTechnique *)self _estimateScaleFromDepthData:v16 imageData:v13 cameraPoseFromBody:v14 skeleton:*&v94, *&v95, *&v96, *&v97];
                  }

                  else
                  {
                    [(AR3DSkeletonRegistrationTechnique *)self _estimateScaleFromJasperCloud:v13 cameraPoseFromBody:v14 skeleton:*&v94, *&v95, *&v96, *&v97];
                  }
                }

                else
                {
                  *&v103 = 13;
                  arkit::btr::ScaleCorrection::EstimateScale(self->_scaler.__ptr_, &p_cam_from_vio[-7].m_data[7], &v103);
                }

                *a8 = v98;
              }
            }

            else
            {
              v68 = _ARLogTechnique();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                v69 = objc_opt_class();
                v70 = NSStringFromClass(v69);
                *buf = 138543618;
                *&buf[4] = v70;
                *&buf[12] = 2048;
                *&buf[14] = self;
                _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Scale estimation skip (tracking not nominal", buf, 0x16u);
              }
            }
          }

LABEL_62:
          v43 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        v40 = _ARLogTechnique();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing lifting data", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = _ARLogTechnique();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing 2D joints", buf, 0x16u);
      }
    }

    v43 = 0;
LABEL_42:

    goto LABEL_22;
  }

  v19 = _ARLogTechnique();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking state not nominal", buf, 0x16u);
  }

LABEL_21:

  v43 = 0;
LABEL_22:

  return v43;
}

- (float)_estimateScaleFromDepthData:(__n128)a3 imageData:(__n128)a4 cameraPoseFromBody:(__n128)a5 skeleton:(uint64_t)a6
{
  v12 = a7;
  v13 = a8;
  v14 = a9;
  v15 = 1.0;
  if ([a1 automaticSkeletonScaleEstimationEnabled])
  {
    v15 = -1.0;
    if (v12)
    {
      v16 = [v12 depthBuffer];
      if (v14)
      {
        if (v13 && v16)
        {
          v17 = objc_alloc(MEMORY[0x1E698A918]);
          v18 = [v14 joints];
          v19 = [v14 jointCount];
          v20 = [v14 skeletonDetectionResult2D];
          v21 = [v17 initWithJoints:v18 numberOfJoints:v19 referenceDetectionResult:v20];

          v22 = a1[474];
          v23 = [v12 depthBuffer];
          v24 = [v12 confidenceBuffer];
          [v13 timestamp];
          v26 = v25;
          [v13 imageResolution];
          v28 = v27;
          v30 = v29;
          [v13 cameraIntrinsics];
          [v22 estimateScaleFromDepthData:v23 depthConfidenceData:v24 timestamp:v21 imageResolution:v26 imageIntrinsics:v28 cameraFromBodyPose:v30 liftingResult:{v31, v32, v33, *&a2, *&a3, *&a4, *&a5}];
          v15 = v34;
        }
      }
    }
  }

  return v15;
}

- (float)_estimateScaleFromJasperCloud:(double)a3 cameraPoseFromBody:(double)a4 skeleton:(double)a5
{
  v10 = a7;
  v11 = a8;
  v12 = -1.0;
  if (v10)
  {
    v13 = [v10 pointCloud];
    if (v13)
    {
      v14 = [v10 pointCloud];
      v15 = [v14 depthPointCloud];

      if (v11)
      {
        if (v15)
        {
          v16 = objc_alloc(MEMORY[0x1E698A918]);
          v17 = [v11 joints];
          v18 = [v11 jointCount];
          v19 = [v11 skeletonDetectionResult2D];
          v20 = [v16 initWithJoints:v17 numberOfJoints:v18 referenceDetectionResult:v19];

          v21 = *(a1 + 3792);
          v22 = [v10 pointCloud];
          v23 = [v22 depthPointCloud];
          [v21 estimateScaleFromJasperCloud:v23 cameraFromBodyPose:v20 liftingResult:{a2, a3, a4, a5}];
          v12 = v24;
        }
      }
    }
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AR3DSkeletonRegistrationTechnique;
  if ([(ARTechnique *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = [(AR3DSkeletonRegistrationTechnique *)self automaticSkeletonScaleEstimationEnabled];
    v7 = v6 ^ [v5 automaticSkeletonScaleEstimationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id).cxx_construct
{
  self->_scaler.__ptr_ = 0;
  self->_scaler.__cntrl_ = 0;
  p_last_btr_poses = &self->_last_btr_poses;
  v4 = 2520;
  do
  {
    p_last_btr_poses->__elems_[0].intrinsics.m_data[8] = 0.0;
    *p_last_btr_poses->__elems_[0].intrinsics.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].intrinsics.m_data[4] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[40] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[44] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[32] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[36] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[24] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[28] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[16] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[20] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[8] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[12] = 0uLL;
    *p_last_btr_poses->__elems_[0].lifted_points.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[4] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[24] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[28] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[16] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[20] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[8] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[12] = 0uLL;
    *p_last_btr_poses->__elems_[0].image_points.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[4] = 0uLL;
    *p_last_btr_poses->__elems_[0].cam_from_obj.m_data = xmmword_1C25C85D0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[4] = unk_1C25C85E0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[8] = xmmword_1C25C85F0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[12] = unk_1C25C8600;
    p_cam_from_vio = &p_last_btr_poses->__elems_[0].cam_from_vio;
    *p_last_btr_poses->__elems_[0].cam_from_vio.m_data = xmmword_1C25C85D0;
    *&p_last_btr_poses->__elems_[0].cam_from_vio.m_data[4] = unk_1C25C85E0;
    p_last_btr_poses->__elems_[0].timestamp_obj = 0.0;
    p_last_btr_poses->__elems_[0].timestamp_vio = 0.0;
    p_last_btr_poses = (p_last_btr_poses + 504);
    *&p_cam_from_vio->m_data[8] = xmmword_1C25C85F0;
    *&p_cam_from_vio->m_data[12] = unk_1C25C8600;
    v4 -= 504;
  }

  while (v4);
  *&self->_dumps_dir.__rep_.__l.__size_ = 0uLL;
  self->_dumps_dir.__rep_.__l.__data_ = 0;
  p_btrf = &self->_btrf;
  self->_btrf.__loc_ = 0;
  v7 = (MEMORY[0x1E69E5530] + 64);
  self->_btrf._vptr$ios_base = (MEMORY[0x1E69E5530] + 64);
  v8 = *(MEMORY[0x1E69E54D0] + 16);
  v9 = *(MEMORY[0x1E69E54D0] + 8);
  self->_btrf._vptr$basic_ostream = v9;
  v10 = v8;
  *(*(v9 - 3) + p_btrf) = v8;
  v11 = (p_btrf + *(p_btrf->_vptr$basic_ostream - 3));
  std::ios_base::init(v11, &self->_btrf.__sb_);
  v12 = MEMORY[0x1E69E5530] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  p_btrf->_vptr$basic_ostream = v12;
  self->_btrf._vptr$ios_base = v7;
  MEMORY[0x1C691A5B0](&self->_btrf.__sb_);
  self->_btrts.__loc_ = 0;
  v13 = (MEMORY[0x1E69E5530] + 64);
  self->_btrts._vptr$ios_base = (MEMORY[0x1E69E5530] + 64);
  self->_btrts._vptr$basic_ostream = v9;
  *(&self->_btrts._vptr$basic_ostream + *(v9 - 3)) = v10;
  v14 = (&self->_btrts + *(self->_btrts._vptr$basic_ostream - 3));
  std::ios_base::init(v14, &self->_btrts.__sb_);
  v15 = (MEMORY[0x1E69E5530] + 24);
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  self->_btrts._vptr$basic_ostream = v15;
  self->_btrts._vptr$ios_base = v13;
  MEMORY[0x1C691A5B0](&self->_btrts.__sb_);
  return self;
}

@end