@interface ADBinocularDepthExecutor
- (ADBinocularDepthExecutor)initWithPrioritization:(int64_t)prioritization espressoEngine:(unint64_t)engine;
- (CGRect)computeCropForRectifiedImage:(__CVBuffer *)image calib:(id)calib;
- (float)getRectifiedColorInputSaturationRate;
- (id)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib;
- (id)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib timestamp:(double)timestamp;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib auxOutputDepth:(__CVBuffer *)depth auxOutputConfidence:(__CVBuffer *)confidence auxOutputSegmentation:(__CVBuffer *)segmentation auxOutputCalib:(id *)self0 timestamp:(double)self1;
- (int64_t)prepareForInputRoi:(CGRect)roi;
- (int64_t)setColorInput:(__CVBuffer *)input calib:(id)calib toNetworkBuffer:(__CVBuffer *)buffer isRef:(BOOL)ref crop:(CGRect *)crop;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)sendAnalyticsWithRefSaturationRate:(float)rate auxSaturationRate:(float)saturationRate;
@end

@implementation ADBinocularDepthExecutor

- (id)getIntermediates
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmProcessedRefColor = self->_itmProcessedRefColor;
  if (itmProcessedRefColor)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"BD PreProcessed Reference Color";
    v24[1] = itmProcessedRefColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v5];
  }

  itmProcessedAuxColor = self->_itmProcessedAuxColor;
  if (itmProcessedAuxColor)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"BD PreProcessed Auxiliary Color";
    v22[1] = itmProcessedAuxColor;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v7];
  }

  itmRawAuxDisparity = self->_itmRawAuxDisparity;
  if (itmRawAuxDisparity)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"BD Unprocessed Auxiliary Disparity";
    v20[1] = itmRawAuxDisparity;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v9];
  }

  itmRawAuxConfidence = self->_itmRawAuxConfidence;
  if (itmRawAuxConfidence)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"BD Unprocessed Auxiliary Confidence";
    v18[1] = itmRawAuxConfidence;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v11];
  }

  itmRawAuxSegmentation = self->_itmRawAuxSegmentation;
  if (itmRawAuxSegmentation)
  {
    v15[0] = @"name";
    v15[1] = @"image";
    v16[0] = @"BD Unprocessed Auxiliary Segmentation";
    v16[1] = itmRawAuxSegmentation;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_itmProcessedRefColor);
  CVPixelBufferRelease(self->_itmProcessedAuxColor);
  CVPixelBufferRelease(self->_itmRawAuxDisparity);
  CVPixelBufferRelease(self->_itmRawAuxConfidence);
  CVPixelBufferRelease(self->_itmRawAuxSegmentation);
  CVPixelBufferRelease(self->_itmYUVColor);
  colorScalingSession = self->_colorScalingSession;
  if (colorScalingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorScalingSession);
    MEMORY[0x245CBFCB0]();
  }

  v4.receiver = self;
  v4.super_class = ADBinocularDepthExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (id)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib timestamp:(double)timestamp
{
  v13 = 0;
  texture = 0;
  v11 = 0;
  v12 = 0;
  v7 = [(ADBinocularDepthExecutor *)self executeWithRefColor:color auxColor:auxColor refCalib:calib auxCalib:auxCalib auxOutputDepth:&texture auxOutputConfidence:&v13 auxOutputSegmentation:timestamp auxOutputCalib:&v12 timestamp:&v11];
  v8 = v11;
  v9 = 0;
  if (!v7)
  {
    v9 = [ADBinocularDepthOutput outputWithAuxDepth:texture auxConfidence:v13 auxSegmentation:v12 auxOutputCalibration:v8];
  }

  CVPixelBufferRelease(texture);
  texture = 0;
  CVPixelBufferRelease(v13);
  v13 = 0;
  CVPixelBufferRelease(v12);
  v12 = 0;

  return v9;
}

- (id)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib
{
  v6 = [(ADBinocularDepthExecutor *)self executeWithRefColor:color auxColor:auxColor refCalib:calib auxCalib:auxCalib timestamp:NAN];

  return v6;
}

