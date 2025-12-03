@interface ADMonocularVideoExecutor
- (ADMonocularVideoExecutor)initWithParameters:(id)parameters;
- (__CVBuffer)prevColorFeatures;
- (__CVBuffer)prevDepthFeatures;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)color efl:(float)efl outDisparityMap:(__CVBuffer *)map;
- (int64_t)prepareForEngineType:(unint64_t)type;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADMonocularVideoExecutor

- (id)getIntermediates
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  shouldPreProcessColorInputs = [(ADMonocularVideoPipeline *)self->_pipeline shouldPreProcessColorInputs];
  v5 = &OBJC_IVAR___ADMonocularVideoExecutor__refColor;
  if (shouldPreProcessColorInputs)
  {
    v5 = &OBJC_IVAR___ADMonocularVideoExecutor__itmChunkyRefColor;
  }

  v6 = *(&self->super.super.isa + *v5);
  if (v6)
  {
    v25[0] = @"name";
    v25[1] = @"image";
    v26[0] = @"PreProcessed Reference";
    v26[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v3 addObject:v7];
  }

  itmPrevColorFeatures = self->_itmPrevColorFeatures;
  if (itmPrevColorFeatures)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"Previous Color Features";
    v24[1] = itmPrevColorFeatures;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v9];
  }

  itmPrevDepthFeatures = self->_itmPrevDepthFeatures;
  if (itmPrevDepthFeatures)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"Previous Depth Features";
    v22[1] = itmPrevDepthFeatures;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v11];
  }

  itmColorFeaturesOutput = self->_itmColorFeaturesOutput;
  if (itmColorFeaturesOutput)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"Output Color Features";
    v20[1] = itmColorFeaturesOutput;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v13];
  }

  itmDepthFeaturesOutput = self->_itmDepthFeaturesOutput;
  if (itmDepthFeaturesOutput)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"Output Depth Features";
    v18[1] = itmDepthFeaturesOutput;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v15];
  }

  return v3;
}

