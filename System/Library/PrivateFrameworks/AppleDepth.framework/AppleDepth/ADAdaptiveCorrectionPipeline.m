@interface ADAdaptiveCorrectionPipeline
+ (CalModel)convertToInternalCalModel:(SEL)a3;
+ (double)meanFundamentalEpipolarErrorForCalModel:(const CalModel *)a3 xyPointsTele:(const double *)a4 xyPointsWide:(const double *)a5 numPoints:(int)a6;
+ (float64x2_t)convertExtrinsics:(int8x16_t)a3 toInternalFormat:(int8x16_t)a4;
+ (int64_t)approximateCorrectionWithPointsTele:(const double *)a3 xyPointsWide:(const double *)a4 numPoints:(int)a5 calModel:(id)a6;
+ (int64_t)computeVerticalBaselineTransform:(uint64_t)a3 extrinsicRefToAuxPrime:(uint64_t)a4 rotationRefToRefPrime:(uint64_t)a5 rotationAuxToAuxPrime:(void *)a6;
+ (int64_t)rotateCalModel:(int8x16_t)a3 extrinsicRefToAuxRotated:(int8x16_t)a4 rotationRef:(float32x2_t)a5 rotationAux:(float32x2_t)a6 calRotated:(float32x2_t)a7;
+ (int64_t)rotateDistortionModel:(uint64_t)a3 rotation:(uint64_t)a4 distRotated:(uint64_t)a5;
+ (int64_t)transformPointsWithMatrix:(uint64_t)a3 numPoints:(uint64_t)a4 transformMatrix:(uint64_t)a5 xyPointsTransformed:(int)a6;
+ (void)convertCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 toDistortionModelTele:(DistortionModel *)a5 toDistortionModelWide:(DistortionModel *)a6 toCalModel:(CalModel *)a7;
+ (void)convertInternalExtrinsics:(double)a3[12] toMatrix:(id *)a4;
+ (void)fillDistortionModel:(DistortionModel *)a3 andUpdateCalModel:(CalModel *)a4 forCamera:(int)a5 fromCalib:(id)a6;
+ (void)updateADCalModel:(id)a3 fromInternalCalModel:(const CalModel *)a4;
+ (void)updateADCameraCalib:(id)a3 fromDistortionModel:(const DistortionModel *)a4 andCalModel:(const CalModel *)a5 forCamera:(int)a6;
+ (void)updateCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 withDistortionModelTele:(const DistortionModel *)a5 withDistortionModelWide:(const DistortionModel *)a6 withCalModel:(const CalModel *)a7;
- (ADAdaptiveCorrectionPipeline)initWithMaxNumPoints:(int)a3 andParameters:(id)a4;
- (AdaptiveCorrectionConfig)getConfigFromPipelineParams;
- (AdaptiveCorrectionStatus)getStatus;
- (int64_t)fullCorrectionWithCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 xyPointsTele:(const double *)a5 xyPointsWide:(const double *)a6 numPoints:(int)a7;
- (int64_t)fullCorrectionWithPointsTele:(const double *)a3 xyPointsWide:(const double *)a4 numPoints:(int)a5 calModel:(id)a6;
- (int64_t)fullTemporalCorrectionWithCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 xyPointsTele:(const double *)a5 xyPointsWide:(const double *)a6 numPoints:(int)a7;
- (void)dealloc;
@end

@implementation ADAdaptiveCorrectionPipeline

- (int64_t)fullCorrectionWithPointsTele:(const double *)a3 xyPointsWide:(const double *)a4 numPoints:(int)a5 calModel:(id)a6
{
  v6 = *&a5;
  v63 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  [ADAdaptiveCorrectionPipeline convertToInternalCalModel:v10];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  [(ADAdaptiveCorrectionPipeline *)self getStatus];
  AdaptiveCorrection_fullCorrection(a3, a4, v6, &v22, v11);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  [ADAdaptiveCorrectionPipeline updateADCalModel:v10 fromInternalCalModel:&v22];

  return 0;
}

