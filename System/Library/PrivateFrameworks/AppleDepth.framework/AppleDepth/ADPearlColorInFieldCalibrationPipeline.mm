@interface ADPearlColorInFieldCalibrationPipeline
+ (BOOL)isColorFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata;
+ (BOOL)isPearlFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata;
+ (BOOL)isPearlFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata andPipelineParameters:(id)parameters;
+ (BOOL)isValidDepthAboveThreshold:(__CVBuffer *)threshold threshold:(float)a4 invalid:(unsigned __int16)invalid validDepthPercentage:(float *)percentage;
+ (id)defaults;
- (ADPearlColorInFieldCalibrationInterSessionData)createInterSessionDataWithFactoryPearlToColorTransform:(double)transform currentPearlToColorTransform:(double)colorTransform;
- (ADPearlColorInFieldCalibrationPipeline)init;
- (ADPearlColorInFieldCalibrationPipeline)initWithParameters:(id)parameters espressoEngine:(unint64_t)engine;
- (BOOL)isPearlFrameValid:(__CVBuffer *)valid;
- (__n128)setPearlToColorCurrentTransform:(__n128)transform;
- (float)claculateWeightedStd:(ADPearlColorInFieldCalibrationPipeline *)self;
- (id)createInterSessionDataWithDictionaryRepresentation:(id)representation;
- (id)createReferenceCameraForColor:(__n128)color withExtrinsics:(__n128)extrinsics;
- (int64_t)postProcessFrontendOutputX:(void *)x frontendOutputY:(void *)y frontendOutputZ:(void *)z frontendOutputErrorX:(void *)errorX frontendOutputErrorY:(void *)errorY frontendOutputErrorZ:(void *)errorZ interSessionData:(id)data pearlColorInFieldCalibrationResult:(id)self0;
- (int64_t)preProcessColor:(__CVBuffer *)color processedColor:(__CVBuffer *)processedColor referenceCameraCalibration:(id)calibration colorCameraCalibration:(id)cameraCalibration;
- (int64_t)preProcessPearl:(__CVBuffer *)pearl referenceCameraCalibration:(id)calibration pearlCameraCalibration:(id)cameraCalibration reprojectedPointsBuffer:(__CVBuffer *)buffer reprojectedPointsMaskBuffer:(__CVBuffer *)maskBuffer;
- (int64_t)processIntermediateResultsWithBackendFeaturesOutputVector:(const void *)vector frontendEspressoFeaturesInput:(void *)input dimensions:(id)dimensions;
- (void)dealloc;
- (void)deallocMemory;
- (void)reportTelemetry:(id)telemetry withInterSessionData:(id)data;
- (void)updatePearlCamera:(id)camera;
@end

@implementation ADPearlColorInFieldCalibrationPipeline

- (__n128)setPearlToColorCurrentTransform:(__n128)transform
{
  result[19] = a2;
  result[20] = transform;
  result[21] = a4;
  result[22] = a5;
  return result;
}

- (void)reportTelemetry:(id)telemetry withInterSessionData:(id)data
{
  v62[20] = *MEMORY[0x277D85DE8];
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
    analyzeOneShotExtremeRotation(v7, v9, v10, &cfstr_ComAppleApplec_2.isa, firedEventTimestampsArray);
  }

  v61[0] = @"MaxBackendRunTime";
  v11 = MEMORY[0x277CCABB0];
  v12 = [inFieldCalibrationTelemetryData maxBackendRunTime] / 1000.0;
  *&v12 = v12;
  v55 = [v11 numberWithFloat:v12];
  v62[0] = v55;
  v61[1] = @"MinBackendRunTime";
  v13 = MEMORY[0x277CCABB0];
  v14 = [inFieldCalibrationTelemetryData minBackendRunTime] / 1000.0;
  *&v14 = v14;
  v54 = [v13 numberWithFloat:v14];
  v62[1] = v54;
  v61[2] = @"TimeSincePrevRun";
  v15 = MEMORY[0x277CCABB0];
  v16 = [inFieldCalibrationTelemetryData timeSincePrevRun] / 1000.0;
  *&v16 = v16;
  v53 = [v15 numberWithFloat:v16];
  v62[2] = v53;
  v61[3] = @"TotalBackendTime";
  v17 = MEMORY[0x277CCABB0];
  v18 = [inFieldCalibrationTelemetryData totalBackendTime] / 1000.0;
  *&v18 = v18;
  v52 = [v17 numberWithFloat:v18];
  v62[3] = v52;
  v61[4] = @"TotalFrontEndTime";
  v19 = MEMORY[0x277CCABB0];
  v20 = [inFieldCalibrationTelemetryData frontEndTime] / 1000.0;
  *&v20 = v20;
  v51 = [v19 numberWithFloat:v20];
  v62[4] = v51;
  v61[5] = @"TotalNumRuns";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(inFieldCalibrationTelemetryData, "totalNumRuns")}];
  v62[5] = v50;
  v61[6] = @"Confidence";
  v21 = MEMORY[0x277CCABB0];
  [telemetryCopy confidence];
  v49 = [v21 numberWithFloat:?];
  v62[6] = v49;
  v61[7] = @"FilteredRotXComparedToFactory";
  v22 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryX];
  v48 = [v22 numberWithFloat:?];
  v62[7] = v48;
  v61[8] = @"FilteredRotXComparedToPrev";
  v23 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevX];
  v47 = [v23 numberWithFloat:?];
  v62[8] = v47;
  v61[9] = @"FilteredRotYComparedToFactory";
  v24 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryY];
  v46 = [v24 numberWithFloat:?];
  v62[9] = v46;
  v61[10] = @"FilteredRotYComparedToPrev";
  v25 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevY];
  v45 = [v25 numberWithFloat:?];
  v62[10] = v45;
  v61[11] = @"FilteredRotZComparedToFactory";
  v26 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2FactoryZ];
  v44 = [v26 numberWithFloat:?];
  v62[11] = v44;
  v61[12] = @"FilteredRotZComparedToPrev";
  v27 = MEMORY[0x277CCABB0];
  [telemetryCopy postRelative2PrevZ];
  v28 = [v27 numberWithFloat:?];
  v62[12] = v28;
  v61[13] = @"RotXComparedToFactory";
  v29 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryX];
  v30 = [v29 numberWithFloat:?];
  v62[13] = v30;
  v61[14] = @"RotXComparedToPrev";
  v31 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationX];
  v32 = [v31 numberWithFloat:?];
  v62[14] = v32;
  v61[15] = @"RotYComparedToFactory";
  v33 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryY];
  v34 = [v33 numberWithFloat:?];
  v62[15] = v34;
  v61[16] = @"RotYComparedToPrev";
  v35 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationY];
  v36 = [v35 numberWithFloat:?];
  v62[16] = v36;
  v61[17] = @"RotZComparedToFactory";
  v37 = MEMORY[0x277CCABB0];
  [telemetryCopy preRelative2FactoryZ];
  v38 = [v37 numberWithFloat:?];
  v62[17] = v38;
  v61[18] = @"RotZComparedToPrev";
  v39 = MEMORY[0x277CCABB0];
  [telemetryCopy deltaRotationZ];
  v40 = [v39 numberWithFloat:?];
  v62[18] = v40;
  v61[19] = @"Succeeded";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(telemetryCopy, "executed")}];
  v62[19] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:20];

  v43 = v42;
  if (AnalyticsSendEventLazy())
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = @"com.apple.applecamerad.PearlToRGB";
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pearl Color In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v60 = @"com.apple.applecamerad.PearlToRGB";
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "pearl Color In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v60 = @"com.apple.applecamerad.PearlToRGB";
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pearl Color In-Field calibration pipeline Telemetry event %{public}@ failed to fire", buf, 0xCu);
  }
}

- (float)claculateWeightedStd:(ADPearlColorInFieldCalibrationPipeline *)self
{
  v17 = *&v2[8];
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffX];
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffY];
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffZ];
  _V1.S[2] = v17;
  __asm { FMLA            S9, S0, V1.S[2] }

  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffX];
  v12 = v11;
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffY];
  v14 = v12 + v13;
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters coeffZ];
  return _S9 / (v14 + v15);
}

