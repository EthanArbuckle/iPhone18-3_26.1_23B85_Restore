@interface ADMonocularV2Executor
- (ADMonocularV2Executor)initWithInputPrioritization:(int64_t)prioritization parameters:(id)parameters;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)color outDisparity:(__CVBuffer *)disparity;
- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i;
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

- (int64_t)executeWithColor:(__CVBuffer *)color outDisparity:(__CVBuffer *)disparity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Width = CVPixelBufferGetWidth(color);
  Height = CVPixelBufferGetHeight(color);
  if (!selfCopy->_isPrepared)
  {
    height = [(ADMonocularV2Executor *)selfCopy prepareForEngineType:selfCopy->super._engineType inputColorROI:0.0, 0.0, Width, Height];
    if (height)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  if (selfCopy->super._espressoRunner)
  {
    if (disparity)
    {
      executorParameters = [(ADExecutor *)selfCopy executorParameters];
      logger = [executorParameters logger];

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v14 = v13;

      *buf = 335683588;
      v29 = 0u;
      v30 = 0u;
      kdebug_trace();
      [logger logPixelBuffer:color name:"inputColor" timestamp:v14];
      executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
      stepsToExecute = [executorParameters2 stepsToExecute];

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      timeProfiler = [executorParameters3 timeProfiler];

      if (stepsToExecute >= 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [(ADExecutor *)selfCopy frameExecutionStart];
        height = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:selfCopy->_itmPreProcessedColor scaleInto:&selfCopy->_itmCroppedScaledColor intermediateScalingBuffer:&selfCopy->_itmRotatedColor intermediateRotatingBuffer:1 useVT:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
        if (height)
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

        [logger logPixelBuffer:selfCopy->_itmPreProcessedColor name:"preProcessedColor" timestamp:v14];
        [logger logPixelBuffer:selfCopy->_itmPrevDisparity name:"prevDisparity" timestamp:v14];
        [timeProfiler stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (stepsToExecute != 1)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"network execution"];
          height = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
          if (height)
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

          [logger logPixelBuffer:selfCopy->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v14];
          [timeProfiler stopWithUTFString:"network execution"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"postprocess depth"];
            if (!*disparity)
            {
              *disparity = PixelBufferUtils::createPixelBufferWithSameSize(selfCopy->_itmUnprocessedOutputDisparity, 0x66646973, 1);
            }

            height = [(ADMonocularV2Pipeline *)selfCopy->_pipeline postProcessDisparity:selfCopy->_itmUnprocessedOutputDisparity output:?];
            if (height)
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

            [logger logPixelBuffer:*disparity name:"outputConvertedUnits" timestamp:v14];
            [timeProfiler stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess previous depth"];
              espressoRunner = selfCopy->super._espressoRunner;
              inferenceDescriptor = [(ADMonocularV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
              prevDisparityInput = [inferenceDescriptor prevDisparityInput];
              inferenceDescriptor2 = [(ADMonocularV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
              disparityOutput = [inferenceDescriptor2 disparityOutput];
              height = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevDisparity inputDescriptor:prevDisparityInput outputBuffer:&selfCopy->_itmUnprocessedOutputDisparity outputDescriptor:disparityOutput];

              if (height)
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

              [timeProfiler stopWithUTFString:"postprocess previous depth"];
              kdebug_trace();
              if (stepsToExecute >= 5)
              {
                [(ADExecutor *)selfCopy frameExecutionEnd];
                height = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }

      height = -22977;
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", buf, 2u);
    }

    height = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
    }

    height = -22960;
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 335685116;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  height = [(ADMonocularV2Pipeline *)selfCopy->_pipeline adjustForEngine:type];
  if (height)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v17, 2u);
    }
  }

  else
  {
    inferenceDescriptor = [(ADMonocularV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
    colorInput = [inferenceDescriptor colorInput];
    imageDescriptor = [colorInput imageDescriptor];
    height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

    if (height)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v17, 2u);
      }
    }

    else
    {
      height = [(ADMonocularV2Executor *)selfCopy allocateIntermediateBuffers];
      CVPixelBufferLockBaseAddress(selfCopy->_itmPrevDisparity, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(selfCopy->_itmPrevDisparity);
      DataSize = CVPixelBufferGetDataSize(selfCopy->_itmPrevDisparity);
      bzero(BaseAddress, DataSize);
      CVPixelBufferUnlockBaseAddress(selfCopy->_itmPrevDisparity, 0);
      selfCopy->_isPrepared = height == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor2 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  v9 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADMonocularV2Pipeline *)self->_pipeline inferenceDescriptor];
  prevDisparityInput = [inferenceDescriptor3 prevDisparityInput];
  self->_itmPrevDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:prevDisparityInput];

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

- (ADMonocularV2Executor)initWithInputPrioritization:(int64_t)prioritization parameters:(id)parameters
{
  parametersCopy = parameters;
  v15 = 335686448;
  prioritizationCopy = prioritization;
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
    pipelineParameters = [parametersCopy pipelineParameters];
    v10 = [(ADMonocularV2Pipeline *)v8 initWithInputPrioritization:prioritization andParameters:pipelineParameters];
    pipeline = v7->_pipeline;
    v7->_pipeline = v10;

    if (!v7->_pipeline || !parametersCopy && (parametersCopy = [[ADMonocularV2ExecutorParameters alloc] initForPipeline:v7->_pipeline]) == 0)
    {
      v12 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v7 setExecutorParameters:parametersCopy];
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