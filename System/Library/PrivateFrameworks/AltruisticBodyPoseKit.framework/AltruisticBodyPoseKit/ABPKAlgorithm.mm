@interface ABPKAlgorithm
- (ABPKAlgorithm)initWithParams:(id)params;
- (int)runWithInput:(id)input andGetOutput:(id)output;
@end

@implementation ABPKAlgorithm

- (ABPKAlgorithm)initWithParams:(id)params
{
  paramsCopy = params;
  [(ABPKAlgorithm *)self _startInitABPKSignpost];
  v24.receiver = self;
  v24.super_class = ABPKAlgorithm;
  v6 = [(ABPKAlgorithm *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algParams, params);
    config2DDetection = [paramsCopy config2DDetection];
    v9 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:config2DDetection use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
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

- (int)runWithInput:(id)input andGetOutput:(id)output
{
  v119 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  [inputCopy timestamp];
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
  image = [inputCopy image];
  [inputCopy timestamp];
  v12 = v11;
  imagePreProcessingParams = [inputCopy imagePreProcessingParams];
  v110 = [(ABPKMLImageData *)v9 initWithPixelBuffer:image timestamp:3 abpkDeviceOrientation:imagePreProcessingParams preprocessingParameters:v12];

  if ([(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v110 rotationOfResultTensor:0]!= -6661)
  {
    poseEstimation2D = self->_poseEstimation2D;
    rawDetection2dSkeletonABPK = [outputCopy rawDetection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)poseEstimation2D getRawTrackedHumanSkeleton:rawDetection2dSkeletonABPK];

    v18 = self->_poseEstimation2D;
    rawDetection2dSkeletonABPKArray = [outputCopy rawDetection2dSkeletonABPKArray];
    [(ABPK2DPoseEstimation *)v18 getRawTrackedHumanSkeletonVector:rawDetection2dSkeletonABPKArray];

    v20 = self->_poseEstimation2D;
    detection2dSkeletonABPK = [outputCopy detection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)v20 getTrackedHumanSkeleton:detection2dSkeletonABPK];

    v14 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanForLiftingSkeleton:v14];
    algState = [outputCopy algState];
    [algState setDetection2d:1];

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
    normalizedKeypoints2d = [(ABPK2dSkeleton *)v14 normalizedKeypoints2d];
    skeletonDefinition = [(ABPK2dSkeleton *)v14 skeletonDefinition];
    v109 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v26, "initWithJoints:numberOfJoints:", normalizedKeypoints2d, [skeletonDefinition jointCount]);

    v29 = [ABPK2DDetectionResult alloc];
    detection2dSkeletonABPK2 = [outputCopy detection2dSkeletonABPK];
    normalizedKeypoints2d2 = [detection2dSkeletonABPK2 normalizedKeypoints2d];
    detection2dSkeletonABPK3 = [outputCopy detection2dSkeletonABPK];
    visibility = [detection2dSkeletonABPK3 visibility];
    detection2dSkeletonABPK4 = [outputCopy detection2dSkeletonABPK];
    skeletonDefinition2 = [detection2dSkeletonABPK4 skeletonDefinition];
    v36 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v29, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", normalizedKeypoints2d2, visibility, [skeletonDefinition2 jointCount], 0, v109, 0.0, 0.0, 1.0, 1.0);

    if (!v109)
    {
      getLiftingResults = __ABPKLogSharedInstance();
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        v40 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPreprocessing ";
LABEL_33:
        _os_log_impl(&dword_23EDDC000, getLiftingResults, OS_LOG_TYPE_DEBUG, v40, &buf, 2u);
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
    [inputCopy timestamp];
    if ([(ABPK3DLifting *)liftingAlgorithm runLiftingModelWithData:v36 atTimestamp:?])
    {
      getLiftingResults = __ABPKLogSharedInstance();
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, getLiftingResults, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", &buf, 2u);
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
      getLiftingResults = __ABPKLogSharedInstance();
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
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

    getLiftingResults = [(ABPK3DLifting *)self->_liftingAlgorithm getLiftingResults];
    if (!getLiftingResults)
    {
      goto LABEL_27;
    }

    algState2 = [outputCopy algState];
    [algState2 setLifting3d:1];

    get3DLiftingResultsAsModelPoses = [(ABPK3DLifting *)self->_liftingAlgorithm get3DLiftingResultsAsModelPoses];
    liftingSkeletonABPK = [outputCopy liftingSkeletonABPK];
    [liftingSkeletonABPK setModelPoses:get3DLiftingResultsAsModelPoses andUpdateLocalPoses:1];

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
      [inputCopy imageCameraIntrinsics];
      v105 = v51;
      v107 = v50;
      v103 = v52;
      [inputCopy imageResolution];
      v47 = [(ABPKCameraRegistration *)bodyRegistration runCameraRegistrationWithImageIntrinsics:getLiftingResults imageResolution:v107 liftingResult:v105, v103, v53, v54];
      if (([v47 success]& 1) == 0)
      {
        v15 = -6664;
LABEL_70:

        goto LABEL_35;
      }

      algState3 = [outputCopy algState];
      [algState3 setRegistration:1];

      liftingSkeletonABPK2 = [outputCopy liftingSkeletonABPK];
      [v47 cameraFromBodyPose];
      [liftingSkeletonABPK2 setCameraRootTransform:?];

      registered2dSkeletonABPK = [outputCopy registered2dSkeletonABPK];
      joints2d = [v47 joints2d];
      [(ABPKAlgorithmParams *)self->_algParams regImageResolution];
      [registered2dSkeletonABPK setKeypoints2d:joints2d withImageRes:?];

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
        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _startScaleEstimationSignpostWithTimestamp:?];
        if (![inputCopy isDepthDataValid])
        {
          goto LABEL_55;
        }

        if (![inputCopy depthMap])
        {
          goto LABEL_55;
        }

        if (![inputCopy depthConfidenceBuffer])
        {
          goto LABEL_55;
        }

        scaleEstimation = self->_scaleEstimation;
        depthMap = [inputCopy depthMap];
        depthConfidenceBuffer = [inputCopy depthConfidenceBuffer];
        [inputCopy timestamp];
        v64 = v63;
        [inputCopy imageResolution];
        v66 = v65;
        v68 = v67;
        [inputCopy imageCameraIntrinsics];
        v106 = v70;
        v108 = v69;
        v104 = v71;
        [v47 cameraFromBodyPose];
        [(ABPKDepthBasedScaleEstimation *)scaleEstimation estimateScaleFromDepthData:depthMap depthConfidenceData:depthConfidenceBuffer timestamp:getLiftingResults imageResolution:v64 imageIntrinsics:v66 cameraFromBodyPose:v68 liftingResult:v108, v106, v104, v72, v73, v74, v75, v76, v77, v78, v79];
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
        [getLiftingResults setEstimatedScale:v83];
        liftingSkeletonABPK3 = [outputCopy liftingSkeletonABPK];
        *&v85 = previousValidScale;
        [liftingSkeletonABPK3 setEstimatedScale:v85];

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _endScaleEstimationSignpostWithTimestamp:?];
        v86 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v86, OS_LOG_TYPE_DEBUG, " Performing retargeting ", &buf, 2u);
        }

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _startRetargettingSignpostWithTimestamp:?];
        v59 = [(ABPKRetargeting *)self->_retargeting processData:getLiftingResults];
        algState4 = [outputCopy algState];
        [algState4 setRetargeting:1];

        jointModelTransforms = [v59 jointModelTransforms];
        jointModelTransforms2 = [v59 jointModelTransforms];
        jointTransformCount = [v59 jointTransformCount];
        buf = 0uLL;
        v118 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&buf, jointModelTransforms, jointModelTransforms2 + (jointTransformCount << 6), (jointModelTransforms2 + (jointTransformCount << 6) - jointModelTransforms) >> 6);
        jointLocalTransforms = [v59 jointLocalTransforms];
        jointLocalTransforms2 = [v59 jointLocalTransforms];
        jointTransformCount2 = [v59 jointTransformCount];
        __p = 0;
        v113 = 0;
        v114 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&__p, jointLocalTransforms, jointLocalTransforms2 + (jointTransformCount2 << 6), (jointLocalTransforms2 + (jointTransformCount2 << 6) - jointLocalTransforms) >> 6);
        retargetedSkeletonABPK = [outputCopy retargetedSkeletonABPK];
        [retargetedSkeletonABPK setModelPoses:buf andUpdateLocalPoses:0];

        retargetedSkeletonABPK2 = [outputCopy retargetedSkeletonABPK];
        [v47 cameraFromBodyPose];
        [retargetedSkeletonABPK2 setCameraRootTransform:?];

        retargetedSkeletonABPK3 = [outputCopy retargetedSkeletonABPK];
        *&v97 = previousValidScale;
        [retargetedSkeletonABPK3 setEstimatedScale:v97];

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _endRetargettingSignpostWithTimestamp:?];
        retargetedSkeletonABPK4 = [outputCopy retargetedSkeletonABPK];
        [retargetedSkeletonABPK4 computeHeight];
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

        [inputCopy timestamp];
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