- (int64_t)fullCorrectionWithCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 xyPointsTele:(const double *)a5 xyPointsWide:(const double *)a6 numPoints:(int)a7
{
  v7 = *&a7;
  v12 = a3;
  v13 = a4;
  [ADAdaptiveCorrectionPipeline convertCameraCalibrationTele:v12 cameraCalibrationWide:v13 toDistortionModelTele:v27 toDistortionModelWide:v26 toCalModel:v25];
  v22 = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_fullCorrectionWithDistortion(self->_adc, a5, a6, v7, v27, v26, v25, v14, v15, v16, v17, v18, v19, v20, v21)];
  if (v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed full Correction With Distortion.", v24, 2u);
  }

  [ADAdaptiveCorrectionPipeline updateCameraCalibrationTele:v12 cameraCalibrationWide:v13 withDistortionModelTele:v27 withDistortionModelWide:v26 withCalModel:v25];

  return v22;
}

- (int64_t)fullTemporalCorrectionWithCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 xyPointsTele:(const double *)a5 xyPointsWide:(const double *)a6 numPoints:(int)a7
{
  v7 = *&a7;
  v12 = a3;
  v13 = a4;
  [ADAdaptiveCorrectionPipeline convertCameraCalibrationTele:v12 cameraCalibrationWide:v13 toDistortionModelTele:v27 toDistortionModelWide:v26 toCalModel:v25];
  v22 = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_fullTemporalCorrectionWithDistortion(self->_adc, a5, a6, v7, v27, v26, v25, v14, v15, v16, v17, v18, v19, v20, v21)];
  if (v22)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed full Temporal Correction With Distortion.", v24, 2u);
    }
  }

  else
  {
    [ADAdaptiveCorrectionPipeline updateCameraCalibrationTele:v12 cameraCalibrationWide:v13 withDistortionModelTele:v27 withDistortionModelWide:v26 withCalModel:v25];
  }

  return v22;
}

- (AdaptiveCorrectionStatus)getStatus
{
  adc = self->_adc;
  bzero(retstr, 0x1E48uLL);
  if (adc)
  {

    return memcpy(retstr, adc + 136, sizeof(AdaptiveCorrectionStatus));
  }

  return result;
}

- (void)dealloc
{
  AdaptiveCorrection_destroy(self->_adc);
  v3.receiver = self;
  v3.super_class = ADAdaptiveCorrectionPipeline;
  [(ADAdaptiveCorrectionPipeline *)&v3 dealloc];
}

