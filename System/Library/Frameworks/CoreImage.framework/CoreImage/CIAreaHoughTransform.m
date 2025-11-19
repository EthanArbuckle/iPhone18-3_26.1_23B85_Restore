@interface CIAreaHoughTransform
+ (id)customAttributes;
- (BOOL)_inputsAreOK;
- (IRect)_netExtent;
- (id)outputImage;
@end

@implementation CIAreaHoughTransform

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryReduction";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputGradientMin";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082A88;
  v6[1] = &unk_1F1082A88;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082A38;
  v6[3] = &unk_1F1082AA8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputGradientMax";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082A88;
  v4[1] = &unk_1F1082A88;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082A38;
  v4[3] = &unk_1F1082A38;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (IRect)_netExtent
{
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIVector *)self->inputExtent CGRectValue];
  v34.origin.x = v13;
  v34.origin.y = v14;
  v34.size.width = v15;
  v34.size.height = v16;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v27 = CGRectIntersection(v26, v34);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  result = CGRectIsEmpty(v27);
  if (result || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, v29 = CGRectIntegral(v28), v22 = v29.origin.x, v23 = v29.origin.y, v24 = v29.size.width, v25 = v29.size.height, result = CGRectIsNull(v29), result))
  {
    retstr->var1.var1 = 0;
    *&retstr->var0.var0 = IRectNull;
  }

  else
  {
    v30.origin.x = v22;
    v30.origin.y = v23;
    v30.size.width = v24;
    v30.size.height = v25;
    result = CGRectIsInfinite(v30);
    if (result)
    {
      *&retstr->var0.var0 = IRectInfinite;
      retstr->var1.var1 = 0xFFFFFFFFLL;
    }

    else
    {
      v31.origin.x = v22;
      v31.origin.y = v23;
      v31.size.width = v24;
      v31.size.height = v25;
      v32 = CGRectInset(v31, 0.000001, 0.000001);
      v33 = CGRectIntegral(v32);
      retstr->var0.var0 = v33.origin.x;
      retstr->var0.var1 = v33.origin.y;
      retstr->var1.var0 = v33.size.width;
      retstr->var1.var1 = v33.size.height;
    }
  }

  return result;
}

- (BOOL)_inputsAreOK
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIAreaHoughTransform *)self _netExtent];
  return 1;
}

- (id)outputImage
{
  v40[4] = *MEMORY[0x1E69E9840];
  if (![(CIAreaHoughTransform *)self _inputsAreOK])
  {
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (!self)
  {
    return [+[CIImage imageWithColor:](CIImage imageByCroppingToRect:+[CIColor clearColor]), "imageByCroppingToRect:", 0.0, 0.0, 256.0, 180.0];
  }

  [(CIAreaHoughTransform *)self _netExtent];
  v3 = v34;
  if (!v34)
  {
    return [+[CIImage imageWithColor:](CIImage imageByCroppingToRect:+[CIColor clearColor]), "imageByCroppingToRect:", 0.0, 0.0, 256.0, 180.0];
  }

  v4 = v35;
  if (!v35)
  {
    return [+[CIImage imageWithColor:](CIImage imageByCroppingToRect:+[CIColor clearColor]), "imageByCroppingToRect:", 0.0, 0.0, 256.0, 180.0];
  }

  v5 = [(CIImage *)self->inputImage imageBySettingProperties:MEMORY[0x1E695E0F8]];
  CGAffineTransformMakeTranslation(&v32, -v33, -HIDWORD(v33));
  v6 = [[[(CIImage *)v5 imageByApplyingTransform:&v32] imageByCroppingToRect:0.0 imageByApplyingFilter:v3, v4], "imageByApplyingFilter:", @"CIGaborGradients"];
  v7 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_prepHoughTransform];
  v8 = hypotf(v3, v4);
  [(NSNumber *)self->inputGradientMin floatValue];
  v10 = fmaxf(v9, 0.0);
  [(NSNumber *)self->inputGradientMax floatValue];
  v12 = v10 + 0.00001;
  v13 = fmaxf(fmaxf(v11, 0.0), v12);
  [(CIImage *)v6 extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v40[0] = v6;
  *&v14 = v8;
  v40[1] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  *&v22 = v10;
  v40[2] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  *&v23 = v13;
  v40[3] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v24 = -[CIColorKernel applyWithExtent:arguments:](v7, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4], v15, v17, v19, v21);
  v38[0] = @"kCIImageProcessorSynchronizeInputs";
  v38[1] = @"kCIImageProcessorAllowPartialOutputRegion";
  v25 = MEMORY[0x1E695E110];
  v39[0] = MEMORY[0x1E695E118];
  v39[1] = MEMORY[0x1E695E110];
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __35__CIAreaHoughTransform_outputImage__block_invoke_2;
  v31[3] = &__block_descriptor_48_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v31[4] = v3;
  v31[5] = v4;
  v27 = [(CIImage *)v24 imageWithExtent:@"CIAreaHoughTransform" processorDescription:v4 | (v3 << 32) argumentDigest:266 inputFormat:2309 outputFormat:v26 options:v31 roiCallback:0.0 processor:0.0, 256.0, 180.0, &__block_literal_global_3];
  v36[0] = @"kCIImageProcessorSynchronizeInputs";
  v36[1] = @"kCIImageProcessorAllowPartialOutputRegion";
  v37[0] = v25;
  v37[1] = v25;
  v36[2] = @"kCIImageProcessorOnlyUsesMetal";
  v37[2] = MEMORY[0x1E695E118];
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__CIAreaHoughTransform_outputImage__block_invoke_5;
  v30[3] = &__block_descriptor_48_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v30[4] = v3;
  v30[5] = v4;
  return [CIImage imageForRenderingWithMetal:[(CIImage *)v24 imageWithExtent:@"CIAreaHoughTransformMetal" processorDescription:v4 | (v3 << 32) argumentDigest:266 inputFormat:2053 outputFormat:v28 options:v30 roiCallback:0.0 processor:0.0 orNonMetal:256.0, 180.0, &__block_literal_global_240], v27];
}

