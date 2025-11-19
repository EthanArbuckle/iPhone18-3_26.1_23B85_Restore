@interface ABPKAlgorithmRA
- (ABPKAlgorithmRA)initWithCameraParams:(id)a3 andAlgorithmMode:(int64_t)a4;
- (int)preprocessInputImage:(__CVBuffer *)a3;
- (void)computeRootTransforms:(uint64_t)a1 withVioPose:(uint64_t)a2 withVioPoseValidity:(void *)a3;
- (void)dealloc;
- (void)runABPKAlgorithmWithInputData:(id)a3 andGetOutput:(id)a4;
- (void)saveInputData:(id)a3 andOutputData:(id)a4 ToDir:(id)a5 withFileNamePrefix:(id)a6;
@end

@implementation ABPKAlgorithmRA

- (ABPKAlgorithmRA)initWithCameraParams:(id)a3 andAlgorithmMode:(int64_t)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35.receiver = self;
  v35.super_class = ABPKAlgorithmRA;
  v7 = [(ABPKAlgorithmRA *)&v35 init];
  if (v7)
  {
    v8 = objc_alloc_init(ABPKAlgInput);
    v9 = *(v7 + 24);
    *(v7 + 24) = v8;

    objc_storeStrong(v7 + 5, a3);
    *(v7 + 2) = 7;
    [*(v7 + 5) inputRes];
    *(v7 + 3) = v10;
    *(v7 + 4) = v11;
    v12 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:1];
    if (v12)
    {
      v13 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:*(v7 + 3) outputResolution:*(v7 + 4), *(v7 + 10), *(v7 + 11)];
      v14 = *(v7 + 13);
      *(v7 + 13) = v13;

      if (*(v7 + 13))
      {
        *(v7 + 7) = *(v7 + 24);
        [*(v7 + 5) intrinsics];
        *(v7 + 34) = v15;
        *(v7 + 16) = v16;
        *(v7 + 38) = v17;
        *(v7 + 18) = v18;
        *(v7 + 42) = v19;
        *(v7 + 20) = v20;
        v21 = [[ABPKAlgorithmParams alloc] initWithRegIntrinsics:*(v7 + 16) regImageResolution:*(v7 + 18), *(v7 + 20), *(v7 + 14), *(v7 + 15)];
        v22 = *(v7 + 6);
        *(v7 + 6) = v21;

        [*(v7 + 6) setConfig2DDetection:v12];
        v23 = [[ABPKAlgorithm alloc] initWithParams:*(v7 + 6)];
        v24 = *(v7 + 1);
        *(v7 + 1) = v23;

        if (!*(v7 + 1))
        {
          v30 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v25 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:*(v7 + 13)];
        v26 = *(v7 + 12);
        *(v7 + 12) = v25;

        if (*(v7 + 12))
        {
          v27 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *v34 = 0;
            _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " Image Preprocessing ", v34, 2u);
          }

          v36 = *MEMORY[0x277CC4DE8];
          v37[0] = MEMORY[0x277CBEC10];
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
          if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v7 + 10), *(v7 + 11), 0x42475241u, v28, v7 + 22))
          {
            v30 = v7;
            goto LABEL_22;
          }

          v29 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v34 = 0;
            _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_ERROR, " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ", v34, 2u);
          }

LABEL_21:
          v30 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v28 = __ABPKLogSharedInstance();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *v34 = 0;
        v31 = " Could not initialize imagePreprocessor ";
      }

      else
      {
        v28 = __ABPKLogSharedInstance();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *v34 = 0;
        v31 = " Failed to initialize Image Preprocessing Parameters ";
      }
    }

    else
    {
      v28 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v34 = 0;
      v31 = " Failed to initialize config for 2D Detection module ";
    }

    _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_ERROR, v31, v34, 2u);
    goto LABEL_21;
  }

  v30 = 0;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)dealloc
{
  mlImage = self->_mlImage;
  if (mlImage)
  {
    CVPixelBufferRelease(mlImage);
  }

  v4.receiver = self;
  v4.super_class = ABPKAlgorithmRA;
  [(ABPKAlgorithmRA *)&v4 dealloc];
}

