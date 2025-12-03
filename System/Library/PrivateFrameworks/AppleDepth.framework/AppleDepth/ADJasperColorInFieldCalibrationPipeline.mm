@interface ADJasperColorInFieldCalibrationPipeline
+ (BOOL)isColorFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata andPipelineParameters:(id)parameters;
+ (BOOL)isJasperFrameValid:(id)valid andPipelineParameters:(id)parameters;
- (ADJasperColorInFieldCalibrationInterSessionData)createInterSessionDataWithFactoryJasperToColorTransform:(double)transform currentJasperToColorTransform:(double)colorTransform;
- (ADJasperColorInFieldCalibrationPipeline)init;
- (ADJasperColorInFieldCalibrationPipeline)initWithParameters:(id)parameters espressoEngine:(unint64_t)engine;
- (BOOL)isAngularVelocityValid:(id)valid;
- (BOOL)isSDF:(id)f;
- (CGRect)calculateJasperFOVInImageWithJasperCalibration:(id)calibration withCameraCalibration:(id)cameraCalibration withOriginalImageWidth:(unint64_t)width withOriginalImageHeight:(unint64_t)height forOutputImageWidth:(unint64_t)imageWidth forOutputImageHeight:(unint64_t)imageHeight;
- (double)getDeviceFrequency;
- (float)claculateWeightedStd:(ADJasperColorInFieldCalibrationPipeline *)self;
- (id).cxx_construct;
- (id)createInterSessionDataWithDictionaryRepresentation:(id)representation;
- (id)createReferenceCameraForColor:(__n128)color withExtrinsics:(__n128)extrinsics;
- (int64_t)postProcessFrontendOutputX:(void *)x frontendOutputY:(void *)y frontendOutputZ:(void *)z frontendOutputErrorX:(void *)errorX frontendOutputErrotY:(void *)errotY frontendOutputErrorZ:(void *)errorZ interSessionData:(id)data jasperColorInFieldCalibrationResult:(id)self0;
- (int64_t)preProcessColor:(__CVBuffer *)color processedColor:(__CVBuffer *)processedColor referenceCameraCalibration:(id)calibration colorCameraCalibration:(id)cameraCalibration colorMetadata:(id)metadata;
- (int64_t)preProcessJasper:(id)jasper referenceCameraCalibration:(id)calibration jasperCameraCalibration:(id)cameraCalibration reprojectedPointsBuffer:(__CVBuffer *)buffer;
- (int64_t)processIntermediateResultsWithBackendFeaturesOutputVector:(const void *)vector frontendEspressoFeaturesInput:(void *)input dimensions:(id)dimensions;
- (int64_t)resizeImage:(id)image colorImage:(__CVBuffer *)colorImage processedColor:(__CVBuffer *)color colorMetadata:(id)metadata;
- (int64_t)undistortColorImage:(__CVBuffer *)image undistortedImage:(__CVBuffer *)undistortedImage calibration:(id)calibration;
- (void)dealloc;
- (void)deallocMemory;
- (void)reportTelemetry:(id)telemetry withInterSessionData:(id)data;
- (void)resetSdfHistory;
- (void)updateJasperCamera:(id)camera;
- (void)updateLastKnownDepthMap:(id)map;
@end

@implementation ADJasperColorInFieldCalibrationPipeline

- (id).cxx_construct
{
  *(self + 490008) = 0;
  *(self + 490040) = 0;
  return self;
}

- (void)reportTelemetry:(id)telemetry withInterSessionData:(id)data
{
  v66[24] = *MEMORY[0x277D85DE8];
  telemetryCopy = telemetry;
  dataCopy = data;
  inFieldCalibrationTelemetryData = [dataCopy inFieldCalibrationTelemetryData];
  firedEventTimestampsArray = [inFieldCalibrationTelemetryData firedEventTimestampsArray];
  if ([telemetryCopy executed])
  {
    [telemetryCopy postRelative2FactoryX];
    v7 = v6;
    [telemetryCopy postRelative2FactoryY];
    v9 = v8;
    [telemetryCopy postRelative2FactoryZ];
    analyzeOneShotExtremeRotation(v7, v9, v10, &cfstr_ComAppleApplec_4.isa, firedEventTimestampsArray);
  }

  [telemetryCopy confidence];
  [telemetryCopy confidence];
  v12 = v11;
  v66[0] = @"N/A";
  v65[0] = @"JasperPreset";
  v65[1] = @"MaxBackBoneRunTime";
  v59 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(inFieldCalibrationTelemetryData, "maxBackEndRunTime") / 1000.0}];
  v66[1] = v59;
  v65[2] = @"MinBackBoneRunTime";
  v13 = MEMORY[0x277CCABB0];
  v14 = [inFieldCalibrationTelemetryData minBackEndRunTime] / 1000.0;
  *&v14 = v14;
  v58 = [v13 numberWithFloat:v14];
  v66[2] = v58;
  v65[3] = @"TimeSincePrevRun";
  v15 = MEMORY[0x277CCABB0];
  v16 = [inFieldCalibrationTelemetryData timeSincePrevRun] / 1000.0;
  *&v16 = v16;
  v57 = [v15 numberWithFloat:v16];
  v66[3] = v57;
  v65[4] = @"TotalBackBoneTime";
  v17 = MEMORY[0x277CCABB0];
  v18 = [inFieldCalibrationTelemetryData totalBackEndTime] / 1000.0;
  *&v18 = v18;
  v56 = [v17 numberWithFloat:v18];
  v66[4] = v56;
  v65[5] = @"TotalFrontEndTime";
  v19 = MEMORY[0x277CCABB0];
  v20 = [inFieldCalibrationTelemetryData frontEndTime] / 1000.0;
  *&v20 = v20;
  v55 = [v19 numberWithFloat:v20];
  v66[5] = v55;
  v65[6] = @"TotalNumRuns";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(inFieldCalibrationTelemetryData, "totalNumRuns")}];
  v66[6] = v54;
  v65[7] = @"WideAverageNumValidPoints";
  v21 = MEMORY[0x277CCABB0];
  [inFieldCalibrationTelemetryData getAverageNumValidPoints];
  v52 = [v21 numberWithFloat:?];
  v66[7] = v52;
  v65[8] = @"WideConfidence";
  LODWORD(v22) = v12;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v66[8] = v53;
  v65[9] = @"WideFilteredRotXComparedToFactory";
  v23 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryX];
  v51 = [v23 numberWithFloat:?];
  v66[9] = v51;
  v65[10] = @"WideFilteredRotXComparedToPrev";
  v24 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevX];
  v50 = [v24 numberWithFloat:?];
  v66[10] = v50;
  v65[11] = @"WideFilteredRotYComparedToFactory";
  v25 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryY];
  v49 = [v25 numberWithFloat:?];
  v66[11] = v49;
  v65[12] = @"WideFilteredRotYComparedToPrev";
  v26 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevY];
  v48 = [v26 numberWithFloat:?];
  v66[12] = v48;
  v65[13] = @"WideFilteredRotZComparedToFactory";
  v27 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryZ];
  v47 = [v27 numberWithFloat:?];
  v66[13] = v47;
  v65[14] = @"WideFilteredRotZComparedToPrev";
  v28 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevZ];
  v46 = [v28 numberWithFloat:?];
  v66[14] = v46;
  v65[15] = @"WideNumberOfFrames";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(inFieldCalibrationTelemetryData, "validPointsSumEventsCount")}];
  v66[15] = v45;
  v65[16] = @"WideRotXComparedToFactory";
  v29 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryX];
  v30 = [v29 numberWithFloat:?];
  v66[16] = v30;
  v65[17] = @"WideRotXComparedToPrev";
  v31 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationX];
  v32 = [v31 numberWithFloat:?];
  v66[17] = v32;
  v65[18] = @"WideRotYComparedToFactory";
  v33 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryY];
  v34 = [v33 numberWithFloat:?];
  v66[18] = v34;
  v65[19] = @"WideRotYComparedToPrev";
  v35 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationY];
  v36 = [v35 numberWithFloat:?];
  v66[19] = v36;
  v65[20] = @"WideRotZComparedToFactory";
  v37 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryZ];
  v38 = [v37 numberWithFloat:?];
  v66[20] = v38;
  v65[21] = @"WideRotZComparedToPrev";
  v39 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationZ];
  v40 = [v39 numberWithFloat:?];
  v66[21] = v40;
  v65[22] = @"WideSucceeded";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(telemetryCopy, "executed")}];
  v66[22] = v41;
  v65[23] = @"IsFirstTimeForDevice";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dataCopy, "isfCapacity") == objc_msgSend(dataCopy, "successfulResultCount")}];
  v66[23] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:24];

  v44 = v43;
  if (AnalyticsSendEventLazy())
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = @"com.apple.applecamerad.JasperToRGB";
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Jasper Color In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v64 = @"com.apple.applecamerad.JasperToRGB";
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Jasper Color In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v64 = @"com.apple.applecamerad.JasperToRGB";
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper Color In-Field calibration pipeline Telemetry event %{public}@ failed to fire", buf, 0xCu);
  }
}

