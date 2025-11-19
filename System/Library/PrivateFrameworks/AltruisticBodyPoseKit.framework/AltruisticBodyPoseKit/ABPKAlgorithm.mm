@interface ABPKAlgorithm
- (ABPKAlgorithm)initWithParams:(id)a3;
- (int)runWithInput:(id)a3 andGetOutput:(id)a4;
@end

@implementation ABPKAlgorithm

- (ABPKAlgorithm)initWithParams:(id)a3
{
  v5 = a3;
  [(ABPKAlgorithm *)self _startInitABPKSignpost];
  v24.receiver = self;
  v24.super_class = ABPKAlgorithm;
  v6 = [(ABPKAlgorithm *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algParams, a3);
    v8 = [v5 config2DDetection];
    v9 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:v8 use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
    poseEstimation2D = v7->_poseEstimation2D;
    v7->_poseEstimation2D = v9;

    if (v7->_poseEstimation2D)
    {
      v11 = objc_alloc_init(ABPK3DLifting);
      liftingAlgorithm = v7->_liftingAlgorithm;
      v7->_liftingAlgorithm = v11;

      if (v7->_liftingAlgorithm)
      {
        v13 = objc_alloc_init(ABPKCameraRegistration);
        bodyRegistration = v7->_bodyRegistration;
        v7->_bodyRegistration = v13;

        if (v7->_bodyRegistration)
        {
          v15 = objc_alloc_init(ABPKDepthBasedScaleEstimation);
          scaleEstimation = v7->_scaleEstimation;
          v7->_scaleEstimation = v15;

          if (v7->_scaleEstimation)
          {
            v17 = objc_alloc_init(ABPKRetargeting);
            retargeting = v7->_retargeting;
            v7->_retargeting = v17;

            if (v7->_retargeting)
            {
              v7->_previousValidScale = -1.0;
              [(ABPKAlgorithm *)v7 _endInitABPKSignpost];
              v19 = v7;
LABEL_21:

              goto LABEL_22;
            }

            v20 = __ABPKLogSharedInstance();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v23[0] = 0;
              v21 = " Failed to initialize the retargeting module. ";
              goto LABEL_19;
            }

LABEL_20:

            v19 = 0;
            goto LABEL_21;
          }

          v20 = __ABPKLogSharedInstance();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v23[0] = 0;
          v21 = " Failed to initialize the Depth-based scale estimation module. ";
        }

        else
        {
          v20 = __ABPKLogSharedInstance();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v23[0] = 0;
          v21 = " Failed to initialize the Body-Camera registration module. ";
        }
      }

      else
      {
        v20 = __ABPKLogSharedInstance();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v23[0] = 0;
        v21 = " Failed to initialize the 3D lifting algorithm. ";
      }
    }

    else
    {
      v20 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v23[0] = 0;
      v21 = " Failed to initialize 2D Pose Estimation Algorithm. ";
    }

LABEL_19:
    _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_ERROR, v21, v23, 2u);
    goto LABEL_20;
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (int)runWithInput:(id)a3 andGetOutput:(id)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v111 = a4;
  [v6 timestamp];
  [(ABPKAlgorithm *)self _startABPKRunWithInputSignpostWithTimestamp:?];
  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", &buf, 2u);
  }

  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", &buf, 2u);
  }

  v9 = [ABPKMLImageData alloc];
  v10 = [v6 image];
  [v6 timestamp];
  v12 = v11;
  v13 = [v6 imagePreProcessingParams];
  v110 = [(ABPKMLImageData *)v9 initWithPixelBuffer:v10 timestamp:3 abpkDeviceOrientation:v13 preprocessingParameters:v12];

  if ([(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v110 rotationOfResultTensor:0]!= -6661)
  {
    poseEstimation2D = self->_poseEstimation2D;
    v17 = [v111 rawDetection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)poseEstimation2D getRawTrackedHumanSkeleton:v17];

    v18 = self->_poseEstimation2D;
    v19 = [v111 rawDetection2dSkeletonABPKArray];
    [(ABPK2DPoseEstimation *)v18 getRawTrackedHumanSkeletonVector:v19];

    v20 = self->_poseEstimation2D;
    v21 = [v111 detection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)v20 getTrackedHumanSkeleton:v21];

    v14 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanForLiftingSkeleton:v14];
    v22 = [v111 algState];
    [v22 setDetection2d:1];

    if ([(ABPK2dSkeleton *)v14 missingJoints])
    {
      v23 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " \t\t Extrapolation for missing joints failed. Cannot run lifting network. ", &buf, 2u);
      }

      v15 = -6667;
      goto LABEL_36;
    }

    if (self->_exitPoint == 2)
    {
      v23 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint2DDetectionPostProcessing ", &buf, 2u);
      }

      v15 = 0;
      goto LABEL_36;
    }

    v24 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " Performing 2d-3d lifting ", &buf, 2u);
    }

    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t Pre-processing data ", &buf, 2u);
    }

    v26 = [ABPK2D3DLiftingData alloc];
    v27 = [(ABPK2dSkeleton *)v14 normalizedKeypoints2d];
    v28 = [(ABPK2dSkeleton *)v14 skeletonDefinition];
    v109 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v26, "initWithJoints:numberOfJoints:", v27, [v28 jointCount]);

    v29 = [ABPK2DDetectionResult alloc];
    v30 = [v111 detection2dSkeletonABPK];
    v31 = [v30 normalizedKeypoints2d];
    v32 = [v111 detection2dSkeletonABPK];
    v33 = [v32 visibility];
    v34 = [v111 detection2dSkeletonABPK];
    v35 = [v34 skeletonDefinition];
    v36 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v29, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v31, v33, [v35 jointCount], 0, v109, 0.0, 0.0, 1.0, 1.0);

    if (!v109)
    {
      v39 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        v40 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPreprocessing ";
LABEL_33:
        _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, v40, &buf, 2u);
      }

