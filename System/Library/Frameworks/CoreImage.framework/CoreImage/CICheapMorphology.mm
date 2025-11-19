@interface CICheapMorphology
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICheapMorphology

- (id)outputImage
{
  v32[2] = *MEMORY[0x1E69E9840];
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsEmpty(v34))
  {
    return 0;
  }

  v6 = [(NSNumber *)self->super.inputRadius intValue];
  v7 = fabsf(v6);
  if (v7 >= 1.0)
  {
    v9 = v6;
    if (v7 >= 5.0)
    {
      if (v6 >= 0)
      {
        v18 = &CI::_min3x3;
      }

      else
      {
        v18 = &CI::_max3x3;
      }

      v19 = [CIKernel kernelWithInternalRepresentation:v18];
      v4 = self->super.inputImage;
      v20 = 1.0;
      v21 = (floorf(v7) * 2.0) + 1.0;
      if (v21 > 1.0)
      {
        v22 = v19;
        do
        {
          v23 = v20 * 3.0;
          if ((v20 * 3.0) >= v21)
          {
            v24 = v20 + (((v20 * 3.0) - v21) * -0.5);
          }

          else
          {
            v24 = v20;
          }

          v25 = [CIVector vectorWithX:v24 Y:v24 * 0.707106781 Z:-v24 * 0.707106781 W:0.0];
          v26 = [(CIImage *)v4 imageBySamplingNearest];
          [(CIImage *)v26 extent];
          v38 = CGRectInset(v37, -v24, -v24);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __32__CICheapMorphology_outputImage__block_invoke_2;
          v27[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v28 = v24;
          v31[0] = v26;
          v31[1] = v25;
          v4 = -[CIKernel applyWithExtent:roiCallback:arguments:](v22, "applyWithExtent:roiCallback:arguments:", v27, [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2], v38.origin.x, v38.origin.y, v38.size.width, v38.size.height);
          v20 = v23;
        }

        while (v23 < v21);
      }
    }

    else
    {
      v10 = [(CIImage *)self->super.inputImage imageBySamplingNearest];
      if (v9 >= 0)
      {
        v11 = &CI::_minDisk;
      }

      else
      {
        v11 = &CI::_maxDisk;
      }

      v12 = [CIKernel kernelWithInternalRepresentation:v11];
      v13 = floorf(v7);
      [(CIImage *)v10 extent];
      v36 = CGRectInset(v35, -v13, -v13);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __32__CICheapMorphology_outputImage__block_invoke;
      v29[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v30 = v13;
      v32[0] = v10;
      v32[1] = [MEMORY[0x1E696AD98] numberWithFloat:COERCE_DOUBLE(LODWORD(v7))];
      return -[CIKernel applyWithExtent:roiCallback:arguments:](v12, "applyWithExtent:roiCallback:arguments:", v29, [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2], x, y, width, height);
    }

    return v4;
  }

  v8 = self->super.inputImage;

  return v8;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"10";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.11";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F10842F8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084308;
  v4[3] = &unk_1F1084318;
  v3[4] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084328;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end