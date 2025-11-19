@interface CISingleChannelColorMap
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISingleChannelColorMap

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryNonSquarePixels";
  v9[4] = @"CICategoryStillImage";
  v9[5] = @"CICategoryBuiltIn";
  v9[6] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v10[1] = @"inputChannelIndex";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypeInteger";
  v8[1] = &unk_1F1081938;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1081938;
  v8[3] = &unk_1F1081950;
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v10[2] = @"inputShouldNormalize";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeBoolean";
  v6[1] = MEMORY[0x1E695E118];
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[3] = @"inputColorMapIndex";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1081938;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1081938;
  v4[3] = &unk_1F1081968;
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v11[4] = @"14";
  v10[4] = @"CIAttributeFilterAvailable_iOS";
  v10[5] = @"CIAttributeFilterAvailable_Mac";
  v11[5] = @"11.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v39[6] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v41) || ([(NSNumber *)self->inputColorMapIndex intValue]< 0 || [(NSNumber *)self->inputColorMapIndex intValue]<= 1 ? ([(NSNumber *)self->inputColorMapIndex intValue]< 0 ? (v3 = 0) : (v3 = [(NSNumber *)self->inputColorMapIndex intValue])) : (v3 = 1), [(NSNumber *)self->inputChannelIndex intValue]< 0 || [(NSNumber *)self->inputChannelIndex intValue]<= 3 ? ([(NSNumber *)self->inputChannelIndex intValue]< 0 ? (v4 = 0) : (v4 = [(NSNumber *)self->inputChannelIndex intValue])) : (v4 = 3), v5 = [CIKernel kernelWithInternalRepresentation:&CI::_ciSingleChannelColorMap], v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_ciExtractChannel], !v5))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v7 = v6;
    v39[0] = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*(&colormaps + v3) length:2048 freeWhenDone:0];
    v38[0] = @"kCIImageProviderContentDigest";
    v38[1] = @"kCIImageProviderName";
    v39[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"CISingleChannelColorMap_%d", v3];
    v39[2] = MEMORY[0x1E695E110];
    v38[2] = @"CIImageFlipped";
    v38[3] = @"CIImageClampToEdge";
    v39[3] = MEMORY[0x1E695E118];
    v39[4] = MEMORY[0x1E695E118];
    v38[4] = @"kCIImageCacheHint";
    v38[5] = @"kCIImageAlphaOne";
    v39[5] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:6];
    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v10 = [CIImage alloc];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __38__CISingleChannelColorMap_outputImage__block_invoke;
    v32[3] = &__block_descriptor_36_e24_v56__0_v8Q16Q24Q32Q40Q48l;
    v33 = v3;
    v11 = [(CIImage *)v10 initWithImageProvider:v32 width:256 height:1 format:2056 colorSpace:v9 options:v8];
    CGColorSpaceRelease(v9);
    if (!v11)
    {
      return +[CIImage emptyImage];
    }

    inputImage = self->inputImage;
    [(CIImage *)inputImage extent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v37[0] = inputImage;
    v37[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v21 = -[CIColorKernel applyWithExtent:arguments:](v7, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2], v14, v16, v18, v20);
    if ([(NSNumber *)self->inputShouldNormalize BOOLValue])
    {
      v35 = @"inputExtent";
      [(CIImage *)v21 extent];
      v36 = [CIVector vectorWithCGRect:?];
      v21 = -[CIImage imageByApplyingFilter:withInputParameters:](v21, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRedNormalize", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1]);
    }

    [(CIImage *)v21 extent];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v34[0] = v21;
    v34[1] = [(CIImage *)v11 imageByClampingToExtent];
    v30 = -[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_11, [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2], v23, v25, v27, v29);

    return v30;
  }
}

void *__38__CISingleChannelColorMap_outputImage__block_invoke(uint64_t a1, void *__b, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset_pattern8(__b, &unk_19CF23CA8, a3);
  if (8 * a6 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 8 * a6;
  }

  v12 = *(&colormaps + *(a1 + 32)) + 16 * a4;

  return memcpy(__b, v12, v11);
}

double __38__CISingleChannelColorMap_outputImage__block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  if (a2)
  {
    return *MEMORY[0x1E695F058];
  }

  return result;
}

@end