- (float)claculateWeightedStd:(ADJasperColorInFieldCalibrationPipeline *)self
{
  v17 = *&v2[8];
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffX];
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffY];
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffZ];
  _V1.S[2] = v17;
  __asm { FMLA            S9, S0, V1.S[2] }

  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffX];
  v12 = v11;
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffY];
  v14 = v12 + v13;
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffZ];
  return _S9 / (v14 + v15);
}

- (int64_t)undistortColorImage:(__CVBuffer *)image undistortedImage:(__CVBuffer *)undistortedImage calibration:(id)calibration
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  v9 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  CVPixelBufferLockBaseAddress(undistortedImage, 0);
  CVPixelBufferLockBaseAddress(image, 0);
  memset(&v63, 0, sizeof(v63));
  v10 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(image, *MEMORY[0x277CBF3A0], &v63);
  memset(&v62, 0, sizeof(v62));
  PixelBufferUtils::asVImageBuffer(undistortedImage, *v10, &v62);
  height = v62.height;
  if (v62.height)
  {
    width = v62.width;
    if (v62.width)
    {
      v18 = 0;
      distortedImagePixels = self->_distortedImagePixels;
      rowBytes = v63.rowBytes;
      v21 = (v63.width - 1);
      data = v63.data;
      v23 = (v63.height - 1);
      v24 = v62.data;
      v25 = v62.rowBytes;
      p_y = &self->_distortedImagePixels[1].y;
      v27 = v62.data;
      v28 = v62.width;
      do
      {
        if (v28)
        {
          v29 = &v24[v25 * v18];
          if (v9)
          {
            v30 = 0;
            v31 = v27;
            do
            {
              p_x = &distortedImagePixels[v30 + v28 * v18].x;
              v33 = *p_x + -0.5;
              v34 = v33 >= 0.0 && v33 < v21;
              if (v34 && ((v35 = p_x[1] + -0.5, v35 >= 0.0) ? (v36 = v35 < v23) : (v36 = 0), v36))
              {
                v37 = vcvtms_u32_f32(v33);
                v38 = vcvtps_u32_f32(v33);
                v39 = vcvtms_u32_f32(v35);
                v40 = vcvtps_u32_f32(v35);
                if (v37 == v38)
                {
                  v41 = v38 + 1;
                }

                else
                {
                  v41 = v38;
                }

                if (v39 == v40)
                {
                  ++v40;
                }

                v42.f32[0] = v41 - v33;
                v42.f32[1] = v33 - v37;
                v43 = v40 - v35;
                v11.f32[0] = v35 - v39;
                if ((v40 - v39) * (v41 - v37) == 1)
                {
                  v44 = 1.0;
                }

                else
                {
                  v44 = 0.0;
                }

                v11 = vdup_lane_s32(v11, 0);
                v45 = rowBytes * v39;
                v46 = rowBytes * v40;
                v47 = &data[v41 * v9];
                v48 = &data[v9 * v37];
                v49 = v31;
                v50 = v9;
                do
                {
                  LOBYTE(v12) = v48[v45];
                  v13.i8[0] = v48[v46];
                  v51.f32[0] = LODWORD(v12);
                  LOBYTE(v14) = v47[v45];
                  v14 = LODWORD(v14);
                  LOBYTE(v15) = v47[v46];
                  v13.f32[0] = v13.u32[0];
                  v15 = LODWORD(v15);
                  v51.f32[1] = v14;
                  v13.f32[1] = v15;
                  v12 = vaddv_f32(vmul_f32(v42, vmla_f32(vmul_n_f32(v51, v43), v11, v13))) * v44;
                  *v49++ = v12;
                  ++v47;
                  ++v48;
                  --v50;
                }

                while (v50);
              }

              else
              {
                *&v29[v30 * v9] = 0;
              }

              ++v30;
              v31 += v9;
              v28 = width;
            }

            while (v30 < width);
          }

          else
          {
            v52 = &distortedImagePixels[v28 * v18].x;
            v53 = *v52 + -0.5;
            if (v53 < 0.0 || v53 >= v21 || ((v54 = v52[1] + -0.5, v54 >= 0.0) ? (v55 = v54 < v23) : (v55 = 0), !v55))
            {
              *v29 = 0;
            }

            v28 = width;
            v56 = p_y;
            v57 = width - 1;
            if (width == 1)
            {
              goto LABEL_5;
            }

            do
            {
              v58 = *(v56 - 1) + -0.5;
              if (v58 < 0.0 || v58 >= v21 || ((v59 = *v56 + -0.5, v59 >= 0.0) ? (v60 = v59 < v23) : (v60 = 0), !v60))
              {
                *v29 = 0;
              }

              v56 += 2;
              --v57;
            }

            while (v57);
          }

          v28 = width;
        }

LABEL_5:
        ++v18;
        v27 += v25;
        p_y += 2 * width;
      }

      while (v18 < height);
    }
  }

  CVPixelBufferUnlockBaseAddress(undistortedImage, 0);
  CVPixelBufferUnlockBaseAddress(image, 0);
  return 0;
}

- (int64_t)postProcessFrontendOutputX:(void *)x frontendOutputY:(void *)y frontendOutputZ:(void *)z frontendOutputErrorX:(void *)errorX frontendOutputErrotY:(void *)errotY frontendOutputErrorZ:(void *)errorZ interSessionData:(id)data jasperColorInFieldCalibrationResult:(id)self0
{
  v189 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  resultCopy = result;
  rotationXOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationXOutput];
  imageDescriptor = [rotationXOutput imageDescriptor];
  v14 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor pixelFormat], 0);

  rotationYOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationYOutput];
  imageDescriptor2 = [rotationYOutput imageDescriptor];
  v17 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

  rotationZOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationZOutput];
  imageDescriptor3 = [rotationZOutput imageDescriptor];
  v20 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor3 pixelFormat], 0);

  errorXOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorXOutput];
  imageDescriptor4 = [errorXOutput imageDescriptor];
  v23 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor4 pixelFormat], 0);

  errorYOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorYOutput];
  imageDescriptor5 = [errorYOutput imageDescriptor];
  v26 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor5 pixelFormat], 0);

  errorZOutput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorZOutput];
  imageDescriptor6 = [errorZOutput imageDescriptor];
  v29 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor6 pixelFormat], 0);

  [resultCopy setExecuted:0];
  v177 = 0u;
  v175 = 0u;
  v176 = 0u;
  [dataCopy jasperToColorRotationAngles];
  v152 = v30;
  [ADUtils calcRotationMatrix:?];
  v132 = v31;
  v133 = v32;
  v146 = v33;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  [(ADJasperColorInFieldCalibrationPipeline *)self resetSdfHistory];
  v34 = &self->_distortedImagePixels[244981];
  v134 = *&self->_anon_3bd110[16];
  v136 = *self->_anon_3bd110;
  v138 = *&self->_anon_3bd110[32];
  v142 = *&self->_anon_70[4];
  v144 = *&self->_anon_70[20];
  v155 = *&self->_anon_70[36];
  v124 = *&self->_anon_70[52];
  v125 = *&self->_anon_3bd110[48];
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters colorCameraNominalEfl];
  v36 = (v35 / self->_scale) / self->_colorCameraEfl;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters colorCameraNominalEfl];
    colorCameraEfl = self->_colorCameraEfl;
    scale = self->_scale;
    *buf = 134218752;
    v182 = v36;
    v183 = 2048;
    v184 = v40;
    v185 = 2048;
    v186 = colorCameraEfl;
    v187 = 2048;
    v188 = scale;
    v41 = MEMORY[0x277D86220];
    v42 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters colorCameraNominalEfl];
    v43 = self->_colorCameraEfl;
    v44 = self->_scale;
    *buf = 134218752;
    v182 = v36;
    v183 = 2048;
    v184 = v45;
    v185 = 2048;
    v186 = v43;
    v187 = 2048;
    v188 = v44;
    v41 = MEMORY[0x277D86220];
    v42 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v41, v42, "postProcessFront: alpha = %f colorCameraNominalEfl = %f colorCameraEfl = %f scale = %f", buf, 0x2Au);