- (ADAdaptiveCorrectionPipeline)initWithMaxNumPoints:(int)a3 andParameters:(id)a4
{
  v7 = a4;
  v21.receiver = self;
  v21.super_class = ADAdaptiveCorrectionPipeline;
  v8 = [(ADAdaptiveCorrectionPipeline *)&v21 init];
  v9 = v8;
  if (v8)
  {
    if (a3 <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v16 = MEMORY[0x277D86220];
        v17 = "maxNumPoints must be positive integer";
        goto LABEL_11;
      }
    }

    else
    {
      objc_storeStrong(&v8->_pipelineParameters, a4);
      [(ADAdaptiveCorrectionPipeline *)v9 getConfigFromPipelineParams];
      v10 = v20[0];
      v11 = v20[1];
      v12 = v20[2];
      *&v9->_config.rangeOCyW = v20[3];
      *&v9->_config.rangeOCxT = v12;
      *&v9->_config.rangePFL_T = v11;
      *&v9->_config.epErrorLimitWidePix_FirstPass = v10;
      v13 = v20[4];
      v14 = v20[5];
      v15 = v20[6];
      *&v9->_config.spgEpsilon = v20[7];
      *&v9->_config.errorVal_BetweenIntermediate_ExtremeMacro = v15;
      *&v9->_config.errorVal_GreaterThanInf = v14;
      *&v9->_config.extremeMacroDistMM = v13;
      if (!AdaptiveCorrection_createWithConfig(a3, &v9->_config, &v9->_adc))
      {
        v18 = v9;
        goto LABEL_8;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v16 = MEMORY[0x277D86220];
        v17 = "Failed create Adaptive Correction with config";
LABEL_11:
        _os_log_error_impl(&dword_2402F6000, v16, OS_LOG_TYPE_ERROR, v17, v20, 2u);
        v18 = 0;
        goto LABEL_8;
      }
    }
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (AdaptiveCorrectionConfig)getConfigFromPipelineParams
{
  *&retstr->errorVal_BetweenIntermediate_ExtremeMacro = 0u;
  *&retstr->spgEpsilon = 0u;
  *&retstr->extremeMacroDistMM = 0u;
  *&retstr->errorVal_GreaterThanInf = 0u;
  *&retstr->rangeOCxT = 0u;
  *&retstr->rangeOCyW = 0u;
  *&retstr->epErrorLimitWidePix_FirstPass = 0u;
  *&retstr->rangePFL_T = 0u;
  result = self->_pipelineParameters;
  if (result)
  {
    [(AdaptiveCorrectionConfig *)result epErrorLimitWidePix_FirstPass];
    retstr->epErrorLimitWidePix_FirstPass = v6;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters epErrorLimitWidePix_SecondPass];
    retstr->epErrorLimitWidePix_SecondPass = v7;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters rangePFL_T];
    retstr->rangePFL_T = v8;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters rangePFL_W];
    retstr->rangePFL_W = v9;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters rangeOCxT];
    retstr->rangeOCxT = v10;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters rangeOCxW];
    retstr->rangeOCxW = v11;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters rangeOCyW];
    retstr->rangeOCyW = v12;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters intermediateMacroDistMM];
    retstr->intermediateMacroDistMM = v13;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters extremeMacroDistMM];
    retstr->extremeMacroDistMM = v14;
    retstr->minPointsForAdjustment = [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters minPointsForAdjustment];
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters errorVal_GreaterThanInf];
    retstr->errorVal_GreaterThanInf = v15;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters errorVal_LessThanExtremeMacro];
    retstr->errorVal_LessThanExtremeMacro = v16;
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters errorVal_BetweenIntermediate_ExtremeMacro];
    retstr->errorVal_BetweenIntermediate_ExtremeMacro = v17;
    retstr->runAnalyticalPreconditioning = [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters runAnalyticalPreconditioning];
    [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters spgEpsilon];
    retstr->spgEpsilon = v18;
    result = [(ADAdaptiveCorrectionPipelineParameters *)self->_pipelineParameters temporalFilteringStrength];
    retstr->temporalFilteringStrength = v19;
  }

  return result;
}

+ (double)meanFundamentalEpipolarErrorForCalModel:(const CalModel *)a3 xyPointsTele:(const double *)a4 xyPointsWide:(const double *)a5 numPoints:(int)a6
{
  v7 = 0.0;
  FundamentalEpipolarError_MeanVal(a4, a5, a6, a3->var0, &v7);
  return v7;
}

+ (int64_t)transformPointsWithMatrix:(uint64_t)a3 numPoints:(uint64_t)a4 transformMatrix:(uint64_t)a5 xyPointsTransformed:(int)a6
{
  v8 = 4294954516;
  if (a5 && a7)
  {
    if (a6 >= 1)
    {
      v9 = a6;
      v10 = (a5 + 8);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        *a7++ = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(a1, v11), a2, v12));
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    v8 = 0;
  }

  result = [ADUtils ADReturnFromOSStatus:v8];
  if (result)
  {
    v14 = result;
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    result = v14;
    if (v15)
    {
      *v16 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed transform points with matrix.", v16, 2u);
      return v14;
    }
  }

  return result;
}

