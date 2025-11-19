@interface CICheapBilateral
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICheapBilateral

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryBlur";
  v9[1] = @"CICategoryNonSquarePixels";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v9[4] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v11[1] = @"12";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.14";
  v10[3] = @"inputSigmaRange";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1082B48;
  v8[1] = &unk_1F1082B58;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1082B48;
  v8[3] = &unk_1F1082B58;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082B68;
  v8[5] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputSigmaSpace";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1082B48;
  v6[1] = &unk_1F1082B78;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1082B48;
  v6[3] = &unk_1F1082B88;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082B98;
  v6[5] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputSource";
  v3 = @"CIAttributeType";
  v4 = @"CIAttributeTypeImage";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v46[5] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    [result extent];
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    if (CGRectIsInfinite(v48))
    {
      return 0;
    }

    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    if (CGRectIsNull(v49))
    {
      return 0;
    }

    else
    {
      inputImage = self->inputImage;
      inputSource = self->inputSource;
      if (inputSource)
      {
        v11 = inputSource == inputImage;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      [(NSNumber *)self->inputSigmaSpace doubleValue];
      v14 = v13;
      [(NSNumber *)self->inputSigmaRange doubleValue];
      v16 = v15;
      *&v15 = v14 * 3.0;
      LODWORD(v2) = llroundf(*&v15);
      if (v2 && v16 >= 0.00001)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInt:v2];
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v14 * v14)];
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v16 * v16)];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __31__CICheapBilateral_outputImage__block_invoke;
        v41[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v42 = v2;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __31__CICheapBilateral_outputImage__block_invoke_2;
        v39[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v40 = v2;
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        v51 = CGRectInset(v50, -v2, 0.0);
        v21 = v51.origin.x;
        v22 = v51.origin.y;
        v23 = v51.size.width;
        v35 = v51.size.height;
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        v52 = CGRectInset(v51, 0.0, -v2);
        v36 = v52.origin.x;
        v37 = v52.origin.y;
        v38 = v52.size.width;
        v24 = v52.size.height;
        v25 = [[(CIImage *)inputImage imageByClampingToExtent] imageByUnpremultiplyingAlpha];
        if (v12)
        {
          v26 = [[(CIImage *)inputSource imageByClampingToExtent] imageByUnpremultiplyingAlpha];
          v27 = [CIKernel kernelWithInternalRepresentation:&CI::_CBHorzGuided];
          v46[0] = v26;
          v46[1] = v25;
          v46[2] = v18;
          v46[3] = v20;
          v46[4] = v19;
          v28 = -[CIKernel applyWithExtent:roiCallback:arguments:](v27, "applyWithExtent:roiCallback:arguments:", v41, [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5], v21, v22, v23, v35);
          v29 = [CIKernel kernelWithInternalRepresentation:&CI::_CBVertGuided];
          v45[0] = v26;
          v45[1] = v28;
          v45[2] = v18;
          v45[3] = v20;
          v45[4] = v19;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
          v31 = v29;
        }

        else
        {
          v32 = [CIKernel kernelWithInternalRepresentation:&CI::_CBHorz];
          v44[0] = v25;
          v44[1] = v18;
          v44[2] = v20;
          v44[3] = v19;
          v33 = -[CIKernel applyWithExtent:roiCallback:arguments:](v32, "applyWithExtent:roiCallback:arguments:", v41, [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4], v21, v22, v23, v35);
          v34 = [CIKernel kernelWithInternalRepresentation:&CI::_CBVert];
          v43[0] = v33;
          v43[1] = v18;
          v43[2] = v20;
          v43[3] = v19;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
          v31 = v34;
        }

        return [[(CIImage *)[(CIKernel *)v31 applyWithExtent:v39 roiCallback:v30 arguments:v36 imageByPremultiplyingAlpha:v37] imageByCroppingToRect:x, y, width, height];
      }

      else
      {
        v17 = inputImage;

        return v17;
      }
    }
  }

  return result;
}

@end