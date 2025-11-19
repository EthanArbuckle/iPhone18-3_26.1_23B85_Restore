@interface ABPKPoseEstimationPipeline
- (ABPKPoseEstimationPipeline)init;
- (BOOL)initAlgorithmModules;
- (int)runABPKPoseEstimationWithInputData:(id)a3 andGetOutput:(id)a4;
- (void)computeRootTransforms:(float32x4_t)a3 withCameraExtrinsics:(float32x4_t)a4 withVioPose:(uint64_t)a5 withVioPoseValidity:(uint64_t)a6;
- (void)dealloc;
- (void)initializeOutput;
- (void)runABPKAlgorithmWithInputData:(id)a3 andGetOutput:(id)a4;
- (void)saveInputData:(id)a3 andOutputData:(id)a4 ToDir:(id)a5 withFileNamePrefix:(id)a6;
@end

@implementation ABPKPoseEstimationPipeline

- (ABPKPoseEstimationPipeline)init
{
  v11.receiver = self;
  v11.super_class = ABPKPoseEstimationPipeline;
  v2 = [(ABPKPoseEstimationPipeline *)&v11 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v2->_exitPoint = 7;
  v4 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:1];
  config2D = v3->_config2D;
  v3->_config2D = v4;

  if (!v3->_config2D)
  {
    v7 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      v8 = " Failed to initialize config for 2D Detection module ";
LABEL_9:
      _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, v8, v10, 2u);
    }

LABEL_10:

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v3->_deviceANEVersionPriorOrEqualToH12 = determineDeviceANEVersionPriorOrEqualToH12();
  v3->_useLSTM3D = 1;
  if (![(ABPKPoseEstimationPipeline *)v3 initAlgorithmModules])
  {
    v7 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      v8 = " Failed to initialize algorithm modules ";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  [(ABPKPoseEstimationPipeline *)v3 initializeOutput];
  v3->_previousValidScale = -1.0;
  v3->_consistent2DSkeletonMissing = 0;
  v6 = v3;
LABEL_12:

  return v6;
}

