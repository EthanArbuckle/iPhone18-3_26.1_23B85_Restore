@interface CIMix
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMix

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryStylize";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryHighDynamicRange";
  v5[4] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"12";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.14";
  v6[3] = @"inputAmount";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1082BA8;
  v4[1] = &unk_1F1082BB8;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1082BB8;
  v4[3] = &unk_1F1082BB8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v28[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage && !self->inputBackgroundImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsEmpty(v30) && ([(CIImage *)self->inputBackgroundImage extent], CGRectIsEmpty(v31)))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    [(NSNumber *)self->inputAmount floatValue];
    v6 = fmaxf(v5, 0.0);
    v7 = self->inputImage;
    if (!v7)
    {
      v7 = +[CIImage emptyImage];
    }

    v8 = fminf(v6, 1.0);
    inputBackgroundImage = self->inputBackgroundImage;
    if (!inputBackgroundImage)
    {
      inputBackgroundImage = +[CIImage emptyImage];
    }

    if (v8 == 0.0)
    {
      v10 = inputBackgroundImage;
    }

    else
    {
      if (v8 != 1.0)
      {
        _kernel = [(CIMix *)self _kernel];
        [(CIImage *)v7 extent];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [(CIImage *)inputBackgroundImage extent];
        v34.origin.x = v20;
        v34.origin.y = v21;
        v34.size.width = v22;
        v34.size.height = v23;
        v32.origin.x = v13;
        v32.origin.y = v15;
        v32.size.width = v17;
        v32.size.height = v19;
        v33 = CGRectUnion(v32, v34);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        *&v33.origin.x = v8;
        v28[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v33.origin.x, v7, inputBackgroundImage}];
        return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v28, 3), x, y, width, height}];
      }

      v10 = v7;
    }

    return v10;
  }
}

@end