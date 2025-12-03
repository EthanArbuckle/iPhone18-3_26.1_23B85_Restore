@interface ADAdaptiveCorrectionPipeline
+ (CalModel)convertToInternalCalModel:(SEL)model;
+ (double)meanFundamentalEpipolarErrorForCalModel:(const CalModel *)model xyPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points;
+ (float64x2_t)convertExtrinsics:(int8x16_t)extrinsics toInternalFormat:(int8x16_t)format;
+ (int64_t)approximateCorrectionWithPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points calModel:(id)model;
+ (int64_t)computeVerticalBaselineTransform:(uint64_t)transform extrinsicRefToAuxPrime:(uint64_t)prime rotationRefToRefPrime:(uint64_t)refPrime rotationAuxToAuxPrime:(void *)auxPrime;
+ (int64_t)rotateCalModel:(int8x16_t)model extrinsicRefToAuxRotated:(int8x16_t)rotated rotationRef:(float32x2_t)ref rotationAux:(float32x2_t)aux calRotated:(float32x2_t)calRotated;
+ (int64_t)rotateDistortionModel:(uint64_t)model rotation:(uint64_t)rotation distRotated:(uint64_t)rotated;
+ (int64_t)transformPointsWithMatrix:(uint64_t)matrix numPoints:(uint64_t)points transformMatrix:(uint64_t)transformMatrix xyPointsTransformed:(int)transformed;
+ (void)convertCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide toDistortionModelTele:(DistortionModel *)modelTele toDistortionModelWide:(DistortionModel *)modelWide toCalModel:(CalModel *)model;
+ (void)convertInternalExtrinsics:(double)extrinsics[12] toMatrix:(id *)matrix;
+ (void)fillDistortionModel:(DistortionModel *)model andUpdateCalModel:(CalModel *)calModel forCamera:(int)camera fromCalib:(id)calib;
+ (void)updateADCalModel:(id)model fromInternalCalModel:(const CalModel *)calModel;
+ (void)updateADCameraCalib:(id)calib fromDistortionModel:(const DistortionModel *)model andCalModel:(const CalModel *)calModel forCamera:(int)camera;
+ (void)updateCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide withDistortionModelTele:(const DistortionModel *)modelTele withDistortionModelWide:(const DistortionModel *)modelWide withCalModel:(const CalModel *)model;
- (ADAdaptiveCorrectionPipeline)initWithMaxNumPoints:(int)points andParameters:(id)parameters;
- (AdaptiveCorrectionConfig)getConfigFromPipelineParams;
- (AdaptiveCorrectionStatus)getStatus;
- (int64_t)fullCorrectionWithCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide xyPointsTele:(const double *)pointsTele xyPointsWide:(const double *)pointsWide numPoints:(int)points;
- (int64_t)fullCorrectionWithPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points calModel:(id)model;
- (int64_t)fullTemporalCorrectionWithCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide xyPointsTele:(const double *)pointsTele xyPointsWide:(const double *)pointsWide numPoints:(int)points;
- (void)dealloc;
@end

@implementation ADAdaptiveCorrectionPipeline

- (int64_t)fullCorrectionWithPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points calModel:(id)model
{
  v6 = *&points;
  v63 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  [ADAdaptiveCorrectionPipeline convertToInternalCalModel:modelCopy];
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
  AdaptiveCorrection_fullCorrection(tele, wide, v6, &v22, v11);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  [ADAdaptiveCorrectionPipeline updateADCalModel:modelCopy fromInternalCalModel:&v22];

  return 0;
}

- (int64_t)fullCorrectionWithCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide xyPointsTele:(const double *)pointsTele xyPointsWide:(const double *)pointsWide numPoints:(int)points
{
  v7 = *&points;
  teleCopy = tele;
  wideCopy = wide;
  [ADAdaptiveCorrectionPipeline convertCameraCalibrationTele:teleCopy cameraCalibrationWide:wideCopy toDistortionModelTele:v27 toDistortionModelWide:v26 toCalModel:v25];
  v22 = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_fullCorrectionWithDistortion(self->_adc, pointsTele, pointsWide, v7, v27, v26, v25, v14, v15, v16, v17, v18, v19, v20, v21)];
  if (v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed full Correction With Distortion.", v24, 2u);
  }

  [ADAdaptiveCorrectionPipeline updateCameraCalibrationTele:teleCopy cameraCalibrationWide:wideCopy withDistortionModelTele:v27 withDistortionModelWide:v26 withCalModel:v25];

  return v22;
}

- (int64_t)fullTemporalCorrectionWithCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide xyPointsTele:(const double *)pointsTele xyPointsWide:(const double *)pointsWide numPoints:(int)points
{
  v7 = *&points;
  teleCopy = tele;
  wideCopy = wide;
  [ADAdaptiveCorrectionPipeline convertCameraCalibrationTele:teleCopy cameraCalibrationWide:wideCopy toDistortionModelTele:v27 toDistortionModelWide:v26 toCalModel:v25];
  v22 = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_fullTemporalCorrectionWithDistortion(self->_adc, pointsTele, pointsWide, v7, v27, v26, v25, v14, v15, v16, v17, v18, v19, v20, v21)];
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
    [ADAdaptiveCorrectionPipeline updateCameraCalibrationTele:teleCopy cameraCalibrationWide:wideCopy withDistortionModelTele:v27 withDistortionModelWide:v26 withCalModel:v25];
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

- (ADAdaptiveCorrectionPipeline)initWithMaxNumPoints:(int)points andParameters:(id)parameters
{
  parametersCopy = parameters;
  v21.receiver = self;
  v21.super_class = ADAdaptiveCorrectionPipeline;
  v8 = [(ADAdaptiveCorrectionPipeline *)&v21 init];
  v9 = v8;
  if (v8)
  {
    if (points <= 0)
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
      objc_storeStrong(&v8->_pipelineParameters, parameters);
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
      if (!AdaptiveCorrection_createWithConfig(points, &v9->_config, &v9->_adc))
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

+ (double)meanFundamentalEpipolarErrorForCalModel:(const CalModel *)model xyPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points
{
  v7 = 0.0;
  FundamentalEpipolarError_MeanVal(tele, wide, points, model->var0, &v7);
  return v7;
}

+ (int64_t)transformPointsWithMatrix:(uint64_t)matrix numPoints:(uint64_t)points transformMatrix:(uint64_t)transformMatrix xyPointsTransformed:(int)transformed
{
  v8 = 4294954516;
  if (transformMatrix && a7)
  {
    if (transformed >= 1)
    {
      transformedCopy = transformed;
      v10 = (transformMatrix + 8);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        *a7++ = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(self, v11), a2, v12));
        v10 += 2;
        --transformedCopy;
      }

      while (transformedCopy);
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

+ (int64_t)rotateDistortionModel:(uint64_t)model rotation:(uint64_t)rotation distRotated:(uint64_t)rotated
{
  v7 = 4294954516;
  if (rotated && a6)
  {
    v7 = 0;
    v8 = *(rotated + 16);
    *a6 = *rotated;
    a6[1] = v8;
    v9 = *(rotated + 32);
    v10 = *(rotated + 48);
    v11 = *(rotated + 80);
    a6[4] = *(rotated + 64);
    a6[5] = v11;
    a6[2] = v9;
    a6[3] = v10;
    v12 = *(rotated + 96);
    v13 = *(rotated + 112);
    v14 = *(rotated + 144);
    a6[8] = *(rotated + 128);
    a6[9] = v14;
    a6[6] = v12;
    a6[7] = v13;
    *&v12 = *(rotated + 16);
    *&v13 = *(rotated + 24);
    a6[1] = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(self, *&v12), a2, *&v13));
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

+ (int64_t)rotateCalModel:(int8x16_t)model extrinsicRefToAuxRotated:(int8x16_t)rotated rotationRef:(float32x2_t)ref rotationAux:(float32x2_t)aux calRotated:(float32x2_t)calRotated
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
    v21 = vmla_n_f32(vmul_n_f32(ref, *&v17), aux, v20);
    v22 = *(a11 + 24);
    *&v17 = *(a11 + 40);
    v23 = vmla_n_f32(vmul_n_f32(calRotated, v22), a8, *&v17);
    a12[1] = vcvtq_f64_f32(vzip1_s32(v21, v23));
    a12[2] = vcvtq_f64_f32(vzip2_s32(v21, v23));
    a12[3] = vcvtq_f64_f32(vzip1_s32(*self.i8, *a2.i8));
    a12[4] = vcvtq_f64_f32(vzip1_s32(*model.i8, *rotated.i8));
    a12[5] = vcvtq_f64_f32(vzip2_s32(*self.i8, *a2.i8));
    a12[6] = vcvtq_f64_f32(vzip2_s32(*model.i8, *rotated.i8));
    a12[7] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(self, self, 8uLL), *&vextq_s8(a2, a2, 8uLL)));
    a12[8] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(model, model, 8uLL), *&vextq_s8(rotated, rotated, 8uLL)));
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

