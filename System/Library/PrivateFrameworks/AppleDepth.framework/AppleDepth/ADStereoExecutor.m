@interface ADStereoExecutor
- (ADStereoExecutor)initWithInputAlignment:(unint64_t)a3 prioritization:(int64_t)a4 andParameters:(id)a5;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 outDisparityMap:(__CVBuffer *)a5;
- (int64_t)prepareForEngineType:(unint64_t)a3;
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

- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 outDisparityMap:(__CVBuffer *)a5
{
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ADStereoExecutor *)v8 prepareWithBestEngine];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v36, 2u);
    }

    goto LABEL_4;
  }

  if (v8->super._espressoRunner)
  {
    if (a5)
    {
      v11 = [(ADExecutor *)v8 executorParameters];
      v12 = [v11 logger];

      v13 = [MEMORY[0x277CCAC38] processInfo];
      [v13 systemUptime];
      v15 = v14;

      *v36 = 335685944;
      v37 = 0u;
      v38 = 0u;
      kdebug_trace();
      [v12 logPixelBuffer:a3 name:"refColor" timestamp:v15];
      [v12 logPixelBuffer:a4 name:"auxColor" timestamp:v15];
      v16 = [(ADExecutor *)v8 executorParameters];
      v17 = [v16 stepsToExecute];

      v18 = [(ADExecutor *)v8 executorParameters];
      v19 = [v18 timeProfiler];

      if (v17 >= 1)
      {
        v32 = v17;
        v34 = v19;
        kdebug_trace();
        [v19 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v8 frameExecutionStart];
        v20 = [(ADStereoPipeline *)v8->_pipeline shouldPreProcessColorInputs];
        v21 = &OBJC_IVAR___ADStereoExecutor__refColor;
        if (v20)
        {
          v21 = &OBJC_IVAR___ADStereoExecutor__itmChunkyRefColor;
        }

        v22 = *(&v8->super.super.isa + *v21);
        v23 = MEMORY[0x277CBF3A0];
        v9 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v22 scaleInto:&v8->_itmCroppedScaledRefColor intermediateScalingBuffer:&v8->_itmRotatedRefColor intermediateRotatingBuffer:1 useVT:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v32];
        if ([(ADStereoPipeline *)v8->_pipeline shouldPreProcessColorInputs])
        {
          [(ADStereoPipeline *)v8->_pipeline preProcessColorInput:v22 toBuffer:v8->_refColor];
        }

        if (v9)
        {
          v19 = v34;
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
          v9 = -22977;
          v19 = v34;
          goto LABEL_33;
        }

        kdebug_trace();
        [v34 startWithUTFString:"preprocess auxiliary color"];
        v19 = v34;
        v26 = [(ADStereoPipeline *)v8->_pipeline shouldPreProcessColorInputs];
        v27 = &OBJC_IVAR___ADStereoExecutor__auxColor;
        if (v26)
        {
          v27 = &OBJC_IVAR___ADStereoExecutor__itmChunkyAuxColor;
        }

        v28 = *(&v8->super.super.isa + *v27);
        v9 = [ADUtils scaleConvertRotateImage:a4 rotateBy:LOBYTE(v8->super._rotationConstant) cropBy:v28 scaleInto:&v8->_itmCroppedScaledAuxColor intermediateScalingBuffer:&v8->_itmRotatedAuxColor intermediateRotatingBuffer:1 useVT:*v23, v23[1], v23[2], v23[3]];
        if ([(ADStereoPipeline *)v8->_pipeline shouldPreProcessColorInputs])
        {
          [(ADStereoPipeline *)v8->_pipeline preProcessColorInput:v28 toBuffer:v8->_auxColor];
        }

        if (v9)
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

        [v12 logPixelBuffer:v8->_refColor name:"refColorProcessed" timestamp:v15];
        [v12 logPixelBuffer:v8->_auxColor name:"auxColorProcessed" timestamp:v15];
        [v34 stopWithUTFString:"preprocess auxiliary color"];
        kdebug_trace();
        if (v33 >= 3)
        {
          kdebug_trace();
          [v34 startWithUTFString:"network execution"];
          v9 = [(ADEspressoRunnerProtocol *)v8->super._espressoRunner execute];
          if (v9)
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

          [v12 logPixelBuffer:v8->_disparity name:"disparityOut" timestamp:v15];
          [v34 stopWithUTFString:"network execution"];
          kdebug_trace();
          if (v33 != 3)
          {
            kdebug_trace();
            [v34 startWithUTFString:"postprocess depth"];
            PixelBufferWithSameSize = *a5;
            if (!*a5)
            {
              disparity = v8->_disparity;
              PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
              PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(disparity, PixelFormatType, 1);
              *a5 = PixelBufferWithSameSize;
            }

            if (PixelBufferUtils::copyPixelBuffer(PixelBufferWithSameSize, v8->_disparity, 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed copying disparity to output buffer. please verify buffer dimensions", buf, 2u);
              }

              v9 = -22950;
              goto LABEL_33;
            }

            [v12 logPixelBuffer:*a5 name:"disparityOutProcessed" timestamp:v15];
            [v34 stopWithUTFString:"postprocess depth"];
            kdebug_trace();
            if (v33 >= 5)
            {
              [(ADExecutor *)v8 frameExecutionEnd];
              v9 = 0;
              goto LABEL_33;
            }
          }
        }
      }

      v9 = -22977;
      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", v36, 2u);
    }

    v9 = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", v36, 2u);
    }

    v9 = -22960;
  }