- (int64_t)executeWithRefColor:(__CVBuffer *)color auxColor:(__CVBuffer *)auxColor refCalib:(id)calib auxCalib:(id)auxCalib auxOutputDepth:(__CVBuffer *)depth auxOutputConfidence:(__CVBuffer *)confidence auxOutputSegmentation:(__CVBuffer *)segmentation auxOutputCalib:(id *)self0 timestamp:(double)self1
{
  v80 = *MEMORY[0x277D85DE8];
  *(&v67 + 1) = calib;
  *&v67 = auxCalib;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v73 = 335686832;
  v74 = 0u;
  v75 = 0u;
  kdebug_trace();
  if (selfCopy->_isPrepared)
  {
    goto LABEL_7;
  }

  inferenceDescriptor = [(ADBinocularDepthPipeline *)selfCopy->_pipeline inferenceDescriptor];
  referenceColorInput = [inferenceDescriptor referenceColorInput];
  imageDescriptor = [referenceColorInput imageDescriptor];
  [imageDescriptor sizeForLayout:255];
  v23 = v22;
  v25 = v24;

  Width = CVPixelBufferGetWidth(color);
  Height = CVPixelBufferGetHeight(color);
  v28 = Height / (v25 / v23);
  if (v28 > Width)
  {
    v28 = Width;
  }

  execute = [(ADBinocularDepthExecutor *)selfCopy prepareForInputRoi:(Width - v28) * 0.5, (Height - v25 / v23 * v28) * 0.5];
  if (!execute)
  {
LABEL_7:
    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    confidenceCopy = confidence;
    logger = [executorParameters logger];

    lastSaturationCheckTimestamp = selfCopy->_lastSaturationCheckTimestamp;
    executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
    [executorParameters2 saturationCheckInterval];
    v35 = lastSaturationCheckTimestamp + v34;

    if (v35 >= timestamp)
    {
      v37 = 0;
      v36 = 0;
    }

    else
    {
      v36 = selfCopy->_numberOfSaturationChecks % selfCopy->_coreAnalyticsToSaturationChecksRatio == 0;
      v37 = 1;
    }

    if (!selfCopy->super._espressoRunner)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", buf, 2u);
      }

      execute = -22960;
      goto LABEL_76;
    }

    if (!depth)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide output depth pointer", buf, 2u);
      }

      execute = -22953;
      goto LABEL_76;
    }

    [logger logPixelBuffer:color name:"inputColor" timestamp:timestamp];
    [logger logPixelBuffer:auxColor name:"inputSecondaryColor" timestamp:timestamp];
    executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
    stepsToExecute = [executorParameters3 stepsToExecute];

    executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
    timeProfiler = [executorParameters4 timeProfiler];

    if (stepsToExecute >= 1)
    {
      kdebug_trace();
      [timeProfiler startWithUTFString:"preprocess calibration"];
      [(ADExecutor *)selfCopy frameExecutionStart];
      if (v67 != 0)
      {
        [logger logCalibration:*(&v67 + 1) name:"inputColorCalibration" timestamp:timestamp];
        [logger logCalibration:v67 name:"inputSecondaryColorCalibration" timestamp:timestamp];
        execute = [(ADBinocularDepthPipeline *)selfCopy->_pipeline prepareStereoWarpMeshesWithRefCalib:*(&v67 + 1) auxCalib:v67];
        if (execute)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v40 = MEMORY[0x277D86220];
            v41 = "preparation of stereo warp meshes failed";
            v42 = buf;
LABEL_27:
            _os_log_error_impl(&dword_2402F6000, v40, OS_LOG_TYPE_ERROR, v41, v42, 2u);
            goto LABEL_23;
          }

          goto LABEL_23;
        }

        refRectifiedCalib = [(ADBinocularDepthPipeline *)selfCopy->_pipeline refRectifiedCalib];
        [logger logCalibration:refRectifiedCalib name:"refRectifiedCalib" timestamp:timestamp];

        auxRectifiedCalib = [(ADBinocularDepthPipeline *)selfCopy->_pipeline auxRectifiedCalib];
        [logger logCalibration:auxRectifiedCalib name:"auxRectifiedCalib" timestamp:timestamp];

        auxOutputCalib = [(ADBinocularDepthPipeline *)selfCopy->_pipeline auxOutputCalib];
        [logger logCalibration:auxOutputCalib name:"auxOutputCalib" timestamp:timestamp];
      }

      [timeProfiler stopWithUTFString:"preprocess calibration"];
      kdebug_trace();
      if (stepsToExecute != 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        execute = [(ADBinocularDepthExecutor *)selfCopy setColorInput:color calib:*(&v67 + 1) toNetworkBuffer:selfCopy->_itmProcessedRefColor isRef:1 crop:buf];
        if (execute)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v68 = 0;
            v40 = MEMORY[0x277D86220];
            v41 = "failed converting ref image";
            v42 = v68;
            goto LABEL_27;
          }

