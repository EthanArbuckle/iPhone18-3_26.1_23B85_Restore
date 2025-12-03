@interface ADMonocularStillsExecutor
- (ADMonocularStillsExecutor)initWithParameters:(id)parameters;
- (__CVBuffer)createDepthBuffer;
- (id)getIntermediates;
- (id)initForDimensions:(id)dimensions;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)color efl:(float)efl outputDepth:(__CVBuffer *)depth;
- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADMonocularStillsExecutor

- (id)getIntermediates
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"PreProcessed Color";
    v20[1] = itmPreProcessedColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v5];
  }

  itmUnprocessedOutputDisparity = self->_itmUnprocessedOutputDisparity;
  if (itmUnprocessedOutputDisparity)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"Unprocessed OutputDisparity";
    v18[1] = itmUnprocessedOutputDisparity;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v7];
  }

  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    v15[0] = @"name";
    v15[1] = @"image";
    v16[0] = @"Cropped ScaledColor";
    v16[1] = itmCroppedScaledColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 addObject:v9];
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    v13[0] = @"name";
    v13[1] = @"image";
    v14[0] = @"Rotated Color";
    v14[1] = itmRotatedColor;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v3 addObject:v11];
  }

  return v3;
}

- (void)dealloc
{
  [(ADMonocularStillsExecutor *)self deallocateEspressoBuffers];
  CVPixelBufferRelease(self->_itmCroppedScaledColor);
  CVPixelBufferRelease(self->_itmRotatedColor);
  v3.receiver = self;
  v3.super_class = ADMonocularStillsExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithColor:(__CVBuffer *)color efl:(float)efl outputDepth:(__CVBuffer *)depth
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!color)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      execute = -22953;
      goto LABEL_23;
    }

    *buf = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "must provide an color buffer";
LABEL_28:
    _os_log_error_impl(&dword_2402F6000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    execute = -22953;
    goto LABEL_23;
  }

  if (!depth)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "must provide an output buffer";
    goto LABEL_28;
  }

  if (!selfCopy->_isPrepared)
  {
    Width = CVPixelBufferGetWidth(color);
    execute = [(ADMonocularStillsExecutor *)selfCopy prepareForEngineType:selfCopy->super._engineType inputColorROI:0.0, 0.0, Width, CVPixelBufferGetHeight(color)];
    if (execute)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_23;
    }
  }

  if (selfCopy->super._espressoRunner)
  {
    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    logger = [executorParameters logger];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v17 = v16;

    *buf = 335682584;
    v36 = 0u;
    v37 = 0u;
    kdebug_trace();
    [logger logPixelBuffer:color name:"inputColor" timestamp:v17];
    executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
    stepsToExecute = [executorParameters2 stepsToExecute];

    executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
    timeProfiler = [executorParameters3 timeProfiler];

    if (stepsToExecute >= 1)
    {
      kdebug_trace();
      [timeProfiler startWithUTFString:"preprocess color"];
      [(ADExecutor *)selfCopy frameExecutionStart];
      execute = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:selfCopy->_itmPreProcessedColor scaleInto:&selfCopy->_itmCroppedScaledColor intermediateScalingBuffer:&selfCopy->_itmRotatedColor intermediateRotatingBuffer:1 useVT:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
      if (execute)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_22:

          kdebug_trace();
          goto LABEL_23;
        }

        *v34 = 0;
        v22 = MEMORY[0x277D86220];
        v23 = "failed scaling color image";
LABEL_14:
        _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, v34, 2u);
        goto LABEL_22;
      }

      [logger logPixelBuffer:selfCopy->_itmPreProcessedColor name:"preProcessedColor" timestamp:v17];
      [timeProfiler stopWithUTFString:"preprocess color"];
      kdebug_trace();
      if (stepsToExecute != 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"network execution"];
        execute = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
        if (execute)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *v34 = 0;
          v22 = MEMORY[0x277D86220];
          v23 = "failed executing espresso plan";
          goto LABEL_14;
        }

        [logger logPixelBuffer:selfCopy->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v17];
        [timeProfiler stopWithUTFString:"network execution"];
        kdebug_trace();
        if (stepsToExecute >= 3)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"postprocess depth"];
          if (efl > 0.0)
          {
            v25 = CVPixelBufferGetWidth(selfCopy->_itmPreProcessedColor);
            Height = CVPixelBufferGetHeight(selfCopy->_itmPreProcessedColor);
            if (v25 <= Height)
            {
              v27 = Height;
            }

            else
            {
              v27 = v25;
            }

            v28 = CVPixelBufferGetWidth(color);
            v29 = CVPixelBufferGetHeight(color);
            if (v28 <= v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = v28;
            }

            *&v30 = (v31 / v27) * efl;
            itmUnprocessedOutputDisparity = selfCopy->_itmUnprocessedOutputDisparity;
            [(ADMonocularStillsPipeline *)selfCopy->_pipeline getMetricScaleFactorForEFL:v30];
            PixelBufferUtils::inPlaceColorScaling(itmUnprocessedOutputDisparity, 1, v33, 0.0, 1);
          }

          execute = [ADUtils postProcessDepth:selfCopy->_itmUnprocessedOutputDisparity depthOutput:depth];
          if (execute)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            *v34 = 0;
            v22 = MEMORY[0x277D86220];
            v23 = "failed post-processing disparity";
            goto LABEL_14;
          }

          [logger logPixelBuffer:depth name:"outputConvertedUnits" timestamp:v17];
          [timeProfiler stopWithUTFString:"postprocess depth"];
          kdebug_trace();
          if (stepsToExecute != 3)
          {
            [(ADExecutor *)selfCopy frameExecutionEnd];
            execute = 0;
            goto LABEL_22;
          }
        }
      }
    }

    execute = -22977;
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
  }

  execute = -22960;
