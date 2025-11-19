@interface CIGuidedFilter
+ (id)customAttributes;
- (id)_boxFilter:(id)a3 fullFloat:(BOOL)a4;
- (id)_downsampledColorImage:(id)a3;
- (id)_swizzleImageXXX1:(id)a3;
- (id)_swizzleImageYYZ1:(id)a3;
- (id)_swizzleImageYZZ1:(id)a3;
- (id)_upsampleImage:(id)a3 targetImageSize:(CGSize)a4;
- (id)computeAB:(id)a3;
- (id)multiplyImages:(id)a3 imageB:(id)a4;
- (id)outputImage;
- (id)subtract:(id)a3 minus:(id)a4;
@end

@implementation CIGuidedFilter

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGeometryAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"12";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.14";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1083C58;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083C68;
  v6[3] = &unk_1F1083C58;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[4] = @"inputEpsilon";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1083C78;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083C88;
  v4[3] = &unk_1F1083C98;
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)_downsampledColorImage:(id)a3
{
  v3 = a3;
  [a3 extent];
  v6 = v5;
  v8 = v7;
  [(CIImage *)self->inputImage extent];
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v9 / v6, v10 / v8);
  v12 = v13;
  if (!CGAffineTransformIsIdentity(&v12))
  {
    v12 = v13;
    return [v3 imageByApplyingTransform:&v12 highQualityDownsample:1];
  }

  return v3;
}

- (id)_upsampleImage:(id)a3 targetImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  memset(&v12, 0, sizeof(v12));
  [a3 extent];
  v8 = width / v7;
  [v6 extent];
  CGAffineTransformMakeScale(&v12, v8, height / v9);
  v11 = v12;
  if (!CGAffineTransformIsIdentity(&v11))
  {
    v11 = v12;
    return [v6 imageByApplyingTransform:&v11 highQualityDownsample:0];
  }

  return v6;
}

- (id)_boxFilter:(id)a3 fullFloat:(BOOL)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  [a3 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (a4)
  {
    v22 = @"wrap_mode";
    v23 = @"clamp";
    v15 = +[CISampler samplerWithImage:options:](CISampler, "samplerWithImage:options:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1]);
    v16 = [(CIGuidedFilter *)self _fullFloatBoxFilter];
    v21 = v15;
    return [v16 applyWithExtent:&__block_literal_global_38 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v21, 1), v8, v10, v12, v14}];
  }

  else
  {
    v18 = [a3 imageByClampingToExtent];
    v19 = MEMORY[0x1E696AD98];
    [(NSNumber *)self->inputRadius floatValue];
    v24 = @"inputRadius";
    v25[0] = [v19 numberWithDouble:v20 * 2.0 + 1.0];
    return [objc_msgSend(v18 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, &v24, 1)), "imageByCroppingToRect:", v8, v10, v12, v14}];
  }
}

- (id)multiplyImages:(id)a3 imageB:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = [(CIGuidedFilter *)self _multiplyImagesKernel];
  [a3 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [a4 extent];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v17;
  v23.size.height = v18;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v22 = CGRectUnion(v21, v23);
  v20[0] = a3;
  v20[1] = a4;
  return [v6 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v20, 2), v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
}

- (id)subtract:(id)a3 minus:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_subtractImages];
  [a3 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [a4 extent];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v17;
  v23.size.height = v18;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v22 = CGRectUnion(v21, v23);
  v20[0] = a3;
  v20[1] = a4;
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2], v22.origin.x, v22.origin.y, v22.size.width, v22.size.height);
}

- (id)_swizzleImageXXX1:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_swizzleXXX1];
  [a3 extent];
  v10[0] = a3;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1], v5, v6, v7, v8);
}

- (id)_swizzleImageYYZ1:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_swizzleYYZ1];
  [a3 extent];
  v10[0] = a3;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1], v5, v6, v7, v8);
}

- (id)_swizzleImageYZZ1:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_swizzleYZZ1];
  [a3 extent];
  v10[0] = a3;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1], v5, v6, v7, v8);
}

