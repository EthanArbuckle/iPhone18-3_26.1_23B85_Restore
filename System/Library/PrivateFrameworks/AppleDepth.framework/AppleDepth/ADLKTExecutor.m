@interface ADLKTExecutor
- (ADLKTExecutor)initWithDescriptor:(id)a3 forLayout:(unint64_t)a4;
- (ADLKTExecutor)initWithDescriptor:(id)a3 forLayout:(unint64_t)a4 executorParameters:(id)a5;
- (ADLKTExecutor)initWithSize:(CGSize)a3;
- (__CVBuffer)createConfidenceBuffer;
- (__CVBuffer)createOpticalFlowBuffer;
- (id)downscaleImageAndGenerateMipmapsIfNeeded:(id)a3 inputTexture:(id)a4;
- (id)lastExecutionStatistics;
- (int64_t)convertInputFormatIfNeeded:(__CVBuffer *)a3 greyscaleInput:(__CVBuffer *)a4;
- (int64_t)executeFromFrame:(__CVBuffer *)a3 toFrame:(__CVBuffer *)a4 validBufferRect:(CGRect)a5 outputOpticalFlow:(__CVBuffer *)a6 outputConfidence:(__CVBuffer *)a7;
- (int64_t)executeFromFrameToPreviousFrame:(__CVBuffer *)a3 outputOpticalFlow:(__CVBuffer *)a4 outputConfidence:(__CVBuffer *)a5;
- (int64_t)executeWithFrame:(__CVBuffer *)a3 createOpticalFlowBuffer:(__CVBuffer *)a4;
- (int64_t)processFrame:(__CVBuffer *)a3 validBufferRect:(CGRect)a4 intoOpticalFlowBuffer:(__CVBuffer *)a5 outputConfidence:(__CVBuffer *)a6;
- (int64_t)validateInputs:(__CVBuffer *)a3 validBufferRect:(CGRect *)a4 outputConfidence:(__CVBuffer *)a5;
- (void)createColorConvertingSession:(__CVBuffer *)a3;
- (void)dealloc;
@end

@implementation ADLKTExecutor

- (int64_t)executeFromFrame:(__CVBuffer *)a3 toFrame:(__CVBuffer *)a4 validBufferRect:(CGRect)a5 outputOpticalFlow:(__CVBuffer *)a6 outputConfidence:(__CVBuffer *)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = [MEMORY[0x277CBEAA8] now];
  [v16 timeIntervalSince1970];
  v18 = v17;

  v19 = [(ADExecutor *)self executorParameters];
  v20 = [v19 logger];
  [v20 logPixelBuffer:a3 name:"inputColor" timestamp:v18];

  v21 = [(ADExecutor *)self executorParameters];
  v22 = [v21 logger];
  [v22 logPixelBuffer:a4 name:"inputSecondaryColor" timestamp:v18];

  self->_isFirstTime = 1;
  result = [(ADLKTExecutor *)self processFrame:a4 validBufferRect:0 intoOpticalFlowBuffer:0 outputConfidence:x, y, width, height];
  if (!result)
  {
    result = [(ADLKTExecutor *)self processFrame:a3 validBufferRect:a6 intoOpticalFlowBuffer:a7 outputConfidence:x, y, width, height];
    if (!result)
    {
      v24 = [(ADExecutor *)self executorParameters];
      v25 = [v24 logger];
      [v25 logPixelBuffer:a6 name:"outputOpticalFlow" timestamp:v18];

      if (a7)
      {
        v26 = [(ADExecutor *)self executorParameters];
        v27 = [v26 logger];
        [v27 logPixelBuffer:a7 name:"outputConfidence" timestamp:v18];
      }

      return 0;
    }
  }

  return result;
}