- (int64_t)postProcessFrontendOutputX:(void *)x frontendOutputY:(void *)y frontendOutputZ:(void *)z frontendOutputErrorX:(void *)errorX frontendOutputErrorY:(void *)errorY frontendOutputErrorZ:(void *)errorZ interSessionData:(id)data pearlColorInFieldCalibrationResult:(id)self0
{
  dataCopy = data;
  resultCopy = result;
  rotationXOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationXOutput];
  imageDescriptor = [rotationXOutput imageDescriptor];
  v16 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor pixelFormat], 0);

  rotationYOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationYOutput];
  imageDescriptor2 = [rotationYOutput imageDescriptor];
  v19 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

  rotationZOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationZOutput];

  if (rotationZOutput)
  {
    rotationZOutput2 = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc rotationZOutput];
    imageDescriptor3 = [rotationZOutput2 imageDescriptor];
    v23 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor3 pixelFormat], 0);

    v180 = v23 == 2;
  }

  else
  {
    v180 = 0;
  }

  errorXOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorXOutput];
  imageDescriptor4 = [errorXOutput imageDescriptor];
  v26 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor4 pixelFormat], 0);

  errorYOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorYOutput];
  imageDescriptor5 = [errorYOutput imageDescriptor];
  v29 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor5 pixelFormat], 0);

  errorZOutput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorZOutput];

  if (errorZOutput)
  {
    errorZOutput2 = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc errorZOutput];
    v187 = dataCopy;
    errorZOutput = [errorZOutput2 imageDescriptor];
    v32 = PixelBufferUtils::pixelSizeForPixelFormat([errorZOutput pixelFormat], 0);

    LODWORD(errorZOutput) = v32 == 2;
    dataCopy = v187;
  }

  [resultCopy setExecuted:0];
  v225 = 0u;
  v226 = 0u;
  v224 = 0u;
  [dataCopy pearlToColorRotationAngles];
  v188 = v33;
  [ADUtils calcRotationMatrix:?];
  v171 = v34;
  v174 = v35;
  v177 = v36;
  v222 = 0u;
  v223 = 0u;
  v221 = 0u;
  v219 = 0u;
  v220 = 0u;
  v218 = 0u;
  if (self->_networkFlowType == 1)
  {
    v162 = *self[1]._anon_30;
    v167 = *&self[1].super.isa;
    v169 = *&self[1]._frontendNetworkProvider;
    v170 = *&self[1]._frontendInferenceDesc;
    v163 = *MEMORY[0x277D860B0];
    v164 = *(MEMORY[0x277D860B0] + 16);
    v165 = *(MEMORY[0x277D860B0] + 32);
  }

  else
  {
    v165 = xmmword_240406E10;
    v164 = xmmword_240406F40;
    v162 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406F20, COERCE_FLOAT(*self[1]._anon_30)), xmmword_240406F30, *self[1]._anon_30, 1), xmmword_240406E10, *self[1]._anon_30, 2);
    v163 = xmmword_240406F50;
    v167 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406F20, COERCE_FLOAT(*&self[1].super.isa)), xmmword_240406F30, self[1].super.isa, 1), xmmword_240406E10, *&self[1].super.isa, 2);
    v169 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406F20, COERCE_FLOAT(*&self[1]._frontendNetworkProvider)), xmmword_240406F30, self[1]._frontendNetworkProvider, 1), xmmword_240406E10, *&self[1]._frontendNetworkProvider, 2);
    v170 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406F20, COERCE_FLOAT(*&self[1]._frontendInferenceDesc)), xmmword_240406F30, self[1]._frontendInferenceDesc, 1), xmmword_240406E10, *&self[1]._frontendInferenceDesc, 2);
  }

  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters colorCameraNominalEfl];
  v38 = v37 / self->_colorCameraEfl;
  if (v16 == 2)
  {
    _H1 = *x;
    __asm { FCVT            S1, H1 }
  }

  else
  {
    _S1 = *x;
  }

  v45 = v38 * _S1;
  if (v19 == 2)
  {
    _H1 = *y;
    __asm { FCVT            S1, H1 }
  }

  else
  {
    _S1 = *y;
  }

  v48 = v38 * _S1;
  if (v26 == 2)
  {
    _H3 = *errorX;
    __asm { FCVT            S3, H3 }
  }

  else
  {
    _S3 = *errorX;
  }

  v51 = 0u;
  *&v51 = v45;
  if (v29 == 2)
  {
    _H2 = *errorY;
    __asm { FCVT            S2, H2 }
  }

  else
  {
    _S2 = *errorY;
  }

  *(&v51 + 1) = v48;
  v197 = v51;
  v54 = __PAIR64__(_S2, _S3);
  if (z && errorZ)
  {
    if (v180)
    {
      _H1 = *z;
      __asm { FCVT            S1, H1 }

      v57 = v38 * _S1;
      if (!errorZOutput)
      {
LABEL_25:
        _S1 = *errorZ;
LABEL_28:
        v60 = v197;
        *(&v60 + 2) = v57;
        v197 = v60;
        v54.i32[2] = _S1;
        goto LABEL_29;
      }
    }

    else
    {
      v57 = v38 * *z;
      if (!errorZOutput)
      {
        goto LABEL_25;
      }
    }

    _H1 = *errorZ;
    __asm { FCVT            S1, H1 }

    goto LABEL_28;
  }

LABEL_29:
  v195 = v54;
  [(ADPearlColorInFieldCalibrationPipeline *)self claculateWeightedStd:?];
  v62 = v61;
  [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters maxStdForValidResult];
  v190 = 0u;
  if (v62 > *&v63)
  {
    v178 = 0u;
    v181 = 0u;
    v183 = 0u;
    v185 = 0u;
LABEL_45:
    [resultCopy setDeltaRotationX:*&v197];
    HIDWORD(v149) = DWORD1(v197);
    LODWORD(v149) = DWORD1(v197);
    [resultCopy setDeltaRotationY:v149];
    [resultCopy setDeltaRotationZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v197), DWORD2(v197)))}];
    [resultCopy setStdX:*v195.i64];
    HIDWORD(v150) = v195.i32[1];
    LODWORD(v150) = v195.i32[1];
    [resultCopy setStdY:v150];
    [resultCopy setStdZ:{COERCE_DOUBLE(__PAIR64__(v195.u32[1], v195.u32[2]))}];
    [resultCopy setAbsoluteRotationX:*&v183];
    HIDWORD(v151) = DWORD1(v183);
    LODWORD(v151) = DWORD1(v183);
    [resultCopy setAbsoluteRotationY:v151];
    [resultCopy setAbsoluteRotationZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v183), DWORD2(v183)))}];
    [resultCopy setFactoryRotationX:*&v188];
    HIDWORD(v152) = DWORD1(v188);
    LODWORD(v152) = DWORD1(v188);
    [resultCopy setFactoryRotationY:v152];
    [resultCopy setFactoryRotationZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v188), DWORD2(v188)))}];
    [resultCopy setAbsoluteRotationPostISFX:*&v178];
    HIDWORD(v153) = DWORD1(v178);
    LODWORD(v153) = DWORD1(v178);
    [resultCopy setAbsoluteRotationPostISFY:v153];
    [resultCopy setAbsoluteRotationPostISFZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v178), DWORD2(v178)))}];
    *&v154 = v62;
    [resultCopy setConfidence:v154];
    [resultCopy setPreRelative2FactoryX:*v185.i64];
    HIDWORD(v155) = v185.i32[1];
    LODWORD(v155) = v185.i32[1];
    [resultCopy setPreRelative2FactoryY:v155];
    [resultCopy setPreRelative2FactoryZ:{COERCE_DOUBLE(__PAIR64__(v185.u32[1], v185.u32[2]))}];
    [resultCopy setPostRelative2FactoryX:*&v181];
    HIDWORD(v156) = DWORD1(v181);
    LODWORD(v156) = DWORD1(v181);
    [resultCopy setPostRelative2FactoryY:v156];
    [resultCopy setPostRelative2FactoryZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v181), DWORD2(v181)))}];
    [resultCopy setPostRelative2PrevX:*&v190];
    HIDWORD(v157) = DWORD1(v190);
    LODWORD(v157) = DWORD1(v190);
    [resultCopy setPostRelative2PrevY:v157];
    [resultCopy setPostRelative2PrevZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v190), DWORD2(v190)))}];
    *&v158 = self->_validDepthPercentage;
    [resultCopy setValidDepthPercentage:v158];
    v67 = 0;
    goto LABEL_46;
  }

  *&v63 = v62;
  [(ADPearlColorInFieldCalibrationPipeline *)self convertStdToWeight:v63];
  v65 = v64;
  networkFlowType = self->_networkFlowType;
  v67 = -22950;
  if (networkFlowType > 1)
  {
    if (networkFlowType == 2)
    {
      v68.columns[1] = xmmword_240406E00;
      v68.columns[0] = xmmword_240406DF0;
      goto LABEL_41;
    }

    if (networkFlowType == 3)
    {
      *&v69 = -*(&v197 + 1);
      DWORD1(v69) = v197;
      *(&v69 + 1) = *(&v197 + 1);
      v70 = vtrn1q_s32(v195, v195);
      v70.i32[0] = v195.i32[1];
      v70.i32[3] = v195.i32[3];
      v68.columns[1] = xmmword_240406E00;
      v68.columns[0] = xmmword_240406DF0;
      v195 = v70;
      v197 = v69;
      goto LABEL_41;
    }
  }

  else
  {
    if (!networkFlowType)
    {
      [ADUtils addAnglesToRotation:*v167.i64 angles:*v169.i64, *v170.i64, *&v197];
      v71 = *self->_anon_30;
      v72 = *&self->_anon_30[16];
      v73 = *&self->_anon_30[32];
      v74 = vzip2q_s32(v71, v73);
      v75 = vzip1q_s32(vzip1q_s32(v71, v73), v72);
      v76 = vtrn2q_s32(v71, v72);
      v76.i32[2] = HIDWORD(*&self->_anon_30[32]);
      v77 = vzip1q_s32(v74, vdupq_laneq_s32(v72, 2));
      v78 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*self->_anon_e0)), v76, *self->_anon_e0, 1), v77, *self->_anon_e0, 2);
      v79 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*&self->_anon_e0[16])), v76, *&self->_anon_e0[16], 1), v77, *&self->_anon_e0[16], 2);
      v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*&self->_anon_e0[32])), v76, *&self->_anon_e0[32], 1), v77, *&self->_anon_e0[32], 2);
      v82 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v81.f32[0]), v79, *v81.f32, 1), v80, v81, 2);
      v84 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v83.f32[0]), v79, *v83.f32, 1), v80, v83, 2);
      v191 = v78;
      v160 = v80;
      v161 = v79;
      v86 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v85.f32[0]), v79, *v85.f32, 1), v80, v85, 2);
      v227.i32[2] = v82.i32[2];
      v228.i32[2] = v84.i32[2];
      v227.i64[0] = v82.i64[0];
      v228.i64[0] = v84.i64[0];
      v229.i32[2] = v86.i32[2];
      v229.i64[0] = v86.i64[0];
      [ADUtils calcRotationAngle:&v227];
      v183 = v87;
      v88 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v227, v171.f32[0]), v228, v174.f32[0]), v229, v177.f32[0]);
      v89 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v227, *v171.f32, 1), v228, *v174.f32, 1), v229, *v177.f32, 1);
      v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v227, v171, 2), v228, v174, 2), v229, v177, 2);
      DWORD2(v221) = v88.i32[2];
      DWORD2(v222) = v89.i32[2];
      *&v221 = v88.i64[0];
      *&v222 = v89.i64[0];
      DWORD2(v223) = v90.i32[2];
      *&v223 = v90.i64[0];
      [ADUtils calcRotationAngle:&v221];
      v91.i64[0] = 0;
      v92.i64[0] = z;
      v93 = vdupq_lane_s64(vceqq_s64(v92, v91).i64[0], 0);
      v95 = v94;
      v95.i32[2] = 0;
      v96 = vbslq_s8(v93, v95, v94);
      v96.i32[3] = v94.i32[3];
      v185 = v96;
      v97 = [dataCopy convertExtrinsicsAnglesToDict:*v96.i64];
      v217 = 0;
      v98 = [dataCopy insertEntryAndCalculate:v97 withWeight:&v217 toResult:v65];
      v99 = v217;
      if (v98)
      {
LABEL_42:

        v67 = -22950;
        goto LABEL_46;
      }

      [dataCopy convertDictToExtrinsicsAngles:v99];
      v181 = v100;
      [ADUtils calcRotationMatrix:*&v100];
      v104 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v101, v171.f32[0]), vdupq_lane_s32(*v171.f32, 1), v102), vdupq_laneq_s32(v171, 2), v103);
      v105 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v101, v174.f32[0]), vdupq_lane_s32(*v174.f32, 1), v102), vdupq_laneq_s32(v174, 2), v103);
      v106 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v101, v177.f32[0]), vdupq_lane_s32(*v177.f32, 1), v102), vdupq_laneq_s32(v177, 2), v103);
      v224.i32[2] = v104.i32[2];
      v225.i32[2] = v105.i32[2];
      v224.i64[0] = v104.i64[0];
      v225.i64[0] = v105.i64[0];
      v226.i32[2] = v106.i32[2];
      v226.i64[0] = v106.i64[0];
      [ADUtils calcRotationAngle:&v224];
      v178 = v107;
      [resultCopy setPearlToColorExtrinsics:{*v224.i64, *v225.i64, *v226.i64, *vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v191, v162.f32[0]), v161, *v162.f32, 1), v160, v162, 2).i64}];
      [resultCopy setExecuted:1];
      v108 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v191, v167.f32[0]), v161, *v167.f32, 1), v160, v167, 2);
      v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v191, v169.f32[0]), v161, *v169.f32, 1), v160, v169, 2);
      v110 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v191, v170.f32[0]), v161, *v170.f32, 1), v160, v170, 2);
      v111 = vzip1q_s32(vzip1q_s32(v224, v226), v225);
      v112 = vtrn2q_s32(v224, v225);
      v112.i32[2] = v226.i32[1];
      v113 = vzip1q_s32(vzip2q_s32(v224, v226), vdupq_laneq_s32(v225, 2));
      v114 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, v163.f32[0]), v112, *v163.f32, 1), v113, v163, 2);
      v115 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, v164.f32[0]), v112, *v164.f32, 1), v113, v164, 2);
      v116 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, v165.f32[0]), v112, *v165.f32, 1), v113, v165, 2);
      v117 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, v108.f32[0]), v115, *v108.f32, 1), v116, v108, 2);
      v118 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, v109.f32[0]), v115, *v109.f32, 1), v116, v109, 2);
      v119 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, v110.f32[0]), v115, *v110.f32, 1), v116, v110, 2);
      DWORD2(v218) = v117.i32[2];
      DWORD2(v219) = v118.i32[2];
      *&v218 = v117.i64[0];
      *&v219 = v118.i64[0];
      DWORD2(v220) = v119.i32[2];
      *&v220 = v119.i64[0];
      [ADUtils calcRotationAngle:&v218];
      v190 = v120;
