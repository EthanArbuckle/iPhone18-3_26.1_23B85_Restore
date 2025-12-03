@interface ADStereoV2Executor
- (ADStereoV2Executor)initWithParameters:(id)parameters;
- (__CVBuffer)prevColorFeatures;
- (__CVBuffer)prevDepthFeatures;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor outDisparityMap:(__CVBuffer *)map;
- (int64_t)prepareForEngineType:(unint64_t)type;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADStereoV2Executor

- (id)getIntermediates
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  shouldPreProcessColorInputs = [(ADStereoV2Pipeline *)self->_pipeline shouldPreProcessColorInputs];
  v5 = &OBJC_IVAR___ADStereoV2Executor__refColor;
  if (shouldPreProcessColorInputs)
  {
    v5 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyRefColor;
  }

  v6 = *(&self->super.super.isa + *v5);
  if (v6)
  {
    v31[0] = @"name";
    v31[1] = @"image";
    v32[0] = @"PreProcessed Reference";
    v32[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 addObject:v7];
  }

  shouldPreProcessColorInputs2 = [(ADStereoV2Pipeline *)self->_pipeline shouldPreProcessColorInputs];
  v9 = &OBJC_IVAR___ADStereoV2Executor__auxColor;
  if (shouldPreProcessColorInputs2)
  {
    v9 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyAuxColor;
  }

  v10 = *(&self->super.super.isa + *v9);
  if (v10)
  {
    v29[0] = @"name";
    v29[1] = @"image";
    v30[0] = @"PreProcessed Auxerence";
    v30[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v3 addObject:v11];
  }

  itmPrevColorFeatures = self->_itmPrevColorFeatures;
  if (itmPrevColorFeatures)
  {
    v27[0] = @"name";
    v27[1] = @"image";
    v28[0] = @"Previous Color Features";
    v28[1] = itmPrevColorFeatures;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 addObject:v13];
  }

  itmPrevDepthFeatures = self->_itmPrevDepthFeatures;
  if (itmPrevDepthFeatures)
  {
    v25[0] = @"name";
    v25[1] = @"image";
    v26[0] = @"Previous Depth Features";
    v26[1] = itmPrevDepthFeatures;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v3 addObject:v15];
  }

  itmColorFeaturesOutput = self->_itmColorFeaturesOutput;
  if (itmColorFeaturesOutput)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"Output Color Features";
    v24[1] = itmColorFeaturesOutput;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v17];
  }

  itmDepthFeaturesOutput = self->_itmDepthFeaturesOutput;
  if (itmDepthFeaturesOutput)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"Output Depth Features";
    v22[1] = itmDepthFeaturesOutput;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v19];
  }

  return v3;
}

