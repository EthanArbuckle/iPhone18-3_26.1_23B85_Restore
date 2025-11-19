@interface CIColorCurves
+ (id)customAttributes;
- (BOOL)_checkInputs;
- (id)curvesImage;
- (id)outputImage;
- (void)dealloc;
- (void)setInputCurvesData:(id)a3;
@end

@implementation CIColorCurves

- (void)dealloc
{
  self->_curvesImage = 0;
  v3.receiver = self;
  v3.super_class = CIColorCurves;
  [(CIFilter *)&v3 dealloc];
}

- (void)setInputCurvesData:(id)a3
{
  self->_curvesImage = 0;
  v5 = self->inputCurvesData;
  self->inputCurvesData = a3;
}

+ (id)customAttributes
{
  v10[6] = *MEMORY[0x1E69E9840];
  v9[0] = @"CIAttributeFilterCategories";
  v8[0] = @"CICategoryColorEffect";
  v8[1] = @"CICategoryVideo";
  v8[2] = @"CICategoryInterlaced";
  v8[3] = @"CICategoryNonSquarePixels";
  v8[4] = @"CICategoryStillImage";
  v8[5] = @"CICategoryBuiltIn";
  v10[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:6];
  v10[1] = @"11";
  v9[1] = @"CIAttributeFilterAvailable_iOS";
  v9[2] = @"CIAttributeFilterAvailable_Mac";
  v10[2] = @"10.13";
  v9[3] = @"inputCurvesData";
  v6 = @"CIAttributeDefault";
  if (defaultTable(void)::onceToken != -1)
  {
    +[CIColorCurves customAttributes];
  }

  v7 = defaultTable(void)::data;
  v10[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[4] = @"inputCurvesDomain";
  v4 = @"CIAttributeDefault";
  v5 = [CIVector vectorWithX:0.0 Y:1.0];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v9[5] = @"inputColorSpace";
  v10[4] = v2;
  v10[5] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
}

- (id)curvesImage
{
  v11[6] = *MEMORY[0x1E69E9840];
  result = self->_curvesImage;
  if (!result)
  {
    v4 = [(NSData *)self->inputCurvesData length];
    inputCurvesData = self->inputCurvesData;
    v6 = v4 / 0xC;
    v10[0] = @"kCIImageProviderContentDigest";
    v10[1] = @"kCIImageProviderName";
    v11[0] = inputCurvesData;
    v11[1] = @"CIColorCurves";
    v10[2] = @"CIImageFlipped";
    v10[3] = @"CIImageClampToEdge";
    v11[2] = MEMORY[0x1E695E110];
    v11[3] = MEMORY[0x1E695E118];
    v10[4] = @"kCIImageCacheHint";
    v10[5] = @"kCIImageAlphaOne";
    v11[4] = MEMORY[0x1E695E118];
    v11[5] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
    v8 = [CIImage alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__CIColorCurves_curvesImage__block_invoke;
    v9[3] = &unk_1E75C1F30;
    v9[4] = inputCurvesData;
    result = [(CIImage *)v8 initWithImageProvider:v9 width:v6 height:1 format:2056 colorSpace:0 options:v7];
    self->_curvesImage = result;
  }

  return result;
}

vImage_Error __28__CIColorCurves_curvesImage__block_invoke(uint64_t a1, void *__b, size_t a3, uint64_t a4, uint64_t a5, vImagePixelCount a6)
{
  memset_pattern8(__b, &unk_19CF23CA8, a3);
  src.data = [*(a1 + 32) bytes];
  src.height = a6;
  *&src.width = xmmword_19CF23CB0;
  v10.data = __b;
  v10.height = a6;
  *&v10.width = xmmword_19CF23CC0;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v10, 0);
}

- (BOOL)_checkInputs
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(NSData *)self->inputCurvesData length];
    if (v3 >= 0x18 && v3 % 0xC == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(CIVector *)self->inputCurvesDomain count]== 2)
      {
        [(CIVector *)self->inputCurvesDomain X];
        v6 = v5;
        [(CIVector *)self->inputCurvesDomain Y];
        if (v6 < v7)
        {
          return 1;
        }

        NSLog(&cfstr_CicolorcurvesI_2.isa);
      }

      else
      {
        NSLog(&cfstr_CicolorcurvesI_1.isa);
      }
    }

    else
    {
      NSLog(&cfstr_CicolorcurvesI_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_CicolorcurvesI.isa);
  }

  return 0;
}

- (id)outputImage
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || ![(CIColorCurves *)self _checkInputs])
  {
    return 0;
  }

  inputColorSpace = self->inputColorSpace;
  if (inputColorSpace != [MEMORY[0x1E695DFB0] null])
  {
    v4 = self->inputColorSpace;
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 == CGColorSpaceGetTypeID() && CGColorSpaceGetModel(v4) == kCGColorSpaceModelRGB)
      {
        inputImage = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:v4];
        v7 = 0;
        goto LABEL_9;
      }

      NSLog(&cfstr_CicolorcurvesI_3.isa);
      return 0;
    }
  }

  v4 = 0;
  inputImage = self->inputImage;
  v7 = 1;
LABEL_9:
  v8 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v9 = [(CIColorCurves *)self curvesImage];
  v10 = [(NSData *)self->inputCurvesData length];
  v11 = [CIVector vectorWithX:(((v10 / 0xC) + -1.0) / (v10 / 0xC)) Y:(0.5 / (v10 / 0xC))];
  v12 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_colorcurves];
  [(CIImage *)self->inputImage extent];
  v18[0] = v8;
  v18[1] = v9;
  v18[2] = self->inputCurvesDomain;
  v18[3] = v11;
  result = -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v12, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4], v13, v14, v15, v16), "imageByPremultiplyingAlpha");
  if ((v7 & 1) == 0)
  {
    return [result imageByColorMatchingColorSpaceToWorkingSpace:v4];
  }

  return result;
}

@end