LABEL_44:

      goto LABEL_45;
    }

    if (networkFlowType == 1)
    {
      v68.columns[1] = xmmword_240406DF0;
      v68.columns[0] = xmmword_240406EB0;
LABEL_41:
      v68.columns[2] = xmmword_240406E10;
      v186 = v68.columns[0];
      v192 = v68.columns[1];
      v168 = __invert_f3(v68);
      [ADUtils calcRotationMatrix:*&v197];
      v121 = *&self[1].super.isa;
      v122 = *&self[1]._frontendNetworkProvider;
      v123 = *&self[1]._frontendInferenceDesc;
      v166 = *self[1]._anon_30;
      v124 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v186.f32[0]), v122, *v186.f32, 1), v123, v186, 2);
      v125 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v192.f32[0]), v122, *v192.f32, 1), v123, v192, 2);
      v126 = vaddq_f32(v123, vmlaq_f32(vmulq_f32(v121, 0), 0, v122));
      v127 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v186.f32[0]), v174, *v186.f32, 1), v177, v186, 2);
      v128 = vaddq_f32(v177, vmlaq_f32(vmulq_f32(v171, 0), 0, v174));
      v132 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v124.f32[0]), v130, *v124.f32, 1), v131, v124, 2);
      v133 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v125.f32[0]), v130, *v125.f32, 1), v131, v125, 2);
      v134 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v126.f32[0]), v130, *v126.f32, 1), v131, v126, 2);
      v214.i32[2] = v132.i32[2];
      v215.i32[2] = v133.i32[2];
      v214.i64[0] = v132.i64[0];
      v215.i64[0] = v133.i64[0];
      v216.i32[2] = v134.i32[2];
      v216.i64[0] = v134.i64[0];
      v175 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v192.f32[0]), v174, *v192.f32, 1), v177, v192, 2);
      v179 = v127;
      v230.columns[0] = v127;
      v230.columns[1] = v175;
      v172 = v128;
      v230.columns[2] = v128;
      v231 = __invert_f3(v230);
      v135 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v214, v231.columns[0].f32[0]), v215, *v231.columns[0].f32, 1), v216, v231.columns[0], 2);
      v231.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v214, v231.columns[1].f32[0]), v215, *v231.columns[1].f32, 1), v216, v231.columns[1], 2);
      v231.columns[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v214, v231.columns[2].f32[0]), v215, *v231.columns[2].f32, 1), v216, v231.columns[2], 2);
      v209 = v135.i32[2];
      v211 = v231.columns[0].i32[2];
      v208 = v135.i64[0];
      v210 = v231.columns[0].i64[0];
      v213 = v231.columns[1].i32[2];
      v212 = v231.columns[1].i64[0];
      [ADUtils calcRotationAngle:&v208];
      v185 = v136;
      v97 = [dataCopy convertExtrinsicsAnglesToDict:?];
      v207 = 0;
      v137 = [dataCopy insertEntryAndCalculate:v97 withWeight:&v207 toResult:v65];
      v99 = v207;
      if (v137)
      {
        goto LABEL_42;
      }

      [dataCopy convertDictToExtrinsicsAngles:v99];
      v181 = v138;
      [ADUtils calcRotationMatrix:?];
      v142 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v179.f32[0]), v140, *v179.f32, 1), v141, v179, 2);
      v143 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v175.f32[0]), v140, *v175.f32, 1), v141, v175, 2);
      v144 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v172.f32[0]), v140, *v172.f32, 1), v141, v172, 2);
      v204.i32[2] = v142.i32[2];
      v205.i32[2] = v143.i32[2];
      v204.i64[0] = v142.i64[0];
      v205.i64[0] = v143.i64[0];
      v206.i32[2] = v144.i32[2];
      v206.i64[0] = v144.i64[0];
      [resultCopy setPearlToColorExtrinsics:{*vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v204, v168.columns[0].f32[0]), v205, *v168.columns[0].f32, 1), v206, v168.columns[0], 2).i64, *vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v204, v168.columns[1].f32[0]), v205, *v168.columns[1].f32, 1), v206, v168.columns[1], 2).i64, *vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v204, v168.columns[2].f32[0]), v205, *v168.columns[2].f32, 1), v206, v168.columns[2], 2).i64, *&v166}];
      [resultCopy setExecuted:1];
      [ADUtils calcRotationAngle:&v214];
      v183 = v145;
      [ADUtils calcRotationAngle:&v204];
      v178 = v146;
      v173 = v204;
      v176 = v205;
      v193 = v206;
      v232.columns[0] = v214;
      v232.columns[1] = v215;
      v232.columns[2] = v216;
      v233 = __invert_f3(v232);
      v147 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v233.columns[0].f32[0]), v176, *v233.columns[0].f32, 1), v193, v233.columns[0], 2);
      v233.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v233.columns[1].f32[0]), v176, *v233.columns[1].f32, 1), v193, v233.columns[1], 2);
      v233.columns[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v233.columns[2].f32[0]), v176, *v233.columns[2].f32, 1), v193, v233.columns[2], 2);
      v199 = v147.i32[2];
      v201 = v233.columns[0].i32[2];
      v198 = v147.i64[0];
      v200 = v233.columns[0].i64[0];
      v203 = v233.columns[1].i32[2];
      v202 = v233.columns[1].i64[0];
      [ADUtils calcRotationAngle:&v198];
      v190 = v148;
      goto LABEL_44;
    }
  }

