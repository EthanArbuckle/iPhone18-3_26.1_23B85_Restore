@interface CISDOFHighlightRecovery
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISDOFHighlightRecovery

+ (id)customAttributes
{
  v19[10] = *MEMORY[0x1E69E9840];
  v18[0] = @"CIAttributeFilterCategories";
  v17[0] = @"CICategoryColorAdjustment";
  v17[1] = @"CICategoryVideo";
  v17[2] = @"CICategoryStillImage";
  v17[3] = @"CICategoryBuiltIn";
  v17[4] = @"CICategoryApplePrivate";
  v19[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v19[1] = @"12";
  v18[1] = @"CIAttributeFilterAvailable_iOS";
  v18[2] = @"CIAttributeFilterAvailable_Mac";
  v19[2] = @"10.14";
  v18[3] = @"inputScale";
  v15[0] = @"CIAttributeSliderMin";
  v15[1] = @"CIAttributeSliderMax";
  v16[0] = &unk_1F10846E8;
  v16[1] = &unk_1F10846F8;
  v15[2] = @"CIAttributeMin";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F10846E8;
  v16[3] = &unk_1F10846F8;
  v15[4] = @"CIAttributeDefault";
  v15[5] = @"CIAttributeType";
  v16[4] = &unk_1F10846F8;
  v16[5] = @"CIAttributeTypeScalar";
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v18[4] = @"inputMaxBlur";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F10846E8;
  v14[1] = &unk_1F1084708;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F10846E8;
  v14[3] = &unk_1F1084708;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1084718;
  v14[5] = @"CIAttributeTypeScalar";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v18[5] = @"inputApertureScale";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F1084728;
  v12[1] = &unk_1F10846F8;
  v11[2] = @"CIAttributeMin";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F1084728;
  v12[3] = &unk_1F10846F8;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F10846F8;
  v12[5] = @"CIAttributeTypeScalar";
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v18[6] = @"inputBlurRadius";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:0.0025 Y:0.0075];
  v10[1] = @"CIAttributeTypePosition";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v18[7] = @"inputMaxIntensity";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:0.9 Y:1.0];
  v8[1] = @"CIAttributeTypePosition";
  v19[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v18[8] = @"inputMinIntensity";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:0.0 Y:0.2];
  v6[1] = @"CIAttributeTypePosition";
  v19[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v18[9] = @"inputIterations";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1082070;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082088;
  v4[3] = &unk_1F10820A0;
  v19[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10];
}

- (id)outputImage
{
  v47[9] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    if ([(NSNumber *)self->inputIterations integerValue])
    {
      inputMaxBlur = self->inputMaxBlur;
      inputApertureScaling = self->inputApertureScaling;
      v46[0] = @"maxBlur";
      v46[1] = @"apertureScaling";
      inputIterations = self->inputIterations;
      v47[0] = inputMaxBlur;
      v47[1] = inputApertureScaling;
      v47[2] = inputIterations;
      v46[2] = @"iterations";
      v46[3] = @"blurRadiusT0";
      v6 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputBlurRadius X];
      v47[3] = [v6 numberWithDouble:?];
      v46[4] = @"blurRadiusT1";
      v7 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputBlurRadius Y];
      v47[4] = [v7 numberWithDouble:?];
      v46[5] = @"maxIntensityT0";
      v8 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputMaxIntensity X];
      v47[5] = [v8 numberWithDouble:?];
      v46[6] = @"maxIntensityT1";
      v9 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputMaxIntensity Y];
      v47[6] = [v9 numberWithDouble:?];
      v46[7] = @"minIntensityT0";
      v10 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputMinIntensity X];
      v47[7] = [v10 numberWithDouble:?];
      v46[8] = @"minIntensityT1";
      v11 = MEMORY[0x1E696AD98];
      [(CIVector *)self->inputMinIntensity Y];
      v47[8] = [v11 numberWithDouble:?];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:9];
      inputImage = self->inputImage;
      v14 = linearP3ColorSpace();
      v15 = [(CIImage *)inputImage imageByColorMatchingWorkingSpaceToColorSpace:v14];
      [(NSNumber *)self->inputScale floatValue];
      v17 = v16;
      [(CIImage *)v15 extent];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      memset(&v44, 0, sizeof(v44));
      CGAffineTransformMakeScale(&v44, 1.0 / v17, 1.0 / v17);
      v43 = v44;
      v49.origin.x = v19;
      v49.origin.y = v21;
      v49.size.width = v23;
      v49.size.height = v25;
      v50 = CGRectApplyAffineTransform(v49, &v43);
      v51 = CGRectIntegral(v50);
      width = v51.size.width;
      height = v51.size.height;
      [(CIImage *)v15 extent:v51.origin.x];
      v29 = width / v28;
      [(CIImage *)v15 extent];
      CGAffineTransformMakeScale(&v43, v29, height / v30);
      v44 = v43;
      if (v17 != 1.0)
      {
        imageByClampingToExtent = [(CIImage *)v15 imageByClampingToExtent];
        v43 = v44;
        v15 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v43 highQualityDownsample:1];
        v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
        [v12 setObject:&unk_1F10846F8 forKeyedSubscript:@"scale"];
        v32 = MEMORY[0x1E696AD98];
        [(NSNumber *)self->inputIterations floatValue];
        *&v34 = v33 / v17;
        [v12 setObject:objc_msgSend(v32 forKeyedSubscript:{"numberWithFloat:", v34), @"iterations"}];
      }

      v43 = v44;
      v52.origin.x = v19;
      v52.origin.y = v21;
      v52.size.width = v23;
      v52.size.height = v25;
      v53 = CGRectApplyAffineTransform(v52, &v43);
      if ((v53.size.width | v53.size.height))
      {
        v35 = v53.size.width;
        v36 = v53.size.height;
        v15 = [[(CIImage *)v15 imageByClampingToExtent] imageByCroppingToRect:v53.origin.x, v53.origin.y, ((v35 & 1) + v35), ((v36 & 1) + v36)];
      }

      [(CIImage *)v15 extent:v53.origin.x];
      v45 = v15;
      v41 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIHighlightRecoveryProcessor, "applyWithExtent:inputs:arguments:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1], v12, 0, v37, v38, v39, v40);
      if (v17 != 1.0)
      {
        CGAffineTransformMakeScale(&v43, v17, v17);
        v41 = [(CIImage *)v41 imageByApplyingTransform:&v43 highQualityDownsample:1];
      }

      [(CIImage *)self->inputImage extent];
      return [[(CIImage *)v41 imageByCroppingToRect:?] imageByColorMatchingColorSpaceToWorkingSpace:v14];
    }

    else
    {
      return self->inputImage;
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end