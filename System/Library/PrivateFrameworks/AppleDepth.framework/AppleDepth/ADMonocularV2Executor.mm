@interface ADMonocularV2Executor
- (ADMonocularV2Executor)initWithInputPrioritization:(int64_t)a3 parameters:(id)a4;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)a3 outDisparity:(__CVBuffer *)a4;
- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADMonocularV2Executor

- (id)getIntermediates
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"PreProcessed Color";
    v24[1] = itmPreProcessedColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v5];
  }

  itmUnprocessedOutputDisparity = self->_itmUnprocessedOutputDisparity;
  if (itmUnprocessedOutputDisparity)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"Unprocessed OutputDisparity";
    v22[1] = itmUnprocessedOutputDisparity;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v7];
  }

  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"Cropped ScaledColor";
    v20[1] = itmCroppedScaledColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v9];
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"Rotated Color";
    v18[1] = itmRotatedColor;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v11];
  }

  itmPrevDisparity = self->_itmPrevDisparity;
  if (itmPrevDisparity)
  {
    v15[0] = @"name";
    v15[1] = @"image";
    v16[0] = @"Previous Disparity";
    v16[1] = itmPrevDisparity;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)dealloc
{
  [(ADMonocularV2Executor *)self deallocateEspressoBuffers];
  CVPixelBufferRelease(self->_itmCroppedScaledColor);
  CVPixelBufferRelease(self->_itmRotatedColor);
  v3.receiver = self;
  v3.super_class = ADMonocularV2Executor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithColor:(__CVBuffer *)a3 outDisparity:(__CVBuffer *)a4
{
  v6 = self;
  objc_sync_enter(v6);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (!v6->_isPrepared)
  {
    v9 = [(ADMonocularV2Executor *)v6 prepareForEngineType:v6->super._engineType inputColorROI:0.0, 0.0, Width, Height];
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  if (v6->super._espressoRunner)
  {
    if (a4)
    {
      v10 = [(ADExecutor *)v6 executorParameters];
      v11 = [v10 logger];

      v12 = [MEMORY[0x277CCAC38] processInfo];
      [v12 systemUptime];
      v14 = v13;

      *buf = 335683588;
      v29 = 0u;
      v30 = 0u;
      kdebug_trace();
      [v11 logPixelBuffer:a3 name:"inputColor" timestamp:v14];
      v15 = [(ADExecutor *)v6 executorParameters];
      v16 = [v15 stepsToExecute];

      v17 = [(ADExecutor *)v6 executorParameters];
      v18 = [v17 timeProfiler];

      if (v16 >= 1)
      {
        kdebug_trace();
        [v18 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v6 frameExecutionStart];
        v9 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v6->super._rotationConstant) cropBy:v6->_itmPreProcessedColor scaleInto:&v6->_itmCroppedScaledColor intermediateScalingBuffer:&v6->_itmRotatedColor intermediateRotatingBuffer:1 useVT:v6->super._inputRoi.origin.x, v6->super._inputRoi.origin.y, v6->super._inputRoi.size.width, v6->super._inputRoi.size.height];
        if (v9)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_20:

            kdebug_trace();
            goto LABEL_21;
          }

          *v27 = 0;
          v19 = MEMORY[0x277D86220];
          v20 = "failed scaling color image";
LABEL_11:
          _os_log_error_impl(&dword_2402F6000, v19, OS_LOG_TYPE_ERROR, v20, v27, 2u);
          goto LABEL_20;
        }

        [v11 logPixelBuffer:v6->_itmPreProcessedColor name:"preProcessedColor" timestamp:v14];
        [v11 logPixelBuffer:v6->_itmPrevDisparity name:"prevDisparity" timestamp:v14];
        [v18 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v16 != 1)
        {
          kdebug_trace();
          [v18 startWithUTFString:"network execution"];
          v9 = [(ADEspressoRunnerProtocol *)v6->super._espressoRunner execute];
          if (v9)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            *v27 = 0;
            v19 = MEMORY[0x277D86220];
            v20 = "failed executing espresso plan";
            goto LABEL_11;
          }

          [v11 logPixelBuffer:v6->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v14];
          [v18 stopWithUTFString:"network execution"];
          kdebug_trace();
          if (v16 >= 3)
          {
            kdebug_trace();
            [v18 startWithUTFString:"postprocess depth"];
            if (!*a4)
            {
              *a4 = PixelBufferUtils::createPixelBufferWithSameSize(v6->_itmUnprocessedOutputDisparity, 0x66646973, 1);
            }

            v9 = [(ADMonocularV2Pipeline *)v6->_pipeline postProcessDisparity:v6->_itmUnprocessedOutputDisparity output:?];
            if (v9)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              *v27 = 0;
              v19 = MEMORY[0x277D86220];
              v20 = "failed post-processing disparity";
              goto LABEL_11;
            }

            [v11 logPixelBuffer:*a4 name:"outputConvertedUnits" timestamp:v14];
            [v18 stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (v16 != 3)
            {
              kdebug_trace();
              [v18 startWithUTFString:"postprocess previous depth"];
              espressoRunner = v6->super._espressoRunner;
              v26 = [(ADMonocularV2Pipeline *)v6->_pipeline inferenceDescriptor];
              v23 = [v26 prevDisparityInput];
              v24 = [(ADMonocularV2Pipeline *)v6->_pipeline inferenceDescriptor];
              v25 = [v24 disparityOutput];
              v9 = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&v6->_itmPrevDisparity inputDescriptor:v23 outputBuffer:&v6->_itmUnprocessedOutputDisparity outputDescriptor:v25];

              if (v9)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_20;
                }

                *v27 = 0;
                v19 = MEMORY[0x277D86220];
                v20 = "failed updating previous disparity";
                goto LABEL_11;
              }

              [v18 stopWithUTFString:"postprocess previous depth"];
              kdebug_trace();
              if (v16 >= 5)
              {
                [(ADExecutor *)v6 frameExecutionEnd];
                v9 = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }

      v9 = -22977;
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", buf, 2u);
    }

    v9 = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
    }

    v9 = -22960;
  }