LABEL_46:

  return v67;
}

- (ADPearlColorInFieldCalibrationInterSessionData)createInterSessionDataWithFactoryPearlToColorTransform:(double)transform currentPearlToColorTransform:(double)colorTransform
{
  v9 = [[ADPearlColorInFieldCalibrationInterSessionData alloc] initWithFactoryPearlToColorTransform:*(self + 40) currentPearlToColorTransform:a2 andFlowType:transform, colorTransform, a5, a6, a7, a8, a9];

  return v9;
}

- (id)createInterSessionDataWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [ADPearlColorInFieldCalibrationInterSessionData alloc];
  deviceName = [(ADPipelineParameters *)self->_pipelineParameters deviceName];
  v7 = [(ADPearlColorInFieldCalibrationInterSessionData *)v5 initWithDictionaryRepresentation:representationCopy andDeviceName:deviceName];

  return v7;
}

- (int64_t)processIntermediateResultsWithBackendFeaturesOutputVector:(const void *)vector frontendEspressoFeaturesInput:(void *)input dimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  featuresOutput = [(ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor *)self->_backendInferenceDesc featuresOutput];
  imageDescriptor = [featuresOutput imageDescriptor];
  v11 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor pixelFormat], 0);

  featuresInput = [(ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor *)self->_frontendInferenceDesc featuresInput];
  imageDescriptor2 = [featuresInput imageDescriptor];
  v14 = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

  if (v11 == 2 && v14 == 2)
  {
    featuresVectorAggregationSize = [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
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
    featuresVectorAggregationSize2 = [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
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
    featuresVectorAggregationSize3 = [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
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
    featuresVectorAggregationSize4 = [(ADPearlColorInFieldCalibrationPipelineParameters *)self->_pipelineParameters featuresVectorAggregationSize];
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

- (BOOL)isPearlFrameValid:(__CVBuffer *)valid
{
  [(ADPearlColorInFieldCalibrationControllerParameters *)self->_controllerParameters thresholdPrecOfValidDepth];
  v5 = [ADPearlColorInFieldCalibrationPipeline isValidDepthAboveThreshold:valid threshold:0 invalid:&self->_validDepthPercentage validDepthPercentage:?];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration pearl controller failed: frame does not have enough valid depth pixels", v7, 2u);
  }

  return v5;
}

- (int64_t)preProcessPearl:(__CVBuffer *)pearl referenceCameraCalibration:(id)calibration pearlCameraCalibration:(id)cameraCalibration reprojectedPointsBuffer:(__CVBuffer *)buffer reprojectedPointsMaskBuffer:(__CVBuffer *)maskBuffer
{
  v174 = *MEMORY[0x277D85DE8];
  calibrationCopy = calibration;
  cameraCalibrationCopy = cameraCalibration;
  LODWORD(cameraCalibration) = [(ADPearlColorInFieldCalibrationPipeline *)self isPearlFrameValid:pearl];
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (cameraCalibration)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration pearl controller pass", buf, 2u);
    }

    if (CVPixelBufferGetPixelFormatType(pearl) == 825437747)
    {
      pixelBuffer = maskBuffer;
      colorInput = [(ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor *)self->_backendInferenceDesc colorInput];
      imageDescriptor = [colorInput imageDescriptor];
      [imageDescriptor sizeForLayout:255];
      v16 = v15;

      networkFlowType = self->_networkFlowType;
      if (networkFlowType != 1)
      {
        if (networkFlowType != 2)
        {
          if (networkFlowType == 3)
          {
            Width = CVPixelBufferGetWidth(pearl);
            Height = CVPixelBufferGetHeight(pearl);
            BytesPerRow = CVPixelBufferGetBytesPerRow(pearl);
            v19 = CVPixelBufferGetWidth(buffer);
            v20 = CVPixelBufferGetHeight(buffer);
            v21 = CVPixelBufferGetBytesPerRow(buffer);
            CVPixelBufferLockBaseAddress(pearl, 1uLL);
            CVPixelBufferLockBaseAddress(buffer, 0);
            if (pixelBuffer)
            {
              CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            }

            BaseAddress = CVPixelBufferGetBaseAddress(pearl);
            v23 = CVPixelBufferGetBaseAddress(buffer);
            v24 = v21 >> 1;
            v25 = 2 * v20 * (v21 >> 1);
            bzero(v23, v25);
            if (pixelBuffer)
            {
              v26 = CVPixelBufferGetBaseAddress(pixelBuffer);
              bzero(v26, v25);
            }

            else
            {
              v26 = 0;
            }

            v61 = v19 / Height;
            v62 = ((v20 - vcvtpd_s64_f64(v61 * Width)) >> 1);
            v63 = ((v20 - v62) - v62);
            if (v63)
            {
              _ZF = v19 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (_ZF)
            {
LABEL_79:
              if (!pixelBuffer)
              {
                goto LABEL_145;
              }

              goto LABEL_144;
            }

            v65 = BytesPerRow >> 1;
            v66 = v24 * v62;
            v67 = &v23[2 * v66];
            if (pixelBuffer)
            {
              v68 = 0;
              v69 = 2 * v24;
              v70 = &v26[2 * v66];
              v71 = 0.0;
              do
              {
                v72 = 0;
                do
                {
                  _D6 = v72 / v61;
                  LOWORD(_D6) = BaseAddress[Width - (v71 / v61) + v65 * _D6];
                  *&_D6 = *&_D6 / 8000.0;
                  __asm { FCVT            H7, S6 }

                  *&v67[2 * v72] = _H7;
                  if (*&_D6 <= 0.0)
                  {
                    v75 = COERCE_SHORT_FLOAT(0);
                  }

                  else
                  {
                    LOWORD(v75) = COERCE_UNSIGNED_INT(1.0);
                  }

                  *&v70[2 * v72++] = v75;
                }

                while (v19 > v72);
                v71 = v71 + 1.0;
                ++v68;
                v70 += v69;
                v67 += v69;
              }

              while (v68 != v63);
              goto LABEL_79;
            }

            if (v19)
            {
              v80 = (v19 - 1) >> 32 == 0;
            }

            else
            {
              v80 = 0;
            }

            v81 = !v80;
            if (v19 < 2)
            {
              v82 = 0;
              v83 = 0.0;
              do
              {
                v84 = 0;
                v85 = 0.0;
                do
                {
                  _D5 = v85 / v61;
                  LOWORD(_D5) = BaseAddress[Width - (v83 / v61) + v65 * (v85 / v61)];
                  *&_D5 = *&_D5 / 8000.0;
                  __asm { FCVT            H5, S5 }

                  *&v67[2 * v84] = LOWORD(_D5);
                  v85 = v85 + 1.0;
                  ++v84;
                }

                while (v84 < v19);
                v83 = v83 + 1.0;
                ++v82;
                v67 += 2 * v24;
              }

              while (v82 != v63);
              goto LABEL_79;
            }

            v133 = 0;
            v134 = v19 & 0x1FFFFFFFELL;
            v135 = v67 + 2;
            v136 = 0.0;
            while (1)
            {
              v137 = &BaseAddress[Width - (v136 / v61)];
              if (v81)
              {
                LODWORD(v138) = 0;
                v139 = v67;
              }

              else
              {
                v140 = 0;
                v141 = v135;
                do
                {
                  _D3 = v140 / v61;
                  _D4 = (v140 + 1) / v61;
                  LOWORD(_D3) = *&v137[2 * v65 * _D3];
                  LOWORD(_D4) = *&v137[2 * v65 * _D4];
                  *&_D3 = *&_D3 / 8000.0;
                  *&_D4 = *&_D4 / 8000.0;
                  __asm
                  {
                    FCVT            H3, S3
                    FCVT            H4, S4
                  }

                  *(v141 - 1) = LOWORD(_D3);
                  *v141 = LOWORD(_D4);
                  v140 += 2;
                  v141 += 2;
                }

                while (v134 != v140);
                if (v19 == v134)
                {
                  goto LABEL_120;
                }

                v139 = &v67[2 * (v19 & 0x1FFFFFFFELL)];
                LODWORD(v138) = v19 & 0xFFFFFFFE;
              }

              do
              {
                _D3 = v138 / v61;
                LOWORD(_D3) = *&v137[2 * v65 * _D3];
                *&_D3 = *&_D3 / 8000.0;
                __asm { FCVT            H3, S3 }

                *v139 = LOWORD(_D3);
                v139 += 2;
                v138 = (v138 + 1);
              }

              while (v19 > v138);
LABEL_120:
              v67 += 2 * v24;
              v136 = v136 + 1.0;
              ++v133;
              v135 += v24;
              if (v133 == v63)
              {
                goto LABEL_79;
              }
            }
          }

          [cameraCalibrationCopy referenceDimensions];
          if (v16 <= v38)
          {
            v27 = [(ADReprojection *)self->_pearlReprojector warpDepth:pearl srcCalibration:cameraCalibrationCopy dstCalibration:calibrationCopy poseTransform:buffer warpedDepth:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)];
            goto LABEL_146;
          }

          pixelBuffer = 0;
        }

        v39 = CVPixelBufferGetWidth(pearl);
        v40 = CVPixelBufferGetHeight(pearl);
        v41 = CVPixelBufferGetBytesPerRow(pearl);
        v42 = CVPixelBufferGetWidth(buffer);
        v43 = CVPixelBufferGetHeight(buffer);
        v44 = CVPixelBufferGetBytesPerRow(buffer);
        v45 = v42 / v40;
        if (vabdd_f64(v45, v43 / v39) > 0.01)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            v167 = v39;
            v168 = 2048;
            v169 = v40;
            v170 = 2048;
            v171 = v42;
            v172 = 2048;
            v173 = v43;
            _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration: Rotate depth: resolutions different (%lux%lu, %lux%lu)", buf, 0x2Au);
          }

          v27 = -22957;
          goto LABEL_146;
        }

        v46 = v44;
        CVPixelBufferLockBaseAddress(pearl, 1uLL);
        CVPixelBufferLockBaseAddress(buffer, 0);
        if (pixelBuffer)
        {
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        }

        v47 = CVPixelBufferGetBaseAddress(pearl);
        v48 = CVPixelBufferGetBaseAddress(buffer);
        v49 = v41 >> 1;
        v50 = v46 >> 1;
        v51 = pixelBuffer;
        if (pixelBuffer)
        {
          v52 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (!v43 || !v42)
          {
            goto LABEL_144;
          }

          LODWORD(v53) = 0;
          v54 = 2 * v50;
          v51 = pixelBuffer;
          do
          {
            v55 = 0;
            do
            {
              _D3 = v55 / v45;
              LOWORD(_D3) = v47[v39 - (v53 / v45) + v49 * _D3];
              *&_D3 = *&_D3 / 8000.0;
              __asm { FCVT            H4, S3 }

              *&v48[2 * v55] = _H4;
              if (*&_D3 <= 0.0)
              {
                v60 = COERCE_SHORT_FLOAT(0);
              }

              else
              {
                LOWORD(v60) = COERCE_UNSIGNED_INT(1.0);
              }

              v52[v55++] = v60;
            }

            while (v42 > v55);
            v53 = (v53 + 1);
            v52 = (v52 + v54);
            v48 += v54;
          }

          while (v43 > v53);
        }

        else if (v43 && v42)
        {
          if (v42 > 1)
          {
            if (!v42 || (v145 = (v42 - 1) >> 32) != 0)
            {
              LODWORD(v155) = 0;
              do
              {
                v156 = 0;
                do
                {
                  _D1 = v156 / v45;
                  LOWORD(_D1) = v47[v39 - (v155 / v45) + v49 * _D1];
                  *&_D1 = *&_D1 / 8000.0;
                  __asm { FCVT            H1, S1 }

                  *&v48[2 * v156++] = LOWORD(_D1);
                }

                while (v42 > v156);
                v155 = (v155 + 1);
                v48 += 2 * v50;
              }

              while (v43 > v155);
            }

            else
            {
              v146 = v42 & 0x1FFFFFFFELL;
              do
              {
                v147 = 0;
                v148 = &v47[v39 - (v145 / v45)];
                do
                {
                  _D2 = (v147 + 1);
                  _D1 = _D2 / v45;
                  LOWORD(_D1) = *&v148[2 * v49 * (v147 / v45)];
                  LOWORD(_D2) = *&v148[2 * v49 * (_D2 / v45)];
                  *&_D1 = *&_D1 / 8000.0;
                  *&_D2 = *&_D2 / 8000.0;
                  v151 = &v48[2 * v147];
                  __asm
                  {
                    FCVT            H1, S1
                    FCVT            H2, S2
                  }

                  *v151 = LOWORD(_D1);
                  *(v151 + 1) = LOWORD(_D2);
                  v147 += 2;
                }

                while (v146 != v147);
                if (v42 != v146)
                {
                  v152 = 2 * (v42 & 0x1FFFFFFFELL);
                  LODWORD(v153) = v42 & 0xFFFFFFFE;
                  do
                  {
                    _D1 = v153 / v45;
                    LOWORD(_D1) = *&v148[2 * v49 * _D1];
                    *&_D1 = *&_D1 / 8000.0;
                    __asm { FCVT            H1, S1 }

                    *&v48[v152] = LOWORD(_D1);
                    v153 = (v153 + 1);
                    v152 += 2;
                  }

                  while (v42 > v153);
                }

                v145 = (v145 + 1);
                v48 += 2 * v50;
              }

              while (v43 > v145);
            }
          }

          else
          {
            LODWORD(v76) = 0;
            do
            {
              v77 = 0;
              v78 = 0.0;
              do
              {
                _D3 = v78 / v45;
                LOWORD(_D3) = v47[v39 - (v76 / v45) + v49 * (v78 / v45)];
                *&_D3 = *&_D3 / 8000.0;
                __asm { FCVT            H3, S3 }

                *&v48[2 * v77] = LOWORD(_D3);
                v78 = v78 + 1.0;
                ++v77;
              }

              while (v77 < v42);
              v76 = (v76 + 1);
              v48 += 2 * v50;
            }

            while (v43 > v76);
          }
        }

        if (!v51)
        {
LABEL_145:
          CVPixelBufferUnlockBaseAddress(buffer, 0);
          CVPixelBufferUnlockBaseAddress(pearl, 1uLL);
          v27 = 0;
          goto LABEL_146;
        }

LABEL_144:
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        goto LABEL_145;
      }

      v28 = CVPixelBufferGetWidth(pearl);
      v29 = CVPixelBufferGetHeight(pearl);
      v162 = CVPixelBufferGetBytesPerRow(pearl);
      v30 = CVPixelBufferGetWidth(buffer);
      v31 = CVPixelBufferGetHeight(buffer);
      v32 = CVPixelBufferGetBytesPerRow(buffer);
      v33 = CVPixelBufferGetWidth(pixelBuffer);
      v34 = CVPixelBufferGetHeight(pixelBuffer);
      v35 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      v27 = -22950;
      if (v30 != v33)
      {
        goto LABEL_146;
      }

      if (v31 != v34)
      {
        goto LABEL_146;
      }

      v36 = v32 >> 1;
      if (v32 >> 1 != v35 >> 1)
      {
        goto LABEL_146;
      }

      if (v30 <= v28)
      {
        v37 = 0;
        if (v30 >= v28)
        {
          v160 = 0;
        }

        else
        {
          v160 = (v28 - v30) >> 1;
        }
      }

      else
      {
        v160 = 0;
        v37 = (v30 - v28) >> 1;
      }

      v87 = v29;
      _CF = v31 >= v29;
      if (v31 <= v29)
      {
        v90 = 0;
        if (_CF)
        {
          v89 = 0;
        }

        else
        {
          v89 = (v87 - v31) >> 1;
        }
      }

      else
      {
        v89 = 0;
        v90 = (v31 - v29) >> 1;
        v31 = v87;
      }

      CVPixelBufferLockBaseAddress(pearl, 1uLL);
      CVPixelBufferLockBaseAddress(buffer, 0);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      v91 = CVPixelBufferGetBaseAddress(pearl);
      v92 = CVPixelBufferGetBaseAddress(buffer);
      v93 = CVPixelBufferGetBaseAddress(pixelBuffer);
      if (!v31 || !v30)
      {
        goto LABEL_144;
      }

      v96 = v162 >> 1;
      v97 = 2 * v90 * v36;
      v98 = &v92[2 * v37 + v97];
      v99 = &v93[2 * v37 + v97];
      if (v30)
      {
        v100 = (v30 - 1) >> 32 == 0;
      }

      else
      {
        v100 = 0;
      }

      v101 = !v100;
      if (v30 < 8)
      {
        v102 = 0;
        v103 = &v91[2 * v89 * v96 + 2 * v160];
        v104 = 2 * v96;
        v105 = 2 * v36;
        do
        {
          v106 = 0;
          do
          {
            LOWORD(_D3) = *&v103[2 * v106];
            _D3 = *&_D3 / 8000.0;
            *&_D3 = _D3;
            __asm { FCVT            H4, S3 }

            v98[v106] = _H4;
            if (*&_D3 <= 0.0)
            {
              v108 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v108) = COERCE_UNSIGNED_INT(1.0);
            }

            v99[v106++] = v108;
          }

          while (v106 < v30);
          ++v102;
          v103 += v104;
          v99 = (v99 + v105);
          v98 = (v98 + v105);
        }

        while (v31 > v102);
        goto LABEL_144;
      }

      v109 = 0;
      v110 = &v91[2 * v160];
      v111 = v93 - v92;
      v112 = v30 & 0x1FFFFFFF8;
      v113 = &v91[2 * v89 * v96 + 2 * v160];
      v114 = 2 * v36;
      v115 = vdupq_n_s64(0x40BF400000000000uLL);
      while ((v101 & 1) == 0 && v111 >= 0x10)
      {
        v123 = 0;
        v118 = &v99[v112];
        do
        {
          v124 = *&v113[v123 * 2];
          v125 = vmovl_high_u16(v124);
          v126.i64[0] = v125.u32[0];
          v126.i64[1] = v125.u32[1];
          v127 = vcvtq_f64_u64(v126);
          v126.i64[0] = v125.u32[2];
          v126.i64[1] = v125.u32[3];
          v128 = vcvtq_f64_u64(v126);
          v129 = vmovl_u16(*v124.i8);
          v126.i64[0] = v129.u32[0];
          v126.i64[1] = v129.u32[1];
          v130 = vcvtq_f64_u64(v126);
          v126.i64[0] = v129.u32[2];
          v126.i64[1] = v129.u32[3];
          v131 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v127, v115)), vdivq_f64(v128, v115));
          v132 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v130, v115)), vdivq_f64(vcvtq_f64_u64(v126), v115));
          *&v98[v123] = vcvt_hight_f16_f32(vcvt_f16_f32(v132), v131);
          _Q4 = vcvtq_f16_u16(vmovl_u8(vand_s8(vmovn_s16(vuzp1q_s16(vcgtzq_f32(v132), vcgtzq_f32(v131))), 0x101010101010101)));
          *&v99[v123] = _Q4;
          v123 += 8;
        }

        while (8 * ((v30 >> 3) & 0x3FFFFFFF) != v123);
        if (v30 != (v30 & 0x1FFFFFFF8))
        {
          v119 = &v98[v112];
          v116 = v30 & 0x1FFFFFFF8;
          v117 = v30 & 0xFFFFFFF8;
LABEL_109:
          v120 = v117 + 1;
          do
          {
            _Q4.i16[0] = *&v110[2 * (v109 + v89) * v96 + 2 * v116];
            *_Q4.i64 = _Q4.u64[0] / 8000.0;
            *_Q4.i32 = *_Q4.i64;
            __asm { FCVT            H5, S4 }

            *v119++ = _H5;
            if (*_Q4.i32 <= 0.0)
            {
              v122 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v122) = COERCE_UNSIGNED_INT(1.0);
            }

            *v118++ = v122;
            v116 = v120++;
          }

          while (v30 > v116);
        }

        v98 = (v98 + v114);
        v99 = (v99 + v114);
        ++v109;
        v113 += 2 * v96;
        if (v31 <= v109)
        {
          goto LABEL_144;
        }
      }

      v116 = 0;
      v117 = 0;
      v118 = v99;
      v119 = v98;
      goto LABEL_109;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Pearl depth frame invalid format", buf, 2u);
    }

    v27 = -22956;
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration pearl controller fail", buf, 2u);
    }

    v27 = -22964;
  }