LABEL_23:

LABEL_76:
          goto LABEL_77;
        }

        [logger logPixelBuffer:selfCopy->_itmProcessedRefColor name:"processedRefColor" timestamp:timestamp];
        v46 = 0.0;
        if (v37)
        {
          [(ADBinocularDepthExecutor *)selfCopy getRectifiedColorInputSaturationRate];
          v46 = v47;
        }

        [timeProfiler stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (stepsToExecute >= 3)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess auxiliary color"];
          execute = [(ADBinocularDepthExecutor *)selfCopy setColorInput:auxColor calib:v67 toNetworkBuffer:selfCopy->_itmProcessedAuxColor isRef:0 crop:v68];
          if (execute)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            *v76 = 0;
            v40 = MEMORY[0x277D86220];
            v41 = "failed converting aux image";
            goto LABEL_34;
          }

          [logger logPixelBuffer:selfCopy->_itmProcessedAuxColor name:"processedAuxColor" timestamp:timestamp];
          if (v37)
          {
            [(ADBinocularDepthExecutor *)selfCopy getRectifiedColorInputSaturationRate];
            v49 = v48;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v76 = 134218240;
              v77 = v46;
              v78 = 2048;
              v79 = v49;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BinocularDepth rectified images saturation rate ref: %f, aux: %f", v76, 0x16u);
            }

            ++selfCopy->_numberOfSaturationChecks;
            selfCopy->_lastSaturationCheckTimestamp = timestamp;
            if (v36)
            {
              *&v50 = v46;
              *&v51 = v49;
              [(ADBinocularDepthExecutor *)selfCopy sendAnalyticsWithRefSaturationRate:v50 auxSaturationRate:v51];
            }
          }

          [timeProfiler stopWithUTFString:"preprocess auxiliary color"];
          kdebug_trace();
          if (stepsToExecute != 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"network execution"];
            execute = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }

              *v76 = 0;
              v40 = MEMORY[0x277D86220];
              v41 = "failed executing espresso plan";
              goto LABEL_34;
            }

            [logger logPixelBuffer:selfCopy->_itmRawAuxDisparity name:"rawAuxDisparity" timestamp:timestamp];
            [logger logPixelBuffer:selfCopy->_itmRawAuxConfidence name:"rawAuxConfidence" timestamp:timestamp];
            itmRawAuxSegmentation = selfCopy->_itmRawAuxSegmentation;
            if (itmRawAuxSegmentation)
            {
              [logger logPixelBuffer:itmRawAuxSegmentation name:"rawAuxSegmentation" timestamp:timestamp];
            }

            [timeProfiler stopWithUTFString:"network execution"];
            kdebug_trace();
            if (stepsToExecute >= 5)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess depth"];
              if (!*depth)
              {
                *depth = PixelBufferUtils::createPixelBufferWithSameSize(selfCopy->_itmRawAuxDisparity, 0x68646570, 1);
              }

              execute = [(ADBinocularDepthPipeline *)selfCopy->_pipeline postProcessDisparity:selfCopy->_itmRawAuxDisparity outputDepth:?];
              if (execute)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_23;
                }

                *v76 = 0;
                v40 = MEMORY[0x277D86220];
                v41 = "failed processing depth from pixel shifts";
                goto LABEL_34;
              }

              [logger logPixelBuffer:*depth name:"processedAuxDepth" timestamp:timestamp];
              [timeProfiler stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (stepsToExecute != 5)
              {
                kdebug_trace();
                [timeProfiler startWithUTFString:"postprocess confidence"];
                if (confidenceCopy)
                {
                  if (!*confidenceCopy)
                  {
                    *confidenceCopy = PixelBufferUtils::createPixelBufferCopy(selfCopy->_itmRawAuxConfidence, v53);
                  }

                  execute = [(ADBinocularDepthPipeline *)selfCopy->_pipeline postProcessEspressoConfidence:selfCopy->_itmRawAuxConfidence outputConfidence:?];
                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_23;
                    }

                    *v76 = 0;
                    v40 = MEMORY[0x277D86220];
                    v41 = "failed processing output aux confidence";
LABEL_34:
                    v42 = v76;
                    goto LABEL_27;
                  }

                  [logger logPixelBuffer:*confidenceCopy name:"processedAuxConfidence" timestamp:timestamp];
                }

                [timeProfiler stopWithUTFString:"postprocess confidence"];
                kdebug_trace();
                if (stepsToExecute >= 7)
                {
                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess mask"];
                  if (segmentation)
                  {
                    v55 = selfCopy->_itmRawAuxSegmentation;
                    if (v55)
                    {
                      if (!*segmentation)
                      {
                        *segmentation = PixelBufferUtils::createPixelBufferCopy(v55, v54);
                      }
                    }
                  }

                  [timeProfiler stopWithUTFString:"postprocess mask"];
                  kdebug_trace();
                  if (stepsToExecute != 7)
                  {
                    kdebug_trace();
                    [timeProfiler startWithUTFString:"postprocess calibration"];
                    if (outputCalib)
                    {
                      auxOutputCalib2 = [(ADBinocularDepthPipeline *)selfCopy->_pipeline auxOutputCalib];
                      *outputCalib = auxOutputCalib2;
                      v57 = v67 == 0;
                      if (auxOutputCalib2)
                      {
                        v57 = 1;
                      }

                      if (!v57)
                      {
                        v58 = [v67 mutableCopy];
                        [v58 crop:{*v68, v69, v70, v71}];
                        inferenceDescriptor2 = [(ADBinocularDepthPipeline *)selfCopy->_pipeline inferenceDescriptor];
                        auxiliaryDisparityOutput = [inferenceDescriptor2 auxiliaryDisparityOutput];
                        imageDescriptor2 = [auxiliaryDisparityOutput imageDescriptor];
                        [imageDescriptor2 sizeForLayout:255];
                        [v58 scale:?];

                        v62 = v58;
                        *outputCalib = v58;
                      }
                    }

                    [timeProfiler stopWithUTFString:"postprocess calibration"];
                    kdebug_trace();
                    if (stepsToExecute >= 9)
                    {
                      [(ADExecutor *)selfCopy frameExecutionEnd];
                      execute = 0;
                      goto LABEL_23;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    execute = -22977;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
  }

LABEL_77:
  kdebug_trace();
  objc_sync_exit(selfCopy);

  return execute;
}

- (void)sendAnalyticsWithRefSaturationRate:(float)rate auxSaturationRate:(float)saturationRate
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"SaturationPercentage";
  *&v4 = ((rate + saturationRate) * 0.5) * 100.0;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v7 = v6;
  AnalyticsSendEventLazy();
}