LABEL_34:
      v15 = 0;
      goto LABEL_35;
    }

    v37 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v37, OS_LOG_TYPE_DEBUG, " \t Running the lifting model ", &buf, 2u);
    }

    liftingAlgorithm = self->_liftingAlgorithm;
    [v6 timestamp];
    if ([(ABPK3DLifting *)liftingAlgorithm runLiftingModelWithData:v36 atTimestamp:?])
    {
      v39 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", &buf, 2u);
      }

LABEL_27:
      v15 = -6662;
LABEL_35:

      v23 = v109;
LABEL_36:

      goto LABEL_37;
    }

    if (self->_exitPoint == 4)
    {
      v39 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        v40 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v43 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", &buf, 2u);
    }

    v39 = [(ABPK3DLifting *)self->_liftingAlgorithm getLiftingResults];
    if (!v39)
    {
      goto LABEL_27;
    }

    v44 = [v111 algState];
    [v44 setLifting3d:1];

    v45 = [(ABPK3DLifting *)self->_liftingAlgorithm get3DLiftingResultsAsModelPoses];
    v46 = [v111 liftingSkeletonABPK];
    [v46 setModelPoses:v45 andUpdateLocalPoses:1];

    if (self->_exitPoint == 5)
    {
      v47 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v47, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPostProcessing ", &buf, 2u);
      }
    }

    else
    {
      v48 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " Performing camera registration ", &buf, 2u);
      }

      bodyRegistration = self->_bodyRegistration;
      [v6 imageCameraIntrinsics];
      v105 = v51;
      v107 = v50;
      v103 = v52;
      [v6 imageResolution];
      v47 = [(ABPKCameraRegistration *)bodyRegistration runCameraRegistrationWithImageIntrinsics:v39 imageResolution:v107 liftingResult:v105, v103, v53, v54];
      if (([v47 success]& 1) == 0)
      {
        v15 = -6664;
LABEL_70:

        goto LABEL_35;
      }

      v55 = [v111 algState];
      [v55 setRegistration:1];

      v56 = [v111 liftingSkeletonABPK];
      [v47 cameraFromBodyPose];
      [v56 setCameraRootTransform:?];

      v57 = [v111 registered2dSkeletonABPK];
      v58 = [v47 joints2d];
      [(ABPKAlgorithmParams *)self->_algParams regImageResolution];
      [v57 setKeypoints2d:v58 withImageRes:?];

      if (self->_exitPoint == 6)
      {
        v59 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v59, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointCameraRegistration ", &buf, 2u);
        }
      }

      else
      {
        [v6 timestamp];
        [(ABPKAlgorithm *)self _startScaleEstimationSignpostWithTimestamp:?];
        if (![v6 isDepthDataValid])
        {
          goto LABEL_55;
        }

        if (![v6 depthMap])
        {
          goto LABEL_55;
        }

        if (![v6 depthConfidenceBuffer])
        {
          goto LABEL_55;
        }

        scaleEstimation = self->_scaleEstimation;
        v61 = [v6 depthMap];
        v62 = [v6 depthConfidenceBuffer];
        [v6 timestamp];
        v64 = v63;
        [v6 imageResolution];
        v66 = v65;
        v68 = v67;
        [v6 imageCameraIntrinsics];
        v106 = v70;
        v108 = v69;
        v104 = v71;
        [v47 cameraFromBodyPose];
        [(ABPKDepthBasedScaleEstimation *)scaleEstimation estimateScaleFromDepthData:v61 depthConfidenceData:v62 timestamp:v39 imageResolution:v64 imageIntrinsics:v66 cameraFromBodyPose:v68 liftingResult:v108, v106, v104, v72, v73, v74, v75, v76, v77, v78, v79];
        previousValidScale = v80;
        if (v80 != -1.0)
        {
          self->_previousValidScale = v80;
        }

        else
        {
LABEL_55:
          previousValidScale = self->_previousValidScale;
        }

        v82 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = previousValidScale;
          _os_log_impl(&dword_23EDDC000, v82, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", &buf, 0xCu);
        }

        *&v83 = previousValidScale;
        [v39 setEstimatedScale:v83];
        v84 = [v111 liftingSkeletonABPK];
        *&v85 = previousValidScale;
        [v84 setEstimatedScale:v85];

        [v6 timestamp];
        [(ABPKAlgorithm *)self _endScaleEstimationSignpostWithTimestamp:?];
        v86 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v86, OS_LOG_TYPE_DEBUG, " Performing retargeting ", &buf, 2u);
        }

        [v6 timestamp];
        [(ABPKAlgorithm *)self _startRetargettingSignpostWithTimestamp:?];
        v59 = [(ABPKRetargeting *)self->_retargeting processData:v39];
        v87 = [v111 algState];
        [v87 setRetargeting:1];

        v88 = [v59 jointModelTransforms];
        v89 = [v59 jointModelTransforms];
        v90 = [v59 jointTransformCount];
        buf = 0uLL;
        v118 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&buf, v88, v89 + (v90 << 6), (v89 + (v90 << 6) - v88) >> 6);
        v91 = [v59 jointLocalTransforms];
        v92 = [v59 jointLocalTransforms];
        v93 = [v59 jointTransformCount];
        __p = 0;
        v113 = 0;
        v114 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&__p, v91, v92 + (v93 << 6), (v92 + (v93 << 6) - v91) >> 6);
        v94 = [v111 retargetedSkeletonABPK];
        [v94 setModelPoses:buf andUpdateLocalPoses:0];

        v95 = [v111 retargetedSkeletonABPK];
        [v47 cameraFromBodyPose];
        [v95 setCameraRootTransform:?];

        v96 = [v111 retargetedSkeletonABPK];
        *&v97 = previousValidScale;
        [v96 setEstimatedScale:v97];

        [v6 timestamp];
        [(ABPKAlgorithm *)self _endRetargettingSignpostWithTimestamp:?];
        v98 = [v111 retargetedSkeletonABPK];
        [v98 computeHeight];
        v100 = v99;

        v101 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          *v115 = 134217984;
          v116 = v100;
          _os_log_impl(&dword_23EDDC000, v101, OS_LOG_TYPE_DEBUG, " skeletonHeight: %f ", v115, 0xCu);
        }

        v102 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          *v115 = 134217984;
          v116 = previousValidScale;
          _os_log_impl(&dword_23EDDC000, v102, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", v115, 0xCu);
        }

        [v6 timestamp];
        [(ABPKAlgorithm *)self _endABPKRunWithInputSignpostWithTimestamp:?];
        if (__p)
        {
          v113 = __p;
          operator delete(__p);
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }
      }
    }

    v15 = 0;
    goto LABEL_70;
  }

  v14 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, &v14->super, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", &buf, 2u);
  }

  v15 = -6661;
LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
  return v15;
}

@end