LABEL_146:

  return v27;
}

- (int64_t)preProcessColor:(__CVBuffer *)color processedColor:(__CVBuffer *)processedColor referenceCameraCalibration:(id)calibration colorCameraCalibration:(id)cameraCalibration
{
  v31 = *MEMORY[0x277D85DE8];
  calibrationCopy = calibration;
  cameraCalibrationCopy = cameraCalibration;
  kdebug_trace();
  PixelFormatType = CVPixelBufferGetPixelFormatType(processedColor);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(color))
  {
    goto LABEL_2;
  }

  colorInputProcessingSession = self->_colorInputProcessingSession;
  if (!colorInputProcessingSession)
  {
    CVPixelBufferGetPixelFormatType(color);
    Width = CVPixelBufferGetWidth(color);
    Height = CVPixelBufferGetHeight(color);
    CVPixelBufferGetPixelFormatType(processedColor);
    networkFlowType = self->_networkFlowType;
    if (networkFlowType < 3)
    {
      CVPixelBufferGetWidth(processedColor);
      CVPixelBufferGetHeight(processedColor);
      colorInput = [(ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor *)self->_backendInferenceDesc colorInput];
      imageDescriptor = [colorInput imageDescriptor];
      [imageDescriptor sizeForLayout:255];

      PixelBufferUtilsSession::createCropScaleConvertRotateSession();
    }

    if (networkFlowType == 3)
    {
      CVPixelBufferGetWidth(processedColor);
      CVPixelBufferGetHeight(processedColor);
      v20 = Width / Height;
      if (fabs(v20 + -0.75) < 0.01 || fabs(v20 + -0.5625) < 0.01)
      {
        colorInput2 = [(ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor *)self->_backendInferenceDesc colorInput];
        imageDescriptor2 = [colorInput2 imageDescriptor];
        [imageDescriptor2 sizeForLayout:255];

        PixelBufferUtilsSession::createCropScaleConvertRotateSession();
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 67109376;
      v28 = Width;
      v29 = 1024;
      v30 = Height;
      v24 = MEMORY[0x277D86220];
      v25 = "PearlColorInfieldCalibration: unexpected resolution (%dx%d)";
      v26 = 14;
      goto LABEL_20;
    }

    colorInputProcessingSession = self->_colorInputProcessingSession;
    if (!colorInputProcessingSession)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        v13 = -22950;
        goto LABEL_16;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
      v25 = "PearlColorInfieldCalibration unable to create VT session";
      v26 = 2;
LABEL_20:
      _os_log_error_impl(&dword_2402F6000, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
      goto LABEL_15;
    }
  }

  if (self->_networkFlowType > 3u || (PixelBufferUtilsSession::run(colorInputProcessingSession, color, processedColor) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_2:
  v13 = 0;
LABEL_16:
  kdebug_trace();

  return v13;
}

- (id)createReferenceCameraForColor:(__n128)color withExtrinsics:(__n128)extrinsics
{
  v8 = a7;
  v9 = v8;
  if (v8 && *(self + 40) <= 3u)
  {
    v10 = [v8 mutableCopy];
    colorInput = [*(self + 24) colorInput];
    imageDescriptor = [colorInput imageDescriptor];
    [imageDescriptor sizeForLayout:255];
    v14 = v13;
    v16 = v15;

    [v10 referenceDimensions];
    v19 = v18 / (v16 / v14);
    if (v17 < v19)
    {
      v19 = v17;
    }

    [v10 crop:{(v17 - v19) * 0.5, (v18 - v16 / v14 * v19) * 0.5, *&a2, *&color, *&extrinsics, *&a5}];
    [v10 scale:{v14, v16}];
    *(self + 224) = v31;
    *(self + 240) = v33;
    *(self + 256) = v35;
    *(self + 272) = v37;
    [v10 intrinsicMatrix];
    *(self + 44) = v20;
    [v9 cameraToPlatformTransform];
    *(self + 56) = v21;
    *(self + 48) = v22;
    *(self + 72) = v23;
    *(self + 88) = v24;
    *(self + 64) = v25;
    *(self + 80) = v26;
    *(self + 104) = v27;
    *(self + 96) = v28;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updatePearlCamera:(id)camera
{
  objc_storeStrong(&self->_pearlCalib, camera);
  cameraCopy = camera;
  [cameraCopy cameraToPlatformTransform];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  *&self->_anon_70[8] = DWORD2(v10);
  *self->_anon_70 = v10;
  *&self->_anon_70[24] = DWORD2(v11);
  *&self->_anon_70[40] = DWORD2(v12);
  *&self->_anon_70[16] = v11;
  *&self->_anon_70[32] = v12;
  *&self->_anon_70[56] = DWORD2(v13);
  *&self->_anon_70[48] = v13;
}

- (void)dealloc
{
  [(ADPearlColorInFieldCalibrationPipeline *)self deallocMemory];
  v3.receiver = self;
  v3.super_class = ADPearlColorInFieldCalibrationPipeline;
  [(ADPearlColorInFieldCalibrationPipeline *)&v3 dealloc];
}

- (void)deallocMemory
{
  colorInputProcessingSession = self->_colorInputProcessingSession;
  if (colorInputProcessingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorInputProcessingSession);
    MEMORY[0x245CBFCB0]();
  }

  self->_colorInputProcessingSession = 0;
}

- (ADPearlColorInFieldCalibrationPipeline)initWithParameters:(id)parameters espressoEngine:(unint64_t)engine
{
  parametersCopy = parameters;
  v34 = 335685188;
  v35 = 0u;
  v36 = 0u;
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

  _os_log_impl(&dword_2402F6000, v8, v9, "Pearl Color In-Field calibration pipeline init for", buf, 2u);
LABEL_7:
  v32.receiver = self;
  v32.super_class = ADPearlColorInFieldCalibrationPipeline;
  v10 = [(ADPearlColorInFieldCalibrationPipeline *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_27;
  }

  objc_storeStrong(&v10->_pipelineParameters, parameters);
  deviceName = [(ADPipelineParameters *)v11->_pipelineParameters deviceName];
  if ([deviceName hasPrefix:@"J7"] & 1) != 0 || (objc_msgSend(deviceName, "hasPrefix:", @"J8"))
  {
    v13 = 1;
  }

  else if ([deviceName hasPrefix:@"V59"])
  {
    v13 = 2;
  }

  else if ([deviceName hasPrefix:@"V5"])
  {
    v13 = 3;
  }

  else if ([deviceName hasPrefix:@"D23"])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  v11->_networkFlowType = v13;
  networkFlowType = v11->_networkFlowType;
  if (networkFlowType > 1)
  {
    if (networkFlowType == 2)
    {
      v18 = [ADNetworkProvider providerForNetwork:@"NuCoReNetBackend_V59"];
      v19 = @"NuCoReNetFrontend_V59";
    }

    else
    {
      if (networkFlowType != 3)
      {
        goto LABEL_24;
      }

      v18 = [ADNetworkProvider providerForNetwork:@"NuCoReNetBackend_V5x"];
      v19 = @"NuCoReNetFrontend_V5x";
    }
  }

  else
  {
    if (networkFlowType)
    {
      if (networkFlowType != 1)
      {
        goto LABEL_24;
      }

      v15 = [ADNetworkProvider providerForNetwork:@"NuCoReNetBackend" espressoEngine:engine];
      backendNetworkProvider = v11->_backendNetworkProvider;
      v11->_backendNetworkProvider = v15;

      v17 = [ADNetworkProvider providerForNetwork:@"NuCoReNetFrontend" espressoEngine:engine];
      goto LABEL_23;
    }

    v18 = [ADNetworkProvider providerForNetwork:@"RGBPNetSMPBackend"];
    v19 = @"RGBPNetSMPFrontend";
  }

  v20 = v11->_backendNetworkProvider;
  v11->_backendNetworkProvider = v18;

  v17 = [ADNetworkProvider providerForNetwork:v19];
LABEL_23:
  frontendNetworkProvider = v11->_frontendNetworkProvider;
  v11->_frontendNetworkProvider = v17;

LABEL_24:
  if (!v11->_backendNetworkProvider || !v11->_frontendNetworkProvider)
  {
    v30 = 0;
    goto LABEL_29;
  }

  v22 = [[ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor alloc] initWithNetworkProvider:v11->_backendNetworkProvider espressoEngine:engine networkFlowType:v11->_networkFlowType];
  backendInferenceDesc = v11->_backendInferenceDesc;
  v11->_backendInferenceDesc = v22;

  v24 = [[ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor alloc] initWithNetworkProvider:v11->_frontendNetworkProvider espressoEngine:engine networkFlowType:v11->_networkFlowType];
  frontendInferenceDesc = v11->_frontendInferenceDesc;
  v11->_frontendInferenceDesc = v24;

  v26 = [objc_alloc(MEMORY[0x277CED110]) initWithStreakingInfill:0];
  pearlReprojector = v11->_pearlReprojector;
  v11->_pearlReprojector = v26;

  [(ADReprojection *)v11->_pearlReprojector setFullPassReprojectionAllowed:1];
  v28 = objc_opt_new();
  controllerParameters = v11->_controllerParameters;
  v11->_controllerParameters = v28;

LABEL_27:
  v30 = v11;
LABEL_29:
  kdebug_trace();

  return v30;
}

- (ADPearlColorInFieldCalibrationPipeline)init
{
  self->_colorInputProcessingSession = 0;
  v3 = objc_opt_new();
  v4 = [(ADPearlColorInFieldCalibrationPipeline *)self initWithParameters:v3 espressoEngine:4];

  return v4;
}

+ (BOOL)isColorFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata
{
  v25 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  defaults = [objc_opt_class() defaults];
  v6 = [defaults integerForKey:kADDeviceConfigurationKeyPearlColorMinimumLuxLevel];

  v7 = [metadataCopy valueForKey:@"AEStable"];
  v8 = [metadataCopy valueForKey:@"LuxLevel"];
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    LOWORD(v21) = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: AE stable unknown";
    goto LABEL_10;
  }

  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    LOWORD(v21) = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: Lux level unknown";
    goto LABEL_10;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      intValue = [v7 intValue];
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInfieldCalibration: AE is stable: %d", &v21, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = 67109120;
    intValue = [v7 intValue];
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADPearlColorInfieldCalibration: AE is stable: %d", &v21, 8u);
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      intValue2 = [v9 intValue];
      v21 = 67109120;
      intValue = intValue2;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInfieldCalibration: Lux level: %d", &v21, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    intValue3 = [v9 intValue];
    v21 = 67109120;
    intValue = intValue3;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADPearlColorInfieldCalibration: Lux level: %d", &v21, 8u);
  }

  if (v6 > [v9 intValue])
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        intValue4 = [v9 intValue];
        v21 = 67109376;
        intValue = intValue4;
        v23 = 2048;
        v24 = v6;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: Lux level too low (%d < %ld)", &v21, 0x12u);
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      intValue5 = [v9 intValue];
      v21 = 67109376;
      intValue = intValue5;
      v23 = 2048;
      v24 = v6;
      v16 = MEMORY[0x277D86220];
      v17 = "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: Lux level too low (%d < %ld)";
      v18 = 18;
LABEL_33:
      _os_log_debug_impl(&dword_2402F6000, v16, OS_LOG_TYPE_DEBUG, v17, &v21, v18);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (![v7 intValue])
  {
    if (ADDebugUtilsADVerboseLogsEnabled != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        v16 = MEMORY[0x277D86220];
        v17 = "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: AE not stable";
        v18 = 2;
        goto LABEL_33;
      }

LABEL_30:
      v14 = 0;
      goto LABEL_31;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    LOWORD(v21) = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "ADPearlColorInFieldCalibration: color buffer not valid for algorithm: AE not stable";
LABEL_10:
    _os_log_impl(&dword_2402F6000, v10, OS_LOG_TYPE_DEFAULT, v11, &v21, 2u);
    goto LABEL_30;
  }

  v14 = 1;
LABEL_31:

  return v14;
}

+ (BOOL)isPearlFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = objc_alloc_init(ADPearlColorInFieldCalibrationControllerParameters);
  LOBYTE(valid) = [ADPearlColorInFieldCalibrationPipeline isPearlFrameValid:valid withMetadata:metadataCopy andPipelineParameters:v6];

  return valid;
}

+ (BOOL)isPearlFrameValid:(__CVBuffer *)valid withMetadata:(id)metadata andPipelineParameters:(id)parameters
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  parametersCopy = parameters;
  v9 = [metadataCopy valueForKey:@"RegType"];
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      v16 = MEMORY[0x277D86220];
      v17 = "ADPearlColorInFieldCalibration: pearl buffer not valid for algorithm: registration mode unknown";
      v18 = 2;
LABEL_10:
      _os_log_impl(&dword_2402F6000, v16, OS_LOG_TYPE_DEFAULT, v17, v22, v18);
    }

