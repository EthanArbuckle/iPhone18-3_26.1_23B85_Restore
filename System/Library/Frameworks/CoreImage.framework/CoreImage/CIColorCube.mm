@interface CIColorCube
+ (id)customAttributes;
- (BOOL)_checkInputs;
- (id)cubeImage;
- (id)outputImage;
- (void)dealloc;
- (void)setInputCubeData:(id)data;
@end

@implementation CIColorCube

- (void)dealloc
{
  self->_cubeImage = 0;
  v3.receiver = self;
  v3.super_class = CIColorCube;
  [(CIFilter *)&v3 dealloc];
}

- (void)setInputCubeData:(id)data
{
  self->_cubeImage = 0;
  v5 = self->inputCubeData;
  self->inputCubeData = data;
}

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryNonSquarePixels";
  v9[4] = @"CICategoryStillImage";
  v9[5] = @"CICategoryHighDynamicRange";
  v9[6] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v11[1] = @"5";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputCubeDimension";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1081908;
  v8[1] = &unk_1F1081920;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeIdentity";
  v8[2] = &unk_1F1081908;
  v8[3] = &unk_1F1081908;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeCount";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputCubeData";
  v5[0] = @"CIAttributeDefault";
  if (defaultCube(void)::onceToken != -1)
  {
    +[CIColorCube customAttributes];
  }

  v5[1] = @"CIAttributeIdentity";
  v6[0] = defaultCube(void)::data;
  v6[1] = defaultCube(void)::data;
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[5] = @"inputExtrapolate";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = @"CIAttributeTypeBoolean";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)cubeImage
{
  v23[5] = *MEMORY[0x1E69E9840];
  result = self->_cubeImage;
  if (!result)
  {
    intValue = [(NSNumber *)self->inputCubeDimension intValue];
    v5 = [(NSData *)self->inputCubeData length];
    v6 = intValue;
    v7 = 4 * intValue;
    v8 = 16 * intValue;
    if (intValue * intValue * v8 == v5)
    {
      inputCubeData = [MEMORY[0x1E695DF88] dataWithLength:v5 >> 2];
      mutableBytes = [(NSData *)inputCubeData mutableBytes];
      src.data = [(NSData *)self->inputCubeData bytes];
      src.height = (v6 * v6);
      src.width = 4 * v6;
      src.rowBytes = v8;
      dest.data = mutableBytes;
      dest.height = src.height;
      dest.width = src.width;
      dest.rowBytes = v7;
      vImageConvert_PlanarFtoPlanar8(&src, &dest, 1.0, 0.0, 0);
    }

    else
    {
      inputCubeData = self->inputCubeData;
    }

    bytes = [(NSData *)inputCubeData bytes];
    if ([(NSData *)inputCubeData length])
    {
      v12 = 0;
      v13 = bytes + 3;
      v14 = 1;
      do
      {
        v14 &= ~*(v13 + v12) == 0;
        v12 += 4;
      }

      while ([(NSData *)inputCubeData length]> v12);
    }

    v22[0] = @"kCIImageProviderContentDigest";
    v22[1] = @"kCIImageProviderName";
    v23[0] = inputCubeData;
    v23[1] = @"CIColorCube";
    v22[2] = @"CIImageFlipped";
    v22[3] = @"CIImageClampToEdge";
    v15 = MEMORY[0x1E695E118];
    v23[2] = MEMORY[0x1E695E110];
    v23[3] = MEMORY[0x1E695E118];
    v22[4] = @"kCIImageCacheHint";
    v23[4] = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
    v20[0] = @"kCIImageProviderContentDigest";
    v20[1] = @"kCIImageProviderName";
    v21[0] = inputCubeData;
    v21[1] = @"CIColorCube";
    v20[2] = @"CIImageFlipped";
    v20[3] = @"CIImageClampToEdge";
    v21[2] = MEMORY[0x1E695E110];
    v21[3] = v15;
    v20[4] = @"kCIImageCacheHint";
    v20[5] = @"kCIImageAlphaOne";
    v21[4] = v15;
    v21[5] = v15;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v16 = [CIImage alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __24__CIColorCube_cubeImage__block_invoke;
    v17[3] = &unk_1E75C1F08;
    v17[4] = inputCubeData;
    v17[5] = v7;
    result = [CIImage initWithImageProvider:v16 width:"initWithImageProvider:width:height:format:colorSpace:options:" height:v17 format:? colorSpace:? options:?];
    self->_cubeImage = result;
  }

  return result;
}

uint64_t __24__CIColorCube_cubeImage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = [*(a1 + 32) bytes];
  if (a7)
  {
    v13 = 0;
    v14 = (a2 + 1);
    do
    {
      if (a6)
      {
        v15 = (result + 1 + *(a1 + 40) * v13);
        v16 = v14;
        v17 = a6;
        do
        {
          v16[1] = *(v15 - 1);
          *v16 = *v15;
          *(v16 - 1) = v15[1];
          v16[2] = v15[2];
          v15 += 4;
          v16 += 4;
          --v17;
        }

        while (v17);
      }

      ++v13;
      v14 += a3;
    }

    while (v13 != a7);
  }

  return result;
}

- (BOOL)_checkInputs
{
  intValue = [(NSNumber *)self->inputCubeDimension intValue];
  if ((intValue - 129) > 0xFFFFFF80)
  {
    v4 = intValue;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = (4 * v4 * v4 * v4);
      if ([(NSData *)self->inputCubeData length]== 4 * v5 || [(NSData *)self->inputCubeData length]== v5)
      {
        return 1;
      }

      NSLog(&cfstr_CicolorcubeInp_1.isa);
    }

    else
    {
      NSLog(&cfstr_CicolorcubeInp_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_CicolorcubeInp.isa, 128);
  }

  return 0;
}

- (id)outputImage
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || ![(CIColorCube *)self _checkInputs])
  {
    return 0;
  }

  imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  intValue = [(NSNumber *)self->inputCubeDimension intValue];
  v5 = [CIVector vectorWithX:intValue + -1.0 Y:1.0 / (intValue + -1.0) Z:1.0 / intValue W:1.0 / (intValue * intValue)];
  cubeImage = [(CIColorCube *)self cubeImage];
  if ([cubeImage isOpaque])
  {
    _kernelOpaque = [(CIColorCube *)self _kernelOpaque];
  }

  else
  {
    _kernelOpaque = [(CIColorCube *)self _kernel];
  }

  _kernelOpaqueExtend = _kernelOpaque;
  if ([(NSNumber *)self->inputExtrapolate BOOLValue])
  {
    if ([cubeImage isOpaque])
    {
      _kernelOpaqueExtend = [(CIColorCube *)self _kernelOpaqueExtend];
    }

    else
    {
      _kernelOpaqueExtend = 0;
    }
  }

  [(CIImage *)imageByUnpremultiplyingAlpha extent];
  v14[0] = imageByUnpremultiplyingAlpha;
  v14[1] = cubeImage;
  v14[2] = v5;
  return [objc_msgSend(_kernelOpaqueExtend applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v14, 3), v10, v11, v12, v13), "imageByPremultiplyingAlpha"}];
}

@end