uint64_t __35__CIAreaHoughTransform_outputImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  [a2 region];
  v6 = v5;
  v8 = v7;
  v9 = [a2 bytesPerRow];
  v10 = [a2 baseAddress];
  bzero(v24, 0x2D000uLL);
  if (v8)
  {
    v11 = 0;
    v12 = (v10 + 1);
    do
    {
      v13 = v6;
      for (i = v12; v13; --v13)
      {
        v15 = *i;
        v16 = v15 <= 0xB3;
        LODWORD(v17) = 179 - v15;
        if (v16)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        *&v24[1024 * v17 + 4 * i[1]] += *(i - 1);
        i += 4;
      }

      ++v11;
      v12 += v9;
    }

    while (v11 != v8);
  }

  v18 = [a3 baseAddress];
  result = [a3 bytesPerRow];
  v20 = 0;
  v21 = v24;
  v22 = vdupq_n_s32(0x437F0000u);
  do
  {
    for (j = 0; j != 1024; j += 16)
    {
      *(v18 + j) = vdivq_f32(vcvtq_f32_u32(*&v21[j]), v22);
    }

    ++v20;
    v21 += 1024;
    v18 += result;
  }

  while (v20 != 180);
  return result;
}

uint64_t __35__CIAreaHoughTransform_outputImage__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  [a2 region];
  v17 = v6;
  v18 = v5;
  v7 = [a3 metalCommandBuffer];
  v8 = [objc_msgSend(v7 "commandQueue")];
  v9 = [v8 newBufferWithLength:184320 options:32];
  Kernel = CI::AreaHistogram::loadKernel(v8, @"computeHoughHistogram");
  v11 = [v7 computeCommandEncoder];
  [v11 setComputePipelineState:Kernel];
  [v11 setBuffer:v9 offset:0 atIndex:0];
  [v11 setBytes:&HoughBins_h length:4 atIndex:1];
  [v11 setBytes:&HoughBins_v length:4 atIndex:2];
  [v11 setTexture:objc_msgSend(a2 atIndex:{"metalTexture"), 0}];
  v12.f64[0] = v18;
  v12.f64[1] = v17;
  *&v12.f64[0] = vadd_s32(vmovn_s64(vcvtq_u64_f64(v12)), 0xF0000000FLL);
  *&v13 = LODWORD(v12.f64[0]) & 0xFFFFFFF0;
  *(&v13 + 1) = HIDWORD(v12.f64[0]) & 0xFFFFFFF0;
  v23 = v13;
  v24 = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v21 = v19;
  v22 = 1;
  [v11 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [v11 endEncoding];
  v14 = CI::AreaHistogram::loadKernel(v8, @"convertHoughHistogram");
  v15 = [v7 computeCommandEncoder];
  [v15 setComputePipelineState:v14];
  [v15 setTexture:objc_msgSend(a3 atIndex:{"metalTexture"), 0}];
  [v15 setBuffer:v9 offset:0 atIndex:0];
  [v15 setBytes:&HoughBins_h length:4 atIndex:1];
  [v15 setBytes:&HoughBins_v length:4 atIndex:2];
  v23 = xmmword_19CF23050;
  v24 = 1;
  v21 = v19;
  v22 = 1;
  [v15 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [v15 endEncoding];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__CIAreaHoughTransform_outputImage__block_invoke_4;
  v20[3] = &unk_1E75C1D88;
  v20[4] = v9;
  return [v7 addCompletedHandler:v20];
}

@end