- (BOOL)initAlgorithmModules
{
  [(ABPKPoseEstimationPipeline *)self _startInitABPKSignpost];
  v3 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:self->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = self->_poseEstimation2D;
  self->_poseEstimation2D = v3;

  if (self->_poseEstimation2D)
  {
    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      v5 = objc_alloc_init(ABPK3DLifting);
      liftingAlgorithm = self->_liftingAlgorithm;
      self->_liftingAlgorithm = v5;

      if (!self->_liftingAlgorithm)
      {
        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v26 = 0;
          v8 = " Failed to initialize the 3D lifting algorithm. ";
          v9 = &v26;
LABEL_25:
          _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else if (self->_useLSTM3D)
    {
      v10 = objc_alloc_init(ABPK3DLiftingLSTM);
      liftingAlgorithmLSTM = self->_liftingAlgorithmLSTM;
      self->_liftingAlgorithmLSTM = v10;

      if (!self->_liftingAlgorithmLSTM)
      {
        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v25 = 0;
          v8 = " Failed to initialize the new 3D lifting LSTM algorithm. ";
          v9 = &v25;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v12 = objc_alloc_init(ABPK3DLiftingSequence);
      liftingAlgorithmSequence = self->_liftingAlgorithmSequence;
      self->_liftingAlgorithmSequence = v12;

      if (!self->_liftingAlgorithmSequence)
      {
        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v24 = 0;
          v8 = " Failed to initialize the new 3D lifting sequence algorithm. ";
          v9 = &v24;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    v14 = objc_alloc_init(ABPKCameraRegistration);
    bodyRegistration = self->_bodyRegistration;
    self->_bodyRegistration = v14;

    if (self->_bodyRegistration)
    {
      v16 = objc_alloc_init(ABPKDepthBasedScaleEstimation);
      scaleEstimation = self->_scaleEstimation;
      self->_scaleEstimation = v16;

      if (self->_scaleEstimation)
      {
        v18 = objc_alloc_init(ABPKRetargeting);
        retargeting = self->_retargeting;
        self->_retargeting = v18;

        if (self->_retargeting)
        {
          [(ABPKPoseEstimationPipeline *)self _endInitABPKSignpost];
          return 1;
        }

        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v21 = 0;
          v8 = " Failed to initialize the retargeting module. ";
          v9 = &v21;
          goto LABEL_25;
        }
      }

      else
      {
        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v22 = 0;
          v8 = " Failed to initialize the Depth-based scale estimation module. ";
          v9 = &v22;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v7 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v23 = 0;
        v8 = " Failed to initialize the Body-Camera registration module. ";
        v9 = &v23;
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v27 = 0;
    v8 = " Failed to initialize 2D Pose Estimation Algorithm. ";
    v9 = &v27;
    goto LABEL_25;
  }

LABEL_26:

  return 0;
}

- (void)initializeOutput
{
  [(ABPKPoseEstimationPipeline *)self _startInitABPKOutputSignpost];
  v3 = [[ABPK2dSkeleton alloc] initWithType:0];
  rawDetection2dSkeleton = self->_rawDetection2dSkeleton;
  self->_rawDetection2dSkeleton = v3;

  v5 = [[ABPK2dSkeleton alloc] initWithType:0];
  detection2dSkeleton = self->_detection2dSkeleton;
  self->_detection2dSkeleton = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rawDetection2dSkeletonArray = self->_rawDetection2dSkeletonArray;
  self->_rawDetection2dSkeletonArray = v7;

  v9 = [[ABPKSkeleton alloc] initWithType:3];
  liftingSkeleton = self->_liftingSkeleton;
  self->_liftingSkeleton = v9;

  v11 = [[ABPK2dSkeleton alloc] initWithType:2];
  registered2dSkeleton = self->_registered2dSkeleton;
  self->_registered2dSkeleton = v11;

  v13 = [[ABPKSkeleton alloc] initWithType:4];
  retargetedSkeleton = self->_retargetedSkeleton;
  self->_retargetedSkeleton = v13;

  [(ABPKPoseEstimationPipeline *)self _endInitABPKOutputSignpost];
}

- (void)dealloc
{
  mlImage = self->_mlImage;
  if (mlImage)
  {
    CVPixelBufferRelease(mlImage);
  }

  v4.receiver = self;
  v4.super_class = ABPKPoseEstimationPipeline;
  [(ABPKPoseEstimationPipeline *)&v4 dealloc];
}

- (void)runABPKAlgorithmWithInputData:(id)a3 andGetOutput:(id)a4
{
  v23 = a3;
  v6 = a4;
  [(ABPKPoseEstimationPipeline *)self _startExecuteAlgorithmSignpost];
  +[ABPKTime nowInSeconds];
  *&v7 = v7;
  [v6 setTimeABPKAlgorithmStart:v7];
  v8 = objc_alloc_init(ABPKAlgorithmState);
  [v6 setAlgState:v8];

  [v23 timestamp];
  [v6 setTimestamp:?];
  [v6 setAlgorithmReturnCode:{-[ABPKPoseEstimationPipeline runABPKPoseEstimationWithInputData:andGetOutput:](self, "runABPKPoseEstimationWithInputData:andGetOutput:", v23, v6)}];
  [v6 setRawDetection2dSkeletonABPK:self->_rawDetection2dSkeleton];
  [v6 setRawDetection2dSkeletonABPKArray:self->_rawDetection2dSkeletonArray];
  [v6 setDetection2dSkeletonABPK:self->_detection2dSkeleton];
  [v6 setLiftingSkeletonABPK:self->_liftingSkeleton];
  [v6 setRegistered2dSkeletonABPK:self->_registered2dSkeleton];
  [v6 setRetargetedSkeletonABPK:self->_retargetedSkeleton];
  v9 = [v23 cameraParams];
  [v9 extrinsics];
  v21 = v11;
  v22 = v10;
  v19 = v13;
  v20 = v12;
  [v23 vioPose];
  -[ABPKPoseEstimationPipeline computeRootTransforms:withCameraExtrinsics:withVioPose:withVioPoseValidity:](self, "computeRootTransforms:withCameraExtrinsics:withVioPose:withVioPoseValidity:", v6, [v23 isVioPoseValid], v22, v21, v20, v19, v14, v15, v16, v17);

  +[ABPKTime nowInSeconds];
  *&v18 = v18;
  [v6 setTimeABPKAlgorithmFinished:v18];
  [(ABPKPoseEstimationPipeline *)self _endExecuteAlgorithmSignpost];
}

- (int)runABPKPoseEstimationWithInputData:(id)a3 andGetOutput:(id)a4
{
  v202 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Width = CVPixelBufferGetWidth([v6 image]);
  Height = CVPixelBufferGetHeight([v6 image]);
  v10 = __ABPKLogSharedInstance();
  v11 = Width;
  v12 = Height;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " Sensor image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  v13 = [v6 cameraParams];
  v14 = [v13 deviceOrientation];

  v15 = [v6 cameraParams];
  [v7 setCameraParams:v15];

  if ([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]!= v14)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = convertABPKDeviceOrientationEnumToString([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]);
      v18 = convertABPKDeviceOrientationEnumToString(v14);
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Device orientation changed from %@ to %@ ", buf, 0x16u);
    }

    [(ABPK2DDetectionConfiguration *)self->_config2D setAbpkDeviceOrientation:v14];
  }

  [ABPK2DMLModelConfigSelector inputDimensionsForModelWithABPKNetworkConfig:self->_config2D];
  v20 = v19;
  v22 = v21;
  if (!self->_imagePreprocessor || self->_inputResolution.width == v11 && self->_inputResolution.height == v12)
  {
    v23 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " ML image resolution: (height,width):(%f,%f) ", buf, 0x16u);
    }

    v24 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:v11 outputResolution:v12, v20, v22];
    objc_storeStrong(&self->_imagePreProcessingParams, v24);
    [(ABPKImagePreProcessingParams *)v24 printData];
    v25 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:v24];
    if (!v25)
    {
      v28 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_ERROR, " Could not initialize imagePreprocessor ", buf, 2u);
      }

      goto LABEL_27;
    }

    self->_inputResolution.width = v11;
    self->_inputResolution.height = v12;
    imagePreprocessor = self->_imagePreprocessor;
    self->_imagePreprocessor = v25;
  }

  [(ABPKPoseEstimationPipeline *)self _startImagePreprocessingSignpost];
  if ([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]!= v14 || !self->_mlImage)
  {
    v197 = *MEMORY[0x277CC4DE8];
    v198 = MEMORY[0x277CBEC10];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v20, v22, 0x42475241u, v24, &self->_mlImage))
    {
      v27 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_ERROR, " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ", buf, 2u);
      }

