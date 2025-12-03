@interface CIMedianFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMedianFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryBlur";
  v3[1] = @"CICategoryStillImage";
  v3[2] = @"CICategoryVideo";
  v3[3] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"9";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v14))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    _kernel3x3 = [(CIMedianFilter *)self _kernel3x3];
    [(CIImage *)self->inputImage extent];
    v12[0] = self->inputImage;
    v9 = [_kernel3x3 applyWithExtent:&__block_literal_global_48 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v12, 1), v5, v6, v7, v8}];
    if (CI_ENABLE_MPS())
    {
      v10 = [CIMedianProcessor applyMedianToImage:self->inputImage width:3];
      if (v10)
      {
        v11 = v10;
        [v10 extent];
        if (!CGRectIsEmpty(v15))
        {
          return [CIImage imageForRenderingWithMPS:v11 orNonMPS:v9];
        }
      }
    }

    return v9;
  }
}

@end