- (float)getRectifiedColorInputSaturationRate
{
  Width = CVPixelBufferGetWidth(self->_itmYUVColor);
  Height = CVPixelBufferGetHeight(self->_itmYUVColor);
  CVPixelBufferLockBaseAddress(self->_itmYUVColor, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_itmYUVColor, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_itmYUVColor, 0);
  executorParameters = [(ADExecutor *)self executorParameters];
  [executorParameters saturationThreshold];
  v9 = v8;

  v11 = 0.0;
  if (Height)
  {
    v12 = Width == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v9;
    if (Width > 3)
    {
      v17 = Width & 0xFFFFFFFFFFFFFFFCLL;
      v18 = vdup_n_s16(v13);
      if (Width > 0xF)
      {
        v36 = vdupq_n_s8(v13);
        if (Width == (Width & 0xFFFFFFFFFFFFFFF0))
        {
          v37 = 0;
          v14 = 0;
          v38 = vdupq_n_s64(1uLL);
          do
          {
            v39 = 0uLL;
            v40 = v14;
            v41 = BaseAddressOfPlane;
            v42 = Width;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            v48 = 0uLL;
            do
            {
              v49 = *v41++;
              v50 = vcgtq_u8(v49, v36);
              v51 = vmovl_u8(*v50.i8);
              v52 = vmovl_u16(*v51.i8);
              v53.i64[0] = v52.u32[0];
              v53.i64[1] = v52.u32[1];
              v54 = vandq_s8(v53, v38);
              v53.i64[0] = v52.u32[2];
              v53.i64[1] = v52.u32[3];
              v55 = vandq_s8(v53, v38);
              v56 = vmovl_high_u16(v51);
              v53.i64[0] = v56.u32[0];
              v53.i64[1] = v56.u32[1];
              v57 = vandq_s8(v53, v38);
              v58 = vmovl_high_u8(v50);
              v59 = vmovl_u16(*v58.i8);
              v53.i64[0] = v59.u32[0];
              v53.i64[1] = v59.u32[1];
              v60 = vandq_s8(v53, v38);
              v53.i64[0] = v56.u32[2];
              v53.i64[1] = v56.u32[3];
              v61 = vandq_s8(v53, v38);
              v53.i64[0] = v59.u32[2];
              v53.i64[1] = v59.u32[3];
              v62 = vandq_s8(v53, v38);
              v63 = vmovl_high_u16(v58);
              v53.i64[0] = v63.u32[0];
              v53.i64[1] = v63.u32[1];
              v64 = vandq_s8(v53, v38);
              v53.i64[0] = v63.u32[2];
              v53.i64[1] = v63.u32[3];
              v48 = vaddq_s64(v48, vandq_s8(v53, v38));
              v47 = vaddq_s64(v47, v64);
              v46 = vaddq_s64(v46, v62);
              v44 = vaddq_s64(v44, v61);
              v45 = vaddq_s64(v45, v60);
              v43 = vaddq_s64(v43, v57);
              v39 = vaddq_s64(v39, v55);
              v40 = vaddq_s64(v40, v54);
              v42 -= 16;
            }

            while (v42);
            v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v40, v45), vaddq_s64(v43, v47)), vaddq_s64(vaddq_s64(v39, v46), vaddq_s64(v44, v48))));
            ++v37;
            BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
          }

          while (v37 != Height);
        }

        else
        {
          v87 = 0;
          v14 = 0;
          v88 = vdupq_n_s64(1uLL);
          do
          {
            v89 = 0uLL;
            v90 = v14;
            v91 = BaseAddressOfPlane;
            v92 = Width & 0xFFFFFFFFFFFFFFF0;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            do
            {
              v99 = *v91++;
              v100 = vcgtq_u8(v99, v36);
              v101 = vmovl_u8(*v100.i8);
              v102 = vmovl_u16(*v101.i8);
              v103.i64[0] = v102.u32[0];
              v103.i64[1] = v102.u32[1];
              v104 = vandq_s8(v103, v88);
              v103.i64[0] = v102.u32[2];
              v103.i64[1] = v102.u32[3];
              v105 = vandq_s8(v103, v88);
              v106 = vmovl_high_u16(v101);
              v103.i64[0] = v106.u32[0];
              v103.i64[1] = v106.u32[1];
              v107 = vandq_s8(v103, v88);
              v108 = vmovl_high_u8(v100);
              v109 = vmovl_u16(*v108.i8);
              v103.i64[0] = v109.u32[0];
              v103.i64[1] = v109.u32[1];
              v110 = vandq_s8(v103, v88);
              v103.i64[0] = v106.u32[2];
              v103.i64[1] = v106.u32[3];
              v111 = vandq_s8(v103, v88);
              v103.i64[0] = v109.u32[2];
              v103.i64[1] = v109.u32[3];
              v112 = vandq_s8(v103, v88);
              v113 = vmovl_high_u16(v108);
              v103.i64[0] = v113.u32[0];
              v103.i64[1] = v113.u32[1];
              v114 = vandq_s8(v103, v88);
              v103.i64[0] = v113.u32[2];
              v103.i64[1] = v113.u32[3];
              v98 = vaddq_s64(v98, vandq_s8(v103, v88));
              v97 = vaddq_s64(v97, v114);
              v96 = vaddq_s64(v96, v112);
              v94 = vaddq_s64(v94, v111);
              v95 = vaddq_s64(v95, v110);
              v93 = vaddq_s64(v93, v107);
              v89 = vaddq_s64(v89, v105);
              v90 = vaddq_s64(v90, v104);
              v92 -= 16;
            }

            while (v92);
            v94.i64[0] = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v90, v95), vaddq_s64(v93, v97)), vaddq_s64(vaddq_s64(v89, v96), vaddq_s64(v94, v98))));
            v14 = v94.i64[0];
            v115 = Width & 0xFFFFFFFFFFFFFFF0;
            if ((Width & 0xC) == 0)
            {
              goto LABEL_55;
            }

            v116 = 0uLL;
            v117 = v94.u64[0];
            v118 = Width & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v94.i32[0] = *(BaseAddressOfPlane->i32 + v118);
              v119 = vmovl_u16(vcgt_u16(*&vmovl_u8(*v94.i8), v18));
              v120.i64[0] = v119.u32[0];
              v120.i64[1] = v119.u32[1];
              v121 = vdupq_n_s64(1uLL);
              v122 = vandq_s8(v120, v121);
              v120.i64[0] = v119.u32[2];
              v120.i64[1] = v119.u32[3];
              v94 = vandq_s8(v120, v121);
              v116 = vaddq_s64(v116, v94);
              v117 = vaddq_s64(v117, v122);
              v118 += 4;
            }

            while (v17 != v118);
            v14 = vaddvq_s64(vaddq_s64(v117, v116));
            v115 = Width & 0xFFFFFFFFFFFFFFFCLL;
            if (Width != v17)
            {
LABEL_55:
              do
              {
                if (BaseAddressOfPlane->u8[v115] > v13)
                {
                  ++v14;
                }

                ++v115;
              }

              while (Width != v115);
            }

            ++v87;
            BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
          }

          while (v87 != Height);
        }
      }

      else if (Width == v17)
      {
        v14 = 0;
        v19 = &BaseAddressOfPlane->i32[2];
        v20 = vdupq_n_s64(1uLL);
        v21 = Height;
        do
        {
          v10.i32[0] = *(v19 - 2);
          v22 = vmovl_u16(vcgt_u16(*&vmovl_u8(v10), v18));
          v23.i64[0] = v22.u32[2];
          v23.i64[1] = v22.u32[3];
          v24 = vandq_s8(v23, v20);
          v23.i64[0] = v22.u32[0];
          v23.i64[1] = v22.u32[1];
          v25 = vandq_s8(v23, v20);
          v26 = vaddq_s64(v14, v25);
          if (Width != 4)
          {
            v25.i32[0] = *(v19 - 1);
            v27 = vmovl_u16(vcgt_u16(*&vmovl_u8(*v25.i8), v18));
            v28.i64[0] = v27.u32[0];
            v28.i64[1] = v27.u32[1];
            v29 = vdupq_n_s64(1uLL);
            v30 = vandq_s8(v28, v29);
            v28.i64[0] = v27.u32[2];
            v28.i64[1] = v27.u32[3];
            v31 = vandq_s8(v28, v29);
            v24 = vaddq_s64(v24, v31);
            v26 = vaddq_s64(v26, v30);
            if (Width != 8)
            {
              v31.i32[0] = *v19;
              v32 = vmovl_u16(vcgt_u16(*&vmovl_u8(*v31.i8), v18));
              v33 = vdupq_n_s64(1uLL);
              v34.i64[0] = v32.u32[0];
              v34.i64[1] = v32.u32[1];
              v35 = vandq_s8(v34, v33);
              v34.i64[0] = v32.u32[2];
              v34.i64[1] = v32.u32[3];
              v24 = vaddq_s64(v24, vandq_s8(v34, v33));
              v26 = vaddq_s64(v26, v35);
            }
          }

          v10 = vaddvq_s64(vaddq_s64(v26, v24));
          v14 = v10;
          v19 = (v19 + BytesPerRowOfPlane);
          --v21;
        }

        while (v21);
      }

      else
      {
        v65 = 0;
        v14 = 0;
        v66 = &BaseAddressOfPlane->i8[v17];
        v67 = vdupq_n_s64(1uLL);
        do
        {
          v68 = (BaseAddressOfPlane->i32 + v65 * BytesPerRowOfPlane);
          v10.i32[0] = *v68;
          v69 = vmovl_u16(vcgt_u16(*&vmovl_u8(v10), v18));
          v70.i64[0] = v69.u32[2];
          v70.i64[1] = v69.u32[3];
          v71 = vandq_s8(v70, v67);
          v70.i64[0] = v69.u32[0];
          v70.i64[1] = v69.u32[1];
          v72 = vandq_s8(v70, v67);
          v73 = vaddq_s64(v14, v72);
          if (v17 != 4)
          {
            v72.i32[0] = v68[1];
            v74 = vmovl_u16(vcgt_u16(*&vmovl_u8(*v72.i8), v18));
            v75.i64[0] = v74.u32[0];
            v75.i64[1] = v74.u32[1];
            v76 = vdupq_n_s64(1uLL);
            v77 = vandq_s8(v75, v76);
            v75.i64[0] = v74.u32[2];
            v75.i64[1] = v74.u32[3];
            v78 = vandq_s8(v75, v76);
            v71 = vaddq_s64(v71, v78);
            v73 = vaddq_s64(v73, v77);
            if (v17 != 8)
            {
              v78.i32[0] = v68[2];
              v79 = vmovl_u16(vcgt_u16(*&vmovl_u8(*v78.i8), v18));
              v80 = vdupq_n_s64(1uLL);
              v81.i64[0] = v79.u32[0];
              v81.i64[1] = v79.u32[1];
              v82 = vandq_s8(v81, v80);
              v81.i64[0] = v79.u32[2];
              v81.i64[1] = v79.u32[3];
              v71 = vaddq_s64(v71, vandq_s8(v81, v80));
              v73 = vaddq_s64(v73, v82);
            }
          }

          v10 = vaddvq_s64(vaddq_s64(v73, v71));
          v14 = v10;
          v83 = v66;
          v84 = Width - v17;
          do
          {
            v85 = *v83++;
            if (v85 > v13)
            {
              ++v14;
            }

            --v84;
          }

          while (v84);
          ++v65;
          v66 += BytesPerRowOfPlane;
        }

        while (v65 != Height);
      }
    }

    else
    {
      v14 = 0;
      v15 = &BaseAddressOfPlane->u8[2];
      v16 = Height;
      do
      {
        if (*(v15 - 2) > v13)
        {
          ++v14;
        }

        if (Width != 1)
        {
          if (*(v15 - 1) > v13)
          {
            ++v14;
          }

          if (Width != 2 && *v15 > v13)
          {
            ++v14;
          }
        }

        v15 += BytesPerRowOfPlane;
        --v16;
      }

      while (v16);
    }

    v11 = v14;
  }

  CVPixelBufferUnlockBaseAddress(self->_itmYUVColor, 1uLL);
  return v11 / (Height * Width);
}