LABEL_7:
  *&v37 = v36;
  [resultCopy setAlpha:v37];
  v47 = vzip1q_s32(v136, v138);
  if (v14 == 2)
  {
    _H0 = *x;
    __asm { FCVT            S0, H0 }
  }

  else
  {
    LODWORD(_D0) = *x;
  }

  v53 = v155;
  v55 = v142;
  v54 = v144;
  v131 = vzip1q_s32(v47, v134);
  v156 = vtrn2q_s32(v136, v134);
  if (v17 == 2)
  {
    _H1 = *y;
    __asm { FCVT            S3, H1 }
  }

  else
  {
    _S3 = *y;
  }

  v58 = vzip2q_s32(v136, v138);
  v59 = vdupq_laneq_s32(v134, 2);
  v60 = v156;
  v60.i32[2] = v138.i32[1];
  v157 = v60;
  v160 = vmulq_n_f32(v131, v142.f32[0]);
  v164 = vmulq_n_f32(v131, v144.f32[0]);
  v61 = vmulq_n_f32(v131, v53.f32[0]);
  *&_D0 = v36 * *&_D0;
  v145 = _D0;
  *&_D0 = v36 * _S3;
  v143 = _D0;
  if (v20 == 2)
  {
    _H0 = *z;
    __asm { FCVT            S0, H0 }
  }

  else
  {
    LODWORD(_D0) = *z;
  }

  v130 = vzip1q_s32(v58, v59);
  v161 = vmlaq_lane_f32(v160, v157, *v55.f32, 1);
  v165 = vmlaq_lane_f32(v164, v157, *v54.f32, 1);
  v63 = vmlaq_lane_f32(v61, v157, *v53.f32, 1);
  *&_D0 = v36 * *&_D0;
  v141 = _D0;
  if (v23 == 2)
  {
    _H0 = *errorX;
    __asm { FCVT            S0, H0 }
  }

  else
  {
    LODWORD(_D0) = *errorX;
  }

  v139 = _D0;
  v162 = vmlaq_laneq_f32(v161, v130, v55, 2);
  v166 = vmlaq_laneq_f32(v165, v130, v54, 2);
  HIDWORD(_D0) = HIDWORD(v143);
  v129 = vmlaq_laneq_f32(v63, v130, v53, 2);
  if (v26 == 2)
  {
    _H0 = *errotY;
    __asm { FCVT            S0, H0 }
  }

  else
  {
    LODWORD(_D0) = *errotY;
  }

  v137 = _D0;
  HIDWORD(_D4) = HIDWORD(v141);
  if (v29 == 2)
  {
    _H4 = *errorZ;
    __asm { FCVT            S4, H4 }
  }

  else
  {
    LODWORD(_D4) = *errorZ;
  }

  v135 = _D4;
  [ADUtils addAnglesToRotation:*v162.i64 angles:*v166.i64, *v129.i64, COERCE_DOUBLE(__PAIR64__(LODWORD(v143), LODWORD(v145)))];
  v68 = *&self->_anon_30[4];
  v69 = *&self->_anon_30[20];
  v70 = *&self->_anon_30[36];
  v71 = vzip2q_s32(v68, v70);
  v72 = vzip1q_s32(vzip1q_s32(v68, v70), v69);
  v73 = vtrn2q_s32(v68, v69);
  v73.i32[2] = HIDWORD(*&self->_anon_30[36]);
  v74 = vzip1q_s32(v71, vdupq_laneq_s32(v69, 2));
  v75 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*self->_anon_3bd110)), v73, *self->_anon_3bd110, 1), v74, *self->_anon_3bd110, 2);
  v76 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*&self->_anon_3bd110[16])), v73, *&self->_anon_3bd110[16], 1), v74, *&self->_anon_3bd110[16], 2);
  v77 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*&self->_anon_3bd110[32])), v73, *&self->_anon_3bd110[32], 1), v74, *&self->_anon_3bd110[32], 2);
  v79 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, v78.f32[0]), v76, *v78.f32, 1), v77, v78, 2);
  v81 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, v80.f32[0]), v76, *v80.f32, 1), v77, v80, 2);
  v127 = v76;
  v128 = v75;
  v126 = v77;
  v83 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, v82.f32[0]), v76, *v82.f32, 1), v77, v82, 2);
  v178.i32[2] = v79.i32[2];
  v179.i32[2] = v81.i32[2];
  v178.i64[0] = v79.i64[0];
  v179.i64[0] = v81.i64[0];
  v180.i32[2] = v83.i32[2];
  v180.i64[0] = v83.i64[0];
  [ADUtils calcRotationAngle:&v178];
  v154 = v84;
  v85 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v178, v132.f32[0]), v179, v133.f32[0]), v180, v146.f32[0]);
  v86 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v178, *v132.f32, 1), v179, *v133.f32, 1), v180, *v146.f32, 1);
  v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v178, v132, 2), v179, v133, 2), v180, v146, 2);
  DWORD2(v172) = v85.i32[2];
  DWORD2(v173) = v86.i32[2];
  *&v172 = v85.i64[0];
  *&v173 = v86.i64[0];
  DWORD2(v174) = v87.i32[2];
  *&v174 = v87.i64[0];
  [ADUtils calcRotationAngle:&v172];
  v151 = v88;
  v89 = [dataCopy convertExtrinsicsAnglesToDict:?];
  [(ADJasperColorInFieldCalibrationPipeline *)self claculateWeightedStd:COERCE_DOUBLE(__PAIR64__(LODWORD(v137), LODWORD(v139)))];
  v91 = v90;
  [resultCopy setConfidence:?];
  [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters maxStdForValidResult];
  if (v91 > *&v92)
  {
    v147 = 0u;
    [resultCopy setExecutionStatus:-22976];
    v149 = 0u;
    v167 = 0u;
LABEL_32:

    [resultCopy setDeltaRotationX:v145];
    [resultCopy setDeltaRotationY:v143];
    [resultCopy setDeltaRotationZ:v141];
    [resultCopy setStdX:v139];
    [resultCopy setStdY:v137];
    [resultCopy setStdZ:v135];
    [resultCopy setAbsoluteRotationX:*&v154];
    HIDWORD(v117) = DWORD1(v154);
    LODWORD(v117) = DWORD1(v154);
    [resultCopy setAbsoluteRotationY:v117];
    [resultCopy setAbsoluteRotationZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v154), DWORD2(v154)))}];
    [resultCopy setFactoryRotationX:*&v152];
    HIDWORD(v118) = DWORD1(v152);
    LODWORD(v118) = DWORD1(v152);
    [resultCopy setFactoryRotationY:v118];
    [resultCopy setFactoryRotationZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v152), DWORD2(v152)))}];
    [resultCopy setAbsoluteRotationPostISFX:*&v147];
    HIDWORD(v119) = DWORD1(v147);
    LODWORD(v119) = DWORD1(v147);
    [resultCopy setAbsoluteRotationPostISFY:v119];
    [resultCopy setAbsoluteRotationPostISFZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v147), DWORD2(v147)))}];
    [resultCopy setPreRelative2FactoryX:*&v151];
    HIDWORD(v120) = DWORD1(v151);
    LODWORD(v120) = DWORD1(v151);
    [resultCopy setPreRelative2FactoryY:v120];
    [resultCopy setPreRelative2FactoryZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v151), DWORD2(v151)))}];
    [resultCopy setPostRelative2FactoryX:*&v149];
    HIDWORD(v121) = DWORD1(v149);
    LODWORD(v121) = DWORD1(v149);
    [resultCopy setPostRelative2FactoryY:v121];
    [resultCopy setPostRelative2FactoryZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v149), DWORD2(v149)))}];
    [resultCopy setPostRelative2PrevX:*v167.i64];
    HIDWORD(v122) = v167.i32[1];
    LODWORD(v122) = v167.i32[1];
    [resultCopy setPostRelative2PrevY:v122];
    [resultCopy setPostRelative2PrevZ:{COERCE_DOUBLE(__PAIR64__(v167.u32[1], v167.u32[2]))}];
    [resultCopy setMotionRotation:*&v34[25].y];
    [resultCopy setMotionTranslation:*&v34[26].x];
    [resultCopy setValidDepthPercentage:*&v34[26].y];
    v96 = 0;
    goto LABEL_33;
  }

  *&v92 = v91;
  [(ADJasperColorInFieldCalibrationPipeline *)self convertStdToWeight:v92];
  v168 = 0;
  v94 = [dataCopy insertEntryAndCalculate:v89 withWeight:&v168 toResult:v93];
  v95 = v168;
  if (!v94)
  {
    [dataCopy setSuccessfulResultCount:{objc_msgSend(dataCopy, "successfulResultCount") + 1}];
    [resultCopy setExecutionStatus:0];
    [dataCopy convertDictToExtrinsicsAngles:v95];
    v149 = v97;
    [ADUtils calcRotationMatrix:*&v97];
    v101 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v98, v132.f32[0]), vdupq_lane_s32(*v132.f32, 1), v99), vdupq_laneq_s32(v132, 2), v100);
    v102 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v98, v133.f32[0]), vdupq_lane_s32(*v133.f32, 1), v99), vdupq_laneq_s32(v133, 2), v100);
    v103 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v98, v146.f32[0]), vdupq_lane_s32(*v146.f32, 1), v99), vdupq_laneq_s32(v146, 2), v100);
    v175.i32[2] = v101.i32[2];
    v176.i32[2] = v102.i32[2];
    v175.i64[0] = v101.i64[0];
    v176.i64[0] = v102.i64[0];
    v177.i32[2] = v103.i32[2];
    v177.i64[0] = v103.i64[0];
    [ADUtils calcRotationAngle:&v175];
    v147 = v104;
    v105 = vsubq_f32(v124, v125);
    v106 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v105.f32[0]), v157, *v105.f32, 1), v130, v105, 2);
    [resultCopy setJasperToColorExtrinsics:{*v175.i64, *v176.i64, *v177.i64, *vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v106.f32[0]), v127, *v106.f32, 1), v126, v106, 2).i64}];
    [resultCopy setExecuted:1];
    v107 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v162.f32[0]), v127, *v162.f32, 1), v126, v162, 2);
    v108 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v166.f32[0]), v127, *v166.f32, 1), v126, v166, 2);
    v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v129.f32[0]), v127, *v129.f32, 1), v126, v129, 2);
    v110 = vzip1q_s32(vzip1q_s32(v175, v177), v176);
    v111 = vtrn2q_s32(v175, v176);
    v111.i32[2] = v177.i32[1];
    v112 = vzip1q_s32(vzip2q_s32(v175, v177), vdupq_laneq_s32(v176, 2));
    v113 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v107.f32[0]), v111, *v107.f32, 1), v112, v107, 2);
    v114 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v108.f32[0]), v111, *v108.f32, 1), v112, v108, 2);
    v115 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v109.f32[0]), v111, *v109.f32, 1), v112, v109, 2);
    DWORD2(v169) = v113.i32[2];
    DWORD2(v170) = v114.i32[2];
    *&v169 = v113.i64[0];
    *&v170 = v114.i64[0];
    DWORD2(v171) = v115.i32[2];
    *&v171 = v115.i64[0];
    [ADUtils calcRotationAngle:&v169];
    v167 = v116;

    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "postProcessFront failed to update intersession entry", buf, 2u);
  }

  v96 = -22950;
