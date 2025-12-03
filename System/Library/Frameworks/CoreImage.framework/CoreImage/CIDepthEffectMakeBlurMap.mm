@interface CIDepthEffectMakeBlurMap
+ (id)customAttributes;
- (BOOL)needToRunFaceMask;
- (CGSize)originalShiftMapSize;
- (float)intrinsicMatrixFocalLength;
- (id)blurMapV2:(id)v2;
- (id)blurMapV3:(id)v3 shiftmap:(id)shiftmap alphaImage:(id)image;
- (id)blurMapV4:(id)v4 shiftmap:(id)shiftmap alphaImage:(id)image hairImage:(id)hairImage;
- (id)calibrationData;
- (id)faceMaskApply:(id)apply blurMap:(id)map;
- (id)faceMaskDelta:(id)delta extent:(CGRect)extent parameters:(id)parameters distanceToAdd:(float *)add;
- (id)faceMaskParams:(id)params useNormalizedCoords:(BOOL)coords;
- (id)lensModelApply:(id)apply shiftMap:(id)map;
- (id)lensModelParams:(id)params;
- (id)outputImage;
- (id)refineShiftMapV3WithMainImage:(id)image shiftmap:(id)shiftmap lensModel:(id)model;
- (id)smoothShiftMapV2:(id)v2;
- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image;
- (id)upsampledShiftMap:(id)map;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation CIDepthEffectMakeBlurMap

