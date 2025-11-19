@interface CIVibrance
+ (id)customAttributes;
- (id)_initFromProperties:(id)a3;
- (id)_outputProperties;
- (id)outputImage;
@end

@implementation CIVibrance

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryHighDynamicRange";
  v5[4] = @"CICategoryInterlaced";
  v5[5] = @"CICategoryNonSquarePixels";
  v5[6] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v7[1] = @"5";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.7";
  v6[3] = @"inputAmount";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1085038;
  v4[1] = &unk_1F1085048;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1085038;
  v4[3] = &unk_1F1085048;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1085058;
  v4[5] = &unk_1F1085058;
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputAmount doubleValue];
  v4 = fmin(fmax(v3, -1.0), 1.0);
  inputImage = self->inputImage;
  if (fabs(v4) <= 0.001)
  {
    v19 = inputImage;

    return v19;
  }

  else
  {
    v6 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
    if (v4 >= 0.0)
    {
      v7 = [(CIVibrance *)self _kernelPos];
      v20 = [CIVector vectorWithX:v4 * 3.0 Y:v4 * -1.5 + v4 * -4.5 * v4 Z:v4 * -0.5 + v4 * (v4 * 4.5) * v4 W:v4 * (v4 * 4.5) + v4 * (v4 * -4.5) * v4 - v4];
      [(CIImage *)v6 extent];
      v9 = v21;
      v11 = v22;
      v13 = v23;
      v15 = v24;
      v25[0] = v6;
      v25[1] = v20;
      v17 = v25;
    }

    else
    {
      v7 = [(CIVibrance *)self _kernelNeg];
      [(CIImage *)v6 extent];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      inputAmount = self->inputAmount;
      v26[0] = v6;
      v26[1] = inputAmount;
      v17 = v26;
    }

    return [objc_msgSend(v7 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v17, 2), v9, v11, v13, v15), "imageByPremultiplyingAlpha"}];
  }
}

- (id)_outputProperties
{
  v5[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAmount doubleValue];
  v3 = fmin(fmax(v2, -1.0), 1.0);
  if (fabs(v3) <= 0.001)
  {
    return 0;
  }

  v5[0] = metadataPropertyWithBool();
  v5[1] = metadataPropertyWithDouble(v3 * 50.0);
  v5[2] = metadataPropertyWithDouble(v3);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
}

- (id)_initFromProperties:(id)a3
{
  v5 = 0.0;
  if (metadataPropertyArrayGetDouble(a3, @"http://ns.apple.com/adjustment-settings/1.0/", @"Vibrance", &v5))
  {
    -[CIVibrance setInputAmount:](self, "setInputAmount:", [MEMORY[0x1E696AD98] numberWithDouble:v5]);
  }

  else
  {

    return 0;
  }

  return self;
}

@end