LABEL_27:
      v30 = -6660;
      goto LABEL_28;
    }
  }

  v29 = -[ABPKImagePreProcessing preprocessData:outputBuffer:](self->_imagePreprocessor, "preprocessData:outputBuffer:", [v6 image], self->_mlImage);
  [(ABPKImagePreProcessing *)self->_imagePreprocessor logProfilingDetails];
  [(ABPKPoseEstimationPipeline *)self _endImagePreprocessingSignpost];
  if (v29)
  {
    v24 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, &v24->super, OS_LOG_TYPE_ERROR, " Could not pre-process image ", buf, 2u);
    }

    goto LABEL_27;
  }

  if (self->_exitPoint)
  {
    v33 = [v7 algState];
    [v33 setImage_preprocessing:1];

    v34 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", buf, 2u);
    }

    v35 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", buf, 2u);
    }

    v36 = [ABPKMLImageData alloc];
    mlImage = self->_mlImage;
    [v6 timestamp];
    v24 = [(ABPKMLImageData *)v36 initWithPixelBuffer:mlImage timestamp:v14 abpkDeviceOrientation:self->_imagePreProcessingParams preprocessingParameters:?];
    if ([(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v24 rotationOfResultTensor:0]== -6661)
    {
      v38 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", buf, 2u);
      }

      ++self->_consistent2DSkeletonMissing;
      v30 = -6661;
      goto LABEL_28;
    }

    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeleton:self->_rawDetection2dSkeleton];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeletonVector:self->_rawDetection2dSkeletonArray];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanSkeleton:self->_detection2dSkeleton];
    v190 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanForLiftingSkeleton:?];
    v39 = [v7 algState];
    [v39 setDetection2d:1];

    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      if ([(ABPK2dSkeleton *)v190 hasMissingJoints])
      {
        v40 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(&v40->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, &v40->super, OS_LOG_TYPE_DEBUG, " \t\t Extrapolation for missing joints failed. Cannot run lifting network using old 3D lifting model on rOS. New 3D lifting model should still work on iOS. ", buf, 2u);
        }

        v30 = -6667;
        goto LABEL_100;
      }
    }

    else if (!self->_rawDetection2dSkeleton)
    {
      v30 = -6667;
LABEL_101:

      goto LABEL_28;
    }

    if (self->_exitPoint == 2)
    {
      v40 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(&v40->super, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, &v40->super, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint2DDetectionPostProcessing ", buf, 2u);
      }

      v30 = 0;
      goto LABEL_100;
    }

    v41 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_DEBUG, " Performing 2d-3d lifting ", buf, 2u);
    }

    v42 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " \t Pre-processing data ", buf, 2u);
    }

    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      v43 = [ABPK2D3DLiftingData alloc];
      v44 = [(ABPK2dSkeleton *)v190 normalizedKeypoints2d];
      v45 = [(ABPK2dSkeleton *)v190 skeletonDefinition];
      v40 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v43, "initWithJoints:numberOfJoints:", v44, [v45 jointCount]);

      v46 = [ABPK2DDetectionResult alloc];
      v47 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
      v48 = [(ABPK2dSkeleton *)self->_detection2dSkeleton visibility];
      v49 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
      v188 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v46, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v47, v48, [v49 jointCount], 0, v40, 0.0, 0.0, 1.0, 1.0);

      if (!v40)
      {
        v52 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v69 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPreprocessing ";
LABEL_86:
          _os_log_impl(&dword_23EDDC000, v52, OS_LOG_TYPE_DEBUG, v69, buf, 2u);
        }