LABEL_33:

  return v96;
}

- (ADJasperColorInFieldCalibrationInterSessionData)createInterSessionDataWithFactoryJasperToColorTransform:(double)transform currentJasperToColorTransform:(double)colorTransform
{
  v10 = [ADJasperColorInFieldCalibrationInterSessionData alloc];
  deviceName = [*(self + 3920336) deviceName];
  v12 = [(ADJasperColorInFieldCalibrationInterSessionData *)v10 initWithFactoryJasperToColorTransform:deviceName currentJasperToColorTransform:a2 andDeviceName:transform, colorTransform, a5, a6, a7, a8, a9];

  return v12;
}

- (id)createInterSessionDataWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [ADJasperColorInFieldCalibrationInterSessionData alloc];
  deviceName = [(ADPipelineParameters *)self->_pipelineParameters deviceName];
  v7 = [(ADJasperColorInFieldCalibrationInterSessionData *)v5 initWithDictionaryRepresentation:representationCopy andDeviceName:deviceName];

  return v7;
}

- (int64_t)processIntermediateResultsWithBackendFeaturesOutputVector:(const void *)vector frontendEspressoFeaturesInput:(void *)input dimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  featuresOutput = [(ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor *)self->_backendInferenceDesc featuresOutput];
  imageDescriptor = [featuresOutput imageDescriptor];
  v11 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor pixelFormat], 0);

  featuresInput = [(ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc featuresInput];
  imageDescriptor2 = [featuresInput imageDescriptor];
  v14 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

  if (v11 == 2 && v14 == 2)
  {
    featuresVectorAggregationSize = [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
    v16 = dimensionsCopy;
    v17 = 0;
    v18 = 1;
    while ([v16 count] > v17)
    {
      v20 = [v16 objectAtIndexedSubscript:v17];
      v18 *= [v20 intValue];

      ++v17;
    }

    if (!v18)
    {
      goto LABEL_108;
    }

    v27 = featuresVectorAggregationSize;
    if (featuresVectorAggregationSize)
    {
      v28 = 0;
      v29 = featuresVectorAggregationSize & 0xFFFFFFFC;
      while (1)
      {
        v35 = 0;
        v36 = 0.0;
        if (featuresVectorAggregationSize >= 4 && v18 == 1 && -featuresVectorAggregationSize >= v28)
        {
          if (featuresVectorAggregationSize < 0x10)
          {
            v37 = 0;
LABEL_24:
            v46 = v37 + v28;
            v47 = v37 - v29;
            do
            {
              v48 = vcvtq_f32_f16(*(vector + 2 * v46));
              v36 = (((v36 + v48.f32[0]) + v48.f32[1]) + v48.f32[2]) + v48.f32[3];
              v46 += 4;
              v47 += 4;
            }

            while (v47);
            v35 = featuresVectorAggregationSize & 0xFFFFFFFC;
            if (v29 == featuresVectorAggregationSize)
            {
              goto LABEL_14;
            }

            goto LABEL_27;
          }

          v38 = featuresVectorAggregationSize & 0xFFFFFFF0;
          v39 = v28;
          do
          {
            v40 = (vector + 2 * v39);
            v41 = v40[1];
            v42 = vcvt_hight_f32_f16(*v40);
            v43 = vcvtq_f32_f16(*v40->i8);
            v44 = vcvt_hight_f32_f16(v41);
            v45 = vcvtq_f32_f16(*v41.i8);
            v36 = (((((((((((((((v36 + v43.f32[0]) + v43.f32[1]) + v43.f32[2]) + v43.f32[3]) + v42.f32[0]) + v42.f32[1]) + v42.f32[2]) + v42.f32[3]) + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3]) + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3];
            v39 += 16;
            v38 -= 16;
          }

          while (v38);
          if ((featuresVectorAggregationSize & 0xFFFFFFF0) == featuresVectorAggregationSize)
          {
            goto LABEL_14;
          }

          v37 = featuresVectorAggregationSize & 0xFFFFFFF0;
          v35 = v37;
          if ((featuresVectorAggregationSize & 0xC) != 0)
          {
            goto LABEL_24;
          }
        }

LABEL_27:
        v49 = featuresVectorAggregationSize - v35;
        v50 = v28 + v18 * v35;
        do
        {
          _H2 = *(vector + v50);
          __asm { FCVT            S2, H2 }

          v36 = v36 + _S2;
          v50 += v18;
          --v49;
        }

        while (v49);
LABEL_14:
        _S1 = v36 / v27;
        __asm { FCVT            H1, S1 }

        *(input + v28++) = LOWORD(_S1);
        if (v28 == v18)
        {
          goto LABEL_108;
        }
      }
    }

    *_D0.i32 = 0.0 / v27;
    __asm { FCVT            H0, S0 }

    if (v18 <= 3)
    {
      v97 = 0;
LABEL_106:
      v121 = v18 - v97;
      v122 = input + 2 * v97;
      do
      {
        *v122++ = _D0.i16[0];
        --v121;
      }

      while (v121);
      goto LABEL_108;
    }

    if (v18 >= 0x10)
    {
      v97 = v18 & 0xFFFFFFF0;
      v114 = vdupq_lane_s16(_D0, 0);
      v115 = (input + 16);
      v116 = v97;
      do
      {
        v115[-1] = v114;
        *v115 = v114;
        v115 += 2;
        v116 -= 16;
      }

      while (v116);
      if (v97 == v18)
      {
        goto LABEL_108;
      }

      if ((v18 & 0xC) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v97 = 0;
    }

    v117 = v97;
    v97 = v18 & 0xFFFFFFFC;
    v118 = vdup_lane_s16(_D0, 0);
    v119 = v117 - v97;
    v120 = (input + 2 * v117);
    do
    {
      *v120++ = v118;
      v119 += 4;
    }

    while (v119);
    if (v97 == v18)
    {
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  if (v11 == 2 && v14 == 4)
  {
    featuresVectorAggregationSize2 = [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
    v22 = dimensionsCopy;
    v23 = 0;
    v24 = 1;
    while ([v22 count] > v23)
    {
      v26 = [v22 objectAtIndexedSubscript:v23];
      v24 *= [v26 intValue];

      ++v23;
    }

    if (!v24)
    {
      goto LABEL_108;
    }

    v59 = featuresVectorAggregationSize2;
    if (featuresVectorAggregationSize2)
    {
      v60 = 0;
      v61 = featuresVectorAggregationSize2 & 0xFFFFFFFC;
      while (1)
      {
        v62 = 0;
        v63 = 0.0;
        if (featuresVectorAggregationSize2 >= 4 && v24 == 1 && -featuresVectorAggregationSize2 >= v60)
        {
          if (featuresVectorAggregationSize2 < 0x10)
          {
            v64 = 0;
LABEL_48:
            v73 = v64 + v60;
            v74 = v64 - v61;
            do
            {
              v75 = vcvtq_f32_f16(*(vector + 2 * v73));
              v63 = (((v63 + v75.f32[0]) + v75.f32[1]) + v75.f32[2]) + v75.f32[3];
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            v62 = featuresVectorAggregationSize2 & 0xFFFFFFFC;
            if (v61 == featuresVectorAggregationSize2)
            {
              goto LABEL_38;
            }

            goto LABEL_51;
          }

          v65 = featuresVectorAggregationSize2 & 0xFFFFFFF0;
          v66 = v60;
          do
          {
            v67 = (vector + 2 * v66);
            v68 = v67[1];
            v69 = vcvt_hight_f32_f16(*v67);
            v70 = vcvtq_f32_f16(*v67->i8);
            v71 = vcvt_hight_f32_f16(v68);
            v72 = vcvtq_f32_f16(*v68.i8);
            v63 = (((((((((((((((v63 + v70.f32[0]) + v70.f32[1]) + v70.f32[2]) + v70.f32[3]) + v69.f32[0]) + v69.f32[1]) + v69.f32[2]) + v69.f32[3]) + v72.f32[0]) + v72.f32[1]) + v72.f32[2]) + v72.f32[3]) + v71.f32[0]) + v71.f32[1]) + v71.f32[2]) + v71.f32[3];
            v66 += 16;
            v65 -= 16;
          }

          while (v65);
          if ((featuresVectorAggregationSize2 & 0xFFFFFFF0) == featuresVectorAggregationSize2)
          {
            goto LABEL_38;
          }

          v64 = featuresVectorAggregationSize2 & 0xFFFFFFF0;
          v62 = v64;
          if ((featuresVectorAggregationSize2 & 0xC) != 0)
          {
            goto LABEL_48;
          }
        }

LABEL_51:
        v76 = featuresVectorAggregationSize2 - v62;
        v77 = v60 + v24 * v62;
        do
        {
          _H2 = *(vector + v77);
          __asm { FCVT            S2, H2 }

          v63 = v63 + _S2;
          v77 += v24;
          --v76;
        }

        while (v76);
LABEL_38:
        *(input + v60++) = v63 / v59;
        if (v60 == v24)
        {
          goto LABEL_108;
        }
      }
    }

    *v25.i32 = 0.0 / v59;
    if (v24 > 7)
    {
      v107 = v24 & 0xFFFFFFF8;
      v109 = vdupq_lane_s32(v25, 0);
      v110 = (input + 16);
      v111 = v107;
      do
      {
        v110[-1] = v109;
        *v110 = v109;
        v110 += 2;
        v111 -= 8;
      }

      while (v111);
      if (v107 == v24)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v107 = 0;
    }

    v112 = v24 - v107;
    v113 = input + 4 * v107;
    do
    {
      *v113++ = v25.i32[0];
      --v112;
    }

    while (v112);
LABEL_108:

    v80 = 0;
    goto LABEL_109;
  }

  if (v11 == 4 && v14 == 2)
  {
    featuresVectorAggregationSize3 = [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
    v54 = dimensionsCopy;
    v55 = 0;
    v56 = 1;
    while ([v54 count] > v55)
    {
      v58 = [v54 objectAtIndexedSubscript:v55];
      v56 *= [v58 intValue];

      ++v55;
    }

    if (!v56)
    {
      goto LABEL_108;
    }

    v87 = featuresVectorAggregationSize3;
    if (featuresVectorAggregationSize3)
    {
      for (i = 0; i != v56; *(input + i++) = LOWORD(_S1))
      {
        v90 = 0;
        v91 = 0.0;
        if (featuresVectorAggregationSize3 < 0xC)
        {
          goto LABEL_69;
        }

        if (v56 != 1)
        {
          goto LABEL_69;
        }

        if (-featuresVectorAggregationSize3 < i)
        {
          goto LABEL_69;
        }

        v92 = featuresVectorAggregationSize3 & 0xFFFFFFF8;
        v93 = i;
        do
        {
          v94 = vector + 4 * v93;
          v91 = (((((((v91 + COERCE_FLOAT(*v94)) + COERCE_FLOAT(HIDWORD(*v94))) + COERCE_FLOAT(*(v94 + 1))) + COERCE_FLOAT(HIDWORD(*v94))) + COERCE_FLOAT(*(v94 + 1))) + COERCE_FLOAT(HIDWORD(*(v94 + 2)))) + COERCE_FLOAT(*(v94 + 3))) + COERCE_FLOAT(HIDWORD(*(v94 + 1)));
          v93 += 8;
          v92 -= 8;
        }

        while (v92);
        v90 = featuresVectorAggregationSize3 & 0xFFFFFFF8;
        if (v90 != featuresVectorAggregationSize3)
        {
LABEL_69:
          v95 = featuresVectorAggregationSize3 - v90;
          v96 = i + v56 * v90;
          do
          {
            v91 = v91 + *(vector + v96);
            v96 += v56;
            --v95;
          }

          while (v95);
        }

        _S1 = v91 / v87;
        __asm { FCVT            H1, S1 }
      }

      goto LABEL_108;
    }

    *_D0.i32 = 0.0 / v87;
    __asm { FCVT            H0, S0 }

    if (v56 <= 3)
    {
      v108 = 0;
LABEL_127:
      v137 = v56 - v108;
      v138 = input + 2 * v108;
      do
      {
        *v138++ = _D0.i16[0];
        --v137;
      }

      while (v137);
      goto LABEL_108;
    }

    if (v56 >= 0x10)
    {
      v108 = v56 & 0xFFFFFFF0;
      v130 = vdupq_lane_s16(_D0, 0);
      v131 = (input + 16);
      v132 = v108;
      do
      {
        v131[-1] = v130;
        *v131 = v130;
        v131 += 2;
        v132 -= 16;
      }

      while (v132);
      if (v108 == v56)
      {
        goto LABEL_108;
      }

      if ((v56 & 0xC) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v108 = 0;
    }

    v133 = v108;
    v108 = v56 & 0xFFFFFFFC;
    v134 = vdup_lane_s16(_D0, 0);
    v135 = v133 - v108;
    v136 = (input + 2 * v133);
    do
    {
      *v136++ = v134;
      v135 += 4;
    }

    while (v135);
    if (v108 == v56)
    {
      goto LABEL_108;
    }

    goto LABEL_127;
  }

  v80 = -22950;
  if (v11 == 4 && v14 == 4)
  {
    featuresVectorAggregationSize4 = [(ADJasperColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
    v82 = dimensionsCopy;
    v83 = 0;
    v84 = 1;
    while ([v82 count] > v83)
    {
      v86 = [v82 objectAtIndexedSubscript:v83];
      v84 *= [v86 intValue];

      ++v83;
    }

    if (!v84)
    {
      goto LABEL_108;
    }

    v98 = featuresVectorAggregationSize4;
    if (featuresVectorAggregationSize4)
    {
      for (j = 0; j != v84; *(input + j++) = v101 / v98)
      {
        v100 = 0;
        v101 = 0.0;
        if (featuresVectorAggregationSize4 < 0xC)
        {
          goto LABEL_84;
        }

        if (v84 != 1)
        {
          goto LABEL_84;
        }

        if (-featuresVectorAggregationSize4 < j)
        {
          goto LABEL_84;
        }

        v102 = featuresVectorAggregationSize4 & 0xFFFFFFF8;
        v103 = j;
        do
        {
          v104 = vector + 4 * v103;
          v101 = (((((((v101 + COERCE_FLOAT(*v104)) + COERCE_FLOAT(HIDWORD(*v104))) + COERCE_FLOAT(*(v104 + 1))) + COERCE_FLOAT(HIDWORD(*v104))) + COERCE_FLOAT(*(v104 + 1))) + COERCE_FLOAT(HIDWORD(*(v104 + 2)))) + COERCE_FLOAT(*(v104 + 3))) + COERCE_FLOAT(HIDWORD(*(v104 + 1)));
          v103 += 8;
          v102 -= 8;
        }

        while (v102);
        v100 = featuresVectorAggregationSize4 & 0xFFFFFFF8;
        if (v100 != featuresVectorAggregationSize4)
        {
LABEL_84:
          v105 = featuresVectorAggregationSize4 - v100;
          v106 = j + v84 * v100;
          do
          {
            v101 = v101 + *(vector + v106);
            v106 += v84;
            --v105;
          }

          while (v105);
        }
      }

      goto LABEL_108;
    }

    *v85.i32 = 0.0 / v98;
    if (v84 > 7)
    {
      v124 = v84 & 0xFFFFFFF8;
      v125 = vdupq_lane_s32(v85, 0);
      v126 = (input + 16);
      v127 = v124;
      do
      {
        v126[-1] = v125;
        *v126 = v125;
        v126 += 2;
        v127 -= 8;
      }

      while (v127);
      if (v124 == v84)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v124 = 0;
    }

    v128 = v84 - v124;
    v129 = input + 4 * v124;
    do
    {
      *v129++ = v85.i32[0];
      --v128;
    }

    while (v128);
    goto LABEL_108;
  }

LABEL_109:

  return v80;
}

- (int64_t)preProcessJasper:(id)jasper referenceCameraCalibration:(id)calibration jasperCameraCalibration:(id)cameraCalibration reprojectedPointsBuffer:(__CVBuffer *)buffer
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = &self->_distortedImagePixels[244981];
  jasperCopy = jasper;
  if (([*&v8[29].x forceRun] & 1) == 0 && !-[ADJasperColorInFieldCalibrationPipeline isJasperFrameValid:](self, "isJasperFrameValid:", jasperCopy))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      v16 = MEMORY[0x277D86220];
      v17 = "ADJasperColorInFieldCalibration jasper controller fail";
      v18 = 2;
LABEL_15:
      _os_log_impl(&dword_2402F6000, v16, OS_LOG_TYPE_DEFAULT, v17, &v24, v18);
    }

LABEL_16:
    v19 = -22964;
    goto LABEL_20;
  }

  [*&v8[11].x sceneDiversityMinDepthDiff];
  if (v10 <= 0.0 || ![*&v8[11].x sceneDiversityMinChangedSpots])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v24) = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "ADJasperColorInFieldCalibration jasper controller pass";
    v15 = 2;
    goto LABEL_12;
  }

  if (*&v8[28].y)
  {
    if (-[ADJasperColorInFieldCalibrationPipeline isSDF:](self, "isSDF:", jasperCopy) || ([*&v8[29].x forceRun] & 1) != 0)
    {
      [(ADJasperColorInFieldCalibrationPipeline *)self updateLastKnownDepthMap:jasperCopy];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      y_low = LODWORD(v8[27].y);
      x_high = HIDWORD(v8[27].x);
      LODWORD(v24) = 67109376;
      HIDWORD(v24) = y_low;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = x_high;
      v13 = MEMORY[0x277D86220];
      v14 = "ADJasperColorInFieldCalibration jasper controller pass %d out of %d history frames";
      v15 = 14;
LABEL_12:
      _os_log_impl(&dword_2402F6000, v13, OS_LOG_TYPE_DEFAULT, v14, &v24, v15);
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = LODWORD(v8[27].y);
      v23 = HIDWORD(v8[27].x);
      LODWORD(v24) = 67109376;
      HIDWORD(v24) = v22;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v23;
      v16 = MEMORY[0x277D86220];
      v17 = "ADJasperColorInFieldCalibration jasper controller fail for %d out of %d history frames";
      v18 = 14;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  [(ADJasperColorInFieldCalibrationPipeline *)self updateLastKnownDepthMap:jasperCopy];
LABEL_18:
  v19 = [jasperCopy projectJasperPointsCroppedBy:0 rotatedBy:buffer andScaledInto:{v8[21].y, v8[22].x, v8[22].y, v8[23].x, v24, v25}];
  if (!v19)
  {
    x_low = LOBYTE(v8[27].x);
    v19 = 0;
    LOBYTE(v8[27].x) = (x_low + 1) % [*&v8[29].x featuresVectorAggregationSize];
  }

LABEL_20:

  return v19;
}

- (BOOL)isSDF:(id)f
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = &self->_distortedImagePixels[244981];
  fCopy = f;
  if ([*&v3[29].x disableSDF])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration, NOTE: SDF is disabled by user!", buf, 2u);
    }

    goto LABEL_24;
  }

  LODWORD(v3[27].y) = 0;
  v5 = [fCopy length];
  euclideanDistances = [fCopy euclideanDistances];
  bankIds = [fCopy bankIds];
  spotIds = [fCopy spotIds];
  if (!HIDWORD(v3[27].x))
  {
LABEL_24:
    v23 = 1;
    goto LABEL_25;
  }

  if (v5)
  {
    v25 = fCopy;
    v6 = 0;
    v26 = v5;
    do
    {
      sceneDiversityMinChangedSpots = [*&v3[11].x sceneDiversityMinChangedSpots];
      v7 = 0;
      v8 = (*&v3[28].x + 24 * v6);
      v9 = bankIds;
      v10 = euclideanDistances;
      v12 = v26;
      v11 = spotIds;
      do
      {
        v14 = *v9++;
        v13 = v14;
        if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3) > v14)
        {
          v15 = *v11;
          v17 = (*v8 + 24 * v13);
          v16 = *v17;
          if (v15 < (v17[1] - *v17) >> 2)
          {
            v18 = *(v16 + 4 * v15);
            if (v18 > 0.0)
            {
              v19 = *v10;
              [*&v3[11].x sceneDiversityMinDepthDiff];
              if (vabds_f32(v18, v19) > v20)
              {
                ++v7;
              }
            }
          }
        }

        ++v11;
        ++v10;
        --v12;
      }

      while (v12);
      sceneDiversityMinChangedSpots2 = sceneDiversityMinChangedSpots;
      if (v7 < sceneDiversityMinChangedSpots)
      {
        fCopy = v25;
        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v32 = v6;
        v33 = 1024;
        v34 = v7;
        v35 = 1024;
        v36 = sceneDiversityMinChangedSpots;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration jasper SDF current frame pass against history frame %d with %d/%d good spots", buf, 0x14u);
      }

      ++LODWORD(v3[27].y);
      ++v6;
    }

    while (v6 < HIDWORD(v3[27].x));
    v23 = 1;
    fCopy = v25;
  }

  else
  {
    LODWORD(v6) = 0;
    v22 = MEMORY[0x277D86220];
    while (1)
    {
      sceneDiversityMinChangedSpots2 = [*&v3[11].x sceneDiversityMinChangedSpots];
      if (sceneDiversityMinChangedSpots2)
      {
        break;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v32 = v6;
        v33 = 1024;
        v34 = 0;
        v35 = 1024;
        v36 = 0;
        _os_log_impl(&dword_2402F6000, v22, OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration jasper SDF current frame pass against history frame %d with %d/%d good spots", buf, 0x14u);
      }

      ++LODWORD(v3[27].y);
      LODWORD(v6) = v6 + 1;
      if (v6 >= HIDWORD(v3[27].x))
      {
        goto LABEL_24;
      }
    }

    v7 = 0;
LABEL_29:
    v23 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v32 = v6;
      v33 = 1024;
      v34 = v7;
      v35 = 1024;
      v36 = sceneDiversityMinChangedSpots2;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration jasper SDF current frame failed against history frame %d with %d/%d good spots", buf, 0x14u);
      v23 = 0;
    }
  }

LABEL_25:

  return v23;
}

- (int64_t)preProcessColor:(__CVBuffer *)color processedColor:(__CVBuffer *)processedColor referenceCameraCalibration:(id)calibration colorCameraCalibration:(id)cameraCalibration colorMetadata:(id)metadata
{
  calibrationCopy = calibration;
  cameraCalibrationCopy = cameraCalibration;
  metadataCopy = metadata;
  kdebug_trace();
  v15 = [(ADJasperColorInFieldCalibrationPipeline *)self resizeImage:cameraCalibrationCopy colorImage:color processedColor:processedColor colorMetadata:metadataCopy];
  kdebug_trace();

  return v15;
}

- (int64_t)resizeImage:(id)image colorImage:(__CVBuffer *)colorImage processedColor:(__CVBuffer *)color colorMetadata:(id)metadata
{
  v38 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v14 = -22950;
      goto LABEL_16;
    }

    LOWORD(v30) = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "missing meta data for resizing";
LABEL_14:
    _os_log_error_impl(&dword_2402F6000, v26, OS_LOG_TYPE_ERROR, v27, &v30, 2u);
    goto LABEL_15;
  }

  Width = CVPixelBufferGetWidth(color);
  Height = CVPixelBufferGetHeight(color);
  v14 = -22950;
  if (Width && Height)
  {
    v15 = CVPixelBufferGetWidth(colorImage);
    v16 = CVPixelBufferGetHeight(colorImage);
    if (![(ADJasperColorInFieldCalibrationPipeline *)self isColorFrameValid:colorImage withMetadata:metadataCopy])
    {
      goto LABEL_15;
    }

    v17 = &self->_distortedImagePixels[244981];
    [MEMORY[0x277CED070] calcSensorCrop:metadataCopy onImageWithDimensions:2 metadataDictionary:v17[23].y negativeCropHandling:{v17[24].x, v17[24].y, v17[25].x, v15, v16}];
    v17[21].y = y;
    v17[22].x = x;
    v17[22].y = v20;
    v17[23].x = v21;
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v22 = v20;
      v23 = v21;
      v24 = y;
      v25 = x;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134218752;
        v31 = v22;
        v32 = 2048;
        v33 = v23;
        v34 = 2048;
        v35 = v24;
        v36 = 2048;
        v37 = v25;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AD-RGBJ controller final buffer crop    size.width:%.2f, size.height:%.2f, origin.x:%.2f, origin.y:%.2f", &v30, 0x2Au);
        y = v17[21].y;
        x = v17[22].x;
        v20 = v17[22].y;
        v21 = v17[23].x;
      }

      else
      {
        x = v25;
        y = v24;
        v21 = v23;
        v20 = v22;
      }
    }

    v28 = Width / v20;
    *&v17[21].x = v28;
    if (!PixelBufferUtils::cropAndScalePixelBuffer(colorImage, color, 1, *&y, *MEMORY[0x277CBF3A0]))
    {
      v14 = 0;
      goto LABEL_16;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v30) = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "cropAndScalePixelBuffer failed";
    goto LABEL_14;
  }

LABEL_16:

  return v14;
}

- (CGRect)calculateJasperFOVInImageWithJasperCalibration:(id)calibration withCameraCalibration:(id)cameraCalibration withOriginalImageWidth:(unint64_t)width withOriginalImageHeight:(unint64_t)height forOutputImageWidth:(unint64_t)imageWidth forOutputImageHeight:(unint64_t)imageHeight
{
  v8 = floor(height / imageHeight) * imageHeight;
  v9 = floor(width / imageWidth) * imageWidth;
  v10 = floor((width - v9) * 0.5) + 0.0;
  v11 = floor((height - v8) * 0.5) + 0.0;
  v12 = imageWidth / imageHeight;
  v13 = v9 / v8 == v12;
  v14 = v9 / v8 < v12;
  v15 = v11 + floor((v8 - (v9 / imageWidth * imageHeight)) * 0.5);
  v16 = (v8 / imageHeight * imageWidth);
  v17 = v10 + floor((v9 - v16) * 0.5);
  if (v14 || v13)
  {
    v11 = v15;
    v16 = v9;
  }

  else
  {
    v10 = v17;
  }

  if (v14 || v13)
  {
    v8 = (v9 / imageWidth * imageHeight);
  }

  result.size.height = v8;
  result.size.width = v16;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)createReferenceCameraForColor:(__n128)color withExtrinsics:(__n128)extrinsics
{
  v8 = a7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    self[245009] = a2;
    self[245010] = color;
    self[245011] = extrinsics;
    self[245012] = a5;
    [v10 intrinsicMatrix];
    self[2].n128_u32[2] = v11;
    [v9 cameraToPlatformTransform];
    self[3].n128_u32[2] = v12;
    self[3].n128_u64[0] = v13;
    self[4].n128_u32[2] = v14;
    self[5].n128_u32[2] = v15;
    self[4].n128_u64[0] = v16;
    self[5].n128_u64[0] = v17;
    self[6].n128_u32[2] = v18;
    self[6].n128_u64[0] = v19;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateJasperCamera:(id)camera
{
  objc_storeStrong(&self->_jasperCalib, camera);
  cameraCopy = camera;
  [cameraCopy cameraToPlatformTransform];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  *&self->_anon_70[12] = DWORD2(v10);
  *&self->_anon_70[4] = v10;
  *&self->_anon_70[28] = DWORD2(v11);
  *&self->_anon_70[44] = DWORD2(v12);
  *&self->_anon_70[20] = v11;
  *&self->_anon_70[36] = v12;
  *&self->_anon_70[60] = DWORD2(v13);
  *&self->_anon_70[52] = v13;
}

- (BOOL)isAngularVelocityValid:(id)valid
{
  v16 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  [(ADJasperColorInFieldCalibrationPipeline *)self getDeviceFrequency];
  *&v5 = v5;
  [MEMORY[0x277CED070] getAngularVelocityFromMetadataDictionary:validCopy deviceClock:*&v5];
  v7 = v6;
  [(ADJasperColorInFieldCalibrationControllerParameters *)self->_controllerParameters thresholdAngularVelocity];
  if (v7 >= v8)
  {
    v9 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [(ADJasperColorInFieldCalibrationControllerParameters *)self->_controllerParameters thresholdAngularVelocity];
      v12 = 134218240;
      v13 = v7;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "High Angular velocity of %f detected against threshold of %f", &v12, 0x16u);
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)resetSdfHistory
{
  if (self->_sdfHistorySize >= 2)
  {
    ptr = self->_sdfHistoryFrames.__ptr_;
    self->_sdfHistoryFrames.__ptr_ = 0;
    self->_sdfHistoryRollingIndex = 0;
    if (ptr)
    {
      v3 = *(ptr - 1);
      if (v3)
      {
        v4 = &ptr[3 * v3];
        v5 = v4;
        do
        {
          v8 = *(v5 - 3);
          v5 -= 3;
          v7 = v8;
          if (v8)
          {
            v9 = *(v4 - 2);
            v6 = v7;
            if (v9 != v7)
            {
              v10 = *(v4 - 2);
              do
              {
                v12 = *(v10 - 3);
                v10 -= 24;
                v11 = v12;
                if (v12)
                {
                  *(v9 - 2) = v11;
                  operator delete(v11);
                }

                v9 = v10;
              }

              while (v10 != v7);
              v6 = *v5;
            }

            *(v4 - 2) = v7;
            operator delete(v6);
          }

          v4 = v5;
        }

        while (v5 != ptr);
      }

      MEMORY[0x245CBFC90](ptr - 2, 0x20C80960023A9);
    }

    operator new[]();
  }
}

- (ADJasperColorInFieldCalibrationPipeline)initWithParameters:(id)parameters espressoEngine:(unint64_t)engine
{
  parametersCopy = parameters;
  v31 = 335681116;
  v32 = 0u;
  v33 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v8, v9, "Jasper Color In-Field calibration pipeline init for", buf, 2u);
LABEL_7:
  v29.receiver = self;
  v29.super_class = ADJasperColorInFieldCalibrationPipeline;
  v10 = [(ADJasperColorInFieldCalibrationPipeline *)&v29 init];
  v11 = v10;
  v12 = v10;
  if (!v10)
  {
    v27 = 0;
    goto LABEL_18;
  }

  *(v10 + 3920072) = 0u;
  *(v10 + 3920088) = 0u;
  *(v10 + 980052) = 1065353216;
  *(v10 + 3920104) = 0u;
  objc_storeStrong(v10 + 490042, parameters);
  *(v11 + 980077) = [*(v11 + 490042) sdfHistorySize];
  deviceName = [*(v11 + 490042) deviceName];
  if ([deviceName hasPrefix:@"J7"])
  {

LABEL_11:
    v15 = &g_streamTrainedCropRectPad;
    goto LABEL_13;
  }

  v14 = [deviceName hasPrefix:@"J8"];

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = &g_streamTrainedCropRect;
LABEL_13:
  v16 = v15[1];
  *(v11 + 3920248) = *v15;
  *(v11 + 3920264) = v16;

  v17 = [ADNetworkProvider providerForNetwork:@"PeCoNetBackend" espressoEngine:engine];
  v18 = v12[1];
  v12[1] = v17;

  v19 = [ADNetworkProvider providerForNetwork:@"PeCoNetFrontend" espressoEngine:engine];
  v20 = v12[2];
  v12[2] = v19;

  if (v12[1] && v12[2])
  {
    v21 = [[ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor alloc] initWithNetworkProvider:v12[1] espressoEngine:engine];
    v22 = v12[3];
    v12[3] = v21;

    v23 = [[ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor alloc] initWithNetworkProvider:v12[2] espressoEngine:engine];
    v24 = v12[4];
    v12[4] = v23;

    v25 = objc_alloc_init(ADJasperColorInFieldCalibrationControllerParameters);
    v26 = *(v11 + 490006);
    *(v11 + 490006) = v25;

    *(v11 + 490007) = 0;
    [*(v11 + 490042) featuresVectorAggregationSize];
    operator new[]();
  }

  v27 = 0;
LABEL_18:
  kdebug_trace();

  return v27;
}

- (double)getDeviceFrequency
{
  deviceName = [(ADPipelineParameters *)self->_pipelineParameters deviceName];
  uppercaseString = [deviceName uppercaseString];

  if (([uppercaseString containsString:@"J717"] & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J718") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J720") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J721") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"D93") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"D94") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J817") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J818") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J820") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"J821") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"V53") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"V54") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"D83") & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"D84") & 1) == 0)
  {
    NSLog(&cfstr_UnknownDeviceF.isa, uppercaseString);
  }

  return 24000000.0;
}