+ (int64_t)rotateDistortionModel:(uint64_t)a3 rotation:(uint64_t)a4 distRotated:(uint64_t)a5
{
  v7 = 4294954516;
  if (a5 && a6)
  {
    v7 = 0;
    v8 = *(a5 + 16);
    *a6 = *a5;
    a6[1] = v8;
    v9 = *(a5 + 32);
    v10 = *(a5 + 48);
    v11 = *(a5 + 80);
    a6[4] = *(a5 + 64);
    a6[5] = v11;
    a6[2] = v9;
    a6[3] = v10;
    v12 = *(a5 + 96);
    v13 = *(a5 + 112);
    v14 = *(a5 + 144);
    a6[8] = *(a5 + 128);
    a6[9] = v14;
    a6[6] = v12;
    a6[7] = v13;
    *&v12 = *(a5 + 16);
    *&v13 = *(a5 + 24);
    a6[1] = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(a1, *&v12), a2, *&v13));
  }

  result = [ADUtils ADReturnFromOSStatus:v7];
  if (result)
  {
    v16 = result;
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    result = v16;
    if (v17)
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed rotate distortion model.", v18, 2u);
      return v16;
    }
  }

  return result;
}

+ (int64_t)rotateCalModel:(int8x16_t)a3 extrinsicRefToAuxRotated:(int8x16_t)a4 rotationRef:(float32x2_t)a5 rotationAux:(float32x2_t)a6 calRotated:(float32x2_t)a7
{
  v13 = 4294954516;
  if (a11 && a12)
  {
    v13 = 0;
    *a12 = *a11;
    v14 = *(a11 + 16);
    v15 = *(a11 + 32);
    v16 = *(a11 + 64);
    a12[3] = *(a11 + 48);
    a12[4] = v16;
    a12[1] = v14;
    a12[2] = v15;
    v17 = *(a11 + 80);
    v18 = *(a11 + 96);
    v19 = *(a11 + 128);
    a12[7] = *(a11 + 112);
    a12[8] = v19;
    a12[5] = v17;
    a12[6] = v18;
    *&v17 = *(a11 + 16);
    v20 = *(a11 + 32);
    v21 = vmla_n_f32(vmul_n_f32(a5, *&v17), a6, v20);
    v22 = *(a11 + 24);
    *&v17 = *(a11 + 40);
    v23 = vmla_n_f32(vmul_n_f32(a7, v22), a8, *&v17);
    a12[1] = vcvtq_f64_f32(vzip1_s32(v21, v23));
    a12[2] = vcvtq_f64_f32(vzip2_s32(v21, v23));
    a12[3] = vcvtq_f64_f32(vzip1_s32(*a1.i8, *a2.i8));
    a12[4] = vcvtq_f64_f32(vzip1_s32(*a3.i8, *a4.i8));
    a12[5] = vcvtq_f64_f32(vzip2_s32(*a1.i8, *a2.i8));
    a12[6] = vcvtq_f64_f32(vzip2_s32(*a3.i8, *a4.i8));
    a12[7] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)));
    a12[8] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  }

  result = [ADUtils ADReturnFromOSStatus:v13];
  if (result)
  {
    v25 = result;
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    result = v25;
    if (v26)
    {
      *v27 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed rotate calmodel.", v27, 2u);
      return v25;
    }
  }

  return result;
}

+ (int64_t)computeVerticalBaselineTransform:(uint64_t)a3 extrinsicRefToAuxPrime:(uint64_t)a4 rotationRefToRefPrime:(uint64_t)a5 rotationAuxToAuxPrime:(void *)a6
{
  result = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_computeVerticalBaselineTransform(a5, a6, a7, a1, a2)];
  if (result)
  {
    v8 = result;
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    result = v8;
    if (v9)
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed compute vertical baseline transform.", v10, 2u);
      return v8;
    }
  }

  return result;
}

+ (int64_t)approximateCorrectionWithPointsTele:(const double *)a3 xyPointsWide:(const double *)a4 numPoints:(int)a5 calModel:(id)a6
{
  v10 = a6;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [a1 convertToInternalCalModel:v10];
  AdaptiveCorrection_approximateCorrection(a3, a4, a5, &v13, v12);
  v19 = v12[6];
  v20 = v12[7];
  v21 = v12[8];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = v12[5];
  v13 = v12[0];
  v14 = v12[1];
  [a1 updateADCalModel:v10 fromInternalCalModel:&v13];

  return 0;
}