+ (id)customAttributes
{
  v25[13] = *MEMORY[0x1E69E9840];
  v24[0] = @"CIAttributeFilterCategories";
  v23[0] = @"CICategoryColorAdjustment";
  v23[1] = @"CICategoryVideo";
  v23[2] = @"CICategoryStillImage";
  v23[3] = @"CICategoryBuiltIn";
  v23[4] = @"CICategoryApplePrivate";
  v25[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  v25[1] = @"11";
  v24[1] = @"CIAttributeFilterAvailable_iOS";
  v24[2] = @"CIAttributeFilterAvailable_Mac";
  v25[2] = @"10.13";
  v24[3] = @"inputAperture";
  v21[0] = @"CIAttributeSliderMin";
  v21[1] = @"CIAttributeSliderMax";
  v22[0] = &unk_1F1085148;
  v22[1] = &unk_1F1085158;
  v21[2] = @"CIAttributeMin";
  v21[3] = @"CIAttributeMax";
  v22[2] = &unk_1F1085138;
  v22[3] = &unk_1F1085158;
  v21[4] = @"CIAttributeDefault";
  v21[5] = @"CIAttributeType";
  v22[4] = &unk_1F1085138;
  v22[5] = @"CIAttributeTypeScalar";
  v25[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v24[4] = @"inputLeftEyePosition";
  v19[0] = @"CIAttributeSliderMin";
  v19[1] = @"CIAttributeSliderMax";
  v20[0] = &unk_1F1085138;
  v20[1] = &unk_1F1085148;
  v19[2] = @"CIAttributeMin";
  v19[3] = @"CIAttributeMax";
  v20[2] = &unk_1F1085138;
  v20[3] = &unk_1F1085148;
  v19[4] = @"CIAttributeDefault";
  v19[5] = @"CIAttributeType";
  v20[4] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v20[5] = @"CIAttributeTypePosition";
  v25[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[5] = @"inputRightEyePosition";
  v17[0] = @"CIAttributeSliderMin";
  v17[1] = @"CIAttributeSliderMax";
  v18[0] = &unk_1F1085138;
  v18[1] = &unk_1F1085148;
  v17[2] = @"CIAttributeMin";
  v17[3] = @"CIAttributeMax";
  v18[2] = &unk_1F1085138;
  v18[3] = &unk_1F1085148;
  v17[4] = @"CIAttributeDefault";
  v17[5] = @"CIAttributeType";
  v18[4] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v18[5] = @"CIAttributeTypePosition";
  v25[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
  v24[6] = @"inputChinPosition";
  v15[0] = @"CIAttributeSliderMin";
  v15[1] = @"CIAttributeSliderMax";
  v16[0] = &unk_1F1085138;
  v16[1] = &unk_1F1085148;
  v15[2] = @"CIAttributeMin";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F1085138;
  v16[3] = &unk_1F1085148;
  v15[4] = @"CIAttributeDefault";
  v15[5] = @"CIAttributeType";
  v16[4] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v16[5] = @"CIAttributeTypePosition";
  v25[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v24[7] = @"inputFaceMidPoint";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F1085138;
  v14[1] = &unk_1F1085148;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1085138;
  v14[3] = &unk_1F1085148;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v14[5] = @"CIAttributeTypePosition";
  v25[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v24[8] = @"inputFocusRect";
  v12[0] = @"CIAttributeTypeRectangle";
  v11[0] = @"CIAttributeType";
  v11[1] = @"CIAttributeDefault";
  v12[1] = [CIVector vectorWithX:0.45 Y:0.45 Z:0.1 W:0.1];
  v11[2] = @"CIAttributeIdentity";
  v12[2] = [CIVector vectorWithCGRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v25[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v24[9] = @"inputScale";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = @"CIAttributeTypeScalar";
  v10[1] = &unk_1F1085168;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1085148;
  v10[3] = &unk_1F1085148;
  v25[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v24[10] = @"inputCalibrationData";
  v7 = @"CIAttributeClass";
  v8 = @"AVCameraCalibrationData";
  v25[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v24[11] = @"inputAuxDataMetadata";
  v5 = @"CIAttributeClass";
  v6 = @"CGImageMetadataRef";
  v25[11] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v24[12] = @"inputDraftMode";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F10823A0;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10823B8;
  v4[3] = &unk_1F10823A0;
  v25[12] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:13];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (([key isEqualToString:@"inputOriginalSize"] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CIDepthEffectMakeBlurMap;
    [(CIFilter *)&v7 setValue:value forUndefinedKey:key];
  }
}

- (id)calibrationData
{
  if (self->inputCalibrationData)
  {
    return self->inputCalibrationData;
  }

  depthData = [(CIImage *)self->inputShiftmapImage depthData];

  return AVFDepthCameraCalibrationData(depthData, v6);
}

- (CGSize)originalShiftMapSize
{
  calibrationData = [(CIDepthEffectMakeBlurMap *)self calibrationData];
  if (!calibrationData)
  {
    goto LABEL_10;
  }

  v5 = AVCameraCalibrationDataIntrinsicMatrixReferenceDimensions(calibrationData);
  v6 = *&v4;
  if (v5 == 4224.0 && v4 == 3024.0)
  {
    v5 = 4032.0;
    v6 = 0x40A7A00000000000;
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x1E695F060] && v4 == *(MEMORY[0x1E695F060] + 8))
  {
LABEL_10:
    depthData = [(CIImage *)self->inputShiftmapImage depthData];
    v5 = 4032.0;
    v6 = 0x40A7A00000000000;
    if (depthData)
    {
      v10 = AVFDepthCameraCalibrationData(depthData, v9);
      if (v10)
      {
        v11 = AVCameraCalibrationDataIntrinsicMatrixReferenceDimensions(v10);
        if (v11 != *MEMORY[0x1E695F060] || v12 != *(MEMORY[0x1E695F060] + 8))
        {
          v6 = *&v12;
          v5 = v11;
        }
      }
    }
  }

LABEL_17:
  v14 = v5;
  v15 = *&v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (float)intrinsicMatrixFocalLength
{
  calibrationData = [(CIDepthEffectMakeBlurMap *)self calibrationData];
  if (calibrationData)
  {
    v3 = AVCameraCalibrationDataIntrinsicMatrix(calibrationData);
  }

  else
  {
    LODWORD(v3) = 1171144704;
  }

  return *&v3;
}

- (id)upsampledShiftMap:(id)map
{
  v20[4] = *MEMORY[0x1E69E9840];
  [(CIDepthEffectMakeBlurMap *)self originalShiftMapSize];
  v5 = v4;
  v7 = v6;
  [map extent];
  v8 = v5 * 0.5;
  v9 = v7 * 0.5;
  v11 = v8 / v10;
  v13 = v9 / v12;
  if (v11 > 1.0 || v13 > 1.0)
  {
    imageByClampingToExtent = [map imageByClampingToExtent];
    v19[0] = @"inputScale";
    *&v16 = v13;
    v20[0] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v19[1] = @"inputAspectRatio";
    *&v17 = v11 / v13;
    v20[1] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v20[2] = &unk_1F1085138;
    v19[2] = @"inputB";
    v19[3] = @"inputC";
    v20[3] = &unk_1F1085178;
    map = [imageByClampingToExtent imageByApplyingFilter:@"CIBicubicScaleTransform" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, v19, 4)}];
  }

  [map extent];
  if (CGRectIsInfinite(v21))
  {
    return [map imageByCroppingToRect:{0.0, 0.0, v8, v9}];
  }

  return map;
}

- (id)lensModelParams:(id)params
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"inputExtent";
  [params extent];
  v19[0] = [CIVector vectorWithCGRect:?];
  v5 = [params imageByApplyingFilter:@"CIAreaMinMaxRed" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, &v18, 1)}];
  [(CIDepthEffectMakeBlurMap *)self originalShiftMapSize];
  v6 = [CIVector vectorWithX:"vectorWithX:Y:" Y:?];
  inputFocusRect = self->inputFocusRect;
  [(CIDepthEffectMakeBlurMap *)self intrinsicMatrixFocalLength];
  v9 = v8;
  v16[0] = @"inputMinMaxImage";
  v16[1] = @"inputOriginalSize";
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = inputFocusRect;
  v16[2] = @"inputFocusRect";
  v16[3] = @"inputSimulatedAperture";
  *&v10 = self->simulatedAperture;
  v17[3] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v16[4] = @"inputIntrinsicMatrixFocalLength";
  LODWORD(v11) = v9;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  tuningParameters = self->tuningParameters;
  v16[5] = @"inputTuningParameters";
  if (tuningParameters)
  {
    v14 = tuningParameters;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v17[4] = v12;
  v17[5] = v14;
  return [params imageByApplyingFilter:@"CILensModelCalculator" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, v16, 6)}];
}

- (id)lensModelApply:(id)apply shiftMap:(id)map
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"inputLensModelParams";
  v7[0] = [apply imageByClampingToExtent];
  return [map imageByApplyingFilter:@"CILensModelApply" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (BOOL)needToRunFaceMask
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = [(CIDepthEffectMakeBlurMap *)self inputLeftEyePosition];
  v11[1] = [(CIDepthEffectMakeBlurMap *)self inputRightEyePosition];
  v11[2] = [(CIDepthEffectMakeBlurMap *)self inputFaceMidPoint];
  v3 = 0;
  v11[3] = [(CIDepthEffectMakeBlurMap *)self inputChinPosition];
  v4 = 1;
  while (1)
  {
    v5 = v11[v3];
    v6 = [v5 count];
    if (v6)
    {
      break;
    }

LABEL_6:
    v4 = v3++ < 3;
    if (v3 == 4)
    {
      return 0;
    }
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    [v5 valueAtIndex:v8];
    if (fabs(v9 + 1.0) > 0.01)
    {
      return v4;
    }

    if (v7 == ++v8)
    {
      goto LABEL_6;
    }
  }
}

- (id)faceMaskParams:(id)params useNormalizedCoords:(BOOL)coords
{
  v36[20] = *MEMORY[0x1E69E9840];
  SDOFSimpleLensModelValue(@"defaultSimulatedAperture", self->tuningParameters);
  simulatedAperture = self->simulatedAperture;
  v8 = 1.0;
  v10 = v9 <= 0.0;
  v11 = v9 / simulatedAperture;
  if (v10)
  {
    v11 = 1.0;
  }

  if (simulatedAperture > 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = 1.0;
  if (!coords)
  {
    [params extent];
    v8 = v14;
    [params extent];
    v13 = v15;
  }

  v16 = [(NSDictionary *)self->tuningParameters objectForKeyedSubscript:@"Version", v11];
  v17 = MEMORY[0x1E696AD98];
  if (v16)
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v19 = [v17 numberWithUnsignedInteger:unsignedIntegerValue];
  v35[0] = @"inputFacesLeftEyeX";
  v36[0] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 0, v8);
  v35[1] = @"inputFacesLeftEyeY";
  v36[1] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 1u, v13);
  v35[2] = @"inputFacesCenterX";
  v36[2] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 0, v8);
  v35[3] = @"inputFacesCenterY";
  v36[3] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 1u, v13);
  v35[4] = @"inputFacesRightEyeX";
  v36[4] = transformNormalizedMetalToCI(self->inputRightEyePosition, 0, v8);
  v35[5] = @"inputFacesRightEyeY";
  v36[5] = transformNormalizedMetalToCI(self->inputRightEyePosition, 1u, v13);
  v35[6] = @"inputFacesChinX";
  v36[6] = transformNormalizedMetalToCI(self->inputChinPosition, 0, v8);
  v35[7] = @"inputFacesChinY";
  v36[7] = transformNormalizedMetalToCI(self->inputChinPosition, 1u, v13);
  v35[8] = @"inputMaxBlur";
  v20 = MEMORY[0x1E696AD98];
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->tuningParameters);
  v36[8] = [v20 numberWithFloat:?];
  v35[9] = @"inputFacesMaxBlurOnEyes";
  v21 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"maxBlurOnEyes", self->tuningParameters);
  v36[9] = [v21 numberWithFloat:?];
  v35[10] = @"inputFacesMaxBlurDistFromFocus";
  v22 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"maxBlurDistFromFocus", self->tuningParameters);
  v36[10] = [v22 numberWithFloat:?];
  v35[11] = @"inputFacesEyeToEyebrowRatio";
  v23 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"eyeToEyebrowRatio", self->tuningParameters);
  v36[11] = [v23 numberWithFloat:?];
  v35[12] = @"inputFacesLinearBlurGrowthM";
  v24 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"linearBlurGrowthM", self->tuningParameters);
  v36[12] = [v24 numberWithFloat:?];
  v35[13] = @"inputFacesLinearBlurGrowthC";
  v25 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"linearBlurGrowthC", self->tuningParameters);
  v36[13] = [v25 numberWithFloat:?];
  v35[14] = @"inputFacesDistToBlurScaling";
  v26 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"distToBlurScaling", self->tuningParameters);
  v36[14] = [v26 numberWithFloat:?];
  v35[15] = @"inputFacesCapMultip";
  v27 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"capMultip", self->tuningParameters);
  v36[15] = [v27 numberWithFloat:?];
  v35[16] = @"inputFacesGainMultip";
  v28 = MEMORY[0x1E696AD98];
  SDOFFaceMaskValue(@"gainMultip", self->tuningParameters);
  v36[16] = [v28 numberWithFloat:?];
  v35[17] = @"inputApertureScaling";
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v30 = &unk_1F10823D0;
  if (v19)
  {
    v30 = v19;
  }

  v36[17] = v29;
  v36[18] = v30;
  tuningParameters = self->tuningParameters;
  v35[18] = @"__inputVersion";
  v35[19] = @"inputTuningParameters";
  if (tuningParameters)
  {
    v32 = tuningParameters;
  }

  else
  {
    v32 = MEMORY[0x1E695E0F8];
  }

  v36[19] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:20];
  if ([v19 integerValue] < 3)
  {
    return [params imageByApplyingFilter:@"CIFaceMaskCalculator" withInputParameters:v33];
  }

  else
  {
    return [params metalImageByApplyingFilter:@"CIFaceMaskCalculator" withInputParameters:v33];
  }
}