- (void)dealloc
{
  [(ADStereoV2Executor *)self deallocateEspressoBuffers];
  CVPixelBufferRelease(self->_itmCroppedScaledRefColor);
  CVPixelBufferRelease(self->_itmRotatedRefColor);
  CVPixelBufferRelease(self->_itmChunkyRefColor);
  CVPixelBufferRelease(self->_itmCroppedScaledAuxColor);
  CVPixelBufferRelease(self->_itmRotatedAuxColor);
  CVPixelBufferRelease(self->_itmChunkyAuxColor);
  v3.receiver = self;
  v3.super_class = ADStereoV2Executor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor outDisparityMap:(__CVBuffer *)map
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isPrepared)
  {
    execute = [(ADStereoV2Executor *)selfCopy prepareForEngineType:selfCopy->super._engineType];
    if (execute)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_27;
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

      *buf = 335683080;
      v53 = 0u;
      v54 = 0u;
      kdebug_trace();
      [logger logPixelBuffer:color name:"refColor" timestamp:v14];
      [logger logPixelBuffer:auxColor name:"auxColor" timestamp:v14];
      executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
      stepsToExecute = [executorParameters2 stepsToExecute];

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      timeProfiler = [executorParameters3 timeProfiler];

      if (stepsToExecute >= 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [(ADExecutor *)selfCopy frameExecutionStart];
        shouldPreProcessColorInputs = [(ADStereoV2Pipeline *)selfCopy->_pipeline shouldPreProcessColorInputs];
        v19 = &OBJC_IVAR___ADStereoV2Executor__refColor;
        if (shouldPreProcessColorInputs)
        {
          v19 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyRefColor;
        }

        v20 = *(&selfCopy->super.super.isa + *v19);
        v21 = MEMORY[0x277CBF3A0];
        execute = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:v20 scaleInto:&selfCopy->_itmCroppedScaledRefColor intermediateScalingBuffer:&selfCopy->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        if (execute)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_26:

            kdebug_trace();
            goto LABEL_27;
          }

          *v51 = 0;
          v22 = MEMORY[0x277D86220];
          v23 = "failed converting ref image";
LABEL_13:
          _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, v51, 2u);
          goto LABEL_26;
        }

        if ([(ADStereoV2Pipeline *)selfCopy->_pipeline shouldPreProcessColorInputs])
        {
          execute = [(ADStereoV2Pipeline *)selfCopy->_pipeline preProcessColorInput:v20 toBuffer:selfCopy->_refColor];
          if (execute)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *v51 = 0;
            v22 = MEMORY[0x277D86220];
            v23 = "failed pre processing ref image";
            goto LABEL_13;
          }
        }

        [timeProfiler stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (stepsToExecute != 1)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess auxiliary color"];
          shouldPreProcessColorInputs2 = [(ADStereoV2Pipeline *)selfCopy->_pipeline shouldPreProcessColorInputs];
          v26 = &OBJC_IVAR___ADStereoV2Executor__auxColor;
          if (shouldPreProcessColorInputs2)
          {
            v26 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyAuxColor;
          }

          v27 = *(&selfCopy->super.super.isa + *v26);
          execute = [ADUtils scaleConvertRotateImage:auxColor rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:v27 scaleInto:&selfCopy->_itmCroppedScaledAuxColor intermediateScalingBuffer:&selfCopy->_itmRotatedAuxColor intermediateRotatingBuffer:1 useVT:*v21, v21[1], v21[2], v21[3]];
          if (execute)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *v51 = 0;
            v22 = MEMORY[0x277D86220];
            v23 = "failed converting aux image";
            goto LABEL_13;
          }

          if ([(ADStereoV2Pipeline *)selfCopy->_pipeline shouldPreProcessColorInputs])
          {
            execute = [(ADStereoV2Pipeline *)selfCopy->_pipeline preProcessColorInput:v27 toBuffer:selfCopy->_auxColor];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_26;
              }

              *v51 = 0;
              v22 = MEMORY[0x277D86220];
              v23 = "failed pre processing aux image";
              goto LABEL_13;
            }
          }

          [logger logPixelBuffer:selfCopy->_refColor name:"refColorProcessed" timestamp:v14];
          [logger logPixelBuffer:selfCopy->_auxColor name:"auxColorProcessed" timestamp:v14];
          [logger logPixelBuffer:selfCopy->_itmPrevDepthFeatures name:"prevDepthFeatures" timestamp:v14];
          [logger logPixelBuffer:selfCopy->_itmPrevColorFeatures name:"prevColorFeatures" timestamp:v14];
          inferenceDescriptor = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
          temporalSmoothingCurrentFeaturesRatioMinInput = [inferenceDescriptor temporalSmoothingCurrentFeaturesRatioMinInput];
          imageDescriptor = [temporalSmoothingCurrentFeaturesRatioMinInput imageDescriptor];
          pixelFormat = [imageDescriptor pixelFormat];

          if (pixelFormat != 1278226534 && pixelFormat != 1278226536)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v51 = 0;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unsupported temporal smoothing knob pixel format", v51, 2u);
            }

            execute = -22950;
            goto LABEL_26;
          }

          executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
          [executorParameters4 temporalSmoothingCurrentFeaturesRatioMin];
          *[(ADEspressoBufferHandle *)selfCopy->_temporalSmoothingCurrentFeaturesRatioMinBuffer data]= v33;

          executorParameters5 = [(ADExecutor *)selfCopy executorParameters];
          [executorParameters5 temporalSmoothingPreviousFeaturesRatioMin];
          *[(ADEspressoBufferHandle *)selfCopy->_temporalSmoothingPreviousFeaturesRatioMinBuffer data]= v35;

          [timeProfiler stopWithUTFString:"preprocess auxiliary color"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"network execution"];
            execute = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_26;
              }

              *v51 = 0;
              v22 = MEMORY[0x277D86220];
              v23 = "failed executing espresso plan";
              goto LABEL_13;
            }

            [logger logPixelBuffer:selfCopy->_disparity name:"outputDisparity" timestamp:v14];
            [logger logPixelBuffer:selfCopy->_itmColorFeaturesOutput name:"outputColorFeatures" timestamp:v14];
            [logger logPixelBuffer:selfCopy->_itmDepthFeaturesOutput name:"outputDepthFeatures" timestamp:v14];
            [timeProfiler stopWithUTFString:"network execution"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess depth"];
              if (!*map)
              {
                disparity = selfCopy->_disparity;
                PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
                *map = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
              }

              execute = [ADUtils postProcessDepth:selfCopy->_disparity depthOutput:?];
              if (execute)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_26;
                }

                *v51 = 0;
                v22 = MEMORY[0x277D86220];
                v23 = "failed converting disparity";
                goto LABEL_13;
              }

              [logger logPixelBuffer:*map name:"outputDisparityConvertedUnits" timestamp:v14];
              [timeProfiler stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (stepsToExecute >= 5)
              {
                kdebug_trace();
                [timeProfiler startWithUTFString:"postprocess previous depth"];
                executorParameters6 = [(ADExecutor *)selfCopy executorParameters];
                temporalConsistencyActive = [executorParameters6 temporalConsistencyActive];

                if (temporalConsistencyActive)
                {
                  if (selfCopy->_itmPrevDepthFeatures)
                  {
                    espressoRunner = selfCopy->super._espressoRunner;
                    inferenceDescriptor2 = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
                    prevDepthFeaturesInput = [inferenceDescriptor2 prevDepthFeaturesInput];
                    inferenceDescriptor3 = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
                    depthFeaturesOutput = [inferenceDescriptor3 depthFeaturesOutput];
                    execute = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevDepthFeatures inputDescriptor:prevDepthFeaturesInput outputBuffer:&selfCopy->_itmDepthFeaturesOutput outputDescriptor:depthFeaturesOutput];

                    if (execute)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_26;
                      }

                      *v51 = 0;
                      v22 = MEMORY[0x277D86220];
                      v23 = "failed updating previous depth features";
                      goto LABEL_13;
                    }
                  }

                  if (selfCopy->_itmPrevColorFeatures)
                  {
                    v44 = selfCopy->super._espressoRunner;
                    inferenceDescriptor4 = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
                    prevColorFeaturesInput = [inferenceDescriptor4 prevColorFeaturesInput];
                    inferenceDescriptor5 = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
                    colorFeaturesOutput = [inferenceDescriptor5 colorFeaturesOutput];
                    execute = [(ADEspressoRunnerProtocol *)v44 updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevColorFeatures inputDescriptor:prevColorFeaturesInput outputBuffer:&selfCopy->_itmColorFeaturesOutput outputDescriptor:colorFeaturesOutput];

                    if (execute)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_26;
                      }

                      *v51 = 0;
                      v22 = MEMORY[0x277D86220];
                      v23 = "failed updating previous color features";
                      goto LABEL_13;
                    }
                  }
                }

                [timeProfiler stopWithUTFString:"postprocess previous depth"];
                kdebug_trace();
                if (stepsToExecute != 5)
                {
                  [(ADExecutor *)selfCopy frameExecutionEnd];
                  execute = 0;
                  goto LABEL_26;
                }
              }
            }
          }
        }
      }

      execute = -22977;
      goto LABEL_26;
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