- (id)computeAB:(id)a3
{
  v43[5] = *MEMORY[0x1E69E9840];
  v5 = [(CIGuidedFilter *)self _boxFilter:a3 fullFloat:1];
  v6 = [(CIGuidedFilter *)self _swizzleImageXXX1:a3];
  v7 = [(CIGuidedFilter *)self _swizzleImageYYZ1:a3];
  v8 = [(CIGuidedFilter *)self _swizzleImageYZZ1:a3];
  v9 = [(CIGuidedFilter *)self multiplyImages:v6 imageB:a3];
  v10 = [(CIGuidedFilter *)self multiplyImages:v7 imageB:v8];
  v11 = [(CIGuidedFilter *)self _swizzleImageXXX1:v5];
  v12 = [(CIGuidedFilter *)self _swizzleImageYYZ1:v5];
  v13 = [(CIGuidedFilter *)self _swizzleImageYZZ1:v5];
  v14 = [(CIGuidedFilter *)self multiplyImages:v11 imageB:v5];
  v15 = [(CIGuidedFilter *)self multiplyImages:v12 imageB:v13];
  v16 = [(CIGuidedFilter *)self _boxFilter:v9 fullFloat:1];
  v17 = [(CIGuidedFilter *)self _boxFilter:v10 fullFloat:1];
  v18 = [(CIGuidedFilter *)self subtract:v16 minus:v14];
  v19 = [(CIGuidedFilter *)self subtract:v17 minus:v15];
  v20 = -[CIGuidedFilter subtract:minus:](self, "subtract:minus:", -[CIGuidedFilter _boxFilter:fullFloat:](self, "_boxFilter:fullFloat:", [a3 imageByPremultiplyingAlpha], 1), objc_msgSend(v5, "imageByPremultiplyingAlpha"));
  v21 = [(CIGuidedFilter *)self _computeABKernel];
  [v20 extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v18 extent];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [v19 extent];
  v47.origin.x = v38;
  v47.origin.y = v39;
  v47.size.width = v40;
  v47.size.height = v41;
  v44.origin.x = v31;
  v44.origin.y = v33;
  v44.size.width = v35;
  v44.size.height = v37;
  v48 = CGRectUnion(v44, v47);
  v45.origin.x = v23;
  v45.origin.y = v25;
  v45.size.width = v27;
  v45.size.height = v29;
  v46 = CGRectUnion(v45, v48);
  v43[0] = v18;
  v43[1] = v19;
  v43[2] = v20;
  v43[3] = v5;
  v43[4] = self->inputEpsilon;
  return -[CIGuidedFilter _boxFilter:fullFloat:](self, "_boxFilter:fullFloat:", [v21 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v43, 5), v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}], 0);
}

- (id)outputImage
{
  v44[2] = *MEMORY[0x1E69E9840];
  if (self->inputGuideImage && (v3 = self->inputImage) != 0 && ([(CIImage *)v3 extent], !CGRectIsInfinite(v46)) && ([(CIImage *)self->inputGuideImage extent], !CGRectIsInfinite(v47)))
  {
    [(CIImage *)self->inputGuideImage extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(CIImage *)self->inputImage extent];
    v51.origin.x = v13;
    v51.origin.y = v14;
    v51.size.width = v15;
    v51.size.height = v16;
    v48.origin.x = v6;
    v48.origin.y = v8;
    v48.size.width = v10;
    v48.size.height = v12;
    if (CGRectEqualToRect(v48, v51))
    {
      return self->inputImage;
    }

    else
    {
      v17 = [(CIGuidedFilter *)self _downsampledColorImage:self->inputGuideImage];
      v18 = [(CIGuidedFilter *)self _combineRGB_and_A];
      [v17 extent];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(CIImage *)self->inputImage extent];
      v52.origin.x = v27;
      v52.origin.y = v28;
      v52.size.width = v29;
      v52.size.height = v30;
      v49.origin.x = v20;
      v49.origin.y = v22;
      v49.size.width = v24;
      v49.size.height = v26;
      v50 = CGRectUnion(v49, v52);
      inputImage = self->inputImage;
      v44[0] = v17;
      v44[1] = inputImage;
      v32 = -[CIGuidedFilter computeAB:](self, "computeAB:", [v18 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v44, 2), v50.origin.x, v50.origin.y, v50.size.width, v50.size.height}]);
      [(CIImage *)self->inputImage extent];
      v33 = [v32 imageByCroppingToRect:?];
      [(CIImage *)self->inputGuideImage extent];
      v36 = [(CIGuidedFilter *)self _upsampleImage:v33 targetImageSize:v34, v35];
      v37 = [(CIGuidedFilter *)self _finalResult];
      [v36 extent];
      inputGuideImage = self->inputGuideImage;
      v43[0] = v36;
      v43[1] = inputGuideImage;
      return [v37 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v43, 2), v39, v40, v41, v42}];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end