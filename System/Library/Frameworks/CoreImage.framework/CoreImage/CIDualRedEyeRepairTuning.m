@interface CIDualRedEyeRepairTuning
+ (id)defaultRepairParameters;
+ (id)defaultSessionParameters;
+ (id)repairParametersForTuning:(unint64_t)a3;
+ (id)sessionParametersForTuning:(unint64_t)a3;
- (CIDualRedEyeRepairTuning)initWithTuning:(unint64_t)a3;
- (unint64_t)tuningFromCameraModel:(id)a3 portType:(id)a4;
- (void)dealloc;
- (void)setTuningParametersByPortType:(id)a3 withCameraMetadata:(id)a4;
- (void)updateWithCaptureSetup:(id)a3 portType:(id)a4;
@end

@implementation CIDualRedEyeRepairTuning

- (CIDualRedEyeRepairTuning)initWithTuning:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CIDualRedEyeRepairTuning;
  v4 = [(CIDualRedEyeRepairTuning *)&v6 init];
  if (v4)
  {
    [(CIDualRedEyeRepairTuning *)v4 setRepairTuning:[CIDualRedEyeRepairTuning repairParametersForTuning:a3]];
    [(CIDualRedEyeRepairTuning *)v4 setSessionTuning:[CIDualRedEyeRepairTuning sessionParametersForTuning:a3]];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIDualRedEyeRepairTuning;
  [(CIDualRedEyeRepairTuning *)&v3 dealloc];
}