- (void)dealloc
{
  [(ADMonocularVideoExecutor *)self deallocateEspressoBuffers];
  CVPixelBufferRelease(self->_itmCroppedScaledRefColor);
  CVPixelBufferRelease(self->_itmRotatedRefColor);
  CVPixelBufferRelease(self->_itmChunkyRefColor);
  v3.receiver = self;
  v3.super_class = ADMonocularVideoExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithColor:(__CVBuffer *)color efl:(float)efl outDisparityMap:(__CVBuffer *)map
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isPrepared)
  {
    execute = [(ADMonocularVideoExecutor *)selfCopy prepareForEngineType:selfCopy->super._engineType];
    if (execute)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_37;
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
      v14 = v13;

      *buf = 335685464;
      v57 = 0u;
      v58 = 0u;
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
        shouldPreProcessColorInputs = [(ADMonocularVideoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs];
        v20 = &OBJC_IVAR___ADMonocularVideoExecutor__refColor;
        if (shouldPreProcessColorInputs)
        {
          v20 = &OBJC_IVAR___ADMonocularVideoExecutor__itmChunkyRefColor;
        }

        v21 = *(&selfCopy->super.super.isa + *v20);
        execute = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:v21 scaleInto:&selfCopy->_itmCroppedScaledRefColor intermediateScalingBuffer:&selfCopy->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        if (execute)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_36:

            kdebug_trace();
            goto LABEL_37;
          }

          *v55 = 0;
          v22 = MEMORY[0x277D86220];
          v23 = "failed converting ref image";
LABEL_13:
          _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, v55, 2u);
          goto LABEL_36;
        }

        if ([(ADMonocularVideoPipeline *)selfCopy->_pipeline shouldPreProcessColorInputs])
        {
          execute = [(ADMonocularVideoPipeline *)selfCopy->_pipeline preProcessColorInput:v21 toBuffer:selfCopy->_refColor];
          if (execute)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            *v55 = 0;
            v22 = MEMORY[0x277D86220];
            v23 = "failed pre processing ref image";
            goto LABEL_13;
          }
        }

        [logger logPixelBuffer:selfCopy->_refColor name:"refColorProcessed" timestamp:v14];
        [logger logPixelBuffer:selfCopy->_itmPrevDepthFeatures name:"prevDepthFeatures" timestamp:v14];
        [logger logPixelBuffer:selfCopy->_itmPrevColorFeatures name:"prevColorFeatures" timestamp:v14];
        _S10 = 1.0;
        if (efl > 0.0)
        {
          Width = CVPixelBufferGetWidth(selfCopy->_refColor);
          Height = CVPixelBufferGetHeight(selfCopy->_refColor);
          if (Width <= Height)
          {
            v27 = Height;
          }

          else
          {
            v27 = Width;
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
          [(ADMonocularVideoPipeline *)selfCopy->_pipeline getMetricScaleFactorForEFL:v30];
          _S10 = v32;
        }

        scaleFactorBuffer = selfCopy->_scaleFactorBuffer;
        if (scaleFactorBuffer)
        {
          CVPixelBufferLockBaseAddress(scaleFactorBuffer, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(selfCopy->_scaleFactorBuffer);
          __asm { FCVT            H0, S10 }

          *BaseAddress = _H0;
          CVPixelBufferUnlockBaseAddress(selfCopy->_scaleFactorBuffer, 0);
        }

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
              goto LABEL_36;
            }

            *v55 = 0;
            v22 = MEMORY[0x277D86220];
            v23 = "failed executing espresso plan";
            goto LABEL_13;
          }

          [logger logPixelBuffer:selfCopy->_disparity name:"outputDisparity" timestamp:v14];
          [logger logPixelBuffer:selfCopy->_itmColorFeaturesOutput name:"outputColorFeatures" timestamp:v14];
          [logger logPixelBuffer:selfCopy->_itmDepthFeaturesOutput name:"outputDepthFeatures" timestamp:v14];
          [timeProfiler stopWithUTFString:"network execution"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"postprocess depth"];
            if (!*map)
            {
              disparity = selfCopy->_disparity;
              PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
              *map = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
            }

            if (_S10 != 1.0 && !selfCopy->_scaleFactorBuffer)
            {
              PixelBufferUtils::inPlaceColorScaling(selfCopy->_disparity, 1, _S10, 0.0, 1);
            }

            execute = [ADUtils postProcessDepth:selfCopy->_disparity depthOutput:?];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              *v55 = 0;
              v22 = MEMORY[0x277D86220];
              v23 = "failed converting disparity";
              goto LABEL_13;
            }

            [logger logPixelBuffer:*map name:"outputDisparityConvertedUnits" timestamp:v14];
            [timeProfiler stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess previous depth"];
              executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
              temporalConsistencyActive = [executorParameters4 temporalConsistencyActive];

              if (temporalConsistencyActive)
              {
                if (selfCopy->_itmPrevDepthFeatures)
                {
                  espressoRunner = selfCopy->super._espressoRunner;
                  inferenceDescriptor = [(ADMonocularVideoPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  prevDepthFeaturesInput = [inferenceDescriptor prevDepthFeaturesInput];
                  inferenceDescriptor2 = [(ADMonocularVideoPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  depthFeaturesOutput = [inferenceDescriptor2 depthFeaturesOutput];
                  execute = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevDepthFeatures inputDescriptor:prevDepthFeaturesInput outputBuffer:&selfCopy->_itmDepthFeaturesOutput outputDescriptor:depthFeaturesOutput];

                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_36;
                    }

                    *v55 = 0;
                    v22 = MEMORY[0x277D86220];
                    v23 = "failed updating previous depth features";
                    goto LABEL_13;
                  }
                }

                if (selfCopy->_itmPrevColorFeatures)
                {
                  v48 = selfCopy->super._espressoRunner;
                  inferenceDescriptor3 = [(ADMonocularVideoPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  prevColorFeaturesInput = [inferenceDescriptor3 prevColorFeaturesInput];
                  inferenceDescriptor4 = [(ADMonocularVideoPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  colorFeaturesOutput = [inferenceDescriptor4 colorFeaturesOutput];
                  execute = [(ADEspressoRunnerProtocol *)v48 updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevColorFeatures inputDescriptor:prevColorFeaturesInput outputBuffer:&selfCopy->_itmColorFeaturesOutput outputDescriptor:colorFeaturesOutput];

                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_36;
                    }

                    *v55 = 0;
                    v22 = MEMORY[0x277D86220];
                    v23 = "failed updating previous color features";
                    goto LABEL_13;
                  }
                }
              }

              [timeProfiler stopWithUTFString:"postprocess previous depth"];
              kdebug_trace();
              if (stepsToExecute >= 5)
              {
                [(ADExecutor *)selfCopy frameExecutionEnd];
                execute = 0;
                goto LABEL_36;
              }
            }
          }
        }
      }

      execute = -22977;
      goto LABEL_36;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", buf, 2u);
    }

    execute = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
    }

    execute = -22960;
  }