LABEL_23:
  objc_sync_exit(selfCopy);

  return execute;
}

- (__CVBuffer)createDepthBuffer
{
  inferenceDescriptor = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor disparityOutput];
  imageDescriptor = [disparityOutput imageDescriptor];

  [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  v7 = v6;
  v9 = v8;
  LODWORD(inferenceDescriptor) = [imageDescriptor pixelFormat];
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v9, inferenceDescriptor, BufferAttributes, &pixelBufferOut))
  {
    v11 = 0;
  }

  else
  {
    v11 = pixelBufferOut;
  }

  return v11;
}

- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 335682464;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  selfCopy->_isPrepared = 0;
  inferenceDescriptor = [(ADMonocularStillsPipeline *)selfCopy->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (height)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v14 = MEMORY[0x277D86220];
      v15 = "prepareForEngineType failed";
LABEL_7:
      _os_log_error_impl(&dword_2402F6000, v14, OS_LOG_TYPE_ERROR, v15, v17, 2u);
    }
  }

  else
  {
    height = [(ADMonocularStillsExecutor *)selfCopy allocateIntermediateBuffers];
    if (!height)
    {
      selfCopy->_isPrepared = 1;
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v14 = MEMORY[0x277D86220];
      v15 = "failed to allocate intermediate buffers";
      goto LABEL_7;
    }
  }

LABEL_9:

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularStillsExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor2 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  if (self->_itmPreProcessedColor && self->_itmUnprocessedOutputDisparity)
  {
    return 0;
  }

  [(ADMonocularStillsExecutor *)self deallocateEspressoBuffers];
  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmUnprocessedOutputDisparity);
  self->_itmUnprocessedOutputDisparity = 0;
}

- (ADMonocularStillsExecutor)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v13 = 335683744;
  v14 = 0u;
  v15 = 0u;
  kdebug_trace();
  v12.receiver = self;
  v12.super_class = ADMonocularStillsExecutor;
  v5 = [(ADExecutor *)&v12 init];
  if (v5)
  {
    v6 = [ADMonocularStillsPipeline alloc];
    pipelineParameters = [parametersCopy pipelineParameters];
    v8 = [(ADMonocularStillsPipeline *)v6 initWithParameters:pipelineParameters];
    pipeline = v5->_pipeline;
    v5->_pipeline = v8;

    if (!v5->_pipeline || !parametersCopy && (parametersCopy = [[ADMonocularStillsExecutorParameters alloc] initForPipeline:v5->_pipeline]) == 0)
    {
      v10 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v5 setExecutorParameters:parametersCopy];
    v5->_itmPreProcessedColor = 0;
    v5->_itmUnprocessedOutputDisparity = 0;
    v5->_itmCroppedScaledColor = 0;
    v5->_itmRotatedColor = 0;
    v5->_isPrepared = 0;
  }

  v10 = v5;
LABEL_8:
  kdebug_trace();

  return v10;
}

- (id)initForDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  v5 = objc_opt_new();
  pipelineParameters = [v5 pipelineParameters];
  [pipelineParameters setRequestedDimensions:dimensionsCopy];

  v7 = [(ADMonocularStillsExecutor *)self initWithParameters:v5];
  return v7;
}

@end