@interface CIPseudoMedian
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPseudoMedian

- (id)outputImage
{
  v31[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsEmpty(v33))
  {
    return 0;
  }

  [(NSNumber *)self->inputRadius floatValue];
  v7 = v6;
  [(NSNumber *)self->inputWeights floatValue];
  if (v7 > 0.0)
  {
    v9 = v8;
    v10 = [CIFilter filterWithName:@"CICheapMorphology"];
    [(CIFilter *)v10 setValue:self->inputImage forKey:@"inputImage"];
    *&v11 = v7 + -1.0;
    -[CIFilter setValue:forKey:](v10, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v11], @"inputRadius");
    outputImage = [(CIFilter *)v10 outputImage];
    *&v13 = -(v7 + -1.0);
    -[CIFilter setValue:forKey:](v10, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v13], @"inputRadius");
    [(CIFilter *)v10 setValue:[(CIFilter *)v10 outputImage] forKey:@"inputImage"];
    [(CIFilter *)v10 setValue:self->inputRadius forKey:@"inputRadius"];
    outputImage2 = [(CIFilter *)v10 outputImage];
    [(CIFilter *)v10 setValue:outputImage forKey:@"inputImage"];
    *&v15 = -v7;
    -[CIFilter setValue:forKey:](v10, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v15], @"inputRadius");
    outputImage3 = [(CIFilter *)v10 outputImage];
    [(CIFilter *)v10 setValue:0 forKey:@"inputImage"];
    if (v9 != 0.0)
    {
      if (v9 == 1.0)
      {
        return outputImage2;
      }

      else
      {
        v17 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_average];
        [(CIImage *)outputImage3 extent];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [(CIImage *)outputImage2 extent];
        v36.origin.x = v26;
        v36.origin.y = v27;
        v36.size.width = v28;
        v36.size.height = v29;
        v34.origin.x = v19;
        v34.origin.y = v21;
        v34.size.width = v23;
        v34.size.height = v25;
        v35 = CGRectUnion(v34, v36);
        v31[0] = outputImage3;
        v31[1] = outputImage2;
        v31[2] = self->inputWeights;
        v30 = -[CIColorKernel applyWithExtent:arguments:](v17, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3], v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
        [(CIImage *)self->inputImage extent];
        return [(CIImage *)v30 imageByCroppingToRect:?];
      }
    }

    return outputImage3;
  }

  v16 = self->inputImage;

  return v16;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"10";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.11";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeDistance";
  v6[1] = &unk_1F1084328;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1084328;
  v6[3] = &unk_1F1084308;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1084318;
  v6[5] = &unk_1F1084328;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputWeights";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1084328;
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084338;
  v4[3] = &unk_1F1084348;
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end