- (unint64_t)tuningFromCameraModel:(id)a3 portType:(id)a4
{
  if ([a3 isEqualToString:@"N841"])
  {
    return 4;
  }

  if (([a3 isEqualToString:@"D321"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"D331") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"D331p"))
  {
    if ([a4 isEqualToString:@"PortTypeBackTelephoto"])
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (([a3 isEqualToString:@"D421"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"D431") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"N104"))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)setTuningParametersByPortType:(id)a3 withCameraMetadata:(id)a4
{
  v7 = [a4 objectForKey:@"Tuning"];
  v8 = [a4 objectForKey:@"DeviceModelName"];
  v9 = [a4 objectForKeyedSubscript:@"DeviceModelName"];
  v10 = [a4 objectForKeyedSubscript:@"PortType"];
  if (v7)
  {
    v8 = [objc_msgSend(a4 objectForKey:{@"Tuning", "unsignedIntegerValue"}];
    if (v8 == 999)
    {
      return;
    }
  }

  else if (v8)
  {
    v8 = [(CIDualRedEyeRepairTuning *)self tuningFromCameraModel:v9 portType:v10];
  }

  [(CIDualRedEyeRepairTuning *)self setRepairTuning:[CIDualRedEyeRepairTuning repairParametersForTuning:v8]];
  [(CIDualRedEyeRepairTuning *)self setSessionTuning:[CIDualRedEyeRepairTuning sessionParametersForTuning:v8]];
  if (!a3)
  {
    v11 = [a4 objectForKeyedSubscript:@"TuningParametersByPortType"];
    if (!v11)
    {
      v11 = [a4 objectForKeyedSubscript:@"RedEye"];
      if (!v11)
      {
        return;
      }
    }

    a3 = v11;
  }

  [(CIDualRedEyeRepairTuning *)self updateWithCaptureSetup:a3 portType:v10];
}

+ (id)defaultSessionParameters
{
  v4[15] = *MEMORY[0x1E69E9840];
  {
    v3[0] = @"kMinPrimaryDimension";
    v3[1] = @"kMinLandmarkConfidenceThreshold";
    v4[0] = &unk_1F1081BC0;
    v4[1] = &unk_1F10835E8;
    v3[2] = @"kMaxFaceJunkinessThreshold";
    v3[3] = @"kMinLandmarkArea";
    v4[2] = &unk_1F10835F8;
    v4[3] = &unk_1F1081BD8;
    v3[4] = @"kMinIsotropy";
    v3[5] = @"kMaxFaceCount";
    v4[4] = &unk_1F1083608;
    v4[5] = &unk_1F1081BF0;
    v3[6] = @"kSessionTuningOutsetROILong";
    v3[7] = @"kSessionTuningOutsetROIShort";
    v4[6] = &unk_1F1083608;
    v4[7] = &unk_1F1083618;
    v3[8] = @"kRenderFullRect";
    v3[9] = @"kMinLaplacianVariance";
    v4[8] = MEMORY[0x1E695E118];
    v4[9] = &unk_1F1083628;
    v3[10] = @"kRegionOutset";
    v3[11] = @"kUseFaceSegmentation";
    v4[10] = &unk_1F1081C08;
    v4[11] = MEMORY[0x1E695E110];
    v3[12] = @"kUseFaceSegmentationMask";
    v3[13] = @"kForceFaceSegmentationPupils";
    v4[12] = MEMORY[0x1E695E110];
    v4[13] = MEMORY[0x1E695E110];
    v3[14] = @"kAutoFlashOverrideSNRThreshold";
    v4[14] = &unk_1F1081C08;
    +[CIDualRedEyeRepairTuning defaultSessionParameters]::parms = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:15];
  }

  return +[CIDualRedEyeRepairTuning defaultSessionParameters]::parms;
}

+ (id)defaultRepairParameters
{
  {
    +[CIDualRedEyeRepairTuning defaultRepairParameters]::parms = &unk_1F1082578;
  }

  return +[CIDualRedEyeRepairTuning defaultRepairParameters]::parms;
}

+ (id)repairParametersForTuning:(unint64_t)a3
{
  v4 = [+[CIDualRedEyeRepairTuning defaultRepairParameters](CIDualRedEyeRepairTuning "defaultRepairParameters")];
  v5 = CI_LOG_DUALRED();
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (v5)
      {
        v32 = ci_logger_api();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v32 repairParametersForTuning:v33, v34, v35, v36, v37, v38, v39];
        }
      }

      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsX"];
      [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsY"];
      [v4 setObject:&unk_1F10836E8 forKeyedSubscript:@"inputCentroidRadiusSmall"];
      [v4 setObject:&unk_1F1083708 forKeyedSubscript:@"inputIntersect"];
      [v4 setObject:&unk_1F1083818 forKeyedSubscript:@"inputSkinThresholdMed"];
      v14 = &unk_1F10835F8;
      v15 = @"inputScleraThreshold";
      goto LABEL_32;
    }

    if (a3 == 5)
    {
      if (v5)
      {
        v56 = ci_logger_api();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v56 repairParametersForTuning:v57, v58, v59, v60, v61, v62, v63];
        }
      }

      [v4 setObject:&unk_1F10836D8 forKeyedSubscript:@"inputAbortDensityLo"];
      [v4 setObject:&unk_1F1083828 forKeyedSubscript:@"inputAbortDensityDiff"];
      [v4 setObject:&unk_1F1083838 forKeyedSubscript:@"inputRadiusDensity"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputInterPeakMin"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputCircularity"];
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"inputSkinThreshold"];
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"inputSkinThresholdMed"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputMinInterDispersion"];
      [v4 setObject:&unk_1F1083848 forKeyedSubscript:@"inputMaxInterDispersion"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputMinMaskDiff"];
      [v4 setObject:&unk_1F1083858 forKeyedSubscript:@"inputIntersect"];
      [v4 setObject:&unk_1F1083868 forKeyedSubscript:@"inputCentroidRadius"];
      [v4 setObject:&unk_1F1083658 forKeyedSubscript:@"inputSearchLong"];
      [v4 setObject:&unk_1F1083618 forKeyedSubscript:@"inputSearchShort"];
      [v4 setObject:&unk_1F1083878 forKeyedSubscript:@"inputFlooding"];
      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputSpecularCutoff"];
      [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputClipMin"];
      [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsX"];
      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsY"];
      [v4 setObject:&unk_1F1083648 forKeyedSubscript:@"inputSpecIntensity"];
      [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputSpecArea"];
      v14 = &unk_1F1083888;
      v15 = @"inputSpecular";
      goto LABEL_32;
    }

    if (a3 != 999)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      v16 = ci_logger_api();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v16 repairParametersForTuning:v17, v18, v19, v20, v21, v22, v23];
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        if (v5)
        {
          v24 = ci_logger_api();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v24 repairParametersForTuning:v25, v26, v27, v28, v29, v30, v31];
          }
        }

        break;
      case 2uLL:
        if (v5)
        {
          v48 = ci_logger_api();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v48 repairParametersForTuning:v49, v50, v51, v52, v53, v54, v55];
          }
        }

        break;
      case 3uLL:
        if (v5)
        {
          v6 = ci_logger_api();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v6 repairParametersForTuning:v7, v8, v9, v10, v11, v12, v13];
          }
        }

        [v4 setObject:&unk_1F1083798 forKeyedSubscript:@"inputCenterSpecRad"];
        [v4 setObject:&unk_1F1081C50 forKeyedSubscript:@"inputCentroidGamma"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputCentroidRadius"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputClosingDilation"];
        [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputClosingErosion"];
        [v4 setObject:&unk_1F10836E8 forKeyedSubscript:@"inputDetectRed"];
        [v4 setObject:&unk_1F10836D8 forKeyedSubscript:@"inputDetectWhite"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputFSmooth"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputGlintThreshold"];
        [v4 setObject:&unk_1F10837A8 forKeyedSubscript:@"inputIntersect"];
        [v4 setObject:&unk_1F10837B8 forKeyedSubscript:@"inputMaxInterDispersion"];
        [v4 setObject:&unk_1F1083618 forKeyedSubscript:@"inputRadiusRepair"];
        [v4 setObject:&unk_1F10837C8 forKeyedSubscript:@"inputRefilterRange"];
        [v4 setObject:&unk_1F10837D8 forKeyedSubscript:@"inputRefilterSpace"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputRepairChroma"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputRepairDarken"];
        [v4 setObject:&unk_1F1083658 forKeyedSubscript:@"inputRepairDither"];
        [v4 setObject:&unk_1F10837E8 forKeyedSubscript:@"inputScale"];
        [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputSkinThreshold"];
        [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputSpecArea"];
        [v4 setObject:&unk_1F10837F8 forKeyedSubscript:@"inputSpecAreaScale"];
        [v4 setObject:&unk_1F1081C68 forKeyedSubscript:@"inputSpecIntensity"];
        [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputSpecMax"];
        [v4 setObject:&unk_1F1083758 forKeyedSubscript:@"inputSpecMin"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputSpecular"];
        [v4 setObject:&unk_1F1081C80 forKeyedSubscript:@"inputTargetClosing"];
        v14 = &unk_1F1083808;
        v15 = @"inputWhiteCutoff";
LABEL_32:
        [v4 setObject:v14 forKeyedSubscript:v15];
        return v4;
      default:
LABEL_22:
        if (v5)
        {
          v40 = ci_logger_api();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v40 repairParametersForTuning:v41, v42, v43, v44, v45, v46, v47];
          }
        }

        return v4;
    }
  }

  return v4;
}

