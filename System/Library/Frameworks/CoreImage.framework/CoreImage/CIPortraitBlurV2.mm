@interface CIPortraitBlurV2
+ (id)customAttributes;
- (double)effectiveScale;
- (id)outputImage;
- (id)sensorSize;
@end

@implementation CIPortraitBlurV2

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v11[4] = @"CICategoryApplePrivate";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"12";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.14";
  v12[3] = @"inputLumaNoiseScale";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084728;
  v10[1] = &unk_1F1084748;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1084728;
  v10[3] = &unk_1F1084748;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1084758;
  v10[5] = @"CIAttributeTypeScalar";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputAperture";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10846F8;
  v8[1] = &unk_1F1084768;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084728;
  v8[3] = &unk_1F1084768;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1084728;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputShape";
  v5 = @"CIAttributeClass";
  v6 = @"NSString";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v12[6] = @"inputDraftMode";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1082070;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10820B8;
  v4[3] = &unk_1F1082070;
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)sensorSize
{
  if ([(NSDictionary *)self->inputTuningParameters objectForKeyedSubscript:@"SensorWidth"])
  {
    v3 = [-[NSDictionary objectForKeyedSubscript:](self->inputTuningParameters objectForKeyedSubscript:{@"SensorWidth", "integerValue"}];
  }

  else
  {
    v3 = 4032.0;
  }

  v4 = [(NSDictionary *)self->inputTuningParameters objectForKeyedSubscript:@"SensorHeight"];
  v5 = 3024.0;
  if (v4)
  {
    v5 = [-[NSDictionary objectForKeyedSubscript:](self->inputTuningParameters objectForKeyedSubscript:{@"SensorHeight", "integerValue"}];
  }

  v6 = 4032.0;
  if (v3 != 4224.0)
  {
    v6 = v3;
  }

  if (v5 == 3168.0)
  {
    v5 = 3024.0;
  }

  return [CIVector vectorWithX:v6 Y:v5];
}

- (double)effectiveScale
{
  sensorSize = [(CIPortraitBlurV2 *)self sensorSize];
  [(CIImage *)self->inputBlurmapImage extent];
  v5 = v4;
  [sensorSize X];
  *&v6 = v5 / (v6 * 0.5);
  return *&v6;
}

- (id)outputImage
{
  v93[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputBlurmapImage = self->inputBlurmapImage;
  [(NSNumber *)self->inputScale floatValue];
  v6 = v5;
  [(CIImage *)self->inputBlurmapImage extent];
  v8 = v7;
  [(CIImage *)self->inputImage extent];
  if (vabdd_f64(v8, v9) > 0.001)
  {
    [(CIImage *)self->inputBlurmapImage extent];
    v11 = v10;
    [(CIImage *)self->inputImage extent];
    v13 = v11 / v12;
    [(CIImage *)self->inputBlurmapImage extent];
    v15 = v14;
    [(CIImage *)self->inputImage extent];
    v17 = v15 / v16;
    [(CIImage *)self->inputImage extent];
    v19 = v18;
    [(CIImage *)self->inputBlurmapImage extent];
    if (v19 <= v20)
    {
      v21 = self->inputBlurmapImage;
      CGAffineTransformMakeScale(&v81, 1.0 / v13, 1.0 / v17);
      inputBlurmapImage = [(CIImage *)v21 imageByApplyingTransform:&v81];
    }

    else
    {
      CGAffineTransformMakeScale(&v81, v13, v17);
      inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v81];
    }
  }

  v92[0] = @"inputBlurmapImage";
  v92[1] = @"inputUseMetal";
  v93[0] = inputBlurmapImage;
  v93[1] = &unk_1F10820D0;
  v22 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIPortraitBlurPreProcess", [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:2]);
  v23 = [CIDepthBlurEffect getDraftMode:[(CIPortraitBlurV2 *)self inputDraftMode]];
  [(CIImage *)v22 extent];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(NSNumber *)self->inputAperture floatValue];
  v33 = v32;
  SDOFSimpleLensModelValue(@"defaultSimulatedAperture", self->inputTuningParameters);
  v35 = 1.0;
  if (v33 > 0.0 && v34 > 0.0)
  {
    v35 = v34 / v33;
  }

  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v37 = v36;
  if (v29 <= v31)
  {
    v38 = v31;
  }

  else
  {
    v38 = v29;
  }

  v79 = v38;
  v90[0] = @"inputScale";
  *&v38 = v6;
  v91[0] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
  v90[1] = @"inputApertureScaling";
  v91[1] = [MEMORY[0x1E696AD98] numberWithDouble:v35];
  v90[2] = @"inputDraftMode";
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
  v90[3] = @"inputTuningParameters";
  inputTuningParameters = self->inputTuningParameters;
  v91[2] = v39;
  v91[3] = inputTuningParameters;
  v41 = -[CIImage imageByApplyingFilter:withInputParameters:](v22, "imageByApplyingFilter:withInputParameters:", @"CIHighlightRecovery", [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:4]);
  SDOFRenderingValue(&cfstr_Prefilterradiu.isa, self->inputTuningParameters);
  if (v42 > 0.0)
  {
    SDOFRenderingValue(&cfstr_Prefilterblurs.isa, self->inputTuningParameters);
    if (v43 > 0.0 && v23 != 1)
    {
      v88[0] = @"inputApertureScaling";
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
      v45 = self->inputTuningParameters;
      v89[0] = v44;
      v89[1] = v45;
      v88[1] = @"inputTuningParameters";
      v88[2] = @"inputScale";
      *&v46 = v6;
      v89[2] = [MEMORY[0x1E696AD98] numberWithFloat:v46];
      v41 = -[CIImage imageByApplyingFilter:withInputParameters:](v41, "imageByApplyingFilter:withInputParameters:", @"CISparseRendererPreFiltering", [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3]);
    }
  }

  SDOFRenderingValue(&cfstr_Alphaepsilon.isa, self->inputTuningParameters);
  if (*&v47 == 1.0 || (SDOFRenderingValue(&cfstr_Alphagain.isa, self->inputTuningParameters), *&v47 == 0.0) || (v74 = self->inputMatteImage) == 0 || ([(CIImage *)v74 extent], v75 <= 1.0) || ([(CIImage *)self->inputImage extent], v76 <= 1.0))
  {
    inputMatteImage = 0;
  }

  else
  {
    inputMatteImage = self->inputMatteImage;
    [(CIImage *)inputMatteImage extent];
    v95.origin.x = v25;
    v95.origin.y = v27;
    v95.size.width = v29;
    v95.size.height = v31;
    if (!CGRectEqualToRect(v94, v95))
    {
      [(CIImage *)inputMatteImage extent];
      memset(&v81, 0, sizeof(v81));
      CGAffineTransformMakeScale(&v81, v29 / v77, v31 / v78);
      v80 = v81;
      inputMatteImage = [(CIImage *)inputMatteImage imageByApplyingTransform:&v80];
    }
  }

  v87[0] = v41;
  v86[0] = @"inputImage";
  v86[1] = @"inputScale";
  *&v47 = v6;
  v87[1] = [MEMORY[0x1E696AD98] numberWithFloat:v47];
  v86[2] = @"inputApertureScaling";
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
  v50 = self->inputTuningParameters;
  v87[2] = v49;
  v87[3] = v50;
  v86[3] = @"inputTuningParameters";
  v86[4] = @"inputDraftMode";
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
  v86[5] = @"inputAperture";
  inputAperture = self->inputAperture;
  v87[4] = v51;
  v87[5] = inputAperture;
  v53 = +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CISparseRenderer", [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:6]);
  v54 = v53;
  if (inputMatteImage)
  {
    [(CIFilter *)v53 setValue:inputMatteImage forKey:@"inputMatteImage"];
  }

  outputImage = [(CIFilter *)v54 outputImage];
  SDOFRenderingValue(&cfstr_Antialiasblurs.isa, self->inputTuningParameters);
  v57 = v56;
  [(NSNumber *)self->inputLumaNoiseScale floatValue];
  v59 = v58;
  v60 = nRingsFromTuningParameters(self->inputTuningParameters, v6, v23, self->inputAperture);
  if (v23 != 1)
  {
    v61 = v60;
    v62 = v79 * v37;
    [(CIPortraitBlurV2 *)self effectiveScale];
    v64 = v63;
    v84[0] = @"inputMaxBlurInPixels";
    *&v63 = (v57 * v62) / v61;
    v85[0] = [MEMORY[0x1E696AD98] numberWithFloat:v63];
    v84[1] = @"inputAntiAliasRadius";
    v65 = MEMORY[0x1E696AD98];
    SDOFRenderingValue(&cfstr_Antialiasradiu.isa, self->inputTuningParameters);
    v85[1] = [v65 numberWithFloat:?];
    v84[2] = @"inputLumaNoiseAmpl";
    LODWORD(v66) = v59;
    v85[2] = [MEMORY[0x1E696AD98] numberWithFloat:v66];
    v84[3] = @"inputLumaNoiseModelCoeff";
    v67 = MEMORY[0x1E696AD98];
    SDOFRenderingValue(&cfstr_Lumanoisemodel.isa, self->inputTuningParameters);
    v85[3] = [v67 numberWithFloat:?];
    v84[4] = @"inputScale";
    *&v68 = v64;
    v85[4] = [MEMORY[0x1E696AD98] numberWithFloat:v68];
    v84[5] = @"inputRect";
    v85[5] = [CIVector vectorWithCGRect:v25, v27, v29, v31];
    v84[6] = @"inputSensorSize";
    v85[6] = [(CIPortraitBlurV2 *)self sensorSize];
    outputImage = -[CIImage imageByApplyingFilter:withInputParameters:](outputImage, "imageByApplyingFilter:withInputParameters:", @"CIPortraitAntialias", [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:7]);
  }

  v69 = [(CIImage *)outputImage imageByCroppingToRect:v25, v27, v29, v31];
  v70 = self->inputImage;
  v82[0] = @"inputImage";
  v82[1] = @"inputBlurImage";
  v83[0] = v70;
  v83[1] = v69;
  v82[2] = @"inputTuningParameters";
  v83[2] = self->inputTuningParameters;
  v71 = +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CIPortraitBlurCombiner", [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3]);
  v72 = v71;
  if (inputMatteImage)
  {
    [(CIFilter *)v71 setValue:inputMatteImage forKey:@"inputMatteImage"];
  }

  return [(CIFilter *)v72 outputImage];
}

@end