@interface CIBoxBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBoxBlur

- (id)outputImage
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v16))
  {

    return +[CIImage emptyImage];
  }

  [(NSNumber *)self->inputRadius doubleValue];
  v5 = fmax(floor(v4 * 0.5 + -0.25) * 2.0 + 1.0, 1.0);
  v6 = v5;
  if (v6 <= 1)
  {
    v7 = self->inputImage;

    return v7;
  }

  if (v6 == 3)
  {
    v8 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur3x3];
    [(CIImage *)self->inputImage extent];
    v18 = CGRectInset(v17, -1.0, -1.0);
    v14[0] = self->inputImage;
    return -[CIKernel applyWithExtent:roiCallback:arguments:](v8, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_5, [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1], v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  }

  v10 = boxBlurImage(self->inputImage, v5, 1u, 0);
  v9 = boxBlurImage(v10, v6, 0, 1u);
  if (!CI_ENABLE_MPS())
  {
    return v9;
  }

  inputImage = self->inputImage;
  v12 = v6;
  if (v6 > 9)
  {
    inputImage = [CIConvolutionProcessor applyBoxToImage:inputImage width:v6 height:1];
    v12 = 1;
  }

  v13 = [CIConvolutionProcessor applyBoxToImage:inputImage width:v12 height:v6];

  return [CIImage imageForRenderingWithMPS:v13 orNonMPS:v9];
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
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.5";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1082C18;
  v4[2] = &unk_1F1082C18;
  v4[3] = &unk_1F1082C28;
  v3[4] = @"CIAttributeDefault";
  v4[4] = &unk_1F1082C38;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end