+ (int64_t)computeVerticalBaselineTransform:(uint64_t)transform extrinsicRefToAuxPrime:(uint64_t)prime rotationRefToRefPrime:(uint64_t)refPrime rotationAuxToAuxPrime:(void *)auxPrime
{
  result = [ADUtils ADReturnFromOSStatus:AdaptiveCorrection_computeVerticalBaselineTransform(refPrime, auxPrime, a7, self, a2)];
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

+ (int64_t)approximateCorrectionWithPointsTele:(const double *)tele xyPointsWide:(const double *)wide numPoints:(int)points calModel:(id)model
{
  modelCopy = model;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [self convertToInternalCalModel:modelCopy];
  AdaptiveCorrection_approximateCorrection(tele, wide, points, &v13, v12);
  v19 = v12[6];
  v20 = v12[7];
  v21 = v12[8];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = v12[5];
  v13 = v12[0];
  v14 = v12[1];
  [self updateADCalModel:modelCopy fromInternalCalModel:&v13];

  return 0;
}

+ (void)updateADCalModel:(id)model fromInternalCalModel:(const CalModel *)calModel
{
  modelCopy = model;
  v7 = calModel->var0[0];
  *&v7 = calModel->var0[0];
  [modelCopy setFocalLengthPixRef:v7];
  v8 = calModel->var0[1];
  *&v8 = v8;
  [modelCopy setFocalLengthPixAux:v8];
  [modelCopy setOpticalCenterRef:{calModel->var1[0], calModel->var2[0]}];
  [modelCopy setOpticalCenterAux:{calModel->var1[1], calModel->var2[1]}];
  [self convertInternalExtrinsics:calModel->var3 toMatrix:&v9];
  [modelCopy setRefToAuxExtrinsic:{*&v9, *&v10, *&v11, *&v12}];
}

+ (CalModel)convertToInternalCalModel:(SEL)model
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

+ (void)updateCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide withDistortionModelTele:(const DistortionModel *)modelTele withDistortionModelWide:(const DistortionModel *)modelWide withCalModel:(const CalModel *)model
{
  teleCopy = tele;
  wideCopy = wide;
  [self updateADCameraCalib:teleCopy fromDistortionModel:modelTele andCalModel:model forCamera:0];
  [self updateADCameraCalib:wideCopy fromDistortionModel:modelWide andCalModel:model forCamera:1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  [self convertInternalExtrinsics:model->var3 toMatrix:&v26];
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  [wideCopy cameraToPlatformTransform];
  v15 = v24;
  v14 = v25;
  v14.i32[3] = 1.0;
  v15.i32[3] = 0;
  v17 = v22;
  v16 = v23;
  v16.i32[3] = 0;
  v17.i32[3] = 0;
  [teleCopy setCameraToPlatformTransform:{*vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v18.f32[0]), v16, *v18.f32, 1), v15, v18, 2), 0, v14).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v19.f32[0]), v16, *v19.f32, 1), v15, v19, 2), 0, v14).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v20.f32[0]), v16, *v20.f32, 1), v15, v20, 2), 0, v14).i64, *vaddq_f32(v14, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v16, *v21.f32, 1), v15, v21, 2)).i64}];
}

+ (void)convertCameraCalibrationTele:(id)tele cameraCalibrationWide:(id)wide toDistortionModelTele:(DistortionModel *)modelTele toDistortionModelWide:(DistortionModel *)modelWide toCalModel:(CalModel *)model
{
  teleCopy = tele;
  wideCopy = wide;
  [self fillDistortionModel:modelTele andUpdateCalModel:model forCamera:0 fromCalib:teleCopy];
  [self fillDistortionModel:modelWide andUpdateCalModel:model forCamera:1 fromCalib:wideCopy];
  [teleCopy getTransformationTo:wideCopy];
  [self convertExtrinsics:model->var3 toInternalFormat:?];
}