- (void)dealloc
{
  [(ADJasperColorInFieldCalibrationPipeline *)self deallocMemory];
  v3 = *self->_motionRotationAngles;
  if (v3)
  {
    MEMORY[0x245CBFC90](v3, 0x1000C80451B5BE8);
  }

  v4 = *self->_motionTranslation;
  if (v4)
  {
    MEMORY[0x245CBFC90](v4, 0x1000C80451B5BE8);
  }

  validDepthPercentage = self->_validDepthPercentage;
  if (validDepthPercentage)
  {
    MEMORY[0x245CBFC90](validDepthPercentage, 0x1000C8077774924);
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pipeline terminated", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ADJasperColorInFieldCalibrationPipeline;
  [(ADJasperColorInFieldCalibrationPipeline *)&v6 dealloc];
}

- (void)deallocMemory
{
  v3 = &self->_distortedImagePixels[244981];
  zVals = self->_zVals;
  if (zVals)
  {
    MEMORY[0x245CBFC90](zVals, 0x1000C8052888210);
  }

  y = v3[13].y;
  if (y != 0.0)
  {
    MEMORY[0x245CBFC90](*&y, 0x1000C80451B5BE8);
  }

  x = v3[14].x;
  if (x != 0.0)
  {
    MEMORY[0x245CBFC90](*&x, 0x1000C80451B5BE8);
  }

  v7 = v3[14].y;
  if (v7 != 0.0)
  {
    MEMORY[0x245CBFC90](*&v7, 0x1000C80451B5BE8);
  }

  v8 = v3[15].x;
  if (v8 != 0.0)
  {
    MEMORY[0x245CBFC90](*&v8, 0x1000C80451B5BE8);
  }

  v9 = *&v3[12].x;
  v3[12].x = 0.0;
  if (v9)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(v9);
    MEMORY[0x245CBFCB0]();
  }

  *&self->_rectifiedPoints = 0u;
  *self->_origWorldPoints = 0u;
  *&self->_referenceCameraNumOfPoints = 0u;
  CVPixelBufferRelease(*&v3[11].y);
  v3[11].y = 0.0;
}

