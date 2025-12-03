@interface CICircularMaskFromPointImage
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICircularMaskFromPointImage

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorEffect";
  v3[1] = @"CICategoryBuiltIn";
  v3[2] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v5[1] = @"12";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.13";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (self->inputCoordinate)
  {
    inputInnerRadius = self->inputInnerRadius;
    if (!inputInnerRadius)
    {
      inputInnerRadius = &unk_1F10822B0;
    }

    self->inputInnerRadius = inputInnerRadius;
    if (self->inputOuterRadius)
    {
      inputOuterRadius = self->inputOuterRadius;
    }

    else
    {
      inputOuterRadius = &unk_1F1082220;
    }

    self->inputOuterRadius = inputOuterRadius;
    [(NSNumber *)inputOuterRadius floatValue];
    v6 = v5;
    [(NSNumber *)self->inputInnerRadius floatValue];
    v8 = v7;
    [(NSNumber *)self->inputInnerRadius floatValue];
    v10 = v8 * v9;
    _kernelDraw = [(CICircularMaskFromPointImage *)self _kernelDraw];
    v12 = *MEMORY[0x1E695F040];
    v13 = *(MEMORY[0x1E695F040] + 8);
    v14 = *(MEMORY[0x1E695F040] + 16);
    v15 = *(MEMORY[0x1E695F040] + 24);
    v20[0] = [(CIImage *)self->inputCoordinate imageByClampingToExtent];
    *&v16 = v10;
    v20[1] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v17 = [_kernelDraw applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v20, 2), v12, v13, v14, v15}];
    [(NSNumber *)self->inputOuterRadius floatValue];
    if (v18 > 0.0001)
    {
      return [v17 imageByApplyingGaussianBlurWithSigma:(v6 / 3.0)];
    }

    return v17;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end