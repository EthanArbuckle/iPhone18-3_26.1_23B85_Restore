@interface CIWrapMirror
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIWrapMirror

+ (id)customAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CIAttributeFilterCategories";
  v3 = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

- (id)outputImage
{
  v16[1] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    [result extent];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    if (CGRectIsInfinite(v17))
    {
      return self->inputImage;
    }

    else
    {
      v8 = [CIVector vectorWithCGRect:x, y, width, height];
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectInset(v18, -width, -height);
      v9 = v19.origin.x;
      v10 = v19.origin.y;
      v11 = v19.size.width;
      v12 = v19.size.height;
      v13 = [(CIKernel *)CIWarpKernel kernelWithInternalRepresentation:&CI::_wrapMirror];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __27__CIWrapMirror_outputImage__block_invoke;
      v15[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      *&v15[4] = x;
      *&v15[5] = y;
      *&v15[6] = width;
      *&v15[7] = height;
      inputImage = self->inputImage;
      v16[0] = v8;
      return -[CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:](v13, "applyWithExtent:roiCallback:inputImage:arguments:", v15, inputImage, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:{1, MEMORY[0x1E69E9820], 3221225472, __27__CIWrapMirror_outputImage__block_invoke, &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, *&x, *&y, *&width, *&height}], v9, v10, v11, v12);
    }
  }

  return result;
}

double __27__CIWrapMirror_outputImage__block_invoke(double *a1, double a2, double a3, double a4, double a5)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v27 = CGRectStandardize(*&a2);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v27.origin.x = v6;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v8;
  v28 = CGRectStandardize(v27);
  v12 = v28.origin.x;
  v13 = v28.origin.y;
  v14 = v28.size.width;
  v15 = v28.size.height;
  MinX = CGRectGetMinX(v28);
  v25 = v13;
  v26 = v12;
  v29.origin.x = v12;
  v29.origin.y = v13;
  v29.size.width = v14;
  v29.size.height = v15;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v19 = CGRectGetMaxX(v31);
  if (v18 < MinX || v19 > MaxX)
  {
    v21 = fmin(v18, -(v19 - MaxX * 2.0));
    if (v18 > MinX)
    {
      v22 = 1;
    }

    else
    {
      v21 = MinX;
      v22 = v19 < MaxX;
    }

    if (v22)
    {
      v18 = v21;
    }

    else
    {
      v18 = MinX;
    }
  }

  v32.origin.x = v26;
  v32.origin.y = v25;
  v32.size.width = v14;
  v32.size.height = v15;
  CGRectGetMinY(v32);
  v33.origin.x = v26;
  v33.origin.y = v25;
  v33.size.width = v14;
  v33.size.height = v15;
  CGRectGetMaxY(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectGetMinY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetMaxY(v35);
  return v18;
}

@end