LABEL_87:
        v30 = 0;
LABEL_88:

LABEL_99:
LABEL_100:

        goto LABEL_101;
      }

      v50 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v50, OS_LOG_TYPE_DEBUG, " \t Running the lifting model ", buf, 2u);
      }

      liftingAlgorithm = self->_liftingAlgorithm;
      [v6 timestamp];
      if ([(ABPK3DLifting *)liftingAlgorithm runLiftingModelWithData:v188 atTimestamp:?])
      {
        v52 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v52, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", buf, 2u);
        }

        v30 = -6662;
        goto LABEL_88;
      }

      if (self->_exitPoint == 4)
      {
        v52 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v69 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v70 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v70, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      v71 = [(ABPK3DLifting *)self->_liftingAlgorithm getLiftingResults];
      if (!v71)
      {
        v30 = -6662;
        goto LABEL_99;
      }

      v72 = [v7 algState];
      [v72 setLifting3d:1];

      [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLifting *)self->_liftingAlgorithm get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
LABEL_131:

      self->_consistent2DSkeletonMissing = 0;
      if (self->_exitPoint == 5)
      {
        v107 = __ABPKLogSharedInstance();
        v188 = v107;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v107, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPostProcessing ", buf, 2u);
        }
      }

      else
      {
        v108 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v108, OS_LOG_TYPE_DEBUG, " Performing camera registration ", buf, 2u);
        }

        bodyRegistration = self->_bodyRegistration;
        v110 = [v6 cameraParams];
        [v110 intrinsics];
        v185 = v112;
        v189 = v111;
        v180 = v113;
        v114 = [v6 cameraParams];
        [v114 inputRes];
        v188 = [(ABPKCameraRegistration *)bodyRegistration runCameraRegistrationWithImageIntrinsics:v71 imageResolution:v189 liftingResult:v185, v180, v115, v116];

        if (([(ABPK2DDetectionResult *)v188 success]& 1) == 0)
        {
          v30 = -6664;
LABEL_164:
          v40 = v71;
          goto LABEL_99;
        }

        v117 = [v7 algState];
        [v117 setRegistration:1];

        liftingSkeleton = self->_liftingSkeleton;
        [(ABPK2DDetectionResult *)v188 cameraFromBodyPose];
        [(ABPKSkeleton *)liftingSkeleton setCameraRootTransform:?];
        [(ABPK2DDetectionResult *)v188 cameraFromBodyPose];
        v176 = v120;
        v178 = v119;
        v181 = v122;
        v186 = v121;
        *v123.i64 = simd_matrix4x4(_PromotedConst);
        v127 = 0;
        *__p = v178;
        v192 = v176;
        v193 = v186;
        v194 = v181;
        do
        {
          *&buf[v127 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123, COERCE_FLOAT(*&__p[v127])), v124, __p[v127], 1), v125, *&__p[v127], 2), v126, *&__p[v127], 3);
          v127 += 2;
        }

        while (v127 != 8);
        v182 = *&buf[16];
        v187 = *buf;
        v177 = *&v201;
        v179 = *&v200;
        [(ABPKSkeleton *)self->_liftingSkeleton setRenderingCameraRootTransform:?];
        registered2dSkeleton = self->_registered2dSkeleton;
        v129 = [(ABPK2DDetectionResult *)v188 joints2d];
        v130 = [v6 cameraParams];
        [v130 inputRes];
        [(ABPK2dSkeleton *)registered2dSkeleton setKeypoints2d:v129 withImageRes:?];

        if (self->_exitPoint == 6)
        {
          v131 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v131, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointCameraRegistration ", buf, 2u);
          }
        }

        else
        {
          [v6 timestamp];
          [(ABPKPoseEstimationPipeline *)self _startScaleEstimationSignpostWithTimestamp:?];
          if (![v6 isDepthDataValid])
          {
            goto LABEL_149;
          }

          if (![v6 depthMap])
          {
            goto LABEL_149;
          }

          if (![v6 depthConfidenceBuffer])
          {
            goto LABEL_149;
          }

          scaleEstimation = self->_scaleEstimation;
          v133 = [v6 depthMap];
          v134 = [v6 depthConfidenceBuffer];
          [v6 timestamp];
          v136 = v135;
          v137 = [v6 cameraParams];
          [v137 inputRes];
          v139 = v138;
          v141 = v140;
          v142 = [v6 cameraParams];
          [v142 intrinsics];
          v174 = v144;
          v175 = v143;
          v173 = v145;
          [(ABPK2DDetectionResult *)v188 cameraFromBodyPose];
          [(ABPKDepthBasedScaleEstimation *)scaleEstimation estimateScaleFromDepthData:v133 depthConfidenceData:v134 timestamp:v71 imageResolution:v136 imageIntrinsics:v139 cameraFromBodyPose:v141 liftingResult:v175, v174, v173, v146, v147, v148, v149, v150, v151, v152, v153];
          previousValidScale = v154;

          if (previousValidScale != -1.0)
          {
            self->_previousValidScale = previousValidScale;
          }

          else
          {
LABEL_149:
            previousValidScale = self->_previousValidScale;
          }

          v156 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = previousValidScale;
            _os_log_impl(&dword_23EDDC000, v156, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", buf, 0xCu);
          }

          *&v157 = previousValidScale;
          [(ABPK3DLiftingResult *)v71 setEstimatedScale:v157];
          *&v158 = previousValidScale;
          [(ABPKSkeleton *)self->_liftingSkeleton setEstimatedScale:v158];
          [(ABPKSkeleton *)self->_liftingSkeleton updateJointPosesAndRootTransformUsingDepthEstimatedScale];
          [v6 timestamp];
          [(ABPKPoseEstimationPipeline *)self _endScaleEstimationSignpostWithTimestamp:?];
          v159 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v159, OS_LOG_TYPE_DEBUG, " Performing retargeting ", buf, 2u);
          }

          [v6 timestamp];
          [(ABPKPoseEstimationPipeline *)self _startRetargettingSignpostWithTimestamp:?];
          v131 = [(ABPKRetargeting *)self->_retargeting processData:v71];
          v160 = [v7 algState];
          [v160 setRetargeting:1];

          v161 = [v131 jointModelTransforms];
          v162 = [v131 jointModelTransforms];
          v163 = [v131 jointTransformCount];
          memset(buf, 0, 24);
          std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(buf, v161, v162 + (v163 << 6), (v162 + (v163 << 6) - v161) >> 6);
          v164 = [v131 jointLocalTransforms];
          v165 = [v131 jointLocalTransforms];
          v166 = [v131 jointTransformCount];
          __p[0] = 0;
          __p[1] = 0;
          *&v192 = 0;
          std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(__p, v164, v165 + (v166 << 6), (v165 + (v166 << 6) - v164) >> 6);
          [(ABPKSkeleton *)self->_retargetedSkeleton setModelPoses:*buf andUpdateLocalPoses:0];
          retargetedSkeleton = self->_retargetedSkeleton;
          [(ABPK2DDetectionResult *)v188 cameraFromBodyPose];
          [(ABPKSkeleton *)retargetedSkeleton setCameraRootTransform:?];
          [(ABPKSkeleton *)self->_retargetedSkeleton setRenderingCameraRootTransform:v187, v182, v179, v177];
          *&v168 = previousValidScale;
          [(ABPKSkeleton *)self->_retargetedSkeleton setEstimatedScale:v168];
          [v6 timestamp];
          [(ABPKPoseEstimationPipeline *)self _endRetargettingSignpostWithTimestamp:?];
          [(ABPKSkeleton *)self->_retargetedSkeleton computeHeight];
          v170 = v169;
          v171 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
          {
            *v195 = 134217984;
            v196 = v170;
            _os_log_impl(&dword_23EDDC000, v171, OS_LOG_TYPE_DEBUG, " skeletonHeight: %f ", v195, 0xCu);
          }

          v172 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
          {
            *v195 = 134217984;
            v196 = previousValidScale;
            _os_log_impl(&dword_23EDDC000, v172, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", v195, 0xCu);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }
      }

      v30 = 0;
      goto LABEL_164;
    }

    v40 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanForLiftingSkeleton:v40];
    v53 = [ABPK2D3DLiftingData alloc];
    v54 = [(ABPK2dSkeleton *)v40 normalizedKeypoints2d];
    v55 = [(ABPK2dSkeleton *)v40 skeletonDefinition];
    v188 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v53, "initWithJoints:numberOfJoints:", v54, [v55 jointCount]);

    v56 = [ABPK2DDetectionResult alloc];
    v57 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton normalizedKeypoints2d];
    v58 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
    v59 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
    v60 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v56, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v57, v58, [v59 jointCount], 0, v188, 0.0, 0.0, 1.0, 1.0);

    if (self->_useLSTM3D)
    {
      if (self->_consistent2DSkeletonMissing >= 6)
      {
        v61 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v61, OS_LOG_TYPE_DEBUG, " \t Last detected person was many frames ago. New 2D person detected. Resetting LSTM for 3D lifting. ", buf, 2u);
        }

        [(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM resetCellStateAndHiddenStateInput];
      }

      v62 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v62, OS_LOG_TYPE_DEBUG, " \t Running the LSTM lifting model ", buf, 2u);
      }

      liftingAlgorithmLSTM = self->_liftingAlgorithmLSTM;
      [v6 timestamp];
      if ([(ABPK3DLiftingLSTM *)liftingAlgorithmLSTM runLiftingModelWithData:v60 imageResolution:v14 deviceOrientation:v11 atTimestamp:v12, v64])
      {
        v65 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
LABEL_79:
          _os_log_impl(&dword_23EDDC000, v65, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", buf, 2u);
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      if (self->_exitPoint == 4)
      {
        v65 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      v92 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v92, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      v93 = [(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM getLiftingResults];
      v94 = v93;
      if (v93)
      {
        if ([v93 rawNetworkOutputJoints])
        {
          [v7 setRawLiftingNetworkOutputJoints:{objc_msgSend(v94, "rawNetworkOutputJoints")}];
        }

        v95 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
        v184 = v94;
        v96 = [v95 jointCount];

        v97 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        v98 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        memset(buf, 0, 24);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, v97, v98 + 8 * v96, (v98 + 8 * v96 - v97) >> 3);
        if (v96)
        {
          v99 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          do
          {
            if (![(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility][4 * v99])
            {
              *(*buf + 8 * v99) = _D8;
            }

            ++v99;
          }

          while (v96 != v99);
        }

        v101 = [ABPK2DDetectionResult alloc];
        v102 = *buf;
        v103 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
        v104 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
        v105 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v101, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v102, v103, [v104 jointCount], 0, v188, 0.0, 0.0, 1.0, 1.0);

        v71 = -[ABPK3DLiftingResult initWithJoints:numberOfJoints:referenceDetectionResult:]([ABPK3DLiftingResult alloc], "initWithJoints:numberOfJoints:referenceDetectionResult:", [v184 joints], 17, v105);
        v106 = [v7 algState];
        [v106 setLifting3d:1];

        [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
LABEL_128:
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        goto LABEL_131;
      }
    }

    else
    {
      v66 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v66, OS_LOG_TYPE_DEBUG, " \t Running the TCN lifting model ", buf, 2u);
      }

      liftingAlgorithmSequence = self->_liftingAlgorithmSequence;
      [v6 timestamp];
      if ([(ABPK3DLiftingSequence *)liftingAlgorithmSequence runLiftingModelWithData:v60 imageResolution:v14 deviceOrientation:v11 atTimestamp:v12, v68])
      {
        v65 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          goto LABEL_79;
        }

LABEL_80:
        v30 = -6662;
LABEL_97:

LABEL_98:
        goto LABEL_99;
      }

      if (self->_exitPoint == 4)
      {
        v65 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
LABEL_95:
          _os_log_impl(&dword_23EDDC000, v65, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ", buf, 2u);
        }

LABEL_96:
        v30 = 0;
        goto LABEL_97;
      }

      v73 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v73, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      v74 = [(ABPK3DLiftingSequence *)self->_liftingAlgorithmSequence getLiftingResults];
      v75 = v74;
      if (v74)
      {
        if ([v74 rawNetworkOutputJoints])
        {
          [v7 setRawLiftingNetworkOutputJoints:{objc_msgSend(v75, "rawNetworkOutputJoints")}];
        }

        v76 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
        v183 = v75;
        v77 = [v76 jointCount];

        v78 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        v79 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        memset(buf, 0, 24);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, v78, v79 + 8 * v77, (v79 + 8 * v77 - v78) >> 3);
        if (v77)
        {
          v80 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          do
          {
            if (![(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility][4 * v80])
            {
              *(*buf + 8 * v80) = _D8;
            }

            ++v80;
          }

          while (v77 != v80);
        }

        v86 = [ABPK2DDetectionResult alloc];
        v87 = *buf;
        v88 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
        v89 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
        v90 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v86, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v87, v88, [v89 jointCount], 0, v188, 0.0, 0.0, 1.0, 1.0);

        v71 = -[ABPK3DLiftingResult initWithJoints:numberOfJoints:referenceDetectionResult:]([ABPK3DLiftingResult alloc], "initWithJoints:numberOfJoints:referenceDetectionResult:", [v183 joints], 17, v90);
        v91 = [v7 algState];
        [v91 setLifting3d:1];

        [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLiftingSequence *)self->_liftingAlgorithmSequence get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
        goto LABEL_128;
      }
    }

    v30 = -6662;
    goto LABEL_98;
  }

  v24 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, &v24->super, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointImagePreProcessing ", buf, 2u);
  }

  v30 = 0;
