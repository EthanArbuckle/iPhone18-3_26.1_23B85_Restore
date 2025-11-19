@interface ADMonocularVideoExecutor
- (ADMonocularVideoExecutor)initWithParameters:(id)a3;
- (__CVBuffer)prevColorFeatures;
- (__CVBuffer)prevDepthFeatures;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)a3 efl:(float)a4 outDisparityMap:(__CVBuffer *)a5;
- (int64_t)prepareForEngineType:(unint64_t)a3;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADMonocularVideoExecutor

- (id)getIntermediates
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ADMonocularVideoPipeline *)self->_pipeline shouldPreProcessColorInputs];
  v5 = &OBJC_IVAR___ADMonocularVideoExecutor__refColor;
  if (v4)
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

- (int64_t)executeWithColor:(__CVBuffer *)a3 efl:(float)a4 outDisparityMap:(__CVBuffer *)a5
{
  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_isPrepared)
  {
    v9 = [(ADMonocularVideoExecutor *)v8 prepareForEngineType:v8->super._engineType];
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_37;
    }
  }

  if (v8->super._espressoRunner)
  {
    if (a5)
    {
      v10 = [(ADExecutor *)v8 executorParameters];
      v11 = [v10 logger];

      v12 = [MEMORY[0x277CCAC38] processInfo];
      [v12 systemUptime];
      v14 = v13;

      *buf = 335685464;
      v57 = 0u;
      v58 = 0u;
      kdebug_trace();
      [v11 logPixelBuffer:a3 name:"inputColor" timestamp:v14];
      v15 = [(ADExecutor *)v8 executorParameters];
      v16 = [v15 stepsToExecute];

      v17 = [(ADExecutor *)v8 executorParameters];
      v18 = [v17 timeProfiler];

      if (v16 >= 1)
      {
        kdebug_trace();
        [v18 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v8 frameExecutionStart];
        v19 = [(ADMonocularVideoPipeline *)v8->_pipeline shouldPreProcessColorInputs];
        v20 = &OBJC_IVAR___ADMonocularVideoExecutor__refColor;
        if (v19)
        {
          v20 = &OBJC_IVAR___ADMonocularVideoExecutor__itmChunkyRefColor;
        }

        v21 = *(&v8->super.super.isa + *v20);
        v9 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v21 scaleInto:&v8->_itmCroppedScaledRefColor intermediateScalingBuffer:&v8->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        if (v9)
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

        if ([(ADMonocularVideoPipeline *)v8->_pipeline shouldPreProcessColorInputs])
        {
          v9 = [(ADMonocularVideoPipeline *)v8->_pipeline preProcessColorInput:v21 toBuffer:v8->_refColor];
          if (v9)
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

        [v11 logPixelBuffer:v8->_refColor name:"refColorProcessed" timestamp:v14];
        [v11 logPixelBuffer:v8->_itmPrevDepthFeatures name:"prevDepthFeatures" timestamp:v14];
        [v11 logPixelBuffer:v8->_itmPrevColorFeatures name:"prevColorFeatures" timestamp:v14];
        _S10 = 1.0;
        if (a4 > 0.0)
        {
          Width = CVPixelBufferGetWidth(v8->_refColor);
          Height = CVPixelBufferGetHeight(v8->_refColor);
          if (Width <= Height)
          {
            v27 = Height;
          }

          else
          {
            v27 = Width;
          }

          v28 = CVPixelBufferGetWidth(a3);
          v29 = CVPixelBufferGetHeight(a3);
          if (v28 <= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v28;
          }

          *&v30 = (v31 / v27) * a4;
          [(ADMonocularVideoPipeline *)v8->_pipeline getMetricScaleFactorForEFL:v30];
          _S10 = v32;
        }

        scaleFactorBuffer = v8->_scaleFactorBuffer;
        if (scaleFactorBuffer)
        {
          CVPixelBufferLockBaseAddress(scaleFactorBuffer, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(v8->_scaleFactorBuffer);
          __asm { FCVT            H0, S10 }

          *BaseAddress = _H0;
          CVPixelBufferUnlockBaseAddress(v8->_scaleFactorBuffer, 0);
        }

        [v18 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v16 != 1)
        {
          kdebug_trace();
          [v18 startWithUTFString:"network execution"];
          v9 = [(ADEspressoRunnerProtocol *)v8->super._espressoRunner execute];
          if (v9)
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

          [v11 logPixelBuffer:v8->_disparity name:"outputDisparity" timestamp:v14];
          [v11 logPixelBuffer:v8->_itmColorFeaturesOutput name:"outputColorFeatures" timestamp:v14];
          [v11 logPixelBuffer:v8->_itmDepthFeaturesOutput name:"outputDepthFeatures" timestamp:v14];
          [v18 stopWithUTFString:"network execution"];
          kdebug_trace();
          if (v16 >= 3)
          {
            kdebug_trace();
            [v18 startWithUTFString:"postprocess depth"];
            if (!*a5)
            {
              disparity = v8->_disparity;
              PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
              *a5 = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
            }

            if (_S10 != 1.0 && !v8->_scaleFactorBuffer)
            {
              PixelBufferUtils::inPlaceColorScaling(v8->_disparity, 1, _S10, 0.0, 1);
            }

            v9 = [ADUtils postProcessDepth:v8->_disparity depthOutput:?];
            if (v9)
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

            [v11 logPixelBuffer:*a5 name:"outputDisparityConvertedUnits" timestamp:v14];
            [v18 stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (v16 != 3)
            {
              kdebug_trace();
              [v18 startWithUTFString:"postprocess previous depth"];
              v43 = [(ADExecutor *)v8 executorParameters];
              v44 = [v43 temporalConsistencyActive];

              if (v44)
              {
                if (v8->_itmPrevDepthFeatures)
                {
                  espressoRunner = v8->super._espressoRunner;
                  v54 = [(ADMonocularVideoPipeline *)v8->_pipeline inferenceDescriptor];
                  v53 = [v54 prevDepthFeaturesInput];
                  v46 = [(ADMonocularVideoPipeline *)v8->_pipeline inferenceDescriptor];
                  v47 = [v46 depthFeaturesOutput];
                  v9 = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&v8->_itmPrevDepthFeatures inputDescriptor:v53 outputBuffer:&v8->_itmDepthFeaturesOutput outputDescriptor:v47];

                  if (v9)
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

                if (v8->_itmPrevColorFeatures)
                {
                  v48 = v8->super._espressoRunner;
                  v49 = [(ADMonocularVideoPipeline *)v8->_pipeline inferenceDescriptor];
                  v50 = [v49 prevColorFeaturesInput];
                  v51 = [(ADMonocularVideoPipeline *)v8->_pipeline inferenceDescriptor];
                  v52 = [v51 colorFeaturesOutput];
                  v9 = [(ADEspressoRunnerProtocol *)v48 updateFeedbackLoopInputBuffer:&v8->_itmPrevColorFeatures inputDescriptor:v50 outputBuffer:&v8->_itmColorFeaturesOutput outputDescriptor:v52];

                  if (v9)
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

              [v18 stopWithUTFString:"postprocess previous depth"];
              kdebug_trace();
              if (v16 >= 5)
              {
                [(ADExecutor *)v8 frameExecutionEnd];
                v9 = 0;
                goto LABEL_36;
              }
            }
          }
        }
      }

      v9 = -22977;
      goto LABEL_36;
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

LABEL_37:
  objc_sync_exit(v8);

  return v9;
}

- (__CVBuffer)prevDepthFeatures
{
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 temporalConsistencyActive];

  if (v4)
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
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 temporalConsistencyActive];

  if (v4)
  {
    return self->_itmPrevColorFeatures;
  }

  else
  {
    return 0;
  }
}

- (int64_t)prepareForEngineType:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v19 = 335683364;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  v5 = [(ADMonocularVideoPipeline *)v4->_pipeline adjustForEngine:a3];
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v18, 2u);
    }
  }

  else
  {
    v6 = [(ADMonocularVideoPipeline *)v4->_pipeline inferenceDescriptor];
    v7 = [v6 colorInput];
    v8 = [v7 imageDescriptor];
    [v8 sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    v13 = [v6 colorInput];
    v14 = [v13 imageDescriptor];
    v5 = [(ADExecutor *)v4 prepareForEngineType:a3 roi:v14 descriptorForROI:1 exifOrientation:2 rotationPreference:v6 inferenceDescriptor:0.0, 0.0, v10, v12];

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v18, 2u);
      }
    }

    else
    {
      v5 = [(ADMonocularVideoExecutor *)v4 allocateIntermediateBuffers];
      PixelBufferUtils::blacken(v4->_itmPrevDepthFeatures, v15);
      PixelBufferUtils::blacken(v4->_itmPrevColorFeatures, v16);
      v4->_isPrepared = v5 == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(v4);

  return v5;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularVideoExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v10 = [v9 outputScale];

  if (v10)
  {
    v11 = self->super._espressoRunner;
    v12 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
    v13 = [v12 outputScale];
    self->_scaleFactorBuffer = [(ADEspressoRunnerProtocol *)v11 createAndRegisterPixelBufferForDescriptor:v13];
  }

  v14 = self->super._espressoRunner;
  v15 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v16 = [v15 prevDepthFeaturesInput];
  self->_itmPrevDepthFeatures = [(ADEspressoRunnerProtocol *)v14 createAndRegisterPixelBufferForDescriptor:v16];

  v17 = self->super._espressoRunner;
  v18 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v19 = [v18 prevColorFeaturesInput];
  self->_itmPrevColorFeatures = [(ADEspressoRunnerProtocol *)v17 createAndRegisterPixelBufferForDescriptor:v19];

  v20 = self->super._espressoRunner;
  v21 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v22 = [v21 depthFeaturesOutput];
  self->_itmDepthFeaturesOutput = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:v22];

  v23 = self->super._espressoRunner;
  v24 = [(ADMonocularVideoPipeline *)self->_pipeline inferenceDescriptor];
  v25 = [v24 colorFeaturesOutput];
  self->_itmColorFeaturesOutput = [(ADEspressoRunnerProtocol *)v23 createAndRegisterPixelBufferForDescriptor:v25];

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

- (ADMonocularVideoExecutor)initWithParameters:(id)a3
{
  v4 = a3;
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
    v6 = v5;
    goto LABEL_8;
  }

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  [(ADExecutor *)v5 setExecutorParameters:v4];
  v6 = [(ADExecutor *)v5 executorParameters];

  if (v6)
  {
    v7 = [ADMonocularVideoPipeline alloc];
    v8 = [(ADExecutor *)v5 executorParameters];
    v9 = [v8 pipelineParameters];
    v10 = [(ADMonocularVideoPipeline *)v7 initWithParameters:v9];
    pipeline = v5->_pipeline;
    v5->_pipeline = v10;

    if (!v5->_pipeline)
    {
      v6 = 0;
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

  return v6;
}

@end