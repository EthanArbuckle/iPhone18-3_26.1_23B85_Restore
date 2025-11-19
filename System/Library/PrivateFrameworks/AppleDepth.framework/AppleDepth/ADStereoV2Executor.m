@interface ADStereoV2Executor
- (ADStereoV2Executor)initWithParameters:(id)a3;
- (__CVBuffer)prevColorFeatures;
- (__CVBuffer)prevDepthFeatures;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 outDisparityMap:(__CVBuffer *)a5;
- (int64_t)prepareForEngineType:(unint64_t)a3;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADStereoV2Executor

- (id)getIntermediates
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ADStereoV2Pipeline *)self->_pipeline shouldPreProcessColorInputs];
  v5 = &OBJC_IVAR___ADStereoV2Executor__refColor;
  if (v4)
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

  v8 = [(ADStereoV2Pipeline *)self->_pipeline shouldPreProcessColorInputs];
  v9 = &OBJC_IVAR___ADStereoV2Executor__auxColor;
  if (v8)
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

- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 outDisparityMap:(__CVBuffer *)a5
{
  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_isPrepared)
  {
    v9 = [(ADStereoV2Executor *)v8 prepareForEngineType:v8->super._engineType];
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_27;
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

      *buf = 335683080;
      v53 = 0u;
      v54 = 0u;
      kdebug_trace();
      [v11 logPixelBuffer:a3 name:"refColor" timestamp:v14];
      [v11 logPixelBuffer:a4 name:"auxColor" timestamp:v14];
      v15 = [(ADExecutor *)v8 executorParameters];
      v16 = [v15 stepsToExecute];

      v17 = [(ADExecutor *)v8 executorParameters];
      v50 = [v17 timeProfiler];

      if (v16 >= 1)
      {
        kdebug_trace();
        [v50 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v8 frameExecutionStart];
        v18 = [(ADStereoV2Pipeline *)v8->_pipeline shouldPreProcessColorInputs];
        v19 = &OBJC_IVAR___ADStereoV2Executor__refColor;
        if (v18)
        {
          v19 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyRefColor;
        }

        v20 = *(&v8->super.super.isa + *v19);
        v21 = MEMORY[0x277CBF3A0];
        v9 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v20 scaleInto:&v8->_itmCroppedScaledRefColor intermediateScalingBuffer:&v8->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        if (v9)
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

        if ([(ADStereoV2Pipeline *)v8->_pipeline shouldPreProcessColorInputs])
        {
          v9 = [(ADStereoV2Pipeline *)v8->_pipeline preProcessColorInput:v20 toBuffer:v8->_refColor];
          if (v9)
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

        [v50 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v16 != 1)
        {
          kdebug_trace();
          [v50 startWithUTFString:"preprocess auxiliary color"];
          v25 = [(ADStereoV2Pipeline *)v8->_pipeline shouldPreProcessColorInputs];
          v26 = &OBJC_IVAR___ADStereoV2Executor__auxColor;
          if (v25)
          {
            v26 = &OBJC_IVAR___ADStereoV2Executor__itmChunkyAuxColor;
          }

          v27 = *(&v8->super.super.isa + *v26);
          v9 = [ADUtils scaleConvertRotateImage:a4 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v27 scaleInto:&v8->_itmCroppedScaledAuxColor intermediateScalingBuffer:&v8->_itmRotatedAuxColor intermediateRotatingBuffer:1 useVT:*v21, v21[1], v21[2], v21[3]];
          if (v9)
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

          if ([(ADStereoV2Pipeline *)v8->_pipeline shouldPreProcessColorInputs])
          {
            v9 = [(ADStereoV2Pipeline *)v8->_pipeline preProcessColorInput:v27 toBuffer:v8->_auxColor];
            if (v9)
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

          [v11 logPixelBuffer:v8->_refColor name:"refColorProcessed" timestamp:v14];
          [v11 logPixelBuffer:v8->_auxColor name:"auxColorProcessed" timestamp:v14];
          [v11 logPixelBuffer:v8->_itmPrevDepthFeatures name:"prevDepthFeatures" timestamp:v14];
          [v11 logPixelBuffer:v8->_itmPrevColorFeatures name:"prevColorFeatures" timestamp:v14];
          v28 = [(ADStereoV2Pipeline *)v8->_pipeline inferenceDescriptor];
          v29 = [v28 temporalSmoothingCurrentFeaturesRatioMinInput];
          v30 = [v29 imageDescriptor];
          v31 = [v30 pixelFormat];

          if (v31 != 1278226534 && v31 != 1278226536)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v51 = 0;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unsupported temporal smoothing knob pixel format", v51, 2u);
            }

            v9 = -22950;
            goto LABEL_26;
          }

          v32 = [(ADExecutor *)v8 executorParameters];
          [v32 temporalSmoothingCurrentFeaturesRatioMin];
          *[(ADEspressoBufferHandle *)v8->_temporalSmoothingCurrentFeaturesRatioMinBuffer data]= v33;

          v34 = [(ADExecutor *)v8 executorParameters];
          [v34 temporalSmoothingPreviousFeaturesRatioMin];
          *[(ADEspressoBufferHandle *)v8->_temporalSmoothingPreviousFeaturesRatioMinBuffer data]= v35;

          [v50 stopWithUTFString:"preprocess auxiliary color"];
          kdebug_trace();
          if (v16 >= 3)
          {
            kdebug_trace();
            [v50 startWithUTFString:"network execution"];
            v9 = [(ADEspressoRunnerProtocol *)v8->super._espressoRunner execute];
            if (v9)
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

            [v11 logPixelBuffer:v8->_disparity name:"outputDisparity" timestamp:v14];
            [v11 logPixelBuffer:v8->_itmColorFeaturesOutput name:"outputColorFeatures" timestamp:v14];
            [v11 logPixelBuffer:v8->_itmDepthFeaturesOutput name:"outputDepthFeatures" timestamp:v14];
            [v50 stopWithUTFString:"network execution"];
            kdebug_trace();
            if (v16 != 3)
            {
              kdebug_trace();
              [v50 startWithUTFString:"postprocess depth"];
              if (!*a5)
              {
                disparity = v8->_disparity;
                PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
                *a5 = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
              }

              v9 = [ADUtils postProcessDepth:v8->_disparity depthOutput:?];
              if (v9)
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

              [v11 logPixelBuffer:*a5 name:"outputDisparityConvertedUnits" timestamp:v14];
              [v50 stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (v16 >= 5)
              {
                kdebug_trace();
                [v50 startWithUTFString:"postprocess previous depth"];
                v38 = [(ADExecutor *)v8 executorParameters];
                v39 = [v38 temporalConsistencyActive];

                if (v39)
                {
                  if (v8->_itmPrevDepthFeatures)
                  {
                    espressoRunner = v8->super._espressoRunner;
                    v41 = [(ADStereoV2Pipeline *)v8->_pipeline inferenceDescriptor];
                    v49 = [v41 prevDepthFeaturesInput];
                    v42 = [(ADStereoV2Pipeline *)v8->_pipeline inferenceDescriptor];
                    v43 = [v42 depthFeaturesOutput];
                    v9 = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&v8->_itmPrevDepthFeatures inputDescriptor:v49 outputBuffer:&v8->_itmDepthFeaturesOutput outputDescriptor:v43];

                    if (v9)
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

                  if (v8->_itmPrevColorFeatures)
                  {
                    v44 = v8->super._espressoRunner;
                    v45 = [(ADStereoV2Pipeline *)v8->_pipeline inferenceDescriptor];
                    v46 = [v45 prevColorFeaturesInput];
                    v47 = [(ADStereoV2Pipeline *)v8->_pipeline inferenceDescriptor];
                    v48 = [v47 colorFeaturesOutput];
                    v9 = [(ADEspressoRunnerProtocol *)v44 updateFeedbackLoopInputBuffer:&v8->_itmPrevColorFeatures inputDescriptor:v46 outputBuffer:&v8->_itmColorFeaturesOutput outputDescriptor:v48];

                    if (v9)
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

                [v50 stopWithUTFString:"postprocess previous depth"];
                kdebug_trace();
                if (v16 != 5)
                {
                  [(ADExecutor *)v8 frameExecutionEnd];
                  v9 = 0;
                  goto LABEL_26;
                }
              }
            }
          }
        }
      }

      v9 = -22977;
      goto LABEL_26;
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

LABEL_27:
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
  v19 = 335682368;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  v5 = [(ADStereoV2Pipeline *)v4->_pipeline adjustForEngine:a3];
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
    v6 = [(ADStereoV2Pipeline *)v4->_pipeline inferenceDescriptor];
    v7 = [v6 referenceInput];
    v8 = [v7 imageDescriptor];
    [v8 sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    v13 = [v6 referenceInput];
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
      v5 = [(ADStereoV2Executor *)v4 allocateIntermediateBuffers];
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
  [(ADStereoV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 referenceInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 auxiliaryInput];
  self->_auxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = self->super._espressoRunner;
  v10 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v11 = [v10 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

  v12 = self->super._espressoRunner;
  v13 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v14 = [v13 prevDepthFeaturesInput];
  self->_itmPrevDepthFeatures = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:v14];

  v15 = self->super._espressoRunner;
  v16 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v17 = [v16 prevColorFeaturesInput];
  self->_itmPrevColorFeatures = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:v17];

  v18 = self->super._espressoRunner;
  v19 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v20 = [v19 temporalSmoothingCurrentFeaturesRatioMinInput];
  v21 = [(ADEspressoRunnerProtocol *)v18 registerDescriptor:v20];
  temporalSmoothingCurrentFeaturesRatioMinBuffer = self->_temporalSmoothingCurrentFeaturesRatioMinBuffer;
  self->_temporalSmoothingCurrentFeaturesRatioMinBuffer = v21;

  v23 = self->super._espressoRunner;
  v24 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v25 = [v24 temporalSmoothingPreviousFeaturesRatioMinInput];
  v26 = [(ADEspressoRunnerProtocol *)v23 registerDescriptor:v25];
  temporalSmoothingPreviousFeaturesRatioMinBuffer = self->_temporalSmoothingPreviousFeaturesRatioMinBuffer;
  self->_temporalSmoothingPreviousFeaturesRatioMinBuffer = v26;

  v28 = self->super._espressoRunner;
  v29 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v30 = [v29 depthFeaturesOutput];
  self->_itmDepthFeaturesOutput = [(ADEspressoRunnerProtocol *)v28 createAndRegisterPixelBufferForDescriptor:v30];

  v31 = self->super._espressoRunner;
  v32 = [(ADStereoV2Pipeline *)self->_pipeline inferenceDescriptor];
  v33 = [v32 colorFeaturesOutput];
  self->_itmColorFeaturesOutput = [(ADEspressoRunnerProtocol *)v31 createAndRegisterPixelBufferForDescriptor:v33];

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

- (ADStereoV2Executor)initWithParameters:(id)a3
{
  v4 = a3;
  v16 = 335682764;
  v17 = 0u;
  v18 = 0u;
  kdebug_trace();
  v15.receiver = self;
  v15.super_class = ADStereoV2Executor;
  v5 = [(ADExecutor *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_opt_new();
    }

    [(ADExecutor *)v5 setExecutorParameters:v4];
    v6 = [ADStereoV2Pipeline alloc];
    v7 = [(ADExecutor *)v5 executorParameters];
    v8 = [v7 pipelineParameters];
    v9 = [(ADStereoV2Pipeline *)v6 initWithParameters:v8];
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