- (int64_t)executeFromFrameToPreviousFrame:(__CVBuffer *)a3 outputOpticalFlow:(__CVBuffer *)a4 outputConfidence:(__CVBuffer *)a5
{
  v9 = [MEMORY[0x277CBEAA8] now];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [(ADExecutor *)self executorParameters];
  v13 = [v12 logger];
  [v13 logPixelBuffer:a3 name:"inputColor" timestamp:v11];

  result = [(ADLKTExecutor *)self processFrame:a3 validBufferRect:a4 intoOpticalFlowBuffer:a5 outputConfidence:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  if (!result)
  {
    v15 = [(ADExecutor *)self executorParameters];
    v16 = [v15 logger];
    [v16 logPixelBuffer:a4 name:"outputOpticalFlow" timestamp:v11];

    result = 0;
    if (a5)
    {
      v17 = [(ADExecutor *)self executorParameters];
      v18 = [v17 logger];
      [v18 logPixelBuffer:a5 name:"outputConfidence" timestamp:v11];

      return 0;
    }
  }

  return result;
}

- (int64_t)executeWithFrame:(__CVBuffer *)a3 createOpticalFlowBuffer:(__CVBuffer *)a4
{
  v6 = 0;
  *a4 = 0;
  if (!self->_isFirstTime)
  {
    v7 = a3;
    v8 = [(ADLKTExecutor *)self createOpticalFlowBuffer:a3];
    a3 = v7;
    v6 = v8;
    *a4 = v8;
  }

  result = [(ADLKTExecutor *)self executeWithFrame:a3 intoOpticalFlowBuffer:v6];
  if (result)
  {
    if (!self->_isFirstTime)
    {
      v10 = *a4;
      v11 = result;
      CVPixelBufferRelease(v10);
      return v11;
    }
  }

  return result;
}

- (int64_t)processFrame:(__CVBuffer *)a3 validBufferRect:(CGRect)a4 intoOpticalFlowBuffer:(__CVBuffer *)a5 outputConfidence:(__CVBuffer *)a6
{
  v66 = a4;
  result = [(ADLKTExecutor *)self validateInputs:a3 validBufferRect:&v66 outputConfidence:?];
  if (!result)
  {
    *[(MTLBuffer *)self->_meanIntensitiesAtCoarsestScale[self->_currentFrameIndex] contents]= 0;
    v11 = [(ADExecutor *)self executorParameters];
    v12 = [v11 stepsToExecute];

    v13 = [(ADExecutor *)self executorParameters];
    v64 = [v13 timeProfiler];

    if (v12 < 1)
    {
      v28 = -22977;
LABEL_39:

      return v28;
    }

    kdebug_trace();
    [v64 startWithUTFString:"preprocess metal inputs"];
    [(ADExecutor *)self frameExecutionStart];
    v65 = 0;
    v14 = [(ADLKTExecutor *)self convertInputFormatIfNeeded:a3 greyscaleInput:&v65];
    if (v14)
    {
LABEL_38:
      v28 = v14;
      goto LABEL_39;
    }

    v15 = [ADMetalUtils bindPixelBufferToMTL2DTexture:v65 metalDevice:self->_device];
    v63 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v63 setLabel:@"lkt_pyramid_features"];
    width = v66.size.width;
    height = v66.size.height;
    v18 = [v15 width];
    v19 = [v15 height];
    v20 = [(ADLKTExecutor *)self downscaleImageAndGenerateMipmapsIfNeeded:v63 inputTexture:v15];

    v21 = [v20 width];
    v22 = [v20 height];
    v23 = height;
    v24 = width;
    v25 = v24 / v18;
    v26 = v23 / v19;
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = ceilf(v25 * v21);
    v66.size.height = ceilf(v26 * v22);
    [v64 stopWithUTFString:"preprocess metal inputs"];
    kdebug_trace();
    if (v12 == 1)
    {
      v27 = -22977;
LABEL_37:

      v14 = v27;
      goto LABEL_38;
    }

    kdebug_trace();
    [v64 startWithUTFString:"pyramids encode"];
    v29 = [(ADExecutor *)self executorParameters];
    if ([v29 enableStatistics])
    {
      v30 = self->_meanIntensitiesAtCoarsestScale[self->_currentFrameIndex];
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    pyramids = self->_pyramids;
    v60 = v31;
    v33 = [(ADLKTOpticalFlow *)self->_lkt encodePyramidFeaturesToCommandBuffer:v63 grayscaleTexture:v20 validBufferRect:self->_pyramids[self->_currentFrameIndex] outPyramidsArray:self->_features[self->_currentFrameIndex] outFeaturesArray:self->_derivitives[self->_currentFrameIndex] outDerivitiveArray:v31 outMeanIntensityAtCoarsestScale:v66.origin.x, v66.origin.y, v66.size.width, v66.size.height];
    if (v33)
    {
      v27 = v33;
      v34 = 0;
      v35 = 0;
LABEL_36:

      goto LABEL_37;
    }

    [v63 commit];
    if (self->_isFirstTime)
    {
      self->_isFirstTime = 0;
      if (a5)
      {
        PixelBufferUtils::blacken(a5, v36);
      }

      v59 = v12 - 2;
      if (a6)
      {
        v62 = 0;
        PixelBufferUtils::blacken(a6, v36);
        v37 = "pyramids encode";
        v61 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v37 = "pyramids encode";
      }
    }

    else
    {
      [v64 stopWithUTFString:"pyramids encode"];
      kdebug_trace();
      v59 = v12 - 3;
      if (v12 < 3)
      {
        v34 = 0;
        v35 = 0;
        v27 = -22977;
        goto LABEL_36;
      }

      kdebug_trace();
      [v64 startWithUTFString:"solver encode"];
      v61 = [ADMetalUtils bindPixelBufferToMTL2DTexture:a5 metalDevice:self->_device];
      if (a6)
      {
        v62 = [ADMetalUtils bindPixelBufferToMTL2DTexture:a6 metalDevice:self->_device];
      }

      else
      {
        v62 = 0;
      }

      v38 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      [v38 setLabel:@"lkt_optical_flow_solver"];
      v39 = [(NSMutableArray *)pyramids[self->_currentFrameIndex] objectAtIndexedSubscript:0];
      v40 = [v39 width];
      v41 = [(NSMutableArray *)pyramids[self->_currentFrameIndex] objectAtIndexedSubscript:0];
      v42 = [v41 height];
      v66.origin.x = 0.0;
      v66.origin.y = 0.0;
      v66.size.width = ceilf(v25 * v40);
      v66.size.height = ceilf(v26 * v42);

      currentFrameIndex = self->_currentFrameIndex;
      [(ADLKTOpticalFlow *)self->_lkt encodeOpticalFlowSolverToCommandBuffer:v38 currentFeaturesArray:self->_features[currentFrameIndex] currentDerivitiveArray:self->_derivitives[currentFrameIndex] previousFeaturesArray:self->_features[currentFrameIndex ^ 1] previousDerivitiveArray:self->_derivitives[currentFrameIndex ^ 1] currentPyramidsArray:pyramids[currentFrameIndex] validBufferRect:v66.origin.x outShiftMap:v66.origin.y outConfidenceMap:v66.size.width, v66.size.height, v61, v62];
      [v38 commit];
      v37 = "solver encode";
      v63 = v38;
    }

    [v64 stopWithUTFString:v37];
    kdebug_trace();
    if (!v59)
    {
      goto LABEL_34;
    }

    kdebug_trace();
    [v64 startWithUTFString:"metal execution"];
    [v63 waitUntilCompleted];
    v44 = v59 - 1;
    if (a6 && (-[ADExecutor executorParameters](self, "executorParameters"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 confidenceUnits], v45, v46))
    {
      [v64 stopWithUTFString:"metal execution"];
      kdebug_trace();
      if (v59 == 1)
      {
        goto LABEL_34;
      }

      kdebug_trace();
      [v64 startWithUTFString:"postprocess confidence"];
      v47 = [(ADExecutor *)self executorParameters];
      v48 = [v47 confidenceUnits];
      LODWORD(v49) = -8388608;
      LODWORD(v50) = 981467093;
      LODWORD(v51) = 2139095040;
      LODWORD(v52) = -8388608;
      LODWORD(v53) = -8388608;
      LODWORD(v54) = 981467093;
      v55 = [ADConfidenceLevelRanges rangesForUnits:0 lowLevel:v49 mediumLevel:v50 highLevel:v52, v53, v54, v51];
      [ADUtils postProcessConfidence:a6 confidenceOutput:a6 rawConfidenceUnits:0 outConfidenceUnits:v48 confidenceLevelRanges:v55];
      v44 = v59 - 2;

      v56 = "postprocess confidence";
    }

    else
    {
      v56 = "metal execution";
    }

    v57 = 0;
      ;
    }

    self->_currentFrameIndex ^= 1u;
    [v64 stopWithUTFString:v56];
    kdebug_trace();
    if (v44 >= 1)
    {
      [(ADExecutor *)self frameExecutionEnd];
      v27 = 0;
LABEL_35:
      v35 = v61;
      v34 = v62;
      goto LABEL_36;
    }

LABEL_34:
    v27 = -22977;
    goto LABEL_35;
  }

  return result;
}