- (int64_t)setColorInput:(__CVBuffer *)input calib:(id)calib toNetworkBuffer:(__CVBuffer *)buffer isRef:(BOOL)ref crop:(CGRect *)crop
{
  refCopy = ref;
  calibCopy = calib;
  v13 = [(ADBinocularDepthPipeline *)self->_pipeline warpImage:input processedImage:self->_itmYUVColor isRef:refCopy];
  v14 = v13;
  if (v13 == -22975)
  {
    [(ADBinocularDepthExecutor *)self computeCropForRectifiedImage:input calib:calibCopy];
    *crop = v19;
    if (PixelBufferUtils::cropAndScalePixelBuffer(input, self->_itmYUVColor, 0, v19, *MEMORY[0x277CBF3A0]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed crop and scale image", v17, 2u);
      }

      v14 = -22950;
      goto LABEL_14;
    }

LABEL_9:
    if (CVPixelBufferGetPixelFormatType(buffer) == 1111970369)
    {
      if (PixelBufferUtils::convertPixelBufferFormat(self->_itmYUVColor, buffer, 0))
      {
        v14 = -22950;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = [(ADBinocularDepthPipeline *)self->_pipeline extractYChannelFromColorInput:self->_itmYUVColor toBuffer:buffer];
    }

    goto LABEL_14;
  }

  v15 = *(MEMORY[0x277CBF398] + 16);
  crop->origin = *MEMORY[0x277CBF398];
  crop->size = v15;
  if (!v13)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed warping image", buf, 2u);
  }

LABEL_14:

  return v14;
}