- (id)faceMaskApply:(id)apply blurMap:(id)map
{
  v15[6] = *MEMORY[0x1E69E9840];
  [map extent];
  v8 = v7;
  [map extent];
  v10 = v9;
  v15[0] = apply;
  v14[0] = @"inputParameterImage";
  v14[1] = @"inputFacesCenterX";
  v15[1] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 0, v8);
  v14[2] = @"inputFacesCenterY";
  v15[2] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 1u, v10);
  v14[3] = @"inputFacesChinX";
  v15[3] = transformNormalizedMetalToCI(self->inputChinPosition, 0, v8);
  v14[4] = @"inputFacesChinY";
  v11 = transformNormalizedMetalToCI(self->inputChinPosition, 1u, v10);
  v14[5] = @"inputTuningParameters";
  tuningParameters = self->tuningParameters;
  if (!tuningParameters)
  {
    tuningParameters = MEMORY[0x1E695E0F8];
  }

  v15[4] = v11;
  v15[5] = tuningParameters;
  return [map imageByApplyingFilter:@"CIFaceMaskApply" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, v14, 6)}];
}

- (id)faceMaskDelta:(id)delta extent:(CGRect)extent parameters:(id)parameters distanceToAdd:(float *)add
{
  v15[21] = *MEMORY[0x1E69E9840];
  v15[0] = delta;
  v14[0] = @"inputParameterImage";
  v14[1] = @"inputImageSize";
  v15[1] = [CIVector vectorWithX:extent.size.width Y:extent.size.height];
  v14[2] = @"inputFacesCenterX";
  v15[2] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 0, 1.0);
  v14[3] = @"inputFacesCenterY";
  v15[3] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 1u, 1.0);
  v14[4] = @"inputFacesChinX";
  v15[4] = transformNormalizedMetalToCI(self->inputChinPosition, 0, 1.0);
  v14[5] = @"inputFacesChinY";
  v15[5] = transformNormalizedMetalToCI(self->inputChinPosition, 1u, 1.0);
  v14[6] = @"inputFacesLeftEyeX";
  v15[6] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 0, 1.0);
  v14[7] = @"inputFacesLeftEyeY";
  v15[7] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 1u, 1.0);
  v14[8] = @"inputFacesRightEyeX";
  v15[8] = transformNormalizedMetalToCI(self->inputRightEyePosition, 0, 1.0);
  v14[9] = @"inputFacesRightEyeY";
  v15[9] = transformNormalizedMetalToCI(self->inputRightEyePosition, 1u, 1.0);
  v14[10] = @"inputDistanceAdd";
  v15[10] = [parameters objectForKeyedSubscript:?];
  v14[11] = @"inputAdditiveMaxBlur";
  v15[11] = [parameters objectForKeyedSubscript:@"inputFaceMaskAdditiveMaxBlur"];
  v14[12] = @"inputSubtractiveMaxBlur";
  v15[12] = [parameters objectForKeyedSubscript:@"inputFaceMaskSubtractiveMaxBlur"];
  v14[13] = @"inputApertureScaling";
  v15[13] = [parameters objectForKeyedSubscript:?];
  v14[14] = @"inputMaxBlur";
  v15[14] = [parameters objectForKeyedSubscript:?];
  v14[15] = @"inputSubjectDistanceMinimumFocusDistance";
  v15[15] = [parameters objectForKeyedSubscript:?];
  v14[16] = @"inputSubjectDistanceMaximumFocusDistance";
  v15[16] = [parameters objectForKeyedSubscript:?];
  v14[17] = @"inputSubjectDistanceScalingFactor";
  v15[17] = [parameters objectForKeyedSubscript:?];
  v14[18] = @"inputSubjectDistanceOffset";
  v9 = [parameters objectForKeyedSubscript:?];
  tuningParameters = self->tuningParameters;
  if (!tuningParameters)
  {
    tuningParameters = MEMORY[0x1E695E0F8];
  }

  v15[18] = v9;
  v15[19] = tuningParameters;
  v14[19] = @"inputTuningParameters";
  v14[20] = @"inputFocusRect";
  v15[20] = self->inputFocusRect;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:21];
  [+[CIFilter filterWithName:withInputParameters:](CIFilter distanceToAdd:@"CIFaceMaskDelta"];
  *add = v12;
  return [+[CIFilter metalFilterWithName:withInputParameters:](CIFilter metalFilterWithName:@"CIFaceMaskDelta" withInputParameters:{v11), "outputImage"}];
}

- (id)smoothShiftMapV2:(id)v2
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(CIDepthEffectMakeBlurMap *)self upsampledShiftMap:v2];
  SDOFDisparitySmoothingParameterValue(&cfstr_Niterations.isa, self->tuningParameters);
  v6 = @"inputNumIterations";
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  return [v4 imageByApplyingFilter:@"CIDisparitySmoothing" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (id)blurMapV2:(id)v2
{
  v4 = [(CIDepthEffectMakeBlurMap *)self smoothShiftMapV2:v2];
  v5 = [(CIDepthEffectMakeBlurMap *)self lensModelApply:[(CIDepthEffectMakeBlurMap *)self lensModelParams:v4] shiftMap:v4];
  if (![(CIDepthEffectMakeBlurMap *)self needToRunFaceMask])
  {
    return v5;
  }

  v6 = [(CIDepthEffectMakeBlurMap *)self faceMaskParams:v5 useNormalizedCoords:0];

  return [(CIDepthEffectMakeBlurMap *)self faceMaskApply:v6 blurMap:v5];
}

- (id)refineShiftMapV3WithMainImage:(id)image shiftmap:(id)shiftmap lensModel:(id)model
{
  v51[9] = *MEMORY[0x1E69E9840];
  SDOFDisparityRefinementParameterValue(&cfstr_Version.isa, self->tuningParameters);
  v10 = *&v9;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 >= 5)
  {
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CIDepthEffectMakeBlurMap *)v10 refineShiftMapV3WithMainImage:v11 shiftmap:v12 lensModel:v13, v14, v15, v16, v17];
    }
  }

  if (self->inputMatteImage)
  {
    if ([CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:]::onceToken != -1)
    {
      [CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:];
    }

    inputMatteImage = self->inputMatteImage;
    if ([CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:]::useNativeFocalPlane)
    {
      v48[0] = @"inputMatteImage";
      v48[1] = @"inputLensModelCalculatorImage";
      v49[0] = inputMatteImage;
      v49[1] = model;
      v48[2] = @"inputAlphaThreshold";
      LODWORD(v9) = *"fff?";
      v49[2] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      v48[3] = @"inputAmplitude";
      LODWORD(v19) = 1067030938;
      v49[3] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      v48[4] = @"inputExponent";
      LODWORD(v20) = 2.0;
      v49[4] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      v48[5] = @"inputGamma";
      LODWORD(v21) = 1053609165;
      v49[5] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
      v48[6] = @"inputMinFactor";
      LODWORD(v22) = 1036831949;
      v49[6] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
      v48[7] = @"inputMaxFactor";
      LODWORD(v23) = 1.0;
      v49[7] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      v24 = [shiftmap imageByApplyingFilter:@"CIFocalPlaneNative" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v49, v48, 8)}];
    }

    else
    {
      v50[0] = @"inputMatteImage";
      v50[1] = @"inputFocusRect";
      inputFocusRect = self->inputFocusRect;
      v51[0] = inputMatteImage;
      v51[1] = inputFocusRect;
      v50[2] = @"inputZeroShiftPercentile";
      LODWORD(v9) = 0.75;
      v51[2] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      v50[3] = @"inputAlphaThreshold";
      LODWORD(v31) = *"fff?";
      v51[3] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v50[4] = @"inputAmplitude";
      LODWORD(v32) = 1067030938;
      v51[4] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      v50[5] = @"inputExponent";
      LODWORD(v33) = 2.0;
      v51[5] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
      v50[6] = @"inputGamma";
      LODWORD(v34) = 1053609165;
      v51[6] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v50[7] = @"inputMinFactor";
      LODWORD(v35) = 1036831949;
      v51[7] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      v50[8] = @"inputMaxFactor";
      LODWORD(v36) = 1.0;
      v51[8] = [MEMORY[0x1E696AD98] numberWithFloat:v36];
      v24 = [shiftmap metalImageByApplyingFilter:@"CIFocalPlane" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v51, v50, 9)}];
    }

    shiftmapCopy = v24;
    if (!v24)
    {
      v38 = ci_logger_api();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:];
      }

      shiftmapCopy = shiftmap;
    }

    v39 = 0x32u >> ([CIDepthBlurEffect getDraftMode:[(CIDepthEffectMakeBlurMap *)self inputDraftMode]]== 1);
    v46[0] = @"inputMainImage";
    v46[1] = @"inputPredicateImage";
    v40 = self->inputMatteImage;
    v47[0] = image;
    v47[1] = v40;
    v46[2] = @"inputRadius";
    LODWORD(v41) = 2.0;
    v47[2] = [MEMORY[0x1E696AD98] numberWithFloat:v41];
    v46[3] = @"inputSubsampling";
    LODWORD(v42) = 8.0;
    v47[3] = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    v46[4] = @"inputEPS";
    LODWORD(v43) = 953267991;
    v47[4] = [MEMORY[0x1E696AD98] numberWithFloat:v43];
    v46[5] = @"inputNumIterations";
    v47[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v39];
    return [shiftmapCopy metalImageByApplyingFilter:@"CIMattingSolver" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v47, v46, 6)}];
  }

  else
  {
LABEL_10:
    v44[0] = @"inputScale";
    v44[1] = @"inputMainImage";
    v45[0] = self->inputScale;
    v45[1] = image;
    v44[2] = @"inputImage";
    v44[3] = @"inputTuningParameters";
    tuningParameters = self->tuningParameters;
    if (!tuningParameters)
    {
      tuningParameters = MEMORY[0x1E695E0F8];
    }

    v45[2] = shiftmap;
    v45[3] = tuningParameters;
    v26 = +[CIFilter metalFilterWithName:withInputParameters:](CIFilter, "metalFilterWithName:withInputParameters:", @"CIDisparityRefinementV3", [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4]);
    v27 = v26;
    v28 = self->inputMatteImage;
    if (v28)
    {
      [v26 setValue:v28 forKey:@"inputMatteImage"];
    }

    return [v27 outputImage];
  }
}

