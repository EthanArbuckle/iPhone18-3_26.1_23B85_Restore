@interface CIAreaMinMax
+ (id)customAttributes;
- (id)outputImage;
- (id)outputImageMPS:(id)s;
- (id)outputImageNonMPS;
@end

@implementation CIAreaMinMax

- (id)outputImageMPS:(id)s
{
  v21[3] = *MEMORY[0x1E69E9840];
  [s extent];
  v8 = v7;
  v10 = v9;
  *&v7 = v5;
  *&v9 = v6;
  if (fmaxf(*&v7, *&v9) > 4096.0)
  {
    return 0;
  }

  v12 = v5;
  v13 = v6;
  v20[0] = @"kCIImageProcessorSynchronizeInputs";
  v20[1] = @"kCIImageProcessorAllowPartialOutputRegion";
  v21[0] = MEMORY[0x1E695E110];
  v21[1] = MEMORY[0x1E695E110];
  v20[2] = @"kCIImageProcessorOnlyUsesMetal";
  v21[2] = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__CIAreaMinMax_MPS__outputImageMPS___block_invoke;
  v18[3] = &__block_descriptor_64_e62_v24__0___CIImageProcessorInput__8___CIImageProcessorOutput__16l;
  *&v18[4] = v8;
  *&v18[5] = v10;
  *&v18[6] = v12;
  *&v18[7] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36__CIAreaMinMax_MPS__outputImageMPS___block_invoke_2;
  v17[3] = &__block_descriptor_64_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  *&v17[4] = v8;
  *&v17[5] = v10;
  *&v17[6] = v12;
  *&v17[7] = v13;
  XXH64_reset(v16, 0);
  __src = v8;
  XXH64_update(v16, &__src, 8uLL);
  __src = v10;
  XXH64_update(v16, &__src, 8uLL);
  __src = v12;
  XXH64_update(v16, &__src, 8uLL);
  __src = v13;
  XXH64_update(v16, &__src, 8uLL);
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CIAreaMinMax %@", self->super.inputExtent];
  return [s imageWithExtent:v15 processorDescription:XXH64_digest(v16) argumentDigest:kCIFormatAllowSRGB inputFormat:kCIFormatAllowSRGB outputFormat:v14 options:v17 roiCallback:0.0 processor:0.0, 2.0, 1.0, v18];
}