- (CGRect)computeCropForRectifiedImage:(__CVBuffer *)image calib:(id)calib
{
  calibCopy = calib;
  inferenceDescriptor = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  referenceColorInput = [inferenceDescriptor referenceColorInput];
  imageDescriptor = [referenceColorInput imageDescriptor];
  [imageDescriptor sizeForLayout:255];
  v11 = v10;
  v13 = v12;

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v16 = v13 / v11;
  if (Height / (v13 / v11) <= Width)
  {
    v17 = Height / (v13 / v11);
  }

  else
  {
    v17 = Width;
  }

  v18 = v16 * v17;
  if (calibCopy)
  {
    [calibCopy intrinsicMatrix];
    v34 = v19;
    [calibCopy intrinsicMatrix];
    [calibCopy referenceDimensions];
    v22 = v21;
    [calibCopy referenceDimensions];
    v24 = v33 - v18 * 0.5;
    v25 = v34 - v17 * 0.5;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (v22 - v17 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22 - v17;
    }

    v27 = v23 - v18;
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }
  }

  else
  {
    v26 = (Width - v17) * 0.5;
    v28 = (Height - v18) * 0.5;
  }

  v29 = v26;
  v30 = v28;
  v31 = v17;
  v32 = v18;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (int64_t)prepareForInputRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  kdebug_trace();
  inferenceDescriptor = [(ADBinocularDepthPipeline *)selfCopy->_pipeline inferenceDescriptor];
  espressoEngine = selfCopy->_espressoEngine;
  referenceColorInput = [inferenceDescriptor referenceColorInput];
  imageDescriptor = [referenceColorInput imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:espressoEngine roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height)
  {
    height = [(ADBinocularDepthExecutor *)selfCopy allocateIntermediateBuffers];
    selfCopy->_isPrepared = height == 0;
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADBinocularDepthExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  referenceColorInput = [inferenceDescriptor referenceColorInput];
  self->_itmProcessedRefColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:referenceColorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  auxiliaryColorInput = [inferenceDescriptor2 auxiliaryColorInput];
  self->_itmProcessedAuxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:auxiliaryColorInput];

  v9 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  auxiliaryDisparityOutput = [inferenceDescriptor3 auxiliaryDisparityOutput];
  self->_itmRawAuxDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:auxiliaryDisparityOutput];

  v12 = self->super._espressoRunner;
  inferenceDescriptor4 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  auxiliaryConfidenceOutput = [inferenceDescriptor4 auxiliaryConfidenceOutput];
  self->_itmRawAuxConfidence = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:auxiliaryConfidenceOutput];

  inferenceDescriptor5 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  auxiliarySegmentationOutput = [inferenceDescriptor5 auxiliarySegmentationOutput];

  if (auxiliarySegmentationOutput)
  {
    self->_itmRawAuxSegmentation = [(ADEspressoRunnerProtocol *)self->super._espressoRunner createAndRegisterPixelBufferForDescriptor:auxiliarySegmentationOutput];
  }

  itmProcessedRefColor = self->_itmProcessedRefColor;
  Width = CVPixelBufferGetWidth(itmProcessedRefColor);
  Height = CVPixelBufferGetHeight(itmProcessedRefColor);
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  v21 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x34323066u, BufferAttributes, &pixelBufferOut);
  v22 = pixelBufferOut;
  if (v21)
  {
    v22 = 0;
  }

  self->_itmYUVColor = v22;
  if (self->_itmProcessedRefColor && self->_itmProcessedAuxColor && self->_itmRawAuxDisparity && self->_itmRawAuxConfidence && v22)
  {
    v23 = 0;
  }

  else
  {
    [(ADBinocularDepthExecutor *)self deallocateEspressoBuffers];
    v23 = -22971;
  }

  return v23;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmProcessedRefColor);
  self->_itmProcessedRefColor = 0;
  CVPixelBufferRelease(self->_itmProcessedAuxColor);
  self->_itmProcessedAuxColor = 0;
  CVPixelBufferRelease(self->_itmRawAuxDisparity);
  self->_itmRawAuxDisparity = 0;
  CVPixelBufferRelease(self->_itmRawAuxConfidence);
  self->_itmRawAuxConfidence = 0;
  CVPixelBufferRelease(self->_itmRawAuxSegmentation);
  self->_itmRawAuxSegmentation = 0;
  CVPixelBufferRelease(self->_itmYUVColor);
  self->_itmYUVColor = 0;
}

