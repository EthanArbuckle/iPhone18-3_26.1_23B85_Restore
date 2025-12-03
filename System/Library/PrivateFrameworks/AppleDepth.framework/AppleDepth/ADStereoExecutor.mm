@interface ADStereoExecutor
- (ADStereoExecutor)initWithInputAlignment:(unint64_t)alignment prioritization:(int64_t)prioritization andParameters:(id)parameters;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor outDisparityMap:(__CVBuffer *)map;
- (int64_t)prepareForEngineType:(unint64_t)type;
- (int64_t)prepareWithBestEngine;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADStereoExecutor

- (void)dealloc
{
  CVPixelBufferRelease(self->_refColor);
  CVPixelBufferRelease(self->_itmCroppedScaledRefColor);
  CVPixelBufferRelease(self->_itmRotatedRefColor);
  CVPixelBufferRelease(self->_itmChunkyRefColor);
  CVPixelBufferRelease(self->_auxColor);
  CVPixelBufferRelease(self->_itmCroppedScaledAuxColor);
  CVPixelBufferRelease(self->_itmRotatedAuxColor);
  CVPixelBufferRelease(self->_itmChunkyAuxColor);
  CVPixelBufferRelease(self->_disparity);
  v3.receiver = self;
  v3.super_class = ADStereoExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor outDisparityMap:(__CVBuffer *)map
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prepareWithBestEngine = [(ADStereoExecutor *)selfCopy prepareWithBestEngine];
  if (prepareWithBestEngine)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v36, 2u);
    }

    goto LABEL_4;
  }

  if (selfCopy->super._espressoRunner)
  {
    if (map)
    {
      executorParameters = [(ADExecutor *)selfCopy executorParameters];
      logger = [executorParameters logger];

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v15 = v14;

      *v36 = 335685944;
      v37 = 0u;
      v38 = 0u;
      kdebug_trace();
      [logger logPixelBuffer:color name:"refColor" timestamp:v15];
      [logger logPixelBuffer:auxColor name:"auxColor" timestamp:v15];
      executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
      stepsToExecute = [executorParameters2 stepsToExecute];

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      timeProfiler = [executorParameters3 timeProfiler];

      if (stepsToExecute >= 1)
      {
        v32 = stepsToExecute;
        v34 = timeProfiler;
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [(ADExecutor *)selfCopy frameExecutionStart];
        shouldPreProcessColorInputs = [(ADStereoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs];
        v21 = &OBJC_IVAR___ADStereoExecutor__refColor;
        if (shouldPreProcessColorInputs)
        {
          v21 = &OBJC_IVAR___ADStereoExecutor__itmChunkyRefColor;
        }

        v22 = *(&selfCopy->super.super.isa + *v21);
        v23 = MEMORY[0x277CBF3A0];
        prepareWithBestEngine = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:v22 scaleInto:&selfCopy->_itmCroppedScaledRefColor intermediateScalingBuffer:&selfCopy->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v32];
        if ([(ADStereoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs])
        {
          [(ADStereoPipeline *)selfCopy->_pipeline preProcessColorInput:v22 toBuffer:selfCopy->_refColor];
        }

        if (prepareWithBestEngine)
        {
          timeProfiler = v34;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_33:

            kdebug_trace();
            goto LABEL_4;
          }

          *buf = 0;
          v24 = MEMORY[0x277D86220];
          v25 = "failed converting ref image";
LABEL_15:
          _os_log_error_impl(&dword_2402F6000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
          goto LABEL_33;
        }

        [v34 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v33 == 1)
        {
          prepareWithBestEngine = -22977;
          timeProfiler = v34;
          goto LABEL_33;
        }

        kdebug_trace();
        [v34 startWithUTFString:"preprocess auxiliary color"];
        timeProfiler = v34;
        shouldPreProcessColorInputs2 = [(ADStereoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs];
        v27 = &OBJC_IVAR___ADStereoExecutor__auxColor;
        if (shouldPreProcessColorInputs2)
        {
          v27 = &OBJC_IVAR___ADStereoExecutor__itmChunkyAuxColor;
        }

        v28 = *(&selfCopy->super.super.isa + *v27);
        prepareWithBestEngine = [ADUtils scaleConvertRotateImage:auxColor rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:v28 scaleInto:&selfCopy->_itmCroppedScaledAuxColor intermediateScalingBuffer:&selfCopy->_itmRotatedAuxColor intermediateRotatingBuffer:1 useVT:*v23, v23[1], v23[2], v23[3]];
        if ([(ADStereoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs])
        {
          [(ADStereoPipeline *)selfCopy->_pipeline preProcessColorInput:v28 toBuffer:selfCopy->_auxColor];
        }

        if (prepareWithBestEngine)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v24 = MEMORY[0x277D86220];
          v25 = "failed converting aux image";
          goto LABEL_15;
        }

        [logger logPixelBuffer:selfCopy->_refColor name:"refColorProcessed" timestamp:v15];
        [logger logPixelBuffer:selfCopy->_auxColor name:"auxColorProcessed" timestamp:v15];
        [v34 stopWithUTFString:"preprocess auxiliary color"];
        kdebug_trace();
        if (v33 >= 3)
        {
          kdebug_trace();
          [v34 startWithUTFString:"network execution"];
          prepareWithBestEngine = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
          if (prepareWithBestEngine)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_33;
            }

            *buf = 0;
            v24 = MEMORY[0x277D86220];
            v25 = "failed executing espresso plan";
            goto LABEL_15;
          }

          [logger logPixelBuffer:selfCopy->_disparity name:"disparityOut" timestamp:v15];
          [v34 stopWithUTFString:"network execution"];
          kdebug_trace();
          if (v33 != 3)
          {
            kdebug_trace();
            [v34 startWithUTFString:"postprocess depth"];
            PixelBufferWithSameSize = *map;
            if (!*map)
            {
              disparity = selfCopy->_disparity;
              PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
              PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
              *map = PixelBufferWithSameSize;
            }

            if (PixelBufferUtils::copyPixelBuffer(PixelBufferWithSameSize, selfCopy->_disparity, 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed copying disparity to output buffer. please verify buffer dimensions", buf, 2u);
              }

              prepareWithBestEngine = -22950;
              goto LABEL_33;
            }

            [logger logPixelBuffer:*map name:"disparityOutProcessed" timestamp:v15];
            [v34 stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (v33 >= 5)
            {
              [(ADExecutor *)selfCopy frameExecutionEnd];
              prepareWithBestEngine = 0;
              goto LABEL_33;
            }
          }
        }
      }

      prepareWithBestEngine = -22977;
      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", v36, 2u);
    }

    prepareWithBestEngine = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", v36, 2u);
    }

    prepareWithBestEngine = -22960;
  }

