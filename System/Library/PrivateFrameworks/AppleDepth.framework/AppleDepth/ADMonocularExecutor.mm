@interface ADMonocularExecutor
- (ADMonocularExecutor)initWithInputPrioritization:(int64_t)a3;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)a3 outDepthMap:(__CVBuffer *)a4;
- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 rotationPreference:(unint64_t)a6;
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

- (int64_t)executeWithColor:(__CVBuffer *)a3 outDepthMap:(__CVBuffer *)a4
{
  v6 = self;
  objc_sync_enter(v6);
  if (!v6->_prepared)
  {
    Width = CVPixelBufferGetWidth(a3);
    v8 = [(ADMonocularExecutor *)v6 prepareForEngineType:4 roi:1 exifOrientation:0.0, 0.0, Width, CVPixelBufferGetHeight(a3)];
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing with default configuration. Try calling prepare with arguments matching your inputs", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  if (v6->super._espressoRunner)
  {
    if (a4)
    {
      v9 = [(ADExecutor *)v6 executorParameters];
      v10 = [v9 logger];

      v11 = [MEMORY[0x277CCAC38] processInfo];
      [v11 systemUptime];
      v13 = v12;

      *buf = 335683096;
      v32 = 0u;
      v33 = 0u;
      kdebug_trace();
      [v10 logPixelBuffer:a3 name:"inputColor" timestamp:v13];
      v14 = [(ADExecutor *)v6 executorParameters];
      v15 = [v14 stepsToExecute];

      v16 = [(ADExecutor *)v6 executorParameters];
      v17 = [v16 timeProfiler];

      if (v15 >= 1)
      {
        kdebug_trace();
        [v17 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v6 frameExecutionStart];
        v8 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v6->super._rotationConstant) cropBy:v6->_itmPreProcessedColor scaleInto:&v6->_itmCroppedScaledColor intermediateScalingBuffer:&v6->_itmRotatedColor intermediateRotatingBuffer:0 useVT:v6->super._inputRoi.origin.x, v6->super._inputRoi.origin.y, v6->super._inputRoi.size.width, v6->super._inputRoi.size.height];
        if (v8)
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

        [v10 logPixelBuffer:v6->_itmPreProcessedColor name:"processedColor" timestamp:v13];
        [v17 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v15 != 1)
        {
          kdebug_trace();
          [v17 startWithUTFString:"network execution"];
          v8 = [(ADEspressoRunnerProtocol *)v6->super._espressoRunner execute];
          if (v8)
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

          [v10 logPixelBuffer:v6->_itmUnprocessedDepth name:"depthOut" timestamp:v13];
          [v17 stopWithUTFString:"network execution"];
          kdebug_trace();
          if (v15 >= 3)
          {
            kdebug_trace();
            [v17 startWithUTFString:"postprocess depth"];
            v8 = [(ADMonocularPipeline *)v6->_pipeline postProcessWithDepth:v6->_itmUnprocessedDepth depthOutput:v6->_itmPostProcessedDepth];
            if (v8)
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

            [v10 logPixelBuffer:v6->_itmPostProcessedDepth name:"depthOutProcessed" timestamp:v13];
            [v17 stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (v15 != 3)
            {
              kdebug_trace();
              [v17 startWithUTFString:"output rotation"];
              rotationConstant = v6->super._rotationConstant;
              if (rotationConstant == 3)
              {
                rotationConstant = 1;
              }

              else if (rotationConstant == 1)
              {
                rotationConstant = 3;
              }

              v22 = *a4;
              if (!*a4)
              {
                v23 = [(ADMonocularPipeline *)v6->_pipeline processedDepthOutputDescriptor];
                [v23 sizeForLayout:{-[ADExecutor layout](v6, "layout")}];
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

                v28 = [(ADMonocularPipeline *)v6->_pipeline processedDepthOutputDescriptor];
                v29 = [v28 pixelFormat];
                v34.width = v27;
                v34.height = v26;
                *a4 = PixelBufferUtils::createPixelBuffer(v29, v34, 1);

                v22 = *a4;
              }

              if (PixelBufferUtils::rotatePixelBuffer(v6->_itmPostProcessedDepth, v22, rotationConstant, 0))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v30 = 0;
                  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed rotating depth. please verify output buffer dimensions", v30, 2u);
                }

                v8 = -22950;
                goto LABEL_20;
              }

              [(ADExecutor *)v6 convertIntrinsicsFrom:a3 cropBy:*a4 to:v6->super._inputRoi.origin.x, v6->super._inputRoi.origin.y, v6->super._inputRoi.size.width, v6->super._inputRoi.size.height];
              [v10 logPixelBuffer:*a4 name:"depthOutProcessedRotated" priority:0 timestamp:v13];
              [v17 stopWithUTFString:"output rotation"];
              kdebug_trace();
              if (v15 >= 5)
              {
                [(ADExecutor *)v6 frameExecutionEnd];
                v8 = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }

      v8 = -22977;
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to CVPixelBufferRef", buf, 2u);
    }

    v8 = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", buf, 2u);
    }

    v8 = -22960;
  }

LABEL_21:
  objc_sync_exit(v6);

  return v8;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 rotationPreference:(unint64_t)a6
{
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = self;
  objc_sync_enter(v13);
  kdebug_trace();
  v14 = [(ADMonocularPipeline *)v13->_pipeline inferenceDescriptor];
  v15 = [v14 colorInput];
  v16 = [v15 imageDescriptor];
  v17 = [(ADExecutor *)v13 prepareForEngineType:a3 roi:v16 descriptorForROI:v7 exifOrientation:a6 rotationPreference:v14 inferenceDescriptor:x, y, width, height];

  if (!v17)
  {
    v17 = [(ADMonocularExecutor *)v13 allocateIntermediateBuffers];
    v13->_prepared = v17 == 0;
  }

  kdebug_trace();
  objc_sync_exit(v13);

  return v17;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMonocularExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 depthOutput];
  self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  if (self->_itmPreProcessedColor && self->_itmUnprocessedDepth)
  {
    v9 = [(ADMonocularPipeline *)self->_pipeline inferenceDescriptor];
    v10 = [v9 depthOutput];
    v11 = [v10 imageDescriptor];

    [v11 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
    +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v11 pixelFormat], &self->_itmPostProcessedDepth, v12, v13);
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

- (ADMonocularExecutor)initWithInputPrioritization:(int64_t)a3
{
  v12 = 335685792;
  v13 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v11.receiver = self;
  v11.super_class = ADMonocularExecutor;
  v5 = [(ADExecutor *)&v11 init];
  if (v5)
  {
    v6 = [[ADMonocularPipeline alloc] initWithInputPrioritization:a3];
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