- (void)runABPKAlgorithmWithInputData:(id)a3 andGetOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ABPKAlgorithmRA *)self _startExecuteAlgorithmSignpost];
  +[ABPKTime nowInSeconds];
  *&v8 = v8;
  [v7 setTimeABPKAlgorithmStart:v8];
  [v7 setAlgorithmParams:self->_algParams];
  v9 = objc_alloc_init(ABPKAlgorithmState);
  [v7 setAlgState:v9];

  [v6 timestamp];
  [v7 setTimestamp:?];
  [(ABPKAlgorithmRA *)self _startImagePreprocessingSignpost];
  LODWORD(v9) = -[ABPKAlgorithmRA preprocessInputImage:](self, "preprocessInputImage:", [v6 image]);
  [(ABPKAlgorithmRA *)self _endImagePreprocessingSignpost];
  if (v9)
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEFAULT, " Could not preprocess input data ", buf, 2u);
    }

    [v7 setAlgorithmReturnCode:4294960636];
  }

  else
  {
    v11 = [v7 algState];
    [v11 setImage_preprocessing:1];

    [v7 setMlImage:self->_mlImage];
    if (self->_exitPoint)
    {
      [(ABPKAlgorithmRA *)self _startABPKAlgoInitSignpost];
      -[ABPKAlgInput setImage:](self->_algorithmInput, "setImage:", [v7 mlImage]);
      [(ABPKCameraParams *)self->_abpkCameraParams inputRes];
      [(ABPKAlgInput *)self->_algorithmInput setImageResolution:?];
      [(ABPKCameraParams *)self->_abpkCameraParams intrinsics];
      [(ABPKAlgInput *)self->_algorithmInput setImageCameraIntrinsics:?];
      -[ABPKAlgInput setDepthMap:](self->_algorithmInput, "setDepthMap:", [v6 depthMap]);
      [(ABPKAlgInput *)self->_algorithmInput setImagePreProcessingParams:self->_imagePreProcessingParams];
      [v6 timestamp];
      [(ABPKAlgInput *)self->_algorithmInput setTimestamp:?];
      -[ABPKAlgInput setDepthConfidenceBuffer:](self->_algorithmInput, "setDepthConfidenceBuffer:", [v6 depthConfidenceBuffer]);
      -[ABPKAlgInput setIsDepthDataValid:](self->_algorithmInput, "setIsDepthDataValid:", [v6 isDepthDataValid]);
      v12 = [v7 algState];
      [(ABPKAlgOutput *)self->_algorithmOutput setAlgState:v12];

      [(ABPKAlgorithmRA *)self _endABPKAlgoInitSignpost];
      v13 = [(ABPKAlgorithm *)self->_abpkAlgorithm runWithInput:self->_algorithmInput andGetOutput:self->_algorithmOutput];
      algorithmOutput = self->_algorithmOutput;
      [v6 vioPose];
      -[ABPKAlgorithmRA computeRootTransforms:withVioPose:withVioPoseValidity:](self, "computeRootTransforms:withVioPose:withVioPoseValidity:", algorithmOutput, [v6 isVioPoseValid], v15, v16, v17, v18);
      v19 = [(ABPKAlgOutput *)self->_algorithmOutput rawDetection2dSkeletonABPK];
      [v7 setRawDetection2dSkeletonABPK:v19];

      v20 = [(ABPKAlgOutput *)self->_algorithmOutput rawDetection2dSkeletonABPKArray];
      [v7 setRawDetection2dSkeletonABPKArray:v20];

      v21 = [(ABPKAlgOutput *)self->_algorithmOutput detection2dSkeletonABPK];
      [v7 setDetection2dSkeletonABPK:v21];

      v22 = [(ABPKAlgOutput *)self->_algorithmOutput liftingSkeletonABPK];
      [v7 setLiftingSkeletonABPK:v22];

      v23 = [(ABPKAlgOutput *)self->_algorithmOutput registered2dSkeletonABPK];
      [v7 setRegistered2dSkeletonABPK:v23];

      v24 = [(ABPKAlgOutput *)self->_algorithmOutput retargetedSkeletonABPK];
      [v7 setRetargetedSkeletonABPK:v24];

      v25 = [(ABPKAlgOutput *)self->_algorithmOutput algState];
      [v7 setAlgState:v25];

      [v7 setAlgorithmReturnCode:v13];
      [(ABPKAlgorithmRA *)self _endExecuteAlgorithmSignpost];
      +[ABPKTime nowInSeconds];
      *&v26 = v26;
      [v7 setTimeABPKAlgorithmFinished:v26];
    }

    else
    {
      v27 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointImagePreProcessing ", v29, 2u);
      }

      +[ABPKTime nowInSeconds];
      *&v28 = v28;
      [v7 setTimeABPKAlgorithmFinished:v28];
    }
  }
}

- (void)computeRootTransforms:(uint64_t)a1 withVioPose:(uint64_t)a2 withVioPoseValidity:(void *)a3
{
  v34 = a3;
  [*(a1 + 40) extrinsics];
  v30 = v5;
  v32 = v4;
  v26 = v7;
  v28 = v6;
  v8 = [v34 liftingSkeletonABPK];
  [v8 cameraRootTransform];
  v22 = v10;
  v23 = v9;
  v24 = v12;
  v25 = v11;
  v13 = [v34 liftingSkeletonABPK];
  v14 = v13;
  v15 = 0;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v25;
  v35[3] = v24;
  do
  {
    *(&v36 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v35[v15])), v30, *&v35[v15], 1), v28, v35[v15], 2), v26, v35[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  [v13 setDeviceRootTransform:{*&v36, *&v37, *&v38, *&v39}];

  v16 = [v34 liftingSkeletonABPK];
  [v16 deviceRootTransform];
  v31 = v18;
  v33 = v17;
  v27 = v20;
  v29 = v19;
  v21 = [v34 retargetedSkeletonABPK];
  [v21 setDeviceRootTransform:{v33, v31, v29, v27}];
}

- (int)preprocessInputImage:(__CVBuffer *)a3
{
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " Pre-processing image ", v7, 2u);
  }

  return [(ABPKImagePreProcessing *)self->_imagePreprocessor preprocessData:a3 outputBuffer:self->_mlImage];
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