LABEL_28:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)computeRootTransforms:(float32x4_t)a3 withCameraExtrinsics:(float32x4_t)a4 withVioPose:(uint64_t)a5 withVioPoseValidity:(uint64_t)a6
{
  v33 = a7;
  v7 = [v33 liftingSkeletonABPK];
  [v7 cameraRootTransform];
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v10;
  v12 = [v33 liftingSkeletonABPK];
  v13 = v12;
  v14 = 0;
  v34[0] = v22;
  v34[1] = v21;
  v34[2] = v24;
  v34[3] = v23;
  do
  {
    *(&v35 + v14 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(v34[v14])), a2, *&v34[v14], 1), a3, v34[v14], 2), a4, v34[v14], 3);
    ++v14;
  }

  while (v14 != 4);
  [v12 setDeviceRootTransform:{*&v35, *&v36, *&v37, *&v38}];

  v15 = [v33 liftingSkeletonABPK];
  [v15 deviceRootTransform];
  v30 = v17;
  v32 = v16;
  v26 = v19;
  v28 = v18;
  v20 = [v33 retargetedSkeletonABPK];
  [v20 setDeviceRootTransform:{v32, v30, v28, v26}];
}

- (void)saveInputData:(id)a3 andOutputData:(id)a4 ToDir:(id)a5 withFileNamePrefix:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \t\t Recording input data ", buf, 2u);
  }

  [v9 saveDataToDir:v11 withFileNamePrefix:v12];
  v14 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \t\t Recording output data ", v15, 2u);
  }

  [v10 saveDataToDir:v11 withFileNamePrefix:v12];
}

@end