- (id)lastExecutionStatistics
{
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 enableStatistics];

  if (v4)
  {
    v5 = objc_alloc_init(ADLKTStatistics);
    v6 = *[(MTLBuffer *)self->_meanIntensitiesAtCoarsestScale[self->_currentFrameIndex] contents];
    v7 = *[(MTLBuffer *)self->_meanIntensitiesAtCoarsestScale[self->_currentFrameIndex ^ 1] contents];
    if (v7 == -1.0)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        v9 = -1.0;
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADLKTStatistics meanIntensitiesAtCoarsestScale cannot be computed for first frame", buf, 2u);
          v9 = -1.0;
        }
      }

      else
      {
        v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        v9 = -1.0;
        if (v10)
        {
          *v12 = 0;
          _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADLKTStatistics meanIntensitiesAtCoarsestScale cannot be computed for first frame", v12, 2u);
          v9 = -1.0;
        }
      }
    }

    else
    {
      v9 = vabds_f32(v6, v7);
    }

    [(ADLKTStatistics *)v5 setMeanIntensityDiffAtCoarsestScale:v9];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADLKTStatistics cannot be computed because statistis is disabled in executor parameters", v14, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (int64_t)validateInputs:(__CVBuffer *)a3 validBufferRect:(CGRect *)a4 outputConfidence:(__CVBuffer *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  p_inputSize = &self->_inputSize;
  if (self->_inputSize.width != CVPixelBufferGetWidth(a3) || self->_inputSize.height != CVPixelBufferGetHeight(a3))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22957;
    }

    width = p_inputSize->width;
    height = self->_inputSize.height;
    v20 = 134218752;
    v21 = width;
    v22 = 2048;
    v23 = height;
    v24 = 2048;
    v25 = CVPixelBufferGetWidth(a3);
    v26 = 2048;
    v27 = CVPixelBufferGetHeight(a3);
    v12 = MEMORY[0x277D86220];
    v13 = "invalid input buffer size (expected: %fx%f, got %zux%zu)";
    v14 = 42;
