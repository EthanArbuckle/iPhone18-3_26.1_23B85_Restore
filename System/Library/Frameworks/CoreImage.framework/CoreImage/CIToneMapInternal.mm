@interface CIToneMapInternal
+ (id)customAttributes;
- (float)srcHeadroom;
- (float)targetHeadroom;
- (id)outputImage;
- (id)outputValue:(id)value;
@end

@implementation CIToneMapInternal

+ (id)customAttributes
{
  v19[10] = *MEMORY[0x1E69E9840];
  v18[0] = @"CIAttributeFilterCategories";
  v17[0] = @"CICategoryColorAdjustment";
  v17[1] = @"CICategoryVideo";
  v17[2] = @"CICategoryInterlaced";
  v17[3] = @"CICategoryHighDynamicRange";
  v17[4] = @"CICategoryNonSquarePixels";
  v17[5] = @"CICategoryStillImage";
  v17[6] = @"CICategoryBuiltIn";
  v17[7] = @"CICategoryApplePrivate";
  v19[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];
  v19[1] = @"19";
  v18[1] = @"CIAttributeFilterAvailable_iOS";
  v18[2] = @"CIAttributeFilterAvailable_Mac";
  v19[2] = @"16.0";
  v18[3] = @"inputSourceHeadroom";
  v15[0] = @"CIAttributeMin";
  v15[1] = @"CIAttributeSliderMin";
  v16[0] = &unk_1F1081758;
  v16[1] = &unk_1F1081758;
  v15[2] = @"CIAttributeSliderMax";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F1081770;
  v16[3] = &unk_1F1081788;
  v15[4] = @"CIAttributeType";
  v16[4] = @"CIAttributeTypeScalar";
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v18[4] = @"inputTargetHeadroom";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1081758;
  v14[1] = &unk_1F1081758;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1081770;
  v14[3] = &unk_1F1081788;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1081758;
  v14[5] = @"CIAttributeTypeScalar";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v18[5] = @"inputMinimumSDRExposure";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F1082908;
  v12[1] = &unk_1F1081758;
  v11[2] = @"CIAttributeDefault";
  v11[3] = @"CIAttributeType";
  v12[2] = &unk_1F1082918;
  v12[3] = @"CIAttributeTypeScalar";
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v18[6] = @"inputOffsetAnchor";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1081758;
  v10[1] = &unk_1F10817A0;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1082928;
  v10[3] = @"CIAttributeTypeScalar";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v18[7] = @"inputHighlightsTradeOffRatio";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10817B8;
  v8[1] = &unk_1F1081758;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = &unk_1F1085298;
  v8[3] = @"CIAttributeTypeScalar";
  v19[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v18[8] = @"inputMinimumGammaAdjustment";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1082938;
  v6[1] = &unk_1F1081758;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1082948;
  v6[3] = @"CIAttributeTypeScalar";
  v19[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v18[9] = @"inputStopAnchor";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1081758;
  v4[1] = &unk_1F10817A0;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = &unk_1F1081770;
  v4[3] = @"CIAttributeTypeScalar";
  v19[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10];
}

- (float)targetHeadroom
{
  [(NSNumber *)[(CIToneMapInternal *)self inputTargetHeadroom] floatValue];
  v3 = 1.0;
  if (v2 >= 1.0)
  {
    v3 = v2;
  }

  v4 = v2 > 0.0;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (float)srcHeadroom
{
  if (self->inputSourceHeadroom)
  {
    [(NSNumber *)self->inputSourceHeadroom floatValue];
  }

  else
  {
    [(CIImage *)self->inputImage contentHeadroom];
  }

  v3 = 1.0;
  if (v2 > 1.0)
  {
    v3 = v2;
  }

  v4 = v2 > 0.0;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (id)outputValue:(id)value
{
  [(CIToneMapInternal *)self srcHeadroom];
  v6 = v5;
  [(CIToneMapInternal *)self targetHeadroom];
  v8 = v7;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  [(NSNumber *)self->inputMinimumSDRExposure floatValue];
  v10 = v9;
  [(NSNumber *)self->inputOffsetAnchor floatValue];
  v12 = v11;
  [(NSNumber *)self->inputHighlightsTradeOffRatio floatValue];
  v14 = v13;
  [(NSNumber *)self->inputMinimumGammaAdjustment floatValue];
  v16 = v15;
  [(NSNumber *)self->inputStopAnchor floatValue];
  calcUniforms(v6, v8, 0.0, v10, v12, v14, v16, v17, self->inputPreferredDynamicRange, &v32);
  if (!v32)
  {
    return value;
  }

  if (v32 == 1)
  {
    [value floatValue];
    *&v18 = fminf(*&v18, *(&v32 + 2));
  }

  else
  {
    [value floatValue];
    v20.i32[0] = DWORD2(v32);
    v22.f32[0] = v21 * v34[6];
    v31 = v22;
    v23 = fmaxf(v21 * v34[6], 0.001);
    if (v23 <= v34[2])
    {
      v24 = *(&v32 + 3) * v23;
    }

    else
    {
      v24 = v34[4];
      v25 = (*(&v33 + 2) + sqrtf(fmaxf(*(&v33 + 1) + (*&v33 * v23), 0.0))) / *&v33;
      if (v23 < *(&v32 + 1))
      {
        v24 = ((v34[0] * (v25 * ((1.0 - v25) + (1.0 - v25)))) + (((1.0 - v25) * (1.0 - v25)) * *(&v33 + 3))) + ((v25 * v25) * v34[1]);
      }
    }

    v30 = v20;
    v26.f32[0] = fminf((*(&v32 + 2) * powf(v24 / *(&v32 + 2), v34[5])) / v23, 1.0);
    v27 = vdupq_lane_s32(*&vmulq_f32(v31, v26), 0);
    v27.i32[3] = 0;
    v28 = vdupq_lane_s32(v30, 0);
    v28.i32[3] = 0;
    *&v18 = vminnmq_f32(v27, v28).u64[0];
  }

  v29 = MEMORY[0x1E696AD98];

  return [v29 numberWithFloat:v18];
}

- (id)outputImage
{
  v61[2] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_headroomToneMap];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_headroomClamp];
  inputImage = [(CIToneMapInternal *)self inputImage];
  [(CIToneMapInternal *)self srcHeadroom];
  v7 = v6;
  [(CIToneMapInternal *)self targetHeadroom];
  v9 = v8;
  [(CIImage *)self->inputImage contentAverageLightLevel];
  v11 = v10;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  [(NSNumber *)self->inputMinimumSDRExposure floatValue];
  v13 = v12;
  [(NSNumber *)self->inputOffsetAnchor floatValue];
  v15 = v14;
  [(NSNumber *)self->inputHighlightsTradeOffRatio floatValue];
  v17 = v16;
  [(NSNumber *)self->inputMinimumGammaAdjustment floatValue];
  v19 = v18;
  [(NSNumber *)self->inputStopAnchor floatValue];
  calcUniforms(v7, v9, v11, v13, v15, v17, v19, v20, self->inputPreferredDynamicRange, &v53);
  v21 = v53;
  if (!v53)
  {
    return inputImage;
  }

  colorSpace = [(CIImage *)self->inputImage colorSpace];
  if (!CGColorSpaceContainsFlexGTCInfo())
  {
    v27 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
    if (v27)
    {
      inputImage = [(CIImage *)inputImage imageByColorMatchingWorkingSpaceToColorSpace:v27];
    }

    imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
    [(CIImage *)imageByUnpremultiplyingAlpha extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if (v21 == 1)
    {
      v61[0] = imageByUnpremultiplyingAlpha;
      v37 = DWORD2(v53);
      LODWORD(v29) = DWORD2(v53);
      v61[1] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
      v59 = @"kCIImageContentHeadroom";
      LODWORD(v39) = v37;
      v60 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v41 = v4;
      v42 = v30;
      v43 = v32;
      v44 = v34;
      v45 = v36;
      v46 = v38;
    }

    else
    {
      v58[0] = imageByUnpremultiplyingAlpha;
      LODWORD(v29) = DWORD1(v53);
      v58[1] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      LODWORD(v47) = DWORD2(v53);
      v58[2] = [MEMORY[0x1E696AD98] numberWithFloat:v47];
      LODWORD(v48) = HIDWORD(v53);
      v58[3] = [MEMORY[0x1E696AD98] numberWithFloat:v48];
      v58[4] = [CIVector vectorWithX:*&v54 Y:*(&v54 + 1) Z:*(&v54 + 2) W:v55[2]];
      v58[5] = [CIVector vectorWithX:*(&v54 + 3) Y:v55[0] Z:v55[1]];
      v58[6] = [CIVector vectorWithX:v55[3] Y:v55[4] Z:v55[5]];
      *&v49 = v55[6];
      v58[7] = [MEMORY[0x1E696AD98] numberWithFloat:v49];
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
      v56 = @"kCIImageContentHeadroom";
      *&v51 = v9;
      v57 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v41 = v3;
      v42 = v30;
      v43 = v32;
      v44 = v34;
      v45 = v36;
      v46 = v50;
    }

    v52 = [-[CIColorKernel applyWithExtent:arguments:options:](v41 applyWithExtent:v46 arguments:v40 options:{v42, v43, v44, v45), "imageByPremultiplyingAlpha"}];
    inputImage = v52;
    if (v27)
    {
      inputImage = [(CIImage *)v52 imageByColorMatchingColorSpaceToWorkingSpace:v27];
    }

    CGColorSpaceRelease(v27);
    return inputImage;
  }

  v23 = [(NSString *)self->inputPreferredDynamicRange isEqual:@"kCIDynamicRangeConstrainedHigh"];
  v24 = [(CIImage *)inputImage imageByColorMatchingWorkingSpaceToColorSpace:colorSpace];
  *&v25 = v9;

  return [(CIImage *)v24 _imageByToneMappingColorSpaceToWorkingSpace:colorSpace targetHeadroom:v23 constrainedHigh:v25];
}

@end