uint64_t __77__CIDepthEffectMakeBlurMap_refineShiftMapV3WithMainImage_shiftmap_lensModel___block_invoke()
{
  v0 = getenv("CI_NATIVE_FOCAL_PLANE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = [CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:]::useNativeFocalPlane;
  }

  [CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:]::useNativeFocalPlane = result != 0;
  return result;
}

- (id)blurMapV3:(id)v3 shiftmap:(id)shiftmap alphaImage:(id)image
{
  v30[5] = *MEMORY[0x1E69E9840];
  v9 = [(CIDepthEffectMakeBlurMap *)self lensModelParams:shiftmap];
  v10 = [(CIDepthEffectMakeBlurMap *)self lensModelApply:v9 shiftMap:[(CIDepthEffectMakeBlurMap *)self refineShiftMapV3WithMainImage:v3 shiftmap:shiftmap lensModel:v9]];
  if ([(CIDepthEffectMakeBlurMap *)self needToRunFaceMask])
  {
    v10 = [(CIDepthEffectMakeBlurMap *)self faceMaskApply:[(CIDepthEffectMakeBlurMap *)self faceMaskParams:v10 useNormalizedCoords:0] blurMap:v10];
  }

  if ([CIDepthEffectMakeBlurMap blurMapV3:shiftmap:alphaImage:]::onceToken == -1)
  {
    if (!image)
    {
      return v10;
    }
  }

  else
  {
    [CIDepthEffectMakeBlurMap blurMapV3:shiftmap:alphaImage:];
    if (!image)
    {
      return v10;
    }
  }

  if (([CIDepthEffectMakeBlurMap blurMapV3:shiftmap:alphaImage:]::disableSegmentationFusion & 1) == 0)
  {
    SDOFFusionValue(&cfstr_Additivelowera.isa, self->tuningParameters);
    v12 = v11;
    SDOFFusionValue(&cfstr_Additiveuppera.isa, self->tuningParameters);
    v14 = v13;
    SDOFFusionValue(&cfstr_Additivemaxblu.isa, self->tuningParameters);
    v16 = [CIVector vectorWithX:v12 Y:v14 Z:v15];
    SDOFFusionValue(&cfstr_Subtractivelow.isa, self->tuningParameters);
    v18 = v17;
    SDOFFusionValue(&cfstr_Subtractiveupp.isa, self->tuningParameters);
    v20 = v19;
    SDOFFusionValue(&cfstr_Subtractivemax.isa, self->tuningParameters);
    v22 = [CIVector vectorWithX:v18 Y:v20 Z:v21];
    SDOFSimpleLensModelValue(@"defaultSimulatedAperture", self->tuningParameters);
    v24 = v23;
    simulatedAperture = self->simulatedAperture;
    v26 = 1.0;
    if (simulatedAperture > 0.0 && v24 > 0.0)
    {
      v26 = v24 / simulatedAperture;
    }

    v29[0] = @"inputMatteImage";
    v29[1] = @"inputTuningParameters";
    tuningParameters = self->tuningParameters;
    v30[0] = image;
    v30[1] = tuningParameters;
    v29[2] = @"inputAddBlur";
    v29[3] = @"inputRemoveBlur";
    v30[2] = v16;
    v30[3] = v22;
    v29[4] = @"inputApertureScaling";
    v30[4] = [MEMORY[0x1E696AD98] numberWithDouble:v26];
    return [v10 imageByApplyingFilter:@"CISegmentationFusion" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, v29, 5)}];
  }

  return v10;
}

uint64_t __58__CIDepthEffectMakeBlurMap_blurMapV3_shiftmap_alphaImage___block_invoke()
{
  v0 = getenv("CI_DISABLE_SEGMENTATION_FUSION");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = [CIDepthEffectMakeBlurMap blurMapV3:shiftmap:alphaImage:]::disableSegmentationFusion;
  }

  [CIDepthEffectMakeBlurMap blurMapV3:shiftmap:alphaImage:]::disableSegmentationFusion = result != 0;
  return result;
}