+ (void)updateADCalModel:(id)a3 fromInternalCalModel:(const CalModel *)a4
{
  v6 = a3;
  v7 = a4->var0[0];
  *&v7 = a4->var0[0];
  [v6 setFocalLengthPixRef:v7];
  v8 = a4->var0[1];
  *&v8 = v8;
  [v6 setFocalLengthPixAux:v8];
  [v6 setOpticalCenterRef:{a4->var1[0], a4->var2[0]}];
  [v6 setOpticalCenterAux:{a4->var1[1], a4->var2[1]}];
  [a1 convertInternalExtrinsics:a4->var3 toMatrix:&v9];
  [v6 setRefToAuxExtrinsic:{*&v9, *&v10, *&v11, *&v12}];
}

+ (CalModel)convertToInternalCalModel:(SEL)a3
{
  v13 = a4;
  [v13 focalLengthPixRef];
  retstr->var0[0] = v6;
  [v13 focalLengthPixAux];
  retstr->var0[1] = v7;
  [v13 opticalCenterRef];
  retstr->var1[0] = v8;
  [v13 opticalCenterRef];
  retstr->var2[0] = v9;
  [v13 opticalCenterAux];
  retstr->var1[1] = v10;
  [v13 opticalCenterAux];
  retstr->var2[1] = v11;
  [v13 refToAuxExtrinsic];
  [a2 convertExtrinsics:retstr->var3 toInternalFormat:?];

  return result;
}

+ (void)updateCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 withDistortionModelTele:(const DistortionModel *)a5 withDistortionModelWide:(const DistortionModel *)a6 withCalModel:(const CalModel *)a7
{
  v12 = a3;
  v13 = a4;
  [a1 updateADCameraCalib:v12 fromDistortionModel:a5 andCalModel:a7 forCamera:0];
  [a1 updateADCameraCalib:v13 fromDistortionModel:a6 andCalModel:a7 forCamera:1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  [a1 convertInternalExtrinsics:a7->var3 toMatrix:&v26];
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  [v13 cameraToPlatformTransform];
  v15 = v24;
  v14 = v25;
  v14.i32[3] = 1.0;
  v15.i32[3] = 0;
  v17 = v22;
  v16 = v23;
  v16.i32[3] = 0;
  v17.i32[3] = 0;
  [v12 setCameraToPlatformTransform:{*vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v18.f32[0]), v16, *v18.f32, 1), v15, v18, 2), 0, v14).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v19.f32[0]), v16, *v19.f32, 1), v15, v19, 2), 0, v14).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v20.f32[0]), v16, *v20.f32, 1), v15, v20, 2), 0, v14).i64, *vaddq_f32(v14, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v16, *v21.f32, 1), v15, v21, 2)).i64}];
}

+ (void)convertCameraCalibrationTele:(id)a3 cameraCalibrationWide:(id)a4 toDistortionModelTele:(DistortionModel *)a5 toDistortionModelWide:(DistortionModel *)a6 toCalModel:(CalModel *)a7
{
  v13 = a3;
  v12 = a4;
  [a1 fillDistortionModel:a5 andUpdateCalModel:a7 forCamera:0 fromCalib:v13];
  [a1 fillDistortionModel:a6 andUpdateCalModel:a7 forCamera:1 fromCalib:v12];
  [v13 getTransformationTo:v12];
  [a1 convertExtrinsics:a7->var3 toInternalFormat:?];
}

+ (void)convertInternalExtrinsics:(double)a3[12] toMatrix:(id *)a4
{
  v4 = *a3;
  *a4 = v4;
  v5 = a3[1];
  *(a4 + 4) = v5;
  v6 = a3[2];
  *(a4 + 8) = v6;
  v7 = a3[3];
  *(a4 + 12) = v7;
  v8 = a3[4];
  *(a4 + 1) = v8;
  v9 = a3[5];
  *(a4 + 5) = v9;
  v10 = a3[6];
  *(a4 + 9) = v10;
  v11 = a3[7];
  *(a4 + 13) = v11;
  v12 = a3[8];
  *(a4 + 2) = v12;
  v13 = a3[9];
  *(a4 + 6) = v13;
  v14 = a3[10];
  *(a4 + 10) = v14;
  v15 = a3[11];
  *(a4 + 14) = v15;
}