LABEL_4:
  objc_sync_exit(selfCopy);

  return prepareWithBestEngine;
}

- (int64_t)prepareWithBestEngine
{
  if (self->_isPrepared || ![(ADStereoExecutor *)self prepareForEngineType:4])
  {
    return 0;
  }

  return [(ADStereoExecutor *)self prepareForEngineType:0];
}

- (int64_t)prepareForEngineType:(unint64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  kdebug_trace();
  height = [(ADStereoPipeline *)selfCopy->_pipeline adjustForEngine:type];
  if (!height)
  {
    inferenceDescriptor = [(ADStereoPipeline *)selfCopy->_pipeline inferenceDescriptor];
    referenceInput = [inferenceDescriptor referenceInput];
    imageDescriptor = [referenceInput imageDescriptor];
    [imageDescriptor sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    selfCopy->_refColorROI.origin.x = 0.0;
    selfCopy->_refColorROI.origin.y = 0.0;
    selfCopy->_refColorROI.size.width = v10;
    selfCopy->_refColorROI.size.height = v12;
    auxiliaryInput = [inferenceDescriptor auxiliaryInput];
    imageDescriptor2 = [auxiliaryInput imageDescriptor];
    [imageDescriptor2 sizeForLayout:255];
    v16 = v15;
    v18 = v17;

    selfCopy->_auxColorROI.origin.x = 0.0;
    selfCopy->_auxColorROI.origin.y = 0.0;
    selfCopy->_auxColorROI.size.width = v16;
    selfCopy->_auxColorROI.size.height = v18;
    x = selfCopy->_refColorROI.origin.x;
    y = selfCopy->_refColorROI.origin.y;
    width = selfCopy->_refColorROI.size.width;
    height = selfCopy->_refColorROI.size.height;
    referenceInput2 = [inferenceDescriptor referenceInput];
    imageDescriptor3 = [referenceInput2 imageDescriptor];
    height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor3 descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

    if (!height)
    {
      height = [(ADStereoExecutor *)selfCopy allocateIntermediateBuffers];
      selfCopy->_isPrepared = height == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADStereoExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  referenceInput = [inferenceDescriptor referenceInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:referenceInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  auxiliaryInput = [inferenceDescriptor2 auxiliaryInput];
  self->_auxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:auxiliaryInput];

  v9 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor3 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  refColor = self->_refColor;
  if (refColor && self->_auxColor && self->_disparity)
  {
    self->_itmChunkyRefColor = PixelBufferUtils::createPixelBufferCopy(refColor, v12);
    PixelBufferCopy = PixelBufferUtils::createPixelBufferCopy(self->_auxColor, v14);
    result = 0;
    self->_itmChunkyAuxColor = PixelBufferCopy;
  }

  else
  {
    [(ADStereoExecutor *)self deallocateEspressoBuffers];
    return -22971;
  }

  return result;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_refColor);
  self->_refColor = 0;
  CVPixelBufferRelease(self->_auxColor);
  self->_auxColor = 0;
  CVPixelBufferRelease(self->_disparity);
  self->_disparity = 0;
}

- (ADStereoExecutor)initWithInputAlignment:(unint64_t)alignment prioritization:(int64_t)prioritization andParameters:(id)parameters
{
  parametersCopy = parameters;
  v19 = 335681024;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  v18.receiver = self;
  v18.super_class = ADStereoExecutor;
  v9 = [(ADExecutor *)&v18 init];
  if (v9)
  {
    v10 = [ADStereoPipeline alloc];
    pipelineParameters = [parametersCopy pipelineParameters];
    v12 = [(ADStereoPipeline *)v10 initWithInputAlignment:alignment prioritization:prioritization andParameters:pipelineParameters];
    pipeline = v9->_pipeline;
    v9->_pipeline = v12;

    if (!v9->_pipeline)
    {
      v16 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v9 setExecutorParameters:parametersCopy];
    executorParameters = [(ADExecutor *)v9 executorParameters];

    if (!executorParameters)
    {
      v15 = [[ADStereoExecutorParameters alloc] initForPipeline:v9->_pipeline];
      [(ADExecutor *)v9 setExecutorParameters:v15];
    }

    v9->_refColor = 0;
    v9->_itmCroppedScaledRefColor = 0;
    v9->_itmRotatedRefColor = 0;
    v9->_itmChunkyRefColor = 0;
    v9->_auxColor = 0;
    v9->_itmCroppedScaledAuxColor = 0;
    v9->_itmRotatedAuxColor = 0;
    v9->_itmChunkyAuxColor = 0;
    v9->_disparity = 0;
    v9->_isPrepared = 0;
  }

  v16 = v9;
LABEL_8:
  kdebug_trace();

  return v16;
}

@end