void __36__CIAreaMinMax_MPS__outputImageMPS___block_invoke(double *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = [a3 metalCommandBuffer];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E6974630]) initWithDevice:{objc_msgSend(v9, "device")}];
    if (v11)
    {
      v12 = v11;
      [a2 region];
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      if (CGRectIsNull(v35))
      {
        LODWORD(v17) = 0;
        v18 = 0x7FFFFFFF;
        v19 = 0x7FFFFFFF;
      }

      else
      {
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        if (CGRectIsInfinite(v36))
        {
          v18 = -2147483647;
          LODWORD(v17) = -1;
          v19 = -2147483647;
        }

        else
        {
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          v38 = CGRectInset(v37, 0.000001, 0.000001);
          v39 = CGRectIntegral(v38);
          v19 = v39.origin.x;
          v18 = v39.origin.y;
          v17 = v39.size.height;
        }
      }

      v40.origin.x = v5;
      v40.origin.y = v6;
      v40.size.width = v7;
      v40.size.height = v8;
      if (CGRectIsNull(v40))
      {
        v20 = 0;
        v21 = 0;
        v22 = 0x7FFFFFFF;
        v23 = 0x7FFFFFFF;
      }

      else
      {
        v41.origin.x = v5;
        v41.origin.y = v6;
        v41.size.width = v7;
        v41.size.height = v8;
        if (CGRectIsInfinite(v41))
        {
          v22 = -2147483647;
          v20 = 0xFFFFFFFFLL;
          v21 = 0xFFFFFFFFLL;
          v23 = -2147483647;
        }

        else
        {
          v42.origin.x = v5;
          v42.origin.y = v6;
          v42.size.width = v7;
          v42.size.height = v8;
          v43 = CGRectInset(v42, 0.000001, 0.000001);
          v44 = CGRectIntegral(v43);
          v23 = v44.origin.x;
          v22 = v44.origin.y;
          v21 = v44.size.width;
          v20 = v44.size.height;
        }
      }

      v31 = v19 - v23;
      v32 = v20 - v17 - v18 + v22;
      *&v33 = 0;
      *(&v33 + 1) = v21;
      v34.i64[0] = v20;
      v34.i64[1] = 1;
      [v12 setClipRectSource:&v31];
      [v12 setOptions:2];
      [v12 setEdgeMode:1];
      [a3 region];
      v24 = v45.origin.x;
      v25 = v45.origin.y;
      v26 = v45.size.width;
      v27 = v45.size.height;
      if (CGRectIsNull(v45))
      {
        LODWORD(v28) = 0;
        v29 = 2147483646;
        v30 = 0x7FFFFFFF;
      }

      else
      {
        v46.origin.x = v24;
        v46.origin.y = v25;
        v46.size.width = v26;
        v46.size.height = v27;
        if (CGRectIsInfinite(v46))
        {
          LODWORD(v28) = -1;
          v29 = 0x80000000;
          v30 = -2147483647;
        }

        else
        {
          v47.origin.x = v24;
          v47.origin.y = v25;
          v47.size.width = v26;
          v47.size.height = v27;
          v48 = CGRectInset(v47, 0.000001, 0.000001);
          v49 = CGRectIntegral(v48);
          v30 = v49.origin.x;
          v28 = v49.size.height;
          v29 = v49.origin.y - 1;
        }
      }

      v31 = -v30;
      v32 = v28 + v29;
      v33 = xmmword_19CF29300;
      v34 = vdupq_n_s64(1uLL);
      [v12 setClipRect:&v31];
      [v12 encodeToCommandBuffer:v10 sourceTexture:objc_msgSend(a2 destinationTexture:{"metalTexture"), objc_msgSend(a3, "metalTexture")}];
    }
  }
}

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"12";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.14";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImageNonMPS
{
  v3 = [CIFilter filterWithName:@"CIAreaMaximum"];
  [(CIFilter *)v3 setInputImage:self->super.inputImage];
  [(CIFilter *)v3 setInputExtent:self->super.inputExtent];
  v4 = [[(CIImage *)[(CIFilter *)v3 outputImage] imageByClampingToExtent] imageByCroppingToRect:1.0, 0.0, 1.0, 1.0];
  v5 = [CIFilter filterWithName:@"CIAreaMinimum"];
  [(CIFilter *)v5 setInputImage:self->super.inputImage];
  [(CIFilter *)v5 setInputExtent:self->super.inputExtent];
  v6 = [[(CIImage *)[(CIFilter *)v5 outputImage] imageByClampingToExtent] imageByCroppingToRect:0.0, 0.0, 1.0, 1.0];

  return [(CIImage *)v4 imageByCompositingOverImage:v6];
}

- (id)outputImage
{
  offsetAndCrop = [(CIReductionFilter *)self offsetAndCrop];
  if (offsetAndCrop && (v4 = offsetAndCrop, [offsetAndCrop extent], !CGRectIsEmpty(v10)))
  {
    outputImageNonMPS = [(CIAreaMinMax *)self outputImageNonMPS];
    if (CI_ENABLE_MPS() && (v7 = -[CIAreaMinMax outputImageMPS:](self, "outputImageMPS:", v4)) != 0 && (v8 = v7, [v7 extent], !CGRectIsEmpty(v11)))
    {

      return [CIImage imageForRenderingWithMPS:v8 orNonMPS:outputImageNonMPS];
    }

    else
    {
      return outputImageNonMPS;
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end