+ (float64x2_t)convertExtrinsics:(int8x16_t)a3 toInternalFormat:(int8x16_t)a4
{
  *a7 = vcvtq_f64_f32(vzip1_s32(*a1.i8, *a2.i8));
  a7[1] = vcvtq_f64_f32(vzip1_s32(*a3.i8, *a4.i8));
  a7[2] = vcvtq_f64_f32(vzip2_s32(*a1.i8, *a2.i8));
  a7[3] = vcvtq_f64_f32(vzip2_s32(*a3.i8, *a4.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)));
  a7[4] = result;
  a7[5] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  return result;
}

+ (void)updateADCameraCalib:(id)a3 fromDistortionModel:(const DistortionModel *)a4 andCalModel:(const CalModel *)a5 forCamera:(int)a6
{
  v20 = a3;
  [v20 intrinsicMatrix];
  v9 = &a5->var0[a6];
  *&v10 = *v9;
  v12 = COERCE_DOUBLE(__PAIR64__(v10, v11));
  v14 = COERCE_DOUBLE(__PAIR64__(v13, v10));
  *&v15 = v9[2];
  *&v16 = v9[4];
  [v20 setIntrinsicMatrix:{v14, v12, COERCE_DOUBLE(__PAIR64__(v16, v15))}];
  v17 = [v20 distortionModel];
  var0 = a4->var0;
  *&var0 = a4->var0;
  [v17 setPixelSize:var0];
  var1 = a4->var1;
  *&var1 = var1;
  [v17 setFocalLength:var1];
  [v17 setDistortionCenter:{a4->var2, a4->var3}];
}

+ (void)fillDistortionModel:(DistortionModel *)a3 andUpdateCalModel:(CalModel *)a4 forCamera:(int)a5 fromCalib:(id)a6
{
  v18 = a6;
  [v18 intrinsicMatrix];
  a4->var0[a5] = v9;
  [v18 intrinsicMatrix];
  v11 = &a4->var0[a5];
  v11[2] = v10;
  [v18 intrinsicMatrix];
  v11[4] = v12;
  v13 = [v18 distortionModel];
  [v13 pixelSize];
  a3->var0 = v14;
  [v13 focalLength];
  a3->var1 = v15;
  [v13 distortionCenter];
  a3->var2 = v16;
  [v13 distortionCenter];
  a3->var3 = v17;
  a3->var4[0] = *[v13 distortionPolynomialsBase];
  a3->var5[0] = *[v13 distortionPolynomialsDynamic];
  a3->var4[1] = *([v13 distortionPolynomialsBase] + 4);
  a3->var5[1] = *([v13 distortionPolynomialsDynamic] + 4);
  a3->var4[2] = *([v13 distortionPolynomialsBase] + 8);
  a3->var5[2] = *([v13 distortionPolynomialsDynamic] + 8);
  a3->var4[3] = *([v13 distortionPolynomialsBase] + 12);
  a3->var5[3] = *([v13 distortionPolynomialsDynamic] + 12);
  a3->var4[4] = *([v13 distortionPolynomialsBase] + 16);
  a3->var5[4] = *([v13 distortionPolynomialsDynamic] + 16);
  a3->var4[5] = *([v13 distortionPolynomialsBase] + 20);
  a3->var5[5] = *([v13 distortionPolynomialsDynamic] + 20);
  a3->var4[6] = *([v13 distortionPolynomialsBase] + 24);
  a3->var5[6] = *([v13 distortionPolynomialsDynamic] + 24);
  a3->var4[7] = *([v13 distortionPolynomialsBase] + 28);
  a3->var5[7] = *([v13 distortionPolynomialsDynamic] + 28);
}

@end