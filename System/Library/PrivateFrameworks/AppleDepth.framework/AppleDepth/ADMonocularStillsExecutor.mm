@interface ADMonocularStillsExecutor
- (ADMonocularStillsExecutor)initWithParameters:(id)a3;
- (__CVBuffer)createDepthBuffer;
- (id)getIntermediates;
- (id)initForDimensions:(id)a3;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)a3 efl:(float)a4 outputDepth:(__CVBuffer *)a5;
- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4;
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

- (int64_t)executeWithColor:(__CVBuffer *)a3 efl:(float)a4 outputDepth:(__CVBuffer *)a5
{
  v8 = self;
  objc_sync_enter(v8);
  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v10 = -22953;
      goto LABEL_23;
    }

    *buf = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "must provide an color buffer";
LABEL_28:
    _os_log_error_impl(&dword_2402F6000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    v10 = -22953;
    goto LABEL_23;
  }

  if (!a5)
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

  if (!v8->_isPrepared)
  {
    Width = CVPixelBufferGetWidth(a3);
    v10 = [(ADMonocularStillsExecutor *)v8 prepareForEngineType:v8->super._engineType inputColorROI:0.0, 0.0, Width, CVPixelBufferGetHeight(a3)];
    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_23;
    }
  }

  if (v8->super._espressoRunner)
  {
    v13 = [(ADExecutor *)v8 executorParameters];
    v14 = [v13 logger];

    v15 = [MEMORY[0x277CCAC38] processInfo];
    [v15 systemUptime];
    v17 = v16;

    *buf = 335682584;
    v36 = 0u;
    v37 = 0u;
    kdebug_trace();
    [v14 logPixelBuffer:a3 name:"inputColor" timestamp:v17];
    v18 = [(ADExecutor *)v8 executorParameters];
    v19 = [v18 stepsToExecute];

    v20 = [(ADExecutor *)v8 executorParameters];
    v21 = [v20 timeProfiler];

    if (v19 >= 1)
    {
      kdebug_trace();
      [v21 startWithUTFString:"preprocess color"];
      [(ADExecutor *)v8 frameExecutionStart];
      v10 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v8->_itmPreProcessedColor scaleInto:&v8->_itmCroppedScaledColor intermediateScalingBuffer:&v8->_itmRotatedColor intermediateRotatingBuffer:1 useVT:v8->super._inputRoi.origin.x, v8->super._inputRoi.origin.y, v8->super._inputRoi.size.width, v8->super._inputRoi.size.height];
      if (v10)
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

      [v14 logPixelBuffer:v8->_itmPreProcessedColor name:"preProcessedColor" timestamp:v17];
      [v21 stopWithUTFString:"preprocess color"];
      kdebug_trace();
      if (v19 != 1)
      {
        kdebug_trace();
        [v21 startWithUTFString:"network execution"];
        v10 = [(ADEspressoRunnerProtocol *)v8->super._espressoRunner execute];
        if (v10)
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

        [v14 logPixelBuffer:v8->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v17];
        [v21 stopWithUTFString:"network execution"];
        kdebug_trace();
        if (v19 >= 3)
        {
          kdebug_trace();
          [v21 startWithUTFString:"postprocess depth"];
          if (a4 > 0.0)
          {
            v25 = CVPixelBufferGetWidth(v8->_itmPreProcessedColor);
            Height = CVPixelBufferGetHeight(v8->_itmPreProcessedColor);
            if (v25 <= Height)
            {
              v27 = Height;
            }

            else
            {
              v27 = v25;
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
            itmUnprocessedOutputDisparity = v8->_itmUnprocessedOutputDisparity;
            [(ADMonocularStillsPipeline *)v8->_pipeline getMetricScaleFactorForEFL:v30];
            PixelBufferUtils::inPlaceColorScaling(itmUnprocessedOutputDisparity, 1, v33, 0.0, 1);
          }

          v10 = [ADUtils postProcessDepth:v8->_itmUnprocessedOutputDisparity depthOutput:a5];
          if (v10)
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

          [v14 logPixelBuffer:a5 name:"outputConvertedUnits" timestamp:v17];
          [v21 stopWithUTFString:"postprocess depth"];
          kdebug_trace();
          if (v19 != 3)
          {
            [(ADExecutor *)v8 frameExecutionEnd];
            v10 = 0;
            goto LABEL_22;
          }
        }
      }
    }

    v10 = -22977;
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
  }

  v10 = -22960;
LABEL_23:
  objc_sync_exit(v8);

  return v10;
}

- (__CVBuffer)createDepthBuffer
{
  v3 = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  v4 = [v3 disparityOutput];
  v5 = [v4 imageDescriptor];

  [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  v7 = v6;
  v9 = v8;
  LODWORD(v3) = [v5 pixelFormat];
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v9, v3, BufferAttributes, &pixelBufferOut))
  {
    v11 = 0;
  }

  else
  {
    v11 = pixelBufferOut;
  }

  return v11;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  objc_sync_enter(v9);
  v18 = 335682464;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  v9->_isPrepared = 0;
  v10 = [(ADMonocularStillsPipeline *)v9->_pipeline inferenceDescriptor];
  v11 = [v10 colorInput];
  v12 = [v11 imageDescriptor];
  v13 = [(ADExecutor *)v9 prepareForEngineType:a3 roi:v12 descriptorForROI:1 exifOrientation:2 rotationPreference:v10 inferenceDescriptor:x, y, width, height];

  if (v13)
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
    v13 = [(ADMonocularStillsExecutor *)v9 allocateIntermediateBuffers];
    if (!v13)
    {
      v9->_isPrepared = 1;
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
  objc_sync_exit(v9);

  return v13;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularStillsExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADMonocularStillsPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

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

- (ADMonocularStillsExecutor)initWithParameters:(id)a3
{
  v4 = a3;
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
    v7 = [v4 pipelineParameters];
    v8 = [(ADMonocularStillsPipeline *)v6 initWithParameters:v7];
    pipeline = v5->_pipeline;
    v5->_pipeline = v8;

    if (!v5->_pipeline || !v4 && (v4 = [[ADMonocularStillsExecutorParameters alloc] initForPipeline:v5->_pipeline]) == 0)
    {
      v10 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v5 setExecutorParameters:v4];
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

- (id)initForDimensions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 pipelineParameters];
  [v6 setRequestedDimensions:v4];

  v7 = [(ADMonocularStillsExecutor *)self initWithParameters:v5];
  return v7;
}

@end