LABEL_11:
    v20 = 0;
    goto LABEL_17;
  }

  intValue = [v9 intValue];
  if (intValue != 3 && intValue != 27)
  {
    v19 = intValue;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 67109120;
      v22[1] = v19;
      v16 = MEMORY[0x277D86220];
      v17 = "ADPearlColorInFieldCalibration: pearl buffer not valid for algorithm: unregistered mode (%d)";
      v18 = 8;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = CVPixelBufferGetAttributes();
  v13 = [v12 objectForKey:@"FixedPointInvalidValue"];
  v14 = v13;
  if (v13)
  {
    intValue2 = [v13 intValue];
  }

  else
  {
    intValue2 = 0;
  }

  [parametersCopy thresholdPrecOfValidDepth];
  v20 = [ADPearlColorInFieldCalibrationPipeline isValidDepthAboveThreshold:valid threshold:intValue2 invalid:0 validDepthPercentage:?];
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration pearl controller failed: frame does not have enough valid depth pixels", v22, 2u);
  }

LABEL_17:
  return v20;
}

+ (BOOL)isValidDepthAboveThreshold:(__CVBuffer *)threshold threshold:(float)a4 invalid:(unsigned __int16)invalid validDepthPercentage:(float *)percentage
{
  invalidCopy = invalid;
  Width = CVPixelBufferGetWidth(threshold);
  Height = CVPixelBufferGetHeight(threshold);
  BytesPerRow = CVPixelBufferGetBytesPerRow(threshold);
  CVPixelBufferLockBaseAddress(threshold, 1uLL);
  v110 = ((Height * Width) * a4);
  if (Height)
  {
    if (Width)
    {
      v106 = Width & 0xFFFFFFFFFFFFFFF0;
      v111 = vdupq_n_s16(invalidCopy);
      percentageCopy3 = percentage;
      v109 = Width & 0xFFFFFFFFFFFFFFFCLL;
      v104 = Height * Width;
      if (percentage)
      {
        v13 = 0;
        v14 = 0;
        if (Width >= 4)
        {
          v15 = 0;
          v16 = 16;
          v107 = vdupq_n_s64(1uLL);
          while (1)
          {
            BaseAddress = CVPixelBufferGetBaseAddress(threshold);
            if (Width >= 0x10)
            {
              v22 = 0uLL;
              v23 = v14;
              v24 = &BaseAddress[v16];
              v25 = Width & 0xFFFFFFFFFFFFFFF0;
              v26 = Width & 0xFFFFFFFFFFFFFFF0;
              v27 = 0uLL;
              v28 = 0uLL;
              v29 = 0uLL;
              v30 = 0uLL;
              v31 = 0uLL;
              v32 = 0uLL;
              v20 = *v111.i8;
              do
              {
                v33 = vmvnq_s8(vceqq_s16(v24[-1], v111));
                v34 = vmovl_u16(*v33.i8);
                v35.i64[0] = v34.u32[0];
                v35.i64[1] = v34.u32[1];
                v36 = vdupq_n_s64(1uLL);
                v37 = vandq_s8(v35, v36);
                v35.i64[0] = v34.u32[2];
                v35.i64[1] = v34.u32[3];
                v38 = vandq_s8(v35, v36);
                v39 = vmovl_high_u16(v33);
                v35.i64[0] = v39.u32[0];
                v35.i64[1] = v39.u32[1];
                v40 = vandq_s8(v35, v36);
                v35.i64[0] = v39.u32[2];
                v35.i64[1] = v39.u32[3];
                v41 = vandq_s8(v35, v36);
                v42 = vmvnq_s8(vceqq_s16(*v24, v111));
                v43 = vmovl_u16(*v42.i8);
                v35.i64[0] = v43.u32[0];
                v35.i64[1] = v43.u32[1];
                v44 = vandq_s8(v35, v36);
                v35.i64[0] = v43.u32[2];
                v35.i64[1] = v43.u32[3];
                v45 = vandq_s8(v35, v36);
                v46 = vmovl_high_u16(v42);
                v35.i64[0] = v46.u32[0];
                v35.i64[1] = v46.u32[1];
                v47 = vandq_s8(v35, v36);
                v35.i64[0] = v46.u32[2];
                v35.i64[1] = v46.u32[3];
                v28 = vaddq_s64(v28, v41);
                v27 = vaddq_s64(v27, v40);
                v22 = vaddq_s64(v22, v38);
                v23 = vaddq_s64(v23, v37);
                v32 = vaddq_s64(v32, vandq_s8(v35, v36));
                v31 = vaddq_s64(v31, v47);
                v30 = vaddq_s64(v30, v45);
                v29 = vaddq_s64(v29, v44);
                v24 += 2;
                v26 -= 16;
              }

              while (v26);
              v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v23), vaddq_s64(v31, v27)), vaddq_s64(vaddq_s64(v30, v22), vaddq_s64(v32, v28))));
              if (Width == v106)
              {
                goto LABEL_16;
              }

              v19 = Width & 0xFFFFFFFFFFFFFFF0;
              v21 = v107;
              if ((Width & 0xC) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v19 = 0;
              v20 = *v111.i8;
              v21 = v107;
            }

            v48 = 0uLL;
            v49 = v14;
            v50 = v19 - (Width & 0xFFFFFFFFFFFFFFFCLL);
            v51 = &BaseAddress[2 * v19 + v13];
            do
            {
              v52 = *v51++;
              v53 = vmovl_u16(vmvn_s8(vceq_s16(v52, v20)));
              v54.i64[0] = v53.u32[0];
              v54.i64[1] = v53.u32[1];
              v55 = vandq_s8(v54, v21);
              v54.i64[0] = v53.u32[2];
              v54.i64[1] = v53.u32[3];
              v48 = vaddq_s64(v48, vandq_s8(v54, v21));
              v49 = vaddq_s64(v49, v55);
              v50 += 4;
            }

            while (v50);
            v14 = vaddvq_s64(vaddq_s64(v49, v48));
            v25 = Width & 0xFFFFFFFFFFFFFFFCLL;
            if (Width != v109)
            {
LABEL_26:
              v56 = Width - v25;
              v57 = &BaseAddress[2 * v25];
              do
              {
                if (*&v57[v13] != invalidCopy)
                {
                  ++v14;
                }

                v57 += 2;
                --v56;
              }

              while (v56);
            }

LABEL_16:
            ++v15;
            v16 += BytesPerRow;
            v13 += BytesPerRow;
            if (v15 == Height)
            {
              goto LABEL_68;
            }
          }
        }

        do
        {
          v17 = CVPixelBufferGetBaseAddress(threshold);
          if (*&v17[v13] != invalidCopy)
          {
            ++v14;
          }

          if (Width != 1)
          {
            if (*&v17[v13 + 2] != invalidCopy)
            {
              ++v14;
            }

            if (Width != 2 && *&v17[v13 + 4] != invalidCopy)
            {
              ++v14;
            }
          }

          v13 += BytesPerRow;
          --Height;
        }

        while (Height);
        goto LABEL_68;
      }

      v58 = 0;
      v14 = 0;
      if (Width >= 4)
      {
        v59 = 0;
        v60 = 16;
        v108 = vdupq_n_s64(1uLL);
        while (1)
        {
          if (v14 >= v110)
          {
            goto LABEL_35;
          }

          v62 = CVPixelBufferGetBaseAddress(threshold);
          if (Width >= 0x10)
          {
            v66 = 0uLL;
            v67 = v14;
            v68 = &v62[v60];
            v69 = Width & 0xFFFFFFFFFFFFFFF0;
            v70 = Width & 0xFFFFFFFFFFFFFFF0;
            v71 = 0uLL;
            v72 = 0uLL;
            v73 = 0uLL;
            v74 = 0uLL;
            v75 = 0uLL;
            v76 = 0uLL;
            v64 = *v111.i8;
            do
            {
              v77 = vmvnq_s8(vceqq_s16(v68[-1], v111));
              v78 = vmovl_u16(*v77.i8);
              v79.i64[0] = v78.u32[0];
              v79.i64[1] = v78.u32[1];
              v80 = vdupq_n_s64(1uLL);
              v81 = vandq_s8(v79, v80);
              v79.i64[0] = v78.u32[2];
              v79.i64[1] = v78.u32[3];
              v82 = vandq_s8(v79, v80);
              v83 = vmovl_high_u16(v77);
              v79.i64[0] = v83.u32[0];
              v79.i64[1] = v83.u32[1];
              v84 = vandq_s8(v79, v80);
              v79.i64[0] = v83.u32[2];
              v79.i64[1] = v83.u32[3];
              v85 = vandq_s8(v79, v80);
              v86 = vmvnq_s8(vceqq_s16(*v68, v111));
              v87 = vmovl_u16(*v86.i8);
              v79.i64[0] = v87.u32[0];
              v79.i64[1] = v87.u32[1];
              v88 = vandq_s8(v79, v80);
              v79.i64[0] = v87.u32[2];
              v79.i64[1] = v87.u32[3];
              v89 = vandq_s8(v79, v80);
              v90 = vmovl_high_u16(v86);
              v79.i64[0] = v90.u32[0];
              v79.i64[1] = v90.u32[1];
              v91 = vandq_s8(v79, v80);
              v79.i64[0] = v90.u32[2];
              v79.i64[1] = v90.u32[3];
              v72 = vaddq_s64(v72, v85);
              v71 = vaddq_s64(v71, v84);
              v66 = vaddq_s64(v66, v82);
              v67 = vaddq_s64(v67, v81);
              v76 = vaddq_s64(v76, vandq_s8(v79, v80));
              v75 = vaddq_s64(v75, v91);
              v74 = vaddq_s64(v74, v89);
              v73 = vaddq_s64(v73, v88);
              v68 += 2;
              v70 -= 16;
            }

            while (v70);
            v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v73, v67), vaddq_s64(v75, v71)), vaddq_s64(vaddq_s64(v74, v66), vaddq_s64(v76, v72))));
            if (Width == v106)
            {
              goto LABEL_49;
            }

            v63 = Width & 0xFFFFFFFFFFFFFFF0;
            v65 = v108;
            if ((Width & 0xC) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v63 = 0;
            v64 = *v111.i8;
            v65 = v108;
          }

          v92 = 0uLL;
          v93 = v14;
          v94 = v63 - (Width & 0xFFFFFFFFFFFFFFFCLL);
          v95 = &v62[2 * v63 + v58];
          do
          {
            v96 = *v95++;
            v97 = vmovl_u16(vmvn_s8(vceq_s16(v96, v64)));
            v98.i64[0] = v97.u32[0];
            v98.i64[1] = v97.u32[1];
            v99 = vandq_s8(v98, v65);
            v98.i64[0] = v97.u32[2];
            v98.i64[1] = v97.u32[3];
            v92 = vaddq_s64(v92, vandq_s8(v98, v65));
            v93 = vaddq_s64(v93, v99);
            v94 += 4;
          }

          while (v94);
          v14 = vaddvq_s64(vaddq_s64(v93, v92));
          v69 = Width & 0xFFFFFFFFFFFFFFFCLL;
          if (Width != v109)
          {
LABEL_60:
            v100 = Width - v69;
            v101 = &v62[2 * v69];
            do
            {
              if (*&v101[v58] != invalidCopy)
              {
                ++v14;
              }

              v101 += 2;
              --v100;
            }

            while (v100);
          }