- (ADBinocularDepthExecutor)initWithPrioritization:(int64_t)prioritization espressoEngine:(unint64_t)engine
{
  v22 = 335680440;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  v21.receiver = self;
  v21.super_class = ADBinocularDepthExecutor;
  v7 = [(ADExecutor *)&v21 init];
  if (v7)
  {
    v8 = [[ADBinocularDepthPipeline alloc] initWithPrioritization:prioritization espressoEngine:engine];
    pipeline = v7->_pipeline;
    v7->_pipeline = v8;

    if (!v7->_pipeline || (v10 = [[ADBinocularDepthExecutorParameters alloc] initForPipeline:v7->_pipeline], [(ADExecutor *)v7 setExecutorParameters:v10], v10, [(ADExecutor *)v7 executorParameters], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v19 = 0;
      goto LABEL_7;
    }

    v7->_numberOfSaturationChecks = 0;
    executorParameters = [(ADExecutor *)v7 executorParameters];
    [executorParameters coreAnalyticsEventInterval];
    v14 = v13;
    executorParameters2 = [(ADExecutor *)v7 executorParameters];
    [executorParameters2 saturationCheckInterval];
    v7->_coreAnalyticsToSaturationChecksRatio = (v14 / v16);

    executorParameters3 = [(ADExecutor *)v7 executorParameters];
    [executorParameters3 saturationCheckInterval];
    v7->_lastSaturationCheckTimestamp = -v18;

    v7->_itmProcessedRefColor = 0;
    v7->_itmProcessedAuxColor = 0;
    v7->_itmYUVColor = 0;
    v7->_colorScalingSession = 0;
    v7->_itmRawAuxDisparity = 0;
    v7->_itmRawAuxConfidence = 0;
    v7->_itmRawAuxSegmentation = 0;
    v7->_isPrepared = 0;
    v7->_espressoEngine = engine;
  }

  v19 = v7;
LABEL_7:
  kdebug_trace();

  return v19;
}

@end