LABEL_17:
    _os_log_error_impl(&dword_2402F6000, v12, OS_LOG_TYPE_ERROR, v13, &v20, v14);
    return -22957;
  }

  if (CGRectIsNull(*a4))
  {
    v11 = *p_inputSize;
    a4->origin.x = 0.0;
    a4->origin.y = 0.0;
    a4->size = v11;
  }

  else
  {
    if (a4->origin.x != 0.0 || a4->origin.y != 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "validBufferRect origin is different than (0,0)", &v20, 2u);
      }

      return -22951;
    }

    v11.width = a4->size.width;
  }

  if (v11.width > p_inputSize->width || a4->size.height > self->_inputSize.height)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22957;
    }

    LOWORD(v20) = 0;
    v12 = MEMORY[0x277D86220];
    v13 = "validBufferRect is larger than input size";
    v14 = 2;
    goto LABEL_17;
  }

  if (!a5)
  {
    return 0;
  }

  v17 = [(ADExecutor *)self executorParameters];
  v18 = [v17 confidenceParameters];
  v19 = [v18 enableConfidence];

  if (v19)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "outputConfidence cannot be computed because confidence is disabled", &v20, 2u);
  }

  return -22961;
}

- (id)downscaleImageAndGenerateMipmapsIfNeeded:(id)a3 inputTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  downscaledInputTexture = v7;
  if (self->_inputSize.width > self->_downscaledInputSize.width)
  {
    [(MPSImageBilinearScale *)self->_bilinearScaler encodeToCommandBuffer:v6 sourceTexture:v7 destinationTexture:self->_downscaledInputTexture];
    if (self->_inputSize.width / self->_downscaledInputSize.width > 2.0)
    {
      v9 = [v6 blitCommandEncoder];
      [v9 setLabel:@"lkt_generateMipmapsForDownscale"];
      [v9 generateMipmapsForTexture:self->_downscaledInputTexture];
      [v9 endEncoding];
    }

    downscaledInputTexture = self->_downscaledInputTexture;
  }

  v10 = downscaledInputTexture;

  return downscaledInputTexture;
}