LABEL_21:
  objc_sync_exit(v6);

  return v9;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  objc_sync_enter(v9);
  v18 = 335685116;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  v10 = [(ADMonocularV2Pipeline *)v9->_pipeline adjustForEngine:a3];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v17, 2u);
    }
  }

  else
  {
    v11 = [(ADMonocularV2Pipeline *)v9->_pipeline inferenceDescriptor];
    v12 = [v11 colorInput];
    v13 = [v12 imageDescriptor];
    v10 = [(ADExecutor *)v9 prepareForEngineType:a3 roi:v13 descriptorForROI:1 exifOrientation:2 rotationPreference:v11 inferenceDescriptor:x, y, width, height];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v17, 2u);
      }
    }

    else
    {
      v10 = [(ADMonocularV2Executor *)v9 allocateIntermediateBuffers];
      CVPixelBufferLockBaseAddress(v9->_itmPrevDisparity, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v9->_itmPrevDisparity);
      DataSize = CVPixelBufferGetDataSize(v9->_itmPrevDisparity);
      bzero(BaseAddress, DataSize);
      CVPixelBufferUnlockBaseAddress(v9->_itmPrevDisparity, 0);
      v9->_isPrepared = v10 == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(v9);

  return v10;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = self->super._espressoRunner;
  v10 = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  v11 = [v10 prevDisparityInput];
  self->_itmPrevDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

  if (self->_itmPreProcessedColor && self->_itmUnprocessedOutputDisparity && self->_itmPrevDisparity)
  {
    return 0;
  }

  [(ADMonocularV2Executor *)self deallocateEspressoBuffers];
  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmUnprocessedOutputDisparity);
  self->_itmUnprocessedOutputDisparity = 0;
  CVPixelBufferRelease(self->_itmPrevDisparity);
  self->_itmPrevDisparity = 0;
}

- (ADMonocularV2Executor)initWithInputPrioritization:(int64_t)a3 parameters:(id)a4
{
  v6 = a4;
  v15 = 335686448;
  v16 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  kdebug_trace();
  v14.receiver = self;
  v14.super_class = ADMonocularV2Executor;
  v7 = [(ADExecutor *)&v14 init];
  if (v7)
  {
    v8 = [ADMonocularV2Pipeline alloc];
    v9 = [v6 pipelineParameters];
    v10 = [(ADMonocularV2Pipeline *)v8 initWithInputPrioritization:a3 andParameters:v9];
    pipeline = v7->_pipeline;
    v7->_pipeline = v10;

    if (!v7->_pipeline || !v6 && (v6 = [[ADMonocularV2ExecutorParameters alloc] initForPipeline:v7->_pipeline]) == 0)
    {
      v12 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v7 setExecutorParameters:v6];
    v7->_itmPreProcessedColor = 0;
    v7->_itmUnprocessedOutputDisparity = 0;
    v7->_itmCroppedScaledColor = 0;
    v7->_itmRotatedColor = 0;
    v7->_itmPrevDisparity = 0;
    v7->_isPrepared = 0;
  }

  v12 = v7;
LABEL_8:
  kdebug_trace();

  return v12;
}

@end