LABEL_49:
          ++v59;
          v60 += BytesPerRow;
          v58 += BytesPerRow;
          if (v59 == Height)
          {
            goto LABEL_68;
          }
        }
      }

      while (v14 < v110)
      {
        v61 = CVPixelBufferGetBaseAddress(threshold);
        if (*&v61[v58] != invalidCopy)
        {
          ++v14;
        }

        if (Width != 1)
        {
          if (*&v61[v58 + 2] != invalidCopy)
          {
            ++v14;
          }

          if (Width != 2 && *&v61[v58 + 4] != invalidCopy)
          {
            ++v14;
          }
        }

        v58 += BytesPerRow;
        if (!--Height)
        {
          goto LABEL_68;
        }
      }

LABEL_35:
      CVPixelBufferUnlockBaseAddress(threshold, 0);
      return v14 >= v110;
    }

    if (!percentage && !v110)
    {
      v14 = 0;
      goto LABEL_35;
    }

    v104 = 0;
    percentageCopy3 = percentage;
    do
    {
      CVPixelBufferGetBaseAddress(threshold);
      --Height;
    }

    while (Height);
  }

  else
  {
    v104 = 0;
    percentageCopy3 = percentage;
  }

  v14 = 0;
LABEL_68:
  CVPixelBufferUnlockBaseAddress(threshold, 0);
  if (percentageCopy3)
  {
    v102 = v14 * 100.0 / v104;
    *percentageCopy3 = v102;
  }

  return v14 >= v110;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyPearlColorMinimumLuxLevel;
    v7[0] = &unk_28524A848;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADPearlColorInFieldCalibrationPipeline defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[142];

  return v3;
}

@end