+ (void)convertInternalExtrinsics:(double)extrinsics[12] toMatrix:(id *)matrix
{
  v4 = *extrinsics;
  *matrix = v4;
  v5 = extrinsics[1];
  *(matrix + 4) = v5;
  v6 = extrinsics[2];
  *(matrix + 8) = v6;
  v7 = extrinsics[3];
  *(matrix + 12) = v7;
  v8 = extrinsics[4];
  *(matrix + 1) = v8;
  v9 = extrinsics[5];
  *(matrix + 5) = v9;
  v10 = extrinsics[6];
  *(matrix + 9) = v10;
  v11 = extrinsics[7];
  *(matrix + 13) = v11;
  v12 = extrinsics[8];
  *(matrix + 2) = v12;
  v13 = extrinsics[9];
  *(matrix + 6) = v13;
  v14 = extrinsics[10];
  *(matrix + 10) = v14;
  v15 = extrinsics[11];
  *(matrix + 14) = v15;
}

+ (float64x2_t)convertExtrinsics:(int8x16_t)extrinsics toInternalFormat:(int8x16_t)format
{
  *a7 = vcvtq_f64_f32(vzip1_s32(*self.i8, *a2.i8));
  a7[1] = vcvtq_f64_f32(vzip1_s32(*extrinsics.i8, *format.i8));
  a7[2] = vcvtq_f64_f32(vzip2_s32(*self.i8, *a2.i8));
  a7[3] = vcvtq_f64_f32(vzip2_s32(*extrinsics.i8, *format.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(self, self, 8uLL), *&vextq_s8(a2, a2, 8uLL)));
  a7[4] = result;
  a7[5] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(extrinsics, extrinsics, 8uLL), *&vextq_s8(format, format, 8uLL)));
  return result;
}

+ (void)updateADCameraCalib:(id)calib fromDistortionModel:(const DistortionModel *)model andCalModel:(const CalModel *)calModel forCamera:(int)camera
{
  calibCopy = calib;
  [calibCopy intrinsicMatrix];
  v9 = &calModel->var0[camera];
  *&v10 = *v9;
  v12 = COERCE_DOUBLE(__PAIR64__(v10, v11));
  v14 = COERCE_DOUBLE(__PAIR64__(v13, v10));
  *&v15 = v9[2];
  *&v16 = v9[4];
  [calibCopy setIntrinsicMatrix:{v14, v12, COERCE_DOUBLE(__PAIR64__(v16, v15))}];
  distortionModel = [calibCopy distortionModel];
  var0 = model->var0;
  *&var0 = model->var0;
  [distortionModel setPixelSize:var0];
  var1 = model->var1;
  *&var1 = var1;
  [distortionModel setFocalLength:var1];
  [distortionModel setDistortionCenter:{model->var2, model->var3}];
}

+ (void)fillDistortionModel:(DistortionModel *)model andUpdateCalModel:(CalModel *)calModel forCamera:(int)camera fromCalib:(id)calib
{
  calibCopy = calib;
  [calibCopy intrinsicMatrix];
  calModel->var0[camera] = v9;
  [calibCopy intrinsicMatrix];
  v11 = &calModel->var0[camera];
  v11[2] = v10;
  [calibCopy intrinsicMatrix];
  v11[4] = v12;
  distortionModel = [calibCopy distortionModel];
  [distortionModel pixelSize];
  model->var0 = v14;
  [distortionModel focalLength];
  model->var1 = v15;
  [distortionModel distortionCenter];
  model->var2 = v16;
  [distortionModel distortionCenter];
  model->var3 = v17;
  model->var4[0] = *[distortionModel distortionPolynomialsBase];
  model->var5[0] = *[distortionModel distortionPolynomialsDynamic];
  model->var4[1] = *([distortionModel distortionPolynomialsBase] + 4);
  model->var5[1] = *([distortionModel distortionPolynomialsDynamic] + 4);
  model->var4[2] = *([distortionModel distortionPolynomialsBase] + 8);
  model->var5[2] = *([distortionModel distortionPolynomialsDynamic] + 8);
  model->var4[3] = *([distortionModel distortionPolynomialsBase] + 12);
  model->var5[3] = *([distortionModel distortionPolynomialsDynamic] + 12);
  model->var4[4] = *([distortionModel distortionPolynomialsBase] + 16);
  model->var5[4] = *([distortionModel distortionPolynomialsDynamic] + 16);
  model->var4[5] = *([distortionModel distortionPolynomialsBase] + 20);
  model->var5[5] = *([distortionModel distortionPolynomialsDynamic] + 20);
  model->var4[6] = *([distortionModel distortionPolynomialsBase] + 24);
  model->var5[6] = *([distortionModel distortionPolynomialsDynamic] + 24);
  model->var4[7] = *([distortionModel distortionPolynomialsBase] + 28);
  model->var5[7] = *([distortionModel distortionPolynomialsDynamic] + 28);
}

@end