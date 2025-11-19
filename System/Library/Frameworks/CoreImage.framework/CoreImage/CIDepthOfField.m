@interface CIDepthOfField
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDepthOfField

- (id)outputImage
{
  v50[1] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  [(NSNumber *)self->inputRadius floatValue];
  if (v4 <= 0.0)
  {
    v47 = self->inputImage;

    return v47;
  }

  else
  {
    [(NSNumber *)self->inputSaturation floatValue];
    if (v5 != 1.0)
    {
      v6 = [CIFilter filterWithName:@"CIColorControls"];
      [(CIFilter *)v6 setDefaults];
      [(CIFilter *)v6 setValue:self->inputSaturation forKey:@"inputSaturation"];
      [(CIFilter *)v6 setValue:inputImage forKey:@"inputImage"];
      inputImage = [(CIFilter *)v6 outputImage];
    }

    [(NSNumber *)self->inputUnsharpMaskRadius floatValue];
    if (v7 > 0.0)
    {
      [(NSNumber *)self->inputUnsharpMaskIntensity floatValue];
      if (v8 > 0.0)
      {
        v9 = [CIFilter filterWithName:@"CIUnsharpMask"];
        [(CIFilter *)v9 setDefaults];
        [(CIFilter *)v9 setValue:self->inputUnsharpMaskRadius forKey:@"inputRadius"];
        [(CIFilter *)v9 setValue:self->inputUnsharpMaskIntensity forKey:@"inputIntensity"];
        [(CIFilter *)v9 setValue:inputImage forKey:@"inputImage"];
        inputImage = [(CIFilter *)v9 outputImage];
      }
    }

    v10 = [CIFilter filterWithName:@"CIDiscBlur"];
    [(CIFilter *)v10 setDefaults];
    [(CIFilter *)v10 setValue:self->inputRadius forKey:@"inputRadius"];
    [(CIFilter *)v10 setValue:self->inputImage forKey:@"inputImage"];
    v11 = [(CIFilter *)v10 outputImage];
    [(CIImage *)self->inputImage extent];
    v12 = [(CIImage *)v11 imageByCroppingToRect:?];
    v13 = [(CIDepthOfField *)self _CIAlphaNormalize];
    [(CIImage *)self->inputImage extent];
    v50[0] = v12;
    v18 = [v13 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v50, 1), v14, v15, v16, v17}];
    v19 = MEMORY[0x1E696AD98];
    [(NSNumber *)self->inputRadius floatValue];
    *&v21 = v20 * 3.0;
    v22 = [v19 numberWithFloat:v21];
    v23 = [CIFilter filterWithName:@"CIDiscBlur"];
    [(CIFilter *)v23 setDefaults];
    [(CIFilter *)v23 setValue:v22 forKey:@"inputRadius"];
    [(CIFilter *)v23 setValue:self->inputImage forKey:@"inputImage"];
    v24 = [(CIFilter *)v23 outputImage];
    [(CIImage *)self->inputImage extent];
    v25 = [(CIImage *)v24 imageByCroppingToRect:?];
    v26 = [(CIDepthOfField *)self _CIAlphaNormalize];
    [(CIImage *)self->inputImage extent];
    v49 = v25;
    v31 = [v26 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v49, 1), v27, v28, v29, v30}];
    v32 = [(CIDepthOfField *)self _CITiltShift];
    [(CIImage *)inputImage extent];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    inputPoint0 = self->inputPoint0;
    v48[0] = inputImage;
    v48[1] = v18;
    inputPoint1 = self->inputPoint1;
    v48[2] = v31;
    v48[3] = inputPoint0;
    v48[4] = inputPoint1;
    [(CIImage *)self->inputImage extent];
    v44 = v43;
    [(CIImage *)self->inputImage extent];
    v48[5] = [CIVector vectorWithX:v44 Y:v45];
    return [v32 applyWithExtent:&__block_literal_global_17 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 6), v34, v36, v38, v40}];
  }
}

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryStylize";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"9";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.6";
  v16[3] = @"inputSaturation";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1083238;
  v14[1] = &unk_1F1083238;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1083248;
  v14[3] = &unk_1F1083258;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeScalar";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v16[4] = @"inputUnsharpMaskRadius";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083238;
  v12[1] = &unk_1F1083238;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083248;
  v12[3] = &unk_1F1083268;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeScalar";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v16[5] = @"inputUnsharpMaskIntensity";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083238;
  v10[1] = &unk_1F1083238;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083248;
  v10[3] = &unk_1F1083278;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeScalar";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v16[6] = @"inputRadius";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083238;
  v8[1] = &unk_1F1083238;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083288;
  v8[3] = &unk_1F1083298;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v16[7] = @"inputPoint0";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:0.0 Y:300.0];
  v6[1] = @"CIAttributeTypePosition";
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v16[8] = @"inputPoint1";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:300.0 Y:300.0];
  v4[1] = @"CIAttributeTypePosition";
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

@end