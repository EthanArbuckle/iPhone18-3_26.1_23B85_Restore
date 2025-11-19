@interface CILabDeltaE
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILabDeltaE

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorEffect";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"11";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.13";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = +[CIImage emptyImage];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    p_inputImage2 = &self->inputImage2;
    inputImage2 = self->inputImage2;
    if (!inputImage2)
    {
      return v3;
    }

    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_6;
  }

  [(CIImage *)inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  p_inputImage2 = &self->inputImage2;
  inputImage2 = self->inputImage2;
  if (inputImage2)
  {
LABEL_6:
    [(CIImage *)inputImage2 extent];
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    goto LABEL_7;
  }

  v15 = *MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 24);
LABEL_7:
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v33 = CGRectUnion(v32, *&v15);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v27 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_LabDeltaE];
  v28 = self->inputImage;
  if (!v28)
  {
    v28 = v3;
  }

  v31[0] = v28;
  v29 = *p_inputImage2;
  if (!*p_inputImage2)
  {
    v29 = v3;
  }

  v31[1] = v29;
  return -[CIImage imageByTaggingWithColorSpace:](-[CIColorKernel applyWithExtent:arguments:](v27, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2], x, y, width, height), "imageByTaggingWithColorSpace:", 0);
}

@end