LABEL_4:
  objc_sync_exit(v8);

  return v9;
}

- (int64_t)prepareWithBestEngine
{
  if (self->_isPrepared || ![(ADStereoExecutor *)self prepareForEngineType:4])
  {
    return 0;
  }

  return [(ADStereoExecutor *)self prepareForEngineType:0];
}

- (int64_t)prepareForEngineType:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  kdebug_trace();
  v5 = [(ADStereoPipeline *)v4->_pipeline adjustForEngine:a3];
  if (!v5)
  {
    v6 = [(ADStereoPipeline *)v4->_pipeline inferenceDescriptor];
    v7 = [v6 referenceInput];
    v8 = [v7 imageDescriptor];
    [v8 sizeForLayout:255];
    v10 = v9;
    v12 = v11;

    v4->_refColorROI.origin.x = 0.0;
    v4->_refColorROI.origin.y = 0.0;
    v4->_refColorROI.size.width = v10;
    v4->_refColorROI.size.height = v12;
    v13 = [v6 auxiliaryInput];
    v14 = [v13 imageDescriptor];
    [v14 sizeForLayout:255];
    v16 = v15;
    v18 = v17;

    v4->_auxColorROI.origin.x = 0.0;
    v4->_auxColorROI.origin.y = 0.0;
    v4->_auxColorROI.size.width = v16;
    v4->_auxColorROI.size.height = v18;
    x = v4->_refColorROI.origin.x;
    y = v4->_refColorROI.origin.y;
    width = v4->_refColorROI.size.width;
    height = v4->_refColorROI.size.height;
    v23 = [v6 referenceInput];
    v24 = [v23 imageDescriptor];
    v5 = [(ADExecutor *)v4 prepareForEngineType:a3 roi:v24 descriptorForROI:1 exifOrientation:2 rotationPreference:v6 inferenceDescriptor:x, y, width, height];

    if (!v5)
    {
      v5 = [(ADStereoExecutor *)v4 allocateIntermediateBuffers];
      v4->_isPrepared = v5 == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(v4);

  return v5;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADStereoExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 referenceInput];
  self->_refColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 auxiliaryInput];
  self->_auxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = self->super._espressoRunner;
  v10 = [(ADStereoPipeline *)self->_pipeline inferenceDescriptor];
  v11 = [v10 disparityOutput];
  self->_disparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

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

- (ADStereoExecutor)initWithInputAlignment:(unint64_t)a3 prioritization:(int64_t)a4 andParameters:(id)a5
{
  v8 = a5;
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
    v11 = [v8 pipelineParameters];
    v12 = [(ADStereoPipeline *)v10 initWithInputAlignment:a3 prioritization:a4 andParameters:v11];
    pipeline = v9->_pipeline;
    v9->_pipeline = v12;

    if (!v9->_pipeline)
    {
      v16 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v9 setExecutorParameters:v8];
    v14 = [(ADExecutor *)v9 executorParameters];

    if (!v14)
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