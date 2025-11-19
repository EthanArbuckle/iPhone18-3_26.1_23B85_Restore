@interface CIMorphologyGradient
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMorphologyGradient

- (id)outputImage
{
  v25[2] = *MEMORY[0x1E69E9840];
  result = self->super.inputImage;
  if (result)
  {
    [result extent];
    if (CGRectIsEmpty(v26))
    {
      return 0;
    }

    else
    {
      [(NSNumber *)self->super.inputRadius floatValue];
      v5 = fmaxf(v4, 0.0);
      v6 = [CIFilter filterWithName:@"CICheapMorphology"];
      [(CIFilter *)v6 setValue:self->super.inputImage forKey:@"inputImage"];
      *&v7 = v5;
      -[CIFilter setValue:forKey:](v6, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v7], @"inputRadius");
      v8 = [(CIFilter *)v6 outputImage];
      *&v9 = -v5;
      -[CIFilter setValue:forKey:](v6, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v9], @"inputRadius");
      v10 = [(CIFilter *)v6 outputImage];
      [(CIFilter *)v6 setValue:0 forKey:@"inputImage"];
      v11 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradient];
      [(CIImage *)v10 extent];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(CIImage *)v8 extent];
      v29.origin.x = v20;
      v29.origin.y = v21;
      v29.size.width = v22;
      v29.size.height = v23;
      v27.origin.x = v13;
      v27.origin.y = v15;
      v27.size.width = v17;
      v27.size.height = v19;
      v28 = CGRectUnion(v27, v29);
      v25[0] = v10;
      v25[1] = v8;
      v24 = -[CIColorKernel applyWithExtent:arguments:](v11, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2], v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
      [(CIImage *)self->super.inputImage extent];
      return [(CIImage *)v24 imageByCroppingToRect:?];
    }
  }

  return result;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"11";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.13";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1084328;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1084328;
  v4[3] = &unk_1F1084308;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084318;
  v4[5] = &unk_1F1084328;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end