- (id)blurMapV4:(id)v4 shiftmap:(id)shiftmap alphaImage:(id)image hairImage:(id)hairImage
{
  v196[3] = *MEMORY[0x1E69E9840];
  v11 = [(CIDepthEffectMakeBlurMap *)self lensModelParams:shiftmap];
  v195[0] = @"inputRVector";
  v196[0] = [CIVector vectorWithX:0.349999994 Y:0.0 Z:0.0 W:0.0];
  v195[1] = @"inputGVector";
  v196[1] = [CIVector vectorWithX:0.0 Y:0.349999994 Z:0.0 W:0.0];
  v195[2] = @"inputBVector";
  v196[2] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.349999994 W:0.0];
  v12 = -[CIDepthEffectMakeBlurMap lensModelApply:shiftMap:](self, "lensModelApply:shiftMap:", v11, -[CIDepthEffectMakeBlurMap refineShiftMapV3WithMainImage:shiftmap:lensModel:](self, "refineShiftMapV3WithMainImage:shiftmap:lensModel:", [v4 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v196, v195, 3)}], shiftmap, v11));
  SDOFSimpleLensModelValue(@"defaultSimulatedAperture", self->tuningParameters);
  simulatedAperture = self->simulatedAperture;
  v189 = 1.0;
  if (simulatedAperture > 0.0 && v13 > 0.0)
  {
    v189 = v13 / simulatedAperture;
  }

  if ([(CIDepthEffectMakeBlurMap *)self needToRunFaceMask])
  {
    hairImageCopy = hairImage;
    v182 = [(CIDepthEffectMakeBlurMap *)self faceMaskParams:v12 useNormalizedCoords:1];
    SDOFFusionValue(&cfstr_Additivelowera.isa, self->tuningParameters);
    v16 = v15;
    SDOFFusionValue(&cfstr_Additiveuppera.isa, self->tuningParameters);
    v18 = v17;
    SDOFFusionValue(&cfstr_Additivemaxblu.isa, self->tuningParameters);
    v188 = [CIVector vectorWithX:v16 Y:v18 Z:v19];
    SDOFFusionValue(&cfstr_Subtractivelow.isa, self->tuningParameters);
    v21 = v20;
    SDOFFusionValue(&cfstr_Subtractiveupp.isa, self->tuningParameters);
    v23 = v22;
    SDOFFusionValue(&cfstr_Subtractivemax.isa, self->tuningParameters);
    v25 = [CIVector vectorWithX:v21 Y:v23 Z:v24];
    SDOFBlurMapRefinementValue(&cfstr_Hairadditivelo.isa, self->tuningParameters);
    v27 = v26;
    SDOFBlurMapRefinementValue(&cfstr_Hairadditiveup.isa, self->tuningParameters);
    v29 = v28;
    SDOFBlurMapRefinementValue(&cfstr_Hairadditivema.isa, self->tuningParameters);
    v31 = [CIVector vectorWithX:v27 Y:v29 Z:v30];
    SDOFBlurMapRefinementValue(&cfstr_Hairsubtractiv.isa, self->tuningParameters);
    v33 = v32;
    SDOFBlurMapRefinementValue(&cfstr_Hairsubtractiv_0.isa, self->tuningParameters);
    v35 = v34;
    SDOFBlurMapRefinementValue(&cfstr_Hairsubtractiv_1.isa, self->tuningParameters);
    v37 = [CIVector vectorWithX:v33 Y:v35 Z:v36];
    SDOFBlurMapRefinementValue(&cfstr_Facemaskadditi.isa, self->tuningParameters);
    v183 = v38;
    SDOFBlurMapRefinementValue(&cfstr_Facemasksubtra.isa, self->tuningParameters);
    v184 = v39;
    SDOFBlurMapRefinementValue(&cfstr_Smoothstepmin.isa, self->tuningParameters);
    v41 = v40;
    SDOFBlurMapRefinementValue(&cfstr_Smoothstepmax.isa, self->tuningParameters);
    v43 = v42;
    SDOFBlurMapRefinementValue(&cfstr_Maxblur.isa, self->tuningParameters);
    LODWORD(v33) = v44;
    SDOFBlurMapRefinementValue(&cfstr_Persondistance.isa, self->tuningParameters);
    v46 = v45;
    SDOFBlurMapRefinementValue(&cfstr_Personthreshol.isa, self->tuningParameters);
    v48 = v47;
    SDOFBlurMapRefinementValue(&cfstr_Personmaxblur.isa, self->tuningParameters);
    v50 = v49;
    SDOFBlurMapRefinementValue(&cfstr_Hairdistance.isa, self->tuningParameters);
    v52 = v51;
    SDOFBlurMapRefinementValue(&cfstr_Hairthreshold.isa, self->tuningParameters);
    v187 = v53;
    SDOFBlurMapRefinementValue(&cfstr_Hairmaxblur.isa, self->tuningParameters);
    v186 = v54;
    SDOFBlurMapRefinementValue(&cfstr_Minimumfocusdi.isa, self->tuningParameters);
    v159 = v55;
    SDOFBlurMapRefinementValue(&cfstr_Maximumfocusdi.isa, self->tuningParameters);
    v160 = v56;
    SDOFBlurMapRefinementValue(&cfstr_Protectbodystr.isa, self->tuningParameters);
    LODWORD(v155) = v57;
    SDOFBlurMapRefinementValue(&cfstr_Distanceadd.isa, self->tuningParameters);
    HIDWORD(v155) = v58;
    SDOFBlurMapRefinementValue(&cfstr_Relativeapertu.isa, self->tuningParameters);
    LODWORD(v35) = v59;
    SDOFBlurMapRefinementValue(&cfstr_Subjectdistanc.isa, self->tuningParameters);
    v156 = v60;
    SDOFBlurMapRefinementValue(&cfstr_Subjectdistanc_0.isa, self->tuningParameters);
    v157 = v61;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionm.isa, self->tuningParameters);
    v170 = v62;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionf_1.isa, self->tuningParameters);
    v171 = v63;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionf_2.isa, self->tuningParameters);
    v172 = v64;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono.isa, self->tuningParameters);
    v173 = v65;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono_0.isa, self->tuningParameters);
    v174 = v66;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono_1.isa, self->tuningParameters);
    v175 = v67;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono_2.isa, self->tuningParameters);
    v176 = v68;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono_3.isa, self->tuningParameters);
    v177 = v69;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectiono_4.isa, self->tuningParameters);
    v178 = v70;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionp.isa, self->tuningParameters);
    v179 = v71;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionp_0.isa, self->tuningParameters);
    v180 = v72;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotectionp_1.isa, self->tuningParameters);
    v181 = v73;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotections.isa, self->tuningParameters);
    v168 = v74;
    SDOFBlurMapRefinementValue(&cfstr_Eyeprotections_0.isa, self->tuningParameters);
    v169 = v75;
    [(NSNumber *)self->inputScale floatValue];
    v77 = v46 * v76;
    [(NSNumber *)self->inputScale floatValue];
    v79 = v52 * v78;
    imageCopy = image;
    v81 = MEMORY[0x1E695DF90];
    v193[0] = @"inputApertureScaling";
    v194[0] = [MEMORY[0x1E696AD98] numberWithDouble:v189];
    v193[1] = @"inputFaceMaskAdditiveMaxBlur";
    LODWORD(v82) = v183;
    v194[1] = [MEMORY[0x1E696AD98] numberWithFloat:v82];
    v193[2] = @"inputFaceMaskSubtractiveMaxBlur";
    LODWORD(v83) = v184;
    v194[2] = [MEMORY[0x1E696AD98] numberWithFloat:v83];
    v193[3] = @"inputSmoothstepMin";
    v165 = v41;
    LODWORD(v84) = v41;
    v194[3] = [MEMORY[0x1E696AD98] numberWithFloat:v84];
    v193[4] = @"inputSmoothstepMax";
    v164 = v43;
    LODWORD(v85) = v43;
    v194[4] = [MEMORY[0x1E696AD98] numberWithFloat:v85];
    v193[5] = @"inputMaxBlur";
    v162 = LODWORD(v33);
    LODWORD(v86) = LODWORD(v33);
    v194[5] = [MEMORY[0x1E696AD98] numberWithFloat:v86];
    v193[6] = @"inputRelativeApertureScalingStrength";
    v163 = LODWORD(v35);
    LODWORD(v87) = LODWORD(v35);
    v88 = v79;
    v194[6] = [MEMORY[0x1E696AD98] numberWithFloat:v87];
    v193[7] = @"inputPersonDistance";
    v161 = v77;
    *&v89 = v77;
    v194[7] = [MEMORY[0x1E696AD98] numberWithFloat:v89];
    v193[8] = @"inputPersonThreshold";
    v166 = v48;
    LODWORD(v90) = v48;
    v194[8] = [MEMORY[0x1E696AD98] numberWithFloat:v90];
    v193[9] = @"inputPersonAdditive";
    v194[9] = v188;
    v193[10] = @"inputPersonSubtractive";
    v194[10] = v25;
    v193[11] = @"inputPersonMaxBlur";
    v167 = v50;
    LODWORD(v91) = v50;
    v92 = v155;
    v194[11] = [MEMORY[0x1E696AD98] numberWithFloat:v91];
    v193[12] = @"inputHairDistance";
    *&v93 = v79;
    v194[12] = [MEMORY[0x1E696AD98] numberWithFloat:v93];
    v193[13] = @"inputHairThreshold";
    LODWORD(v94) = v187;
    v194[13] = [MEMORY[0x1E696AD98] numberWithFloat:v94];
    v193[14] = @"inputHairAdditive";
    v194[14] = v31;
    v193[15] = @"inputHairSubtractive";
    v194[15] = v37;
    v193[16] = @"inputHairMaxBlur";
    LODWORD(v95) = v186;
    v194[16] = [MEMORY[0x1E696AD98] numberWithFloat:v95];
    v193[17] = @"inputProtectBodyStrength";
    LODWORD(v96) = v155;
    v194[17] = [MEMORY[0x1E696AD98] numberWithFloat:v96];
    v193[18] = @"inputDistanceAdd";
    LODWORD(v97) = HIDWORD(v155);
    v194[18] = [MEMORY[0x1E696AD98] numberWithFloat:v97];
    inputLeftEyePosition = self->inputLeftEyePosition;
    v193[19] = @"inputLeftEyePosition";
    v194[19] = inputLeftEyePosition;
    v193[20] = @"inputRightEyePosition";
    v194[20] = self->inputRightEyePosition;
    v193[21] = @"inputFaceMidPoint";
    v194[21] = self->inputFaceMidPoint;
    inputChinPosition = self->inputChinPosition;
    v193[22] = @"inputChinPosition";
    v194[22] = inputChinPosition;
    v193[23] = @"inputSubjectDistanceMinimumFocusDistance";
    LODWORD(v100) = v159;
    v194[23] = [MEMORY[0x1E696AD98] numberWithFloat:v100];
    v193[24] = @"inputSubjectDistanceMaximumFocusDistance";
    LODWORD(v101) = v160;
    v194[24] = [MEMORY[0x1E696AD98] numberWithFloat:v101];
    v193[25] = @"inputSubjectDistanceScalingFactor";
    LODWORD(v102) = v156;
    v194[25] = [MEMORY[0x1E696AD98] numberWithFloat:v102];
    v193[26] = @"inputSubjectDistanceOffset";
    LODWORD(v103) = v157;
    v194[26] = [MEMORY[0x1E696AD98] numberWithFloat:v103];
    v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v194 forKeys:v193 count:27];
    v105 = v81;
    v106 = imageCopy;
    v107 = [v105 dictionaryWithDictionary:v104];
    v190 = 0;
    [v12 extent];
    v108 = [(CIDepthEffectMakeBlurMap *)self faceMaskDelta:v182 extent:v107 parameters:&v190 distanceToAdd:?];
    [v12 extent];
    v110 = v109;
    [v12 extent];
    v113 = v112;
    inputScale = self->inputScale;
    v158 = v106;
    if (v106)
    {
      [v12 extent];
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v122 = v121;
      [v106 extent];
      v198.origin.x = v123;
      v198.origin.y = v124;
      v198.size.width = v125;
      v198.size.height = v126;
      v197.origin.x = v116;
      v197.origin.y = v118;
      v197.size.width = v120;
      v197.size.height = v122;
      if (CGRectEqualToRect(v197, v198))
      {
        inputScale = &unk_1F10823E8;
      }
    }

    v127 = MEMORY[0x1E695DF90];
    v191[0] = @"inputImage";
    v191[1] = @"inputScale";
    v192[0] = v12;
    v192[1] = inputScale;
    v191[2] = @"inputDistanceAdd";
    LODWORD(v111) = v190;
    v192[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v111, v155}];
    v192[3] = v108;
    v191[3] = @"inputFaceMaskDeltaImage";
    v191[4] = @"inputApertureScaling";
    v192[4] = [MEMORY[0x1E696AD98] numberWithDouble:v189];
    v191[5] = @"inputRelativeApertureScalingStrength";
    LODWORD(v128) = v163;
    v192[5] = [MEMORY[0x1E696AD98] numberWithFloat:v128];
    v191[6] = @"inputSmoothstepMin";
    LODWORD(v129) = v165;
    v192[6] = [MEMORY[0x1E696AD98] numberWithFloat:v129];
    v191[7] = @"inputSmoothstepMax";
    LODWORD(v130) = v164;
    v192[7] = [MEMORY[0x1E696AD98] numberWithFloat:v130];
    v191[8] = @"inputMaxBlur";
    LODWORD(v131) = v162;
    v192[8] = [MEMORY[0x1E696AD98] numberWithFloat:v131];
    v191[9] = @"inputPersonDistance";
    *&v132 = v161;
    v192[9] = [MEMORY[0x1E696AD98] numberWithFloat:v132];
    v191[10] = @"inputPersonThreshold";
    LODWORD(v133) = v166;
    v192[10] = [MEMORY[0x1E696AD98] numberWithFloat:v133];
    v192[11] = v188;
    v191[11] = @"inputPersonAdditive";
    v191[12] = @"inputPersonSubtractive";
    v192[12] = v25;
    v191[13] = @"inputPersonMaxBlur";
    LODWORD(v134) = v167;
    v192[13] = [MEMORY[0x1E696AD98] numberWithFloat:v134];
    v191[14] = @"inputHairDistance";
    *&v135 = v88;
    v192[14] = [MEMORY[0x1E696AD98] numberWithFloat:v135];
    v191[15] = @"inputHairThreshold";
    LODWORD(v136) = v187;
    v192[15] = [MEMORY[0x1E696AD98] numberWithFloat:v136];
    v192[16] = v31;
    v191[16] = @"inputHairAdditive";
    v191[17] = @"inputHairSubtractive";
    v192[17] = v37;
    v191[18] = @"inputHairMaxBlur";
    LODWORD(v137) = v186;
    v192[18] = [MEMORY[0x1E696AD98] numberWithFloat:v137];
    v191[19] = @"inputProtectBodyStrength";
    LODWORD(v138) = v92;
    v192[19] = [MEMORY[0x1E696AD98] numberWithFloat:v138];
    v191[20] = @"inputLeftEyeX";
    v192[20] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 0, v110);
    v191[21] = @"inputLeftEyeY";
    v192[21] = transformNormalizedMetalToCI(self->inputLeftEyePosition, 1u, v113);
    v191[22] = @"inputRightEyeX";
    v192[22] = transformNormalizedMetalToCI(self->inputRightEyePosition, 0, v110);
    v191[23] = @"inputRightEyeY";
    v192[23] = transformNormalizedMetalToCI(self->inputRightEyePosition, 1u, v113);
    v191[24] = @"inputFaceMidPointX";
    v192[24] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 0, v110);
    v191[25] = @"inputFaceMidPointY";
    v192[25] = transformNormalizedMetalToCI(self->inputFaceMidPoint, 1u, v113);
    v191[26] = @"inputEyeProtectionMaxFaces";
    v192[26] = [MEMORY[0x1E696AD98] numberWithInt:v170];
    v191[27] = @"inputEyeProtectionFaceWeightsSmoothStepMin";
    LODWORD(v139) = v171;
    v192[27] = [MEMORY[0x1E696AD98] numberWithFloat:v139];
    v191[28] = @"inputEyeProtectionFaceWeightsSmoothStepMax";
    LODWORD(v140) = v172;
    v192[28] = [MEMORY[0x1E696AD98] numberWithFloat:v140];
    v191[29] = @"inputEyeProtectionOvalDimsDistanceScale";
    LODWORD(v141) = v173;
    v192[29] = [MEMORY[0x1E696AD98] numberWithFloat:v141];
    v191[30] = @"inputEyeProtectionOvalDimsDistanceOffset";
    LODWORD(v142) = v174;
    v192[30] = [MEMORY[0x1E696AD98] numberWithFloat:v142];
    v191[31] = @"inputEyeProtectionOvalDimsRadiusHorizontal";
    LODWORD(v143) = v175;
    v192[31] = [MEMORY[0x1E696AD98] numberWithFloat:v143];
    v191[32] = @"inputEyeProtectionOvalDimsRadiusVertical";
    LODWORD(v144) = v176;
    v192[32] = [MEMORY[0x1E696AD98] numberWithFloat:v144];
    v191[33] = @"inputEyeProtectionOvalFallOffSmoothStepMin";
    LODWORD(v145) = v177;
    v192[33] = [MEMORY[0x1E696AD98] numberWithFloat:v145];
    v191[34] = @"inputEyeProtectionOvalFallOffSmoothStepMax";
    LODWORD(v146) = v178;
    v192[34] = [MEMORY[0x1E696AD98] numberWithFloat:v146];
    v191[35] = @"inputEyeProtectionPersonMaskSmoothStepMin";
    LODWORD(v147) = v179;
    v192[35] = [MEMORY[0x1E696AD98] numberWithFloat:v147];
    v191[36] = @"inputEyeProtectionPersonMaskSmoothStepMax";
    LODWORD(v148) = v180;
    v192[36] = [MEMORY[0x1E696AD98] numberWithFloat:v148];
    v191[37] = @"inputEyeProtectionPreventStrength";
    LODWORD(v149) = v181;
    v192[37] = [MEMORY[0x1E696AD98] numberWithFloat:v149];
    v191[38] = @"inputEyeProtectionSubtractiveMaxBlur";
    LODWORD(v150) = v168;
    v192[38] = [MEMORY[0x1E696AD98] numberWithFloat:v150];
    v191[39] = @"inputEyeProtectionSubtractiveApertureScaling";
    LODWORD(v151) = v169;
    v192[39] = [MEMORY[0x1E696AD98] numberWithFloat:v151];
    v152 = [v127 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v192, v191, 40)}];
    v153 = v152;
    if (v158)
    {
      [v152 setObject:v158 forKeyedSubscript:@"inputPersonAlpha"];
    }

    if (hairImageCopy)
    {
      [v153 setObject:hairImageCopy forKeyedSubscript:@"inputHairAlpha"];
    }

    return [v12 metalImageByApplyingFilter:@"CIModifyBlurmap" withInputParameters:v153];
  }

  return v12;
}

- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image
{
  v117[4] = *MEMORY[0x1E69E9840];
  if (image && (TypeID = CGImageMetadataGetTypeID(), TypeID == CFGetTypeID(image)) && (inputImage = self->inputImage, (RenderingParametersFromCGImageMetadata = getRenderingParametersFromCGImageMetadata(image)) != 0))
  {
    v90 = inputImage;
    [(CIVector *)self->inputFocusRect CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    p_inputFaceMidPoint = &self->inputFaceMidPoint;
    v16 = [(CIVector *)self->inputFaceMidPoint count];
    p_inputChinPosition = &self->inputChinPosition;
    v18 = [(CIVector *)self->inputChinPosition count];
    p_inputLeftEyePosition = &self->inputLeftEyePosition;
    v20 = [(CIVector *)self->inputLeftEyePosition count];
    selfCopy = self;
    p_inputRightEyePosition = &self->inputRightEyePosition;
    if (v20 >= [(CIVector *)self->inputRightEyePosition count])
    {
      v22 = 144;
    }

    else
    {
      v22 = 136;
    }

    selfCopy2 = self;
    v24 = [*(&self->super.super.isa + v22) count];
    v25 = &self->inputChinPosition;
    if (v18 >= v24)
    {
      v26 = [(CIVector *)*p_inputLeftEyePosition count];
      if (v26 >= [(CIVector *)*p_inputRightEyePosition count])
      {
        v25 = &self->inputRightEyePosition;
      }

      else
      {
        v25 = &self->inputLeftEyePosition;
      }
    }

    v27 = [(CIVector *)*v25 count];
    v28 = &self->inputFaceMidPoint;
    if (v16 >= v27)
    {
      v29 = [(CIVector *)*p_inputChinPosition count];
      v30 = [(CIVector *)*p_inputLeftEyePosition count];
      v31 = (v30 >= [(CIVector *)*p_inputRightEyePosition count]? &self->inputRightEyePosition : &self->inputLeftEyePosition);
      v32 = [*v31 count];
      v28 = &self->inputChinPosition;
      if (v29 >= v32)
      {
        v33 = [(CIVector *)*p_inputLeftEyePosition count];
        if (v33 >= [(CIVector *)*p_inputRightEyePosition count])
        {
          v28 = &self->inputRightEyePosition;
        }

        else
        {
          v28 = &self->inputLeftEyePosition;
        }
      }
    }

    v34 = [(CIVector *)*v28 count];
    v35 = v34 >> 1;
    if (v34 >> 1 >= 4)
    {
      v35 = 4;
    }

    if (v34 >= 2)
    {
      v39 = 0;
      v89 = v35;
      v40 = 2 * v35;
      v41 = &v114;
      v42 = &v112;
      v43 = &v110;
      v44 = &v108;
      do
      {
        [(CIVector *)*p_inputFaceMidPoint valueAtIndex:v39, v89];
        v93 = v45;
        [(CIVector *)*p_inputFaceMidPoint valueAtIndex:v39 + 1];
        v46.f64[0] = v93;
        v46.f64[1] = v47;
        *v41++ = vcvtq_f64_f32(vcvt_f32_f64(v46));
        [(CIVector *)*p_inputLeftEyePosition valueAtIndex:v39];
        v94 = v48;
        [(CIVector *)*p_inputLeftEyePosition valueAtIndex:v39 + 1];
        v49.f64[0] = v94;
        v49.f64[1] = v50;
        *v42++ = vcvtq_f64_f32(vcvt_f32_f64(v49));
        [(CIVector *)*p_inputRightEyePosition valueAtIndex:v39];
        v95 = v51;
        [(CIVector *)*p_inputRightEyePosition valueAtIndex:v39 + 1];
        v52.f64[0] = v95;
        v52.f64[1] = v53;
        *v43++ = vcvtq_f64_f32(vcvt_f32_f64(v52));
        [(CIVector *)*p_inputChinPosition valueAtIndex:v39];
        v96 = v54;
        [(CIVector *)*p_inputChinPosition valueAtIndex:v39 + 1];
        v55.f64[0] = v96;
        v55.f64[1] = v56;
        *v44++ = vcvtq_f64_f32(vcvt_f32_f64(v55));
        v39 += 2;
      }

      while (v40 != v39);
      selfCopy2 = selfCopy;
      [(CIDepthEffectMakeBlurMap *)selfCopy intrinsicMatrixFocalLength];
      v37 = v57;
      v59 = v89;
      v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:v89];
      v61 = &v115;
      v62 = &v109;
      v63 = &v113;
      v64 = &v111;
      do
      {
        v116[0] = @"centerPos";
        v117[0] = [CIVector vectorWithCGPoint:*(v61 - 1), *v61];
        v116[1] = @"leftEyeCenterPos";
        v117[1] = [CIVector vectorWithCGPoint:*(v63 - 1), *v63];
        v116[2] = @"rightEyeCenterPos";
        v117[2] = [CIVector vectorWithCGPoint:*(v64 - 1), *v64];
        v116[3] = @"chinCenterPos";
        v117[3] = [CIVector vectorWithCGPoint:*(v62 - 1), *v62];
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:4];
        if (CCPBundleEnvar(void)::onceToken != -1)
        {
          [CIDepthEffectMakeBlurMap unifiedRenderingOutputImage:];
        }

        v66 = [CCPBundleEnvar(void)::b classNamed:@"CCFacePoints"];
        if (!v66)
        {
          v102 = 0;
          v103 = &v102;
          v104 = 0x3052000000;
          v105 = __Block_byref_object_copy__19;
          v66 = getCCFacePointsClass(void)::softClass;
          v106 = __Block_byref_object_dispose__19;
          v107 = getCCFacePointsClass(void)::softClass;
          if (!getCCFacePointsClass(void)::softClass)
          {
            v97 = MEMORY[0x1E69E9820];
            v98 = 3221225472;
            v99 = ___ZL20getCCFacePointsClassv_block_invoke;
            v100 = &unk_1E75C1E10;
            v101 = &v102;
            ___ZL20getCCFacePointsClassv_block_invoke(&v97);
            v66 = v103[5];
          }

          _Block_object_dispose(&v102, 8);
        }

        v67 = [[v66 alloc] initWithDictionary:v65];
        if (!v67)
        {
          break;
        }

        [v60 addObject:v67];

        v61 += 2;
        v62 += 2;
        v63 += 2;
        v64 += 2;
        --v59;
      }

      while (v59);
      v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v60];
    }

    else
    {
      [(CIDepthEffectMakeBlurMap *)self intrinsicMatrixFocalLength];
      v37 = v36;
      v58 = MEMORY[0x1E695E0F0];
    }

    [(NSNumber *)selfCopy2->inputAperture floatValue];
    v69 = v68;
    [(NSNumber *)selfCopy2->inputScale floatValue];
    v71 = v70;
    inputShiftmapImage = selfCopy2->inputShiftmapImage;
    inputMatteImage = selfCopy2->inputMatteImage;
    inputHairImage = selfCopy2->inputHairImage;
    inputGlassesImage = selfCopy2->inputGlassesImage;
    inputGainMap = selfCopy2->inputGainMap;
    inputCaptureFolderMiscPath = selfCopy2->inputCaptureFolderMiscPath;
    v78 = +[CIImage emptyImage];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"options"];
    [dictionary setObject:RenderingParametersFromCGImageMetadata forKeyedSubscript:@"metadata"];
    LODWORD(v80) = v69;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v80), @"simulatedAperture"}];
    LODWORD(v81) = v37;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v81), @"focalLengthInPixels"}];
    LODWORD(v82) = 1022739087;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v82), @"maxBlur"}];
    LODWORD(v83) = v71;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v83), @"inputScale"}];
    [dictionary setObject:+[CIVector vectorWithCGRect:](CIVector forKeyedSubscript:{"vectorWithCGRect:", v8, v10, v12, v14), @"focusWindow"}];
    [dictionary setObject:v58 forKeyedSubscript:@"facePoints"];
    [dictionary setObject:v90 forKeyedSubscript:@"inputImage"];
    [dictionary setObject:0 forKeyedSubscript:@"inputImageLuma"];
    [dictionary setObject:0 forKeyedSubscript:@"inputImageChroma"];
    [dictionary setObject:inputShiftmapImage forKeyedSubscript:@"inputShiftMap"];
    [dictionary setObject:inputMatteImage forKeyedSubscript:@"inputSegmentation"];
    [dictionary setObject:inputHairImage forKeyedSubscript:@"inputHair"];
    [dictionary setObject:inputGlassesImage forKeyedSubscript:@"inputGlasses"];
    [dictionary setObject:inputGainMap forKeyedSubscript:@"inputGainMap"];
    if (inputCaptureFolderMiscPath)
    {
      [dictionary setObject:inputCaptureFolderMiscPath forKeyedSubscript:@"captureFolderMiscPath"];
    }

    if (CCPBundleEnvar(void)::onceToken != -1)
    {
      [CIDepthEffectMakeBlurMap unifiedRenderingOutputImage:];
    }

    v84 = [CCPBundleEnvar(void)::b classNamed:@"CCMakeBlurMapArgs"];
    if (!v84)
    {
      v102 = 0;
      v103 = &v102;
      v104 = 0x3052000000;
      v105 = __Block_byref_object_copy__19;
      v84 = getCCMakeBlurMapArgsClass(void)::softClass;
      v106 = __Block_byref_object_dispose__19;
      v107 = getCCMakeBlurMapArgsClass(void)::softClass;
      if (!getCCMakeBlurMapArgsClass(void)::softClass)
      {
        v97 = MEMORY[0x1E69E9820];
        v98 = 3221225472;
        v99 = ___ZL25getCCMakeBlurMapArgsClassv_block_invoke;
        v100 = &unk_1E75C1E10;
        v101 = &v102;
        ___ZL25getCCMakeBlurMapArgsClassv_block_invoke(&v97);
        v84 = v103[5];
      }

      _Block_object_dispose(&v102, 8);
    }

    v85 = [v84 alloc];
    v86 = [v85 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithDictionary:", dictionary)}];
    if (v86)
    {
      v87 = [objc_alloc(envCCMakeBlurMapClass()) initWithMetalQueue:0];
      v88 = v87;
      if (v87)
      {
        v78 = [v87 imageUsingArgs:v86];
      }
    }

    if (!v78)
    {
      return +[CIImage emptyImage];
    }

    return v78;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

- (id)outputImage
{
  v25[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputShiftmapImage)
  {
    return 0;
  }

  v3 = metadataFromValue(self->inputAuxDataMetadata);
  if (v3 || (inputShiftmapImage = self->inputShiftmapImage) != 0 && [(CIImage *)self->inputShiftmapImage properties]&& (v8 = [(CIImage *)inputShiftmapImage properties], (v3 = [(NSDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696D228]]) != 0))
  {
    v4 = v3;
    inputAuxDataMetadata = tuningParametersFromMetaData(v3);
  }

  else
  {
    inputAuxDataMetadata = tuningParametersFromImage(self->inputShiftmapImage);
    v4 = 0;
  }

  if (!inputAuxDataMetadata)
  {
    inputAuxDataMetadata = MEMORY[0x1E695E0F8];
  }

  self->tuningParameters = inputAuxDataMetadata;
  if (self->inputAuxDataMetadata)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(self->inputAuxDataMetadata))
    {
      inputAuxDataMetadata = self->inputAuxDataMetadata;
      self->tuningParameters = inputAuxDataMetadata;
    }

    else
    {
      inputAuxDataMetadata = self->tuningParameters;
    }
  }

  v10 = [(NSDictionary *)inputAuxDataMetadata objectForKeyedSubscript:@"Version"];
  v11 = MEMORY[0x1E696AD98];
  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v13 = [v11 numberWithUnsignedInteger:unsignedIntegerValue];
  intValue = [v13 intValue];
  if (intValue < +[CIFilter minSDOFRenderingVersionSupported])
  {
    getSimulatedAperture(self->inputShiftmapImage, v4, self->inputAperture, self->tuningParameters);
    self->simulatedAperture = v15;
    v16 = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:linearP3ColorSpace()];
    if (!v13 || (v17 = v16, v18 = [v13 integerValue], v18 == 1))
    {
      v19 = [(CIDepthEffectMakeBlurMap *)self blurMapV2:self->inputShiftmapImage];
      goto LABEL_32;
    }

    if (v18 == 2)
    {
      v19 = [(CIDepthEffectMakeBlurMap *)self blurMapV3:v17 shiftmap:self->inputShiftmapImage alphaImage:self->inputMatteImage];
      goto LABEL_32;
    }

    if (v18 == 3)
    {
      v19 = [(CIDepthEffectMakeBlurMap *)self blurMapV4:v17 shiftmap:self->inputShiftmapImage alphaImage:self->inputMatteImage hairImage:self->inputHairImage];
LABEL_32:
      v21 = v19;
      tuningParameters = self->tuningParameters;
      v24[0] = @"inputTuningParameters";
      v24[1] = @"inputScale";
      inputScale = self->inputScale;
      v25[0] = tuningParameters;
      v25[1] = inputScale;
      v24[2] = @"inputDraftMode";
      v25[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[CIDepthBlurEffect getDraftMode:](CIDepthBlurEffect, "getDraftMode:", -[CIDepthEffectMakeBlurMap inputDraftMode](self, "inputDraftMode"))}];
      return [objc_msgSend(v21 imageByApplyingFilter:@"CIBlurmapSmoothing" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, v24, 3)), "_imageByRenderingToIntermediate"}];
    }

    return self->inputShiftmapImage;
  }

  intValue2 = [v13 intValue];
  if (intValue2 > +[CIFilter maxSDOFRenderingVersionSupported])
  {
    return self->inputShiftmapImage;
  }

  return [(CIDepthEffectMakeBlurMap *)self unifiedRenderingOutputImage:v4];
}

@end