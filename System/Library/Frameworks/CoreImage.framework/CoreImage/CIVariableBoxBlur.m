@interface CIVariableBoxBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIVariableBoxBlur

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryStylize";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"10";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.12";
  v6[3] = @"inputScale";
  v3[0] = @"CIAttributeIdentity";
  v3[1] = @"CIAttributeDefault";
  v4[0] = &unk_1F1085028;
  v4[1] = &unk_1F1085028;
  v3[2] = @"CIAttributeMin";
  v4[2] = &unk_1F1085028;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputRadiusImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputScale floatValue];
  if (v3 < 0.5)
  {
    return self->inputImage;
  }

  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_variableBoxBlur];
  v5 = [(CIImage *)self->inputImage imageByApplyingFilter:@"CIIntegralImage" withInputParameters:0];
  if (!v5)
  {
    return self->inputImage;
  }

  v6 = v5;
  [(CIImage *)self->inputImage extent];
  v7 = [CIVector vectorWithCGRect:?];
  [(CIImage *)self->inputImage extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19[0] = v6;
  v16 = [(CIImage *)self->inputRadiusImage imageByClampingToExtent];
  inputScale = self->inputScale;
  v19[1] = v16;
  v19[2] = inputScale;
  v19[3] = v7;
  return -[CIKernel applyWithExtent:roiCallback:arguments:](v4, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_69, [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4], v9, v11, v13, v15);
}

@end