@interface ADBinocularDepthExecutor
- (ADBinocularDepthExecutor)initWithPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4;
- (CGRect)computeCropForRectifiedImage:(__CVBuffer *)a3 calib:(id)a4;
- (float)getRectifiedColorInputSaturationRate;
- (id)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6;
- (id)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6 timestamp:(double)a7;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6 auxOutputDepth:(__CVBuffer *)a7 auxOutputConfidence:(__CVBuffer *)a8 auxOutputSegmentation:(__CVBuffer *)a9 auxOutputCalib:(id *)a10 timestamp:(double)a11;
- (int64_t)prepareForInputRoi:(CGRect)a3;
- (int64_t)setColorInput:(__CVBuffer *)a3 calib:(id)a4 toNetworkBuffer:(__CVBuffer *)a5 isRef:(BOOL)a6 crop:(CGRect *)a7;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)sendAnalyticsWithRefSaturationRate:(float)a3 auxSaturationRate:(float)a4;
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

- (id)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6 timestamp:(double)a7
{
  v13 = 0;
  texture = 0;
  v11 = 0;
  v12 = 0;
  v7 = [(ADBinocularDepthExecutor *)self executeWithRefColor:a3 auxColor:a4 refCalib:a5 auxCalib:a6 auxOutputDepth:&texture auxOutputConfidence:&v13 auxOutputSegmentation:a7 auxOutputCalib:&v12 timestamp:&v11];
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

- (id)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6
{
  v6 = [(ADBinocularDepthExecutor *)self executeWithRefColor:a3 auxColor:a4 refCalib:a5 auxCalib:a6 timestamp:NAN];

  return v6;
}

- (int64_t)executeWithRefColor:(__CVBuffer *)a3 auxColor:(__CVBuffer *)a4 refCalib:(id)a5 auxCalib:(id)a6 auxOutputDepth:(__CVBuffer *)a7 auxOutputConfidence:(__CVBuffer *)a8 auxOutputSegmentation:(__CVBuffer *)a9 auxOutputCalib:(id *)a10 timestamp:(double)a11
{
  v80 = *MEMORY[0x277D85DE8];
  *(&v67 + 1) = a5;
  *&v67 = a6;
  v18 = self;
  objc_sync_enter(v18);
  v73 = 335686832;
  v74 = 0u;
  v75 = 0u;
  kdebug_trace();
  if (v18->_isPrepared)
  {
    goto LABEL_7;
  }

  v19 = [(ADBinocularDepthPipeline *)v18->_pipeline inferenceDescriptor];
  v20 = [v19 referenceColorInput];
  v21 = [v20 imageDescriptor];
  [v21 sizeForLayout:255];
  v23 = v22;
  v25 = v24;

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v28 = Height / (v25 / v23);
  if (v28 > Width)
  {
    v28 = Width;
  }

  v29 = [(ADBinocularDepthExecutor *)v18 prepareForInputRoi:(Width - v28) * 0.5, (Height - v25 / v23 * v28) * 0.5];
  if (!v29)
  {
LABEL_7:
    v30 = [(ADExecutor *)v18 executorParameters];
    v65 = a8;
    v31 = [v30 logger];

    lastSaturationCheckTimestamp = v18->_lastSaturationCheckTimestamp;
    v33 = [(ADExecutor *)v18 executorParameters];
    [v33 saturationCheckInterval];
    v35 = lastSaturationCheckTimestamp + v34;

    if (v35 >= a11)
    {
      v37 = 0;
      v36 = 0;
    }

    else
    {
      v36 = v18->_numberOfSaturationChecks % v18->_coreAnalyticsToSaturationChecksRatio == 0;
      v37 = 1;
    }

    if (!v18->super._espressoRunner)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", buf, 2u);
      }

      v29 = -22960;
      goto LABEL_76;
    }

    if (!a7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide output depth pointer", buf, 2u);
      }

      v29 = -22953;
      goto LABEL_76;
    }

    [v31 logPixelBuffer:a3 name:"inputColor" timestamp:a11];
    [v31 logPixelBuffer:a4 name:"inputSecondaryColor" timestamp:a11];
    v38 = [(ADExecutor *)v18 executorParameters];
    v64 = [v38 stepsToExecute];

    v39 = [(ADExecutor *)v18 executorParameters];
    v66 = [v39 timeProfiler];

    if (v64 >= 1)
    {
      kdebug_trace();
      [v66 startWithUTFString:"preprocess calibration"];
      [(ADExecutor *)v18 frameExecutionStart];
      if (v67 != 0)
      {
        [v31 logCalibration:*(&v67 + 1) name:"inputColorCalibration" timestamp:a11];
        [v31 logCalibration:v67 name:"inputSecondaryColorCalibration" timestamp:a11];
        v29 = [(ADBinocularDepthPipeline *)v18->_pipeline prepareStereoWarpMeshesWithRefCalib:*(&v67 + 1) auxCalib:v67];
        if (v29)
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

        v43 = [(ADBinocularDepthPipeline *)v18->_pipeline refRectifiedCalib];
        [v31 logCalibration:v43 name:"refRectifiedCalib" timestamp:a11];

        v44 = [(ADBinocularDepthPipeline *)v18->_pipeline auxRectifiedCalib];
        [v31 logCalibration:v44 name:"auxRectifiedCalib" timestamp:a11];

        v45 = [(ADBinocularDepthPipeline *)v18->_pipeline auxOutputCalib];
        [v31 logCalibration:v45 name:"auxOutputCalib" timestamp:a11];
      }

      [v66 stopWithUTFString:"preprocess calibration"];
      kdebug_trace();
      if (v64 != 1)
      {
        kdebug_trace();
        [v66 startWithUTFString:"preprocess color"];
        v29 = [(ADBinocularDepthExecutor *)v18 setColorInput:a3 calib:*(&v67 + 1) toNetworkBuffer:v18->_itmProcessedRefColor isRef:1 crop:buf];
        if (v29)
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

        [v31 logPixelBuffer:v18->_itmProcessedRefColor name:"processedRefColor" timestamp:a11];
        v46 = 0.0;
        if (v37)
        {
          [(ADBinocularDepthExecutor *)v18 getRectifiedColorInputSaturationRate];
          v46 = v47;
        }

        [v66 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v64 >= 3)
        {
          kdebug_trace();
          [v66 startWithUTFString:"preprocess auxiliary color"];
          v29 = [(ADBinocularDepthExecutor *)v18 setColorInput:a4 calib:v67 toNetworkBuffer:v18->_itmProcessedAuxColor isRef:0 crop:v68];
          if (v29)
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

          [v31 logPixelBuffer:v18->_itmProcessedAuxColor name:"processedAuxColor" timestamp:a11];
          if (v37)
          {
            [(ADBinocularDepthExecutor *)v18 getRectifiedColorInputSaturationRate];
            v49 = v48;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v76 = 134218240;
              v77 = v46;
              v78 = 2048;
              v79 = v49;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BinocularDepth rectified images saturation rate ref: %f, aux: %f", v76, 0x16u);
            }

            ++v18->_numberOfSaturationChecks;
            v18->_lastSaturationCheckTimestamp = a11;
            if (v36)
            {
              *&v50 = v46;
              *&v51 = v49;
              [(ADBinocularDepthExecutor *)v18 sendAnalyticsWithRefSaturationRate:v50 auxSaturationRate:v51];
            }
          }

          [v66 stopWithUTFString:"preprocess auxiliary color"];
          kdebug_trace();
          if (v64 != 3)
          {
            kdebug_trace();
            [v66 startWithUTFString:"network execution"];
            v29 = [(ADEspressoRunnerProtocol *)v18->super._espressoRunner execute];
            if (v29)
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

            [v31 logPixelBuffer:v18->_itmRawAuxDisparity name:"rawAuxDisparity" timestamp:a11];
            [v31 logPixelBuffer:v18->_itmRawAuxConfidence name:"rawAuxConfidence" timestamp:a11];
            itmRawAuxSegmentation = v18->_itmRawAuxSegmentation;
            if (itmRawAuxSegmentation)
            {
              [v31 logPixelBuffer:itmRawAuxSegmentation name:"rawAuxSegmentation" timestamp:a11];
            }

            [v66 stopWithUTFString:"network execution"];
            kdebug_trace();
            if (v64 >= 5)
            {
              kdebug_trace();
              [v66 startWithUTFString:"postprocess depth"];
              if (!*a7)
              {
                *a7 = PixelBufferUtils::createPixelBufferWithSameSize(v18->_itmRawAuxDisparity, 0x68646570, 1);
              }

              v29 = [(ADBinocularDepthPipeline *)v18->_pipeline postProcessDisparity:v18->_itmRawAuxDisparity outputDepth:?];
              if (v29)
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

              [v31 logPixelBuffer:*a7 name:"processedAuxDepth" timestamp:a11];
              [v66 stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (v64 != 5)
              {
                kdebug_trace();
                [v66 startWithUTFString:"postprocess confidence"];
                if (v65)
                {
                  if (!*v65)
                  {
                    *v65 = PixelBufferUtils::createPixelBufferCopy(v18->_itmRawAuxConfidence, v53);
                  }

                  v29 = [(ADBinocularDepthPipeline *)v18->_pipeline postProcessEspressoConfidence:v18->_itmRawAuxConfidence outputConfidence:?];
                  if (v29)
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

                  [v31 logPixelBuffer:*v65 name:"processedAuxConfidence" timestamp:a11];
                }

                [v66 stopWithUTFString:"postprocess confidence"];
                kdebug_trace();
                if (v64 >= 7)
                {
                  kdebug_trace();
                  [v66 startWithUTFString:"postprocess mask"];
                  if (a9)
                  {
                    v55 = v18->_itmRawAuxSegmentation;
                    if (v55)
                    {
                      if (!*a9)
                      {
                        *a9 = PixelBufferUtils::createPixelBufferCopy(v55, v54);
                      }
                    }
                  }

                  [v66 stopWithUTFString:"postprocess mask"];
                  kdebug_trace();
                  if (v64 != 7)
                  {
                    kdebug_trace();
                    [v66 startWithUTFString:"postprocess calibration"];
                    if (a10)
                    {
                      v56 = [(ADBinocularDepthPipeline *)v18->_pipeline auxOutputCalib];
                      *a10 = v56;
                      v57 = v67 == 0;
                      if (v56)
                      {
                        v57 = 1;
                      }

                      if (!v57)
                      {
                        v58 = [v67 mutableCopy];
                        [v58 crop:{*v68, v69, v70, v71}];
                        v59 = [(ADBinocularDepthPipeline *)v18->_pipeline inferenceDescriptor];
                        v60 = [v59 auxiliaryDisparityOutput];
                        v61 = [v60 imageDescriptor];
                        [v61 sizeForLayout:255];
                        [v58 scale:?];

                        v62 = v58;
                        *a10 = v58;
                      }
                    }

                    [v66 stopWithUTFString:"postprocess calibration"];
                    kdebug_trace();
                    if (v64 >= 9)
                    {
                      [(ADExecutor *)v18 frameExecutionEnd];
                      v29 = 0;
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

    v29 = -22977;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
  }

LABEL_77:
  kdebug_trace();
  objc_sync_exit(v18);

  return v29;
}

- (void)sendAnalyticsWithRefSaturationRate:(float)a3 auxSaturationRate:(float)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"SaturationPercentage";
  *&v4 = ((a3 + a4) * 0.5) * 100.0;
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
  v7 = [(ADExecutor *)self executorParameters];
  [v7 saturationThreshold];
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

- (int64_t)setColorInput:(__CVBuffer *)a3 calib:(id)a4 toNetworkBuffer:(__CVBuffer *)a5 isRef:(BOOL)a6 crop:(CGRect *)a7
{
  v8 = a6;
  v12 = a4;
  v13 = [(ADBinocularDepthPipeline *)self->_pipeline warpImage:a3 processedImage:self->_itmYUVColor isRef:v8];
  v14 = v13;
  if (v13 == -22975)
  {
    [(ADBinocularDepthExecutor *)self computeCropForRectifiedImage:a3 calib:v12];
    *a7 = v19;
    if (PixelBufferUtils::cropAndScalePixelBuffer(a3, self->_itmYUVColor, 0, v19, *MEMORY[0x277CBF3A0]))
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
    if (CVPixelBufferGetPixelFormatType(a5) == 1111970369)
    {
      if (PixelBufferUtils::convertPixelBufferFormat(self->_itmYUVColor, a5, 0))
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
      v14 = [(ADBinocularDepthPipeline *)self->_pipeline extractYChannelFromColorInput:self->_itmYUVColor toBuffer:a5];
    }

    goto LABEL_14;
  }

  v15 = *(MEMORY[0x277CBF398] + 16);
  a7->origin = *MEMORY[0x277CBF398];
  a7->size = v15;
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

- (CGRect)computeCropForRectifiedImage:(__CVBuffer *)a3 calib:(id)a4
{
  v6 = a4;
  v7 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 referenceColorInput];
  v9 = [v8 imageDescriptor];
  [v9 sizeForLayout:255];
  v11 = v10;
  v13 = v12;

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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
  if (v6)
  {
    [v6 intrinsicMatrix];
    v34 = v19;
    [v6 intrinsicMatrix];
    [v6 referenceDimensions];
    v22 = v21;
    [v6 referenceDimensions];
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

- (int64_t)prepareForInputRoi:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  objc_sync_enter(v7);
  kdebug_trace();
  v8 = [(ADBinocularDepthPipeline *)v7->_pipeline inferenceDescriptor];
  espressoEngine = v7->_espressoEngine;
  v10 = [v8 referenceColorInput];
  v11 = [v10 imageDescriptor];
  v12 = [(ADExecutor *)v7 prepareForEngineType:espressoEngine roi:v11 descriptorForROI:1 exifOrientation:2 rotationPreference:v8 inferenceDescriptor:x, y, width, height];

  if (!v12)
  {
    v12 = [(ADBinocularDepthExecutor *)v7 allocateIntermediateBuffers];
    v7->_isPrepared = v12 == 0;
  }

  kdebug_trace();
  objc_sync_exit(v7);

  return v12;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADBinocularDepthExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 referenceColorInput];
  self->_itmProcessedRefColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 auxiliaryColorInput];
  self->_itmProcessedAuxColor = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = self->super._espressoRunner;
  v10 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v11 = [v10 auxiliaryDisparityOutput];
  self->_itmRawAuxDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

  v12 = self->super._espressoRunner;
  v13 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v14 = [v13 auxiliaryConfidenceOutput];
  self->_itmRawAuxConfidence = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:v14];

  v15 = [(ADBinocularDepthPipeline *)self->_pipeline inferenceDescriptor];
  v16 = [v15 auxiliarySegmentationOutput];

  if (v16)
  {
    self->_itmRawAuxSegmentation = [(ADEspressoRunnerProtocol *)self->super._espressoRunner createAndRegisterPixelBufferForDescriptor:v16];
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

- (ADBinocularDepthExecutor)initWithPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4
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
    v8 = [[ADBinocularDepthPipeline alloc] initWithPrioritization:a3 espressoEngine:a4];
    pipeline = v7->_pipeline;
    v7->_pipeline = v8;

    if (!v7->_pipeline || (v10 = [[ADBinocularDepthExecutorParameters alloc] initForPipeline:v7->_pipeline], [(ADExecutor *)v7 setExecutorParameters:v10], v10, [(ADExecutor *)v7 executorParameters], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v19 = 0;
      goto LABEL_7;
    }

    v7->_numberOfSaturationChecks = 0;
    v12 = [(ADExecutor *)v7 executorParameters];
    [v12 coreAnalyticsEventInterval];
    v14 = v13;
    v15 = [(ADExecutor *)v7 executorParameters];
    [v15 saturationCheckInterval];
    v7->_coreAnalyticsToSaturationChecksRatio = (v14 / v16);

    v17 = [(ADExecutor *)v7 executorParameters];
    [v17 saturationCheckInterval];
    v7->_lastSaturationCheckTimestamp = -v18;

    v7->_itmProcessedRefColor = 0;
    v7->_itmProcessedAuxColor = 0;
    v7->_itmYUVColor = 0;
    v7->_colorScalingSession = 0;
    v7->_itmRawAuxDisparity = 0;
    v7->_itmRawAuxConfidence = 0;
    v7->_itmRawAuxSegmentation = 0;
    v7->_isPrepared = 0;
    v7->_espressoEngine = a4;
  }

  v19 = v7;
LABEL_7:
  kdebug_trace();

  return v19;
}

@end