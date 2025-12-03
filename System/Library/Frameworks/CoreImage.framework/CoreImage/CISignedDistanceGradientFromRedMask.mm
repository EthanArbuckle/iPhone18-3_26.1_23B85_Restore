@interface CISignedDistanceGradientFromRedMask
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISignedDistanceGradientFromRedMask

- (id)outputImage
{
  v41[2] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  IsEmpty = CGRectIsEmpty(v42);
  result = self->inputImage;
  if (!IsEmpty)
  {
    [result extent];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if (CGRectIsInfinite(v43))
    {
      v9 = ci_logger_filter();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CIDistanceGradientFromRedMask outputImage];
      }

      return 0;
    }

    height = [CIVector vectorWithCGRect:x, y, width, height];
    [(NSNumber *)self->inputMaximumDistance floatValue];
    v12 = v11;
    if (v11 < 1.0 || v11 > 1000.0)
    {
      v14 = ci_logger_filter();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CIDistanceGradientFromRedMask outputImage];
      }

      return 0;
    }

    v15 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_signedDistanceMaskPrep];
    v41[0] = self->inputImage;
    v41[1] = height;
    v16 = -[CIImage imageBySamplingNearest](-[CIColorKernel applyWithExtent:arguments:](v15, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2], x, y, width, height), "imageBySamplingNearest");
    v17 = [CIKernel kernelWithInternalRepresentation:&CI::_signedDistanceMask];
    v18 = vcvtpd_s64_f64(log2(ceilf(v12) + 1.0));
    v35 = v12;
    if (v18 >= 1)
    {
      v19 = (1 << (v18 - 1));
      do
      {
        [(CIImage *)v16 extent];
        v45 = CGRectInset(v44, -v19, -v19);
        v20 = v45.origin.x;
        v21 = v45.origin.y;
        v22 = v45.size.width;
        v23 = v45.size.height;
        *&recta.origin.y = MEMORY[0x1E69E9820];
        *&recta.size.width = 3221225472;
        *&recta.size.height = __50__CISignedDistanceGradientFromRedMask_outputImage__block_invoke;
        v37 = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v38 = v19;
        v40[0] = v16;
        v40[1] = height;
        v40[2] = [MEMORY[0x1E696AD98] numberWithInt:v19];
        v16 = -[CIImage imageBySamplingNearest](-[CIKernel applyWithExtent:roiCallback:arguments:](v17, "applyWithExtent:roiCallback:arguments:", &recta.origin.y, [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3], v20, v21, v22, v23), "imageBySamplingNearest");
        v19 = (v19 / 2);
        --v18;
      }

      while (v18);
    }

    v24 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_signedDistanceMaskPost];
    [(CIImage *)v16 extent];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    inputImage = self->inputImage;
    v39[0] = v16;
    v39[1] = inputImage;
    v39[2] = height;
    *&v25 = v35;
    v39[3] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v34 = -[CIColorKernel applyWithExtent:arguments:](v24, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4], v26, v28, v30, v32);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v47 = CGRectInset(v46, -v35, -v35);
    v48 = CGRectIntegral(v47);
    return [(CIImage *)v34 imageByClampingToRect:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
  }

  return result;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryGradient";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"19";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"16.0";
  v6[3] = @"inputMaximumDistance";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082958;
  v4[1] = &unk_1F1082968;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082978;
  v4[3] = &unk_1F1082988;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082998;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end