LABEL_37:
  objc_sync_exit(selfCopy);

  return execute;
}

- (__CVBuffer)prevDepthFeatures
{
  executorParameters = [(ADExecutor *)self executorParameters];
  temporalConsistencyActive = [executorParameters temporalConsistencyActive];

  if (temporalConsistencyActive)
  {
    return self->_itmPrevDepthFeatures;
  }

  else
  {
    return 0;
  }
}

- (__CVBuffer)prevColorFeatures
{
  executorParameters = [(ADExecutor *)self executorParameters];
  temporalConsistencyActive = [executorParameters temporalConsistencyActive];

  if (temporalConsistencyActive)
  {
    return self->_itmPrevColorFeatures;
  }

  else
  {
    return 0;
  }
}

- (int64_t)prepareForEngineType:(unint64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 335683364;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  allocateIntermediateBuffers = [(ADMonocularVideoPipeline *)selfCopy->_pipeline adjustForEngine:type];
  if (allocateIntermediateBuffers)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v18, 2u);
    }
  }

  else
  {
    inferenceDescriptor = [(ADMonocularVideoPipeline *)selfCopy->_pipeline inferenceDescriptor];
    colorInput = [inferenceDescriptor colorInput];
    imageDescriptor = [colorInput imageDescriptor];
    [imageDescriptor sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    colorInput2 = [inferenceDescriptor colorInput];
    imageDescriptor2 = [colorInput2 imageDescriptor];
    allocateIntermediateBuffers = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor2 descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:0.0, 0.0, v10, v12];

    if (allocateIntermediateBuffers)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v18, 2u);
      }
    }

    else
    {
      allocateIntermediateBuffers = [(ADMonocularVideoExecutor *)selfCopy allocateIntermediateBuffers];
      PixelBufferUtils::blacken(selfCopy->_itmPrevDepthFeatures, v15);
      PixelBufferUtils::blacken(selfCopy->_itmPrevColorFeatures, v16);
      selfCopy->_isPrepared = allocateIntermediateBuffers == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return allocateIntermediateBuffers;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularVideoExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor2 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  inferenceDescriptor3 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  outputScale = [inferenceDescriptor3 outputScale];

  if (outputScale)
  {
    v11 = self->super._espressoRunner;
    inferenceDescriptor4 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
    outputScale2 = [inferenceDescriptor4 outputScale];
    self->_scaleFactorBuffer = [(ADEspressoRunnerProtocol *)v11 createAndRegisterPixelBufferForDescriptor:outputScale2];
  }

  v14 = self->super._espressoRunner;
  inferenceDescriptor5 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  prevDepthFeaturesInput = [inferenceDescriptor5 prevDepthFeaturesInput];
  self->_itmPrevDepthFeatures = [(ADEspressoRunnerProtocol *)v14 createAndRegisterPixelBufferForDescriptor:prevDepthFeaturesInput];

  v17 = self->super._espressoRunner;
  inferenceDescriptor6 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  prevColorFeaturesInput = [inferenceDescriptor6 prevColorFeaturesInput];
  self->_itmPrevColorFeatures = [(ADEspressoRunnerProtocol *)v17 createAndRegisterPixelBufferForDescriptor:prevColorFeaturesInput];

  v20 = self->super._espressoRunner;
  inferenceDescriptor7 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  depthFeaturesOutput = [inferenceDescriptor7 depthFeaturesOutput];
  self->_itmDepthFeaturesOutput = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:depthFeaturesOutput];

  v23 = self->super._espressoRunner;
  inferenceDescriptor8 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  colorFeaturesOutput = [inferenceDescriptor8 colorFeaturesOutput];
  self->_itmColorFeaturesOutput = [(ADEspressoRunnerProtocol *)v23 createAndRegisterPixelBufferForDescriptor:colorFeaturesOutput];

  self->_itmChunkyRefColor = PixelBufferUtils::createPixelBufferCopy(self->_refColor, v26);
  return 0;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_refColor);
  self->_refColor = 0;
  CVPixelBufferRelease(self->_disparity);
  self->_disparity = 0;
  CVPixelBufferRelease(self->_scaleFactorBuffer);
  self->_scaleFactorBuffer = 0;
  CVPixelBufferRelease(self->_itmPrevDepthFeatures);
  self->_itmPrevDepthFeatures = 0;
  CVPixelBufferRelease(self->_itmPrevColorFeatures);
  self->_itmPrevColorFeatures = 0;
  CVPixelBufferRelease(self->_itmDepthFeaturesOutput);
  self->_itmDepthFeaturesOutput = 0;
  CVPixelBufferRelease(self->_itmColorFeaturesOutput);
  self->_itmColorFeaturesOutput = 0;
}