LABEL_27:
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
  v19 = 335682368;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  allocateIntermediateBuffers = [(ADStereoV2Pipeline *)selfCopy->_pipeline adjustForEngine:type];
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
    inferenceDescriptor = [(ADStereoV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
    referenceInput = [inferenceDescriptor referenceInput];
    imageDescriptor = [referenceInput imageDescriptor];
    [imageDescriptor sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    referenceInput2 = [inferenceDescriptor referenceInput];
    imageDescriptor2 = [referenceInput2 imageDescriptor];
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
      allocateIntermediateBuffers = [(ADStereoV2Executor *)selfCopy allocateIntermediateBuffers];
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
  [(ADStereoV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  referenceInput = [inferenceDescriptor referenceInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:referenceInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  auxiliaryInput = [inferenceDescriptor2 auxiliaryInput];
  self->_auxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:auxiliaryInput];

  v9 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor3 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  v12 = self->super._espressoRunner;
  inferenceDescriptor4 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  prevDepthFeaturesInput = [inferenceDescriptor4 prevDepthFeaturesInput];
  self->_itmPrevDepthFeatures = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:prevDepthFeaturesInput];

  v15 = self->super._espressoRunner;
  inferenceDescriptor5 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  prevColorFeaturesInput = [inferenceDescriptor5 prevColorFeaturesInput];
  self->_itmPrevColorFeatures = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:prevColorFeaturesInput];

  v18 = self->super._espressoRunner;
  inferenceDescriptor6 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  temporalSmoothingCurrentFeaturesRatioMinInput = [inferenceDescriptor6 temporalSmoothingCurrentFeaturesRatioMinInput];
  v21 = [(ADEspressoRunnerProtocol *)v18 registerDescriptor:temporalSmoothingCurrentFeaturesRatioMinInput];
  temporalSmoothingCurrentFeaturesRatioMinBuffer = self->_temporalSmoothingCurrentFeaturesRatioMinBuffer;
  self->_temporalSmoothingCurrentFeaturesRatioMinBuffer = v21;

  v23 = self->super._espressoRunner;
  inferenceDescriptor7 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  temporalSmoothingPreviousFeaturesRatioMinInput = [inferenceDescriptor7 temporalSmoothingPreviousFeaturesRatioMinInput];
  v26 = [(ADEspressoRunnerProtocol *)v23 registerDescriptor:temporalSmoothingPreviousFeaturesRatioMinInput];
  temporalSmoothingPreviousFeaturesRatioMinBuffer = self->_temporalSmoothingPreviousFeaturesRatioMinBuffer;
  self->_temporalSmoothingPreviousFeaturesRatioMinBuffer = v26;

  v28 = self->super._espressoRunner;
  inferenceDescriptor8 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  depthFeaturesOutput = [inferenceDescriptor8 depthFeaturesOutput];
  self->_itmDepthFeaturesOutput = [(ADEspressoRunnerProtocol *)v28 createAndRegisterPixelBufferForDescriptor:depthFeaturesOutput];

  v31 = self->super._espressoRunner;
  inferenceDescriptor9 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  colorFeaturesOutput = [inferenceDescriptor9 colorFeaturesOutput];
  self->_itmColorFeaturesOutput = [(ADEspressoRunnerProtocol *)v31 createAndRegisterPixelBufferForDescriptor:colorFeaturesOutput];

  self->_itmChunkyRefColor = PixelBufferUtils::createPixelBufferCopy(self->_refColor, v34);
  self->_itmChunkyAuxColor = PixelBufferUtils::createPixelBufferCopy(self->_auxColor, v35);
  return 0;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_refColor);
  self->_refColor = 0;
  CVPixelBufferRelease(self->_auxColor);
  self->_auxColor = 0;
  CVPixelBufferRelease(self->_disparity);
  self->_disparity = 0;
  CVPixelBufferRelease(self->_itmPrevDepthFeatures);
  self->_itmPrevDepthFeatures = 0;
  CVPixelBufferRelease(self->_itmPrevColorFeatures);
  self->_itmPrevColorFeatures = 0;
  CVPixelBufferRelease(self->_itmDepthFeaturesOutput);
  self->_itmDepthFeaturesOutput = 0;
  CVPixelBufferRelease(self->_itmColorFeaturesOutput);
  self->_itmColorFeaturesOutput = 0;
}

- (ADStereoV2Executor)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v16 = 335682764;
  v17 = 0u;
  v18 = 0u;
  kdebug_trace();
  v15.receiver = self;
  v15.super_class = ADStereoV2Executor;
  v5 = [(ADExecutor *)&v15 init];
  if (v5)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    [(ADExecutor *)v5 setExecutorParameters:parametersCopy];
    v6 = [ADStereoV2Pipeline alloc];
    executorParameters = [(ADExecutor *)v5 executorParameters];
    pipelineParameters = [executorParameters pipelineParameters];
    v9 = [(ADStereoV2Pipeline *)v6 initWithParameters:pipelineParameters];
    pipeline = v5->_pipeline;
    v5->_pipeline = v9;

    if (!v5->_pipeline)
    {
      v13 = 0;
      goto LABEL_8;
    }

    temporalSmoothingCurrentFeaturesRatioMinBuffer = v5->_temporalSmoothingCurrentFeaturesRatioMinBuffer;
    v5->_temporalSmoothingCurrentFeaturesRatioMinBuffer = 0;

    temporalSmoothingPreviousFeaturesRatioMinBuffer = v5->_temporalSmoothingPreviousFeaturesRatioMinBuffer;
    v5->_temporalSmoothingPreviousFeaturesRatioMinBuffer = 0;

    v5->_refColor = 0;
    v5->_itmChunkyRefColor = 0;
    v5->_itmCroppedScaledRefColor = 0;
    v5->_itmRotatedRefColor = 0;
    v5->_auxColor = 0;
    v5->_itmChunkyAuxColor = 0;
    v5->_itmCroppedScaledAuxColor = 0;
    v5->_itmRotatedAuxColor = 0;
    v5->_itmPrevDepthFeatures = 0;
    v5->_itmPrevColorFeatures = 0;
    v5->_disparity = 0;
    v5->_itmDepthFeaturesOutput = 0;
    v5->_itmColorFeaturesOutput = 0;
    v5->_isPrepared = 0;
  }

  v13 = v5;
LABEL_8:
  kdebug_trace();

  return v13;
}

@end