- (int64_t)convertInputFormatIfNeeded:(__CVBuffer *)a3 greyscaleInput:(__CVBuffer *)a4
{
  if (CVPixelBufferGetPixelFormatType(a3) == 1278226488)
  {
    result = 0;
    *a4 = a3;
  }

  else
  {
    if (!self->_greyscaleInput)
    {
      width = self->_inputSize.width;
      height = self->_inputSize.height;
      pixelBufferOut = 0;
      v10 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      v12 = CVPixelBufferCreate(v10, width, height, 0x4C303038u, BufferAttributes, &pixelBufferOut);
      v13 = pixelBufferOut;
      if (v12)
      {
        v13 = 0;
      }

      self->_greyscaleInput = v13;
    }

    [(ADLKTExecutor *)self createColorConvertingSession:a3];
    if (PixelBufferUtilsSession::run(self->_colorConvertingSession, a3, self->_greyscaleInput))
    {
      result = 0;
      *a4 = self->_greyscaleInput;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed converting color image to greyscale", v14, 2u);
      }

      return -22950;
    }
  }

  return result;
}

- (void)createColorConvertingSession:(__CVBuffer *)a3
{
  colorConvertingSession = self->_colorConvertingSession;
  if (!colorConvertingSession)
  {
LABEL_12:
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(a3);
    CVPixelBufferGetPixelFormatType(a3);
    CVPixelBufferGetWidth(self->_greyscaleInput);
    CVPixelBufferGetHeight(self->_greyscaleInput);
    CVPixelBufferGetPixelFormatType(self->_greyscaleInput);
    PixelBufferUtilsSession::createCropScaleConvertRotateSession();
  }

  if (!a3 || (var4 = colorConvertingSession->var4, width = colorConvertingSession->var3.width, height = colorConvertingSession->var3.height, width != CVPixelBufferGetWidth(a3)) || height != CVPixelBufferGetHeight(a3) || CVPixelBufferGetPixelFormatType(a3) != var4 || (greyscaleInput = self->_greyscaleInput) == 0 || (v10 = self->_colorConvertingSession, var6 = v10->var6, v13 = v10->var5.width, v12 = v10->var5.height, v13 != CVPixelBufferGetWidth(greyscaleInput)) || v12 != CVPixelBufferGetHeight(greyscaleInput) || CVPixelBufferGetPixelFormatType(greyscaleInput) != var6)
  {
    v14 = self->_colorConvertingSession;
    if (v14)
    {
      PixelBufferUtilsSession::~PixelBufferUtilsSession(v14);
      MEMORY[0x245CBFCB0]();
    }

    goto LABEL_12;
  }
}

- (void)dealloc
{
  greyscaleInput = self->_greyscaleInput;
  if (greyscaleInput)
  {
    CVPixelBufferRelease(greyscaleInput);
  }

  for (i = 0; [(NSMutableArray *)self->_derivitives[0] count]> i; ++i)
  {
    v5 = self->_derivities_pbuf[0][i];
    if (v5)
    {
      CVPixelBufferRelease(v5);
    }
  }

  for (j = 0; [(NSMutableArray *)self->_derivitives[1] count]> j; ++j)
  {
    v7 = self->_derivities_pbuf[1][j];
    if (v7)
    {
      CVPixelBufferRelease(v7);
    }
  }

  colorConvertingSession = self->_colorConvertingSession;
  if (colorConvertingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorConvertingSession);
    MEMORY[0x245CBFCB0]();
  }

  v9.receiver = self;
  v9.super_class = ADLKTExecutor;
  [(ADExecutor *)&v9 dealloc];
}

