@interface CIFocalPlaneNative
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIFocalPlaneNative

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryColorAdjustment";
  v15[1] = @"CICategoryStillImage";
  v15[2] = @"CICategoryBuiltIn";
  v15[3] = @"CICategoryApplePrivate";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"12";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.14";
  v16[3] = @"inputAlphaThreshold";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F1083B18;
  v14[1] = &unk_1F1081D58;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1083B18;
  v14[3] = &unk_1F1081D58;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1081D40;
  v14[5] = @"CIAttributeTypeScalar";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v16[4] = @"inputAmplitude";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F1083B18;
  v12[1] = &unk_1F1081D58;
  v11[2] = @"CIAttributeMin";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F1083B18;
  v12[3] = &unk_1F1081D58;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1081D40;
  v12[5] = @"CIAttributeTypeScalar";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v16[5] = @"inputExponent";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1083B18;
  v10[1] = &unk_1F1081D58;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1083B18;
  v10[3] = &unk_1F1081D58;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1081D58;
  v10[5] = @"CIAttributeTypeScalar";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v16[6] = @"inputGamma";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1083B18;
  v8[1] = &unk_1F1081D58;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1083B18;
  v8[3] = &unk_1F1081D58;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1081D58;
  v8[5] = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v16[7] = @"inputMinFactor";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1083B18;
  v6[1] = &unk_1F1083B28;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1083B18;
  v6[3] = &unk_1F1083B28;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1081D40;
  v6[5] = @"CIAttributeTypeScalar";
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v16[8] = @"inputMaxFactor";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1083B18;
  v4[1] = &unk_1F1083B28;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1083B18;
  v4[3] = &unk_1F1083B28;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1081D58;
  v4[5] = @"CIAttributeTypeScalar";
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (id)outputImage
{
  v47[5] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result && self->inputLensModelCalculatorImage)
  {
    if (self->inputMatteImage)
    {
      [(NSNumber *)self->inputAmplitude floatValue];
      v5 = v4;
      [(NSNumber *)self->inputExponent floatValue];
      v7 = v6;
      [(NSNumber *)self->inputGamma floatValue];
      v9 = v8;
      [(NSNumber *)self->inputMinFactor floatValue];
      v11 = [CIVector vectorWithX:v5 Y:v7 Z:v9 W:v10];
      [(NSNumber *)self->inputMaxFactor floatValue];
      v13 = v12;
      [(NSNumber *)self->inputAlphaThreshold floatValue];
      v15 = [CIVector vectorWithX:v13 Y:v14 Z:0.0 W:0.0];
      inputMatteImage = self->inputMatteImage;
      [(CIImage *)inputMatteImage extent];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(CIImage *)self->inputImage extent];
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v27;
      v50.size.height = v28;
      v49.origin.x = v18;
      v49.origin.y = v20;
      v49.size.width = v22;
      v49.size.height = v24;
      if (!CGRectEqualToRect(v49, v50))
      {
        [(CIImage *)self->inputImage extent];
        v30 = v29;
        [(CIImage *)self->inputMatteImage extent];
        v32 = v30 / v31;
        [(CIImage *)self->inputImage extent];
        v34 = v33;
        [(CIImage *)self->inputMatteImage extent];
        v36 = v34 / v35;
        v37 = self->inputMatteImage;
        CGAffineTransformMakeScale(&v46, v32, v36);
        inputMatteImage = [(CIImage *)v37 imageByApplyingTransform:&v46 highQualityDownsample:0];
      }

      v38 = [(CIImage *)self->inputLensModelCalculatorImage imageByClampingToExtent];
      [(NSNumber *)self->inputExponent floatValue];
      if (vabdd_f64(2.0, v39) >= 0.00100000005)
      {
        v40 = [(CIFocalPlaneNative *)self _focalPlanePreProcessorKernel];
      }

      else
      {
        v40 = [(CIFocalPlaneNative *)self _focalPlanePreProcessorKernelPow2];
      }

      v41 = v40;
      [(CIImage *)self->inputImage extent];
      v47[0] = self->inputImage;
      v47[1] = inputMatteImage;
      v47[2] = v38;
      v47[3] = v11;
      v47[4] = v15;
      return [v41 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 5), v42, v43, v44, v45}];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

@end