- (ADMonocularVideoExecutor)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v14 = 335683796;
  v15 = 0u;
  v16 = 0u;
  kdebug_trace();
  self->_isPrepared = 0;
  v13.receiver = self;
  v13.super_class = ADMonocularVideoExecutor;
  v5 = [(ADExecutor *)&v13 init];
  if (!v5)
  {
LABEL_7:
    executorParameters = v5;
    goto LABEL_8;
  }

  if (!parametersCopy)
  {
    parametersCopy = objc_opt_new();
  }

  [(ADExecutor *)v5 setExecutorParameters:parametersCopy];
  executorParameters = [(ADExecutor *)v5 executorParameters];

  if (executorParameters)
  {
    v7 = [ADMonocularVideoPipeline alloc];
    executorParameters2 = [(ADExecutor *)v5 executorParameters];
    pipelineParameters = [executorParameters2 pipelineParameters];
    v10 = [(ADMonocularVideoPipeline *)v7 initWithParameters:pipelineParameters];
    pipeline = v5->_pipeline;
    v5->_pipeline = v10;

    if (!v5->_pipeline)
    {
      executorParameters = 0;
      goto LABEL_8;
    }

    v5->_scaleFactorBuffer = 0;
    v5->_refColor = 0;
    v5->_itmChunkyRefColor = 0;
    v5->_itmCroppedScaledRefColor = 0;
    v5->_itmRotatedRefColor = 0;
    v5->_itmPrevDepthFeatures = 0;
    v5->_itmPrevColorFeatures = 0;
    v5->_disparity = 0;
    v5->_itmDepthFeaturesOutput = 0;
    v5->_itmColorFeaturesOutput = 0;
    goto LABEL_7;
  }

LABEL_8:
  kdebug_trace();

  return executorParameters;
}

@end