- (ADLKTExecutor)initWithDescriptor:(id)a3 forLayout:(unint64_t)a4 executorParameters:(id)a5
{
  v114 = *MEMORY[0x277D85DE8];
  v99 = a3;
  v95 = a5;
  kdebug_trace();
  v112.receiver = self;
  v112.super_class = ADLKTExecutor;
  v7 = [(ADExecutor *)&v112 init];
  v8 = v7;
  if (v7)
  {
    [(ADExecutor *)v7 setExecutorParameters:v95];
    v9 = v8;
    v8->_colorConvertingSession = 0;
    v8->_isFirstTime = 1;
    v8->_currentFrameIndex = 0;
    v101 = v8;
    [v99 inputSizeForLayout:a4];
    p_width = &v8->_inputSize.width;
    v8->_inputSize.width = v11;
    v8->_inputSize.height = v12;
    [v99 downscaledInputSizeForLayout:a4];
    v13 = &v8->_downscaledInputSize.width;
    v8->_downscaledInputSize.width = v14;
    v8->_downscaledInputSize.height = v15;
    [v99 outputSizeForLayout:a4];
    v8->_outputSize.width = v16;
    v8->_outputSize.height = v17;
    v18 = MTLCreateSystemDefaultDevice();
    device = v8->_device;
    v8->_device = v18;

    v20 = [(MTLDevice *)v8->_device newCommandQueue];
    commandQueue = v8->_commandQueue;
    v8->_commandQueue = v20;

    v22 = [ADLKTOpticalFlow alloc];
    v23 = v8->_device;
    width = v8->_downscaledInputSize.width;
    height = v8->_downscaledInputSize.height;
    if (v99)
    {
      [v99 opticalFlowConfig];
    }

    else
    {
      v111 = 0;
      memset(v110, 0, sizeof(v110));
    }

    v26 = [(ADExecutor *)v8 executorParameters];
    v27 = v99;
    v28 = [v26 confidenceParameters];
    if (v22)
    {
      v29 = [(ADLKTOpticalFlow *)v22 initWithDevice:v23 inputSize:v110 config:v28 confidenceParameters:width, height];
    }

    else
    {

      v29 = 0;
      v27 = v99;
    }

    lkt = v101->_lkt;
    v101->_lkt = v29;

    if (v27)
    {
      [v99 opticalFlowConfig];
      v31 = v109;
    }

    else
    {
      v31 = 0;
      v109 = 0;
      v107 = 0u;
      v108 = 0u;
      *pixelBufferOut = 0u;
    }

    v101->_firstScaleStride = v31;

    v32 = *p_width;
    v33 = *v13;
    v8 = v101;
    if (*p_width > *v13)
    {
      v34 = v32 / v33;
      if (v32 / v33 <= 2.0)
      {
        v39 = v9->_downscaledInputSize.height;
        v36 = v101;
        v37 = [v99 downscaledInputDescriptor];
        +[ADMetalUtils textureForSize:pixelFormat:metalDevice:](ADMetalUtils, "textureForSize:pixelFormat:metalDevice:", [v37 pixelFormat], v101->_device, v33, v39);
      }

      else
      {
        v35 = v9->_inputSize.height;
        v36 = v101;
        v37 = [v99 downscaledInputDescriptor];
        +[ADMetalUtils textureForSize:pixelFormat:mipmapped:metalDevice:](ADMetalUtils, "textureForSize:pixelFormat:mipmapped:metalDevice:", [v37 pixelFormat], 1, v101->_device, v32 * 0.5, v35 * 0.5);
      }
      v38 = ;
      downscaledInputTexture = v36->_downscaledInputTexture;
      v36->_downscaledInputTexture = v38;

      v41 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:v101->_device];
      bilinearScaler = v101->_bilinearScaler;
      v101->_bilinearScaler = v41;

      v8 = v101;
      [(MPSImageBilinearScale *)v101->_bilinearScaler setLabel:@"lkt_downscaleToWidth"];
      [(MPSImageBilinearScale *)v101->_bilinearScaler setOptions:8];
    }

    v43 = 0;
    v44 = 1;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      v96 = v44;
      v45 = objc_opt_new();
      features = v8->_features;
      v47 = v8->_features[v43];
      v8->_features[v43] = v45;

      v48 = objc_opt_new();
      v49 = v101->_derivitives[v43];
      v101->_derivitives[v43] = v48;

      v50 = objc_opt_new();
      v51 = v101->_pyramids[v43];
      pyramids = v101->_pyramids;
      v101->_pyramids[v43] = v50;

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v52 = [v99 featuresDescriptors];
      v53 = [v52 countByEnumeratingWithState:&v102 objects:v113 count:16];
      if (v53)
      {
        v54 = *v103;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v103 != v54)
            {
              objc_enumerationMutation(v52);
            }

            v56 = *(*(&v102 + 1) + 8 * i);
            v57 = features[v43];
            [v56 sizeForLayout:a4];
            v60 = +[ADMetalUtils textureForSize:pixelFormat:metalDevice:](ADMetalUtils, "textureForSize:pixelFormat:metalDevice:", [v56 pixelFormat], v101->_device, v58, v59);
            [(NSMutableArray *)v57 addObject:v60];
          }

          v53 = [v52 countByEnumeratingWithState:&v102 objects:v113 count:16];
        }

        while (v53);
      }

      for (j = 0; ; j = v63 + 1)
      {
        v62 = [v99 derivitivesDescriptors];
        v63 = j;
        v64 = [v62 count] > j;

        if (!v64)
        {
          break;
        }

        v65 = [v99 derivitivesDescriptors];
        v66 = [v65 objectAtIndex:v63];

        [v66 sizeForLayout:a4];
        v68 = v67;
        v70 = v69;
        v71 = [v66 pixelFormat];
        pixelBufferOut[0] = 0;
        BufferAttributes = getBufferAttributes();
        if (CVPixelBufferCreate(allocator, v68, v70, v71, BufferAttributes, pixelBufferOut))
        {
          v73 = 0;
        }

        else
        {
          v73 = pixelBufferOut[0];
        }

        v101->_derivities_pbuf[v43][v63] = v73;
        v74 = v101->_derivitives[v43];
        v75 = [ADMetalUtils bindPixelBufferToMTL2DTexture:"bindPixelBufferToMTL2DTexture:metalDevice:" metalDevice:?];
        [(NSMutableArray *)v74 addObject:v75];
      }

      for (k = 0; ; k = v78 + 1)
      {
        v77 = [v99 pyramidsDescriptors];
        v78 = k;
        v79 = [v77 count] > k;

        if (!v79)
        {
          break;
        }

        v80 = [v99 pyramidsDescriptors];
        v81 = [v80 objectAtIndex:v78];

        if (v99 && ([v99 opticalFlowConfig], v82 = v107, pixelBufferOut[1], (v82 & 1) != 0))
        {
          v83 = pyramids[v43];
          [v81 sizeForLayout:a4];
          v86 = +[ADMetalUtils textureForSize:pixelFormat:metalDevice:](ADMetalUtils, "textureForSize:pixelFormat:metalDevice:", [v81 pixelFormat], v101->_device, v84, v85);
          [(NSMutableArray *)v83 addObject:v86];
        }

        else
        {
          v87 = pyramids[v43];
          v88 = v101->_derivities_pbuf[v43][v78];
          v89 = +[ADMetalUtils getMTLPixelFormat:](ADMetalUtils, "getMTLPixelFormat:", [v81 pixelFormat]);
          [v81 sizeForLayout:a4];
          v86 = [ADMetalUtils bindPixelBufferToMTL2DTexture:v88 pixelFormat:v89 textureSize:0 plane:v101->_device metalDevice:0 error:?];
          [(NSMutableArray *)v87 addObject:v86];
        }
      }

      v90 = [(MTLDevice *)v101->_device newBufferWithLength:4 options:0];
      v91 = v101->_meanIntensitiesAtCoarsestScale[v43];
      v101->_meanIntensitiesAtCoarsestScale[v43] = v90;

      v92 = [(MTLBuffer *)v101->_meanIntensitiesAtCoarsestScale[v43] contents];
      v44 = 0;
      *v92 = -1082130432;
      v43 = 1;
      v8 = v101;
    }

    while ((v96 & 1) != 0);
  }

  v93 = v8;
  kdebug_trace();

  return v93;
}

- (ADLKTExecutor)initWithDescriptor:(id)a3 forLayout:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(ADLKTExecutor *)self initWithDescriptor:v6 forLayout:a4 executorParameters:v7];

  return v8;
}

- (ADLKTExecutor)initWithSize:(CGSize)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CED088] createWithSize:255 andLayout:{a3.width, a3.height}];
  v5 = [ADLKTTexturesDescriptor alloc];
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  +[ADLKTOpticalFlow defaultConfig];
  if (v5)
  {
    v7 = [(ADLKTTexturesDescriptor *)v5 initForSupportedSizes:v6 config:v10];
  }

  else
  {

    v7 = 0;
  }

  v8 = [(ADLKTExecutor *)self initWithDescriptor:v7 forLayout:255];
  return v8;
}

- (__CVBuffer)createConfidenceBuffer
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v4, width, height, 0x4C303068u, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

- (__CVBuffer)createOpticalFlowBuffer
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v4, width, height, 0x32433068u, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

@end