+ (id)sessionParametersForTuning:(unint64_t)a3
{
  v4 = [+[CIDualRedEyeRepairTuning defaultSessionParameters](CIDualRedEyeRepairTuning "defaultSessionParameters")];
  v5 = v4;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (CI_LOG_DUALRED())
      {
        v35 = ci_logger_api();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v35 sessionParametersForTuning:v36, v37, v38, v39, v40, v41, v42];
        }
      }

      return v5;
    }

    if (a3 != 2)
    {
LABEL_25:
      if (CI_LOG_DUALRED())
      {
        v43 = ci_logger_api();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v43 sessionParametersForTuning:v44, v45, v46, v47, v48, v49, v50];
        }
      }

      return v5;
    }

    if (CI_LOG_DUALRED())
    {
      v10 = ci_logger_api();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v10 sessionParametersForTuning:v11, v12, v13, v14, v15, v16, v17];
      }
    }

    v9 = &unk_1F1083898;
    v7 = @"kMinLaplacianVariance";
LABEL_16:
    v8 = v5;
    goto LABEL_17;
  }

  if (a3 == 3)
  {
    if (CI_LOG_DUALRED())
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v18 sessionParametersForTuning:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    [v5 setObject:&unk_1F1083898 forKeyedSubscript:@"kMinLaplacianVariance"];
    v9 = &unk_1F1083618;
    v7 = @"kRegionOutset";
    goto LABEL_16;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"kMaxFaceJunkinessThreshold"];
      [v5 setObject:&unk_1F1081C08 forKeyedSubscript:@"kMinLaplacianVariance"];
      v6 = MEMORY[0x1E695E118];
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kUseFaceSegmentation"];
      v7 = @"kUseFaceSegmentationMask";
      v8 = v5;
      v9 = v6;
LABEL_17:
      [v8 setObject:v9 forKeyedSubscript:v7];
      return v5;
    }

    goto LABEL_25;
  }

  if (CI_LOG_DUALRED())
  {
    v27 = ci_logger_api();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(CIDualRedEyeRepairTuning *)v27 sessionParametersForTuning:v28, v29, v30, v31, v32, v33, v34];
    }
  }

  return v5;
}

- (void)updateWithCaptureSetup:(id)a3 portType:(id)a4
{
  v7 = updatedTuningFromSetup([(CIDualRedEyeRepairTuning *)self sessionTuning], a3, a4, &cfstr_K.isa, &cfstr_Session.isa);
  if (v7)
  {
    [(CIDualRedEyeRepairTuning *)self setSessionTuning:v7];
  }

  else if (CI_LOG_DUALRED())
  {
    v8 = ci_logger_api();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairTuning updateWithCaptureSetup:portType:];
    }
  }

  v9 = updatedTuningFromSetup([(CIDualRedEyeRepairTuning *)self repairTuning], a3, a4, &cfstr_Input.isa, &cfstr_Repair_0.isa);
  if (v9)
  {
    [(CIDualRedEyeRepairTuning *)self setRepairTuning:v9];
  }

  else if (CI_LOG_DUALRED())
  {
    v10 = ci_logger_api();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairTuning updateWithCaptureSetup:portType:];
    }
  }
}

- (void)updateWithCaptureSetup:portType:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s No CaptureSetup session tuning for port type %@\n", v1, 0x16u);
}

- (void)updateWithCaptureSetup:portType:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s No CaptureSetup repair tuning for port type %@\n", v1, 0x16u);
}

@end