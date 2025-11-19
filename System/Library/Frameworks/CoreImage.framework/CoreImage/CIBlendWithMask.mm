@interface CIBlendWithMask
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBlendWithMask

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryStylize";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"6";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v41 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage && !self->inputBackgroundImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsEmpty(v43))
  {
    [(CIImage *)self->inputBackgroundImage extent];
    if (CGRectIsEmpty(v44))
    {

      return +[CIImage emptyImage];
    }
  }

  inputMaskImage = self->inputMaskImage;
  if (!inputMaskImage || ([(CIImage *)inputMaskImage extent], CGRectIsEmpty(v45)) || ([(CIBlendWithMask *)self _maskFillColorValue], fabs(v6) < 1.0e-10))
  {
    v7 = self->inputBackgroundImage;
LABEL_12:

    return v7;
  }

  v8 = self->inputImage;
  if (fabs(v6 + -1.0) < 1.0e-10)
  {
    v7 = v8;
    goto LABEL_12;
  }

  [(CIImage *)self->inputMaskImage extent];
  v9 = [(CIImage *)v8 imageByCroppingToRect:?];
  if (!v9)
  {
    v9 = +[CIImage emptyImage];
  }

  inputBackgroundImage = self->inputBackgroundImage;
  if (!inputBackgroundImage)
  {
    inputBackgroundImage = +[CIImage emptyImage];
  }

  v11 = self->inputMaskImage;
  [(CIImage *)inputBackgroundImage extent];
  if (CGRectIsEmpty(v46))
  {
    v12 = [(CIBlendWithMask *)self _kernelB0];
    [(CIImage *)v9 extent];
    x = v13;
    y = v15;
    width = v17;
    height = v19;
    v39 = v9;
    v40 = v11;
    v21 = MEMORY[0x1E695DEC8];
    v22 = &v39;
    v23 = 2;
  }

  else
  {
    [(CIImage *)v9 extent];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(CIImage *)inputBackgroundImage extent];
    v49.origin.x = v32;
    v49.origin.y = v33;
    v49.size.width = v34;
    v49.size.height = v35;
    v47.origin.x = v25;
    v47.origin.y = v27;
    v47.size.width = v29;
    v47.size.height = v31;
    v48 = CGRectUnion(v47, v49);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    v12 = [(CIBlendWithMask *)self _kernel];
    v36 = v9;
    v37 = inputBackgroundImage;
    v38 = v11;
    v21 = MEMORY[0x1E695DEC8];
    v22 = &v36;
    v23 = 3;
  }

  return [v12 applyWithExtent:objc_msgSend(v21 arguments:{"arrayWithObjects:count:", v22, v23, v36, v37, v38, v39, v40), x, y, width, height}];
}

@end