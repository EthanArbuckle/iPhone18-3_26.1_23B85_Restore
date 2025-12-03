@interface ADMonocularExecutor
- (ADMonocularExecutor)initWithInputPrioritization:(int64_t)prioritization;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)color outDepthMap:(__CVBuffer *)map;
- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADMonocularExecutor

- (id)getIntermediates
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"CroppedScaledColor";
    v24[1] = itmCroppedScaledColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v5];
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"RotatedColor";
    v22[1] = itmRotatedColor;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"PreProcessedColor";
    v20[1] = itmPreProcessedColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v9];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"UnprocessedDepth";
    v18[1] = itmUnprocessedDepth;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v11];
  }

  itmPostProcessedDepth = self->_itmPostProcessedDepth;
  if (itmPostProcessedDepth)
  {
    v15[0] = @"name";
    v15[1] = @"image";
    v16[0] = @"PostProcessedDepth";
    v16[1] = itmPostProcessedDepth;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)dealloc
{
  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    CVPixelBufferRelease(itmCroppedScaledColor);
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    CVPixelBufferRelease(itmRotatedColor);
  }

  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    CVPixelBufferRelease(itmPreProcessedColor);
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    CVPixelBufferRelease(itmUnprocessedDepth);
  }

  itmPostProcessedDepth = self->_itmPostProcessedDepth;
  if (itmPostProcessedDepth)
  {
    CVPixelBufferRelease(itmPostProcessedDepth);
  }

  v8.receiver = self;
  v8.super_class = ADMonocularExecutor;
  [(ADExecutor *)&v8 dealloc];
}

- (int64_t)executeWithColor:(__CVBuffer *)color outDepthMap:(__CVBuffer *)map
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_prepared)
  {
    Width = CVPixelBufferGetWidth(color);
    execute = [(ADMonocularExecutor *)selfCopy prepareForEngineType:4 roi:1 exifOrientation:0.0, 0.0, Width, CVPixelBufferGetHeight(color)];
    if (execute)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing with default configuration. Try calling prepare with arguments matching your inputs", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  if (selfCopy->super._espressoRunner)
  {
    if (map)
    {
      executorParameters = [(ADExecutor *)selfCopy executorParameters];
      logger = [executorParameters logger];

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v13 = v12;

      *buf = 335683096;
      v32 = 0u;
      v33 = 0u;
      kdebug_trace();
      [logger logPixelBuffer:color name:"inputColor" timestamp:v13];
      executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
      stepsToExecute = [executorParameters2 stepsToExecute];

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      timeProfiler = [executorParameters3 timeProfiler];

      if (stepsToExecute >= 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [(ADExecutor *)selfCopy frameExecutionStart];
        execute = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:selfCopy->_itmPreProcessedColor scaleInto:&selfCopy->_itmCroppedScaledColor intermediateScalingBuffer:&selfCopy->_itmRotatedColor intermediateRotatingBuffer:0 useVT:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
        if (execute)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_20:

            kdebug_trace();
            goto LABEL_21;
          }

          *v30 = 0;
          v18 = MEMORY[0x277D86220];
          v19 = "failed scaling color image";
LABEL_11:
          _os_log_error_impl(&dword_2402F6000, v18, OS_LOG_TYPE_ERROR, v19, v30, 2u);
          goto LABEL_20;
        }

        [logger logPixelBuffer:selfCopy->_itmPreProcessedColor name:"processedColor" timestamp:v13];
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
              goto LABEL_20;
            }

            *v30 = 0;
            v18 = MEMORY[0x277D86220];
            v19 = "failed executing espresso plan";
            goto LABEL_11;
          }

          [logger logPixelBuffer:selfCopy->_itmUnprocessedDepth name:"depthOut" timestamp:v13];
          [timeProfiler stopWithUTFString:"network execution"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"postprocess depth"];
            execute = [(ADMonocularPipeline *)selfCopy->_pipeline postProcessWithDepth:selfCopy->_itmUnprocessedDepth depthOutput:selfCopy->_itmPostProcessedDepth];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              *v30 = 0;
              v18 = MEMORY[0x277D86220];
              v19 = "failed post processing network output";
              goto LABEL_11;
            }

            [logger logPixelBuffer:selfCopy->_itmPostProcessedDepth name:"depthOutProcessed" timestamp:v13];
            [timeProfiler stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"output rotation"];
              rotationConstant = selfCopy->super._rotationConstant;
              if (rotationConstant == 3)
              {
                rotationConstant = 1;
              }

              else if (rotationConstant == 1)
              {
                rotationConstant = 3;
              }

              v22 = *map;
              if (!*map)
              {
                processedDepthOutputDescriptor = [(ADMonocularPipeline *)selfCopy->_pipeline processedDepthOutputDescriptor];
                [processedDepthOutputDescriptor sizeForLayout:{-[ADExecutor layout](selfCopy, "layout")}];
                v26 = v24;
                if ((rotationConstant | 2) == 3)
                {
                  v27 = v25;
                }

                else
                {
                  v27 = v24;
                  v26 = v25;
                }

                processedDepthOutputDescriptor2 = [(ADMonocularPipeline *)selfCopy->_pipeline processedDepthOutputDescriptor];
                pixelFormat = [processedDepthOutputDescriptor2 pixelFormat];
                v34.width = v27;
                v34.height = v26;
                *map = PixelBufferUtils::createPixelBuffer(pixelFormat, v34, 1);

                v22 = *map;
              }

              if (PixelBufferUtils::rotatePixelBuffer(selfCopy->_itmPostProcessedDepth, v22, rotationConstant, 0))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v30 = 0;
                  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed rotating depth. please verify output buffer dimensions", v30, 2u);
                }

                execute = -22950;
                goto LABEL_20;
              }

              [(ADExecutor *)selfCopy convertIntrinsicsFrom:color cropBy:*map to:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
              [logger logPixelBuffer:*map name:"depthOutProcessedRotated" priority:0 timestamp:v13];
              [timeProfiler stopWithUTFString:"output rotation"];
              kdebug_trace();
              if (stepsToExecute >= 5)
              {
                [(ADExecutor *)selfCopy frameExecutionEnd];
                execute = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }

      execute = -22977;
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to CVPixelBufferRef", buf, 2u);
    }

    execute = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", buf, 2u);
    }

    execute = -22960;
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  return execute;
}

- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference
{
  v7 = *&orientation;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  kdebug_trace();
  inferenceDescriptor = [(ADMonocularPipeline *)selfCopy->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:v7 exifOrientation:preference rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height)
  {
    height = [(ADMonocularExecutor *)selfCopy allocateIntermediateBuffers];
    selfCopy->_prepared = height == 0;
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
  depthOutput = [inferenceDescriptor2 depthOutput];
  self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:depthOutput];

  if (self->_itmPreProcessedColor && self->_itmUnprocessedDepth)
  {
    inferenceDescriptor3 = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
    depthOutput2 = [inferenceDescriptor3 depthOutput];
    imageDescriptor = [depthOutput2 imageDescriptor];

    [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
    +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmPostProcessedDepth, v12, v13);
    if (self->_itmPostProcessedDepth)
    {
      v14 = 0;
    }

    else
    {
      [(ADMonocularExecutor *)self deallocateEspressoBuffers];
      v14 = -22965;
    }
  }

  else
  {
    [(ADMonocularExecutor *)self deallocateEspressoBuffers];
    return -22971;
  }

  return v14;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
}

- (ADMonocularExecutor)initWithInputPrioritization:(int64_t)prioritization
{
  v12 = 335685792;
  prioritizationCopy = prioritization;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v11.receiver = self;
  v11.super_class = ADMonocularExecutor;
  v5 = [(ADExecutor *)&v11 init];
  if (v5)
  {
    v6 = [[ADMonocularPipeline alloc] initWithInputPrioritization:prioritization];
    pipeline = v5->_pipeline;
    v5->_pipeline = v6;

    if (!v5->_pipeline)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v8 = [[ADMonocularExecutorParameters alloc] initForPipeline:v5->_pipeline];
    [(ADExecutor *)v5 setExecutorParameters:v8];

    v5->_prepared = 0;
    v5->_itmCroppedScaledColor = 0;
    v5->_itmRotatedColor = 0;
    v5->_itmPreProcessedColor = 0;
    v5->_itmUnprocessedDepth = 0;
    v5->_itmPostProcessedDepth = 0;
  }

  v9 = v5;
LABEL_6:
  kdebug_trace();

  return v9;
}

@end