- (ADJasperColorInFieldCalibrationPipeline)init
{
  v3 = objc_opt_new();
  v4 = [(ADJasperColorInFieldCalibrationPipeline *)self initWithParameters:v3 espressoEngine:4];

  return v4;
}

- (void)updateLastKnownDepthMap:(id)map
{
  v3 = &self->_distortedImagePixels[244981];
  mapCopy = map;
  y = v3[28].y;
  x_high = HIDWORD(v3[27].x);
  v63 = mapCopy;
  v7 = [mapCopy length];
  euclideanDistances = [v63 euclideanDistances];
  bankIds = [v63 bankIds];
  spotIds = [v63 spotIds];
  v11 = spotIds;
  v65 = *&y % x_high;
  v12 = *(*&v3[28].x + 24 * (*&y % x_high));
  v13 = *(*&v3[28].x + 24 * (*&y % x_high) + 8);
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = 0;
    v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    do
    {
      v17 = *(v12 + 24 * v15);
      v18 = *(v12 + 24 * v15 + 8) - v17;
      if (v18)
      {
        v19 = v18 >> 2;
        if (v19 > 0x13 && (v19 ? (v20 = (v19 - 1) >> 32 == 0) : (v20 = 0), v20))
        {
          v21 = v19 & 0x1FFFFFFF8;
          v24 = *(v12 + 24 * v15);
          v25 = v19 & 0x1FFFFFFF8;
          do
          {
            *v24 = 0uLL;
            v24[1] = 0uLL;
            v24 += 2;
            v25 -= 8;
          }

          while (v25);
          v22 = v19 & 0xFFFFFFF8;
          if (v19 == v21)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        v23 = v22 + 1;
        do
        {
          *(v17 + 4 * v21) = 0;
          v21 = v23++;
        }

        while (v19 > v21);
      }

LABEL_3:
      ++v15;
    }

    while (v16 > v15);
  }

  if (!v7)
  {
    goto LABEL_51;
  }

  v62 = euclideanDistances;
  v26 = 0;
  v66 = bankIds;
  v27 = 0uLL;
  v28 = v7;
  v64 = spotIds;
  do
  {
    v29 = bankIds[v26];
    v30 = *&v3[28].x + 24 * v65;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *v30) >> 3);
    if (v33 <= v29)
    {
      v34 = v29 + 1;
      v35 = v29 + 1 - v33;
      v36 = *(v30 + 16);
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v32) >> 3) < v35)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v31) >> 3);
        if (2 * v37 > v34)
        {
          v34 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v34;
        }

        if (v38 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(*(v30 + 8), 24 * ((24 * v35 - 24) / 0x18) + 24);
      *(v30 + 8) = v32 + 24 * ((24 * v35 - 24) / 0x18) + 24;
      bankIds = v66;
      v31 = *(*&v3[28].x + 24 * v65);
      v11 = v64;
      v27 = 0uLL;
    }

    v39 = v11[v26];
    v40 = (v31 + 24 * v29);
    v42 = *v40;
    v41 = v40[1];
    v43 = v41 - *v40;
    if (v43 >> 2 <= v39)
    {
      v44 = v39 + 1;
      v45 = v39 + 1 - (v43 >> 2);
      v46 = v40[2];
      if (v45 > (v46 - v41) >> 2)
      {
        v47 = v46 - v42;
        v48 = (v46 - v42) >> 1;
        if (v48 <= v44)
        {
          v48 = v44;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v50 = &v41[v45];
      v51 = (v45 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v51 >= 7)
      {
        v52 = v51 + 1;
        v53 = v40[1];
        v54 = v52 & 0x7FFFFFFFFFFFFFF8;
        bankIds = v66;
        do
        {
          *v53 = v27;
          v53[1] = v27;
          v53 += 2;
          v54 -= 8;
        }

        while (v54);
        if (v52 == (v52 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_20;
        }

        v41 += v52 & 0x7FFFFFFFFFFFFFF8;
      }

      else
      {
        bankIds = v66;
      }

      do
      {
        *v41++ = 0;
      }

      while (v41 != v50);
LABEL_20:
      v40[1] = v50;
    }

    ++v26;
  }

  while (v26 != v28);
  v55 = *(*&v3[28].x + 24 * v65);
  v56 = v62;
  do
  {
    v57 = *v56++;
    v58 = v57;
    v60 = *bankIds++;
    v59 = v60;
    v61 = *v11++;
    *(*(v55 + 24 * v59) + 4 * v61) = v58;
    --v28;
  }

  while (v28);
LABEL_51:
  ++*&v3[28].y;
}

+ (BOOL)isJasperFrameValid:(id)valid andPipelineParameters:(id)parameters
{
  validCopy = valid;
  parametersCopy = parameters;
  v7 = objc_alloc_init(ADJasperColorInFieldCalibrationControllerParameters);
  valid = isJasperFrameValidImpl(validCopy, v7, 0);

  return valid;
}

+ (BOOL)isColorFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata andPipelineParameters:(id)parameters
{
  metadataCopy = metadata;
  parametersCopy = parameters;
  v9 = objc_alloc_init(ADJasperColorInFieldCalibrationControllerParameters);
  LOBYTE(valid) = isColorFrameValidImpl(valid, metadataCopy, parametersCopy, v9);

  return valid;
}

@end