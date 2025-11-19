@interface CIContrastEnhancer
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIContrastEnhancer

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorEffect";
  v11[1] = @"CICategoryNonSquarePixels";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v11[4] = @"CICategoryApplePrivate";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"12";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.14";
  v12[3] = @"inputIntensity";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeMax";
  v10[0] = &unk_1F1083498;
  v10[1] = &unk_1F10834C8;
  v9[2] = @"CIAttributeSliderMin";
  v9[3] = @"CIAttributeSliderMax";
  v10[2] = &unk_1F1083498;
  v10[3] = &unk_1F10834C8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10834E8;
  v10[5] = @"CIAttributeTypeScalar";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputScale";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1083498;
  v8[1] = &unk_1F10834C8;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1083498;
  v8[3] = &unk_1F10834C8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10834F8;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputLocal";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = MEMORY[0x1E695E110];
  v6[1] = @"CIAttributeTypeBoolean";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v12[6] = @"inputPerceptual";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = @"CIAttributeTypeBoolean";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v106 = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsInfinite(v107))
  {
    return self->inputImage;
  }

  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v108))
  {
    return self->inputImage;
  }

  [(NSNumber *)self->inputIntensity floatValue];
  if (v3 <= 0.0)
  {
    return self->inputImage;
  }

  [(NSNumber *)self->inputIntensity floatValue];
  v5 = v4;
  [(CIImage *)self->inputImage extent];
  v7 = v6;
  [(CIImage *)self->inputImage extent];
  v9 = v7 / v8;
  [(CIImage *)self->inputImage extent];
  v11 = v10;
  [(CIImage *)self->inputImage extent];
  v13 = v12;
  [(CIImage *)self->inputImage extent];
  if (v11 >= v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = 128.0;
  if (v16 <= 128.0)
  {
    [(CIImage *)self->inputImage extent];
    v19 = v18;
    [(CIImage *)self->inputImage extent];
    v21 = v20;
    [(CIImage *)self->inputImage extent];
    if (v19 < v21)
    {
      v17 = v22;
    }

    else
    {
      v17 = v23;
    }
  }

  v24 = v17;
  v25 = roundf(v9 * v17);
  [(NSNumber *)self->inputScale floatValue];
  v27 = v26;
  v28 = [(NSNumber *)self->inputLocal BOOLValue];
  v29 = v27;
  if (!v28)
  {
    v29 = 0.699999988;
  }

  v30 = fmin(v29, 1.0);
  if (v24 <= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v24;
  }

  v32 = v30 * log2(v31);
  v33 = roundf(v32);
  if (v33 <= 0.0)
  {
    v33 = 0.0;
  }

  v34 = v33;
  [(CIImage *)self->inputImage extent];
  memset(&v97, 0, sizeof(v97));
  CGAffineTransformMakeScale(&v97, v24 / v35, v25 / v36);
  inputImage = self->inputImage;
  v105 = v97;
  v38 = [(CIImage *)inputImage imageByApplyingTransform:&v105];
  v39 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CEcomp_minmax];
  [(CIImage *)v38 extent];
  v104 = v38;
  v44 = -[CIColorKernel applyWithExtent:arguments:](v39, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1], v40, v41, v42, v43);
  [(CIImage *)v44 extent];
  v46 = v45;
  v48 = v47;
  CGAffineTransformMakeTranslation(&v105, -v49, -v50);
  v51 = [[(CIImage *)v44 imageByApplyingTransform:&v105] imageByCroppingToRect:0.0, 0.0, v46, v48];
  if ([(NSNumber *)self->inputPerceptual BOOLValue])
  {
    v51 = [(CIImage *)v51 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  v52 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CEcomp_minmax];
  [(CIImage *)v51 extent];
  v103 = v51;
  v57 = -[CIColorKernel applyWithExtent:arguments:](v52, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1], v53, v54, v55, v56);
  v58 = [CIKernel kernelWithInternalRepresentation:&CI::_DEminmax4];
  if (v34 >= 1)
  {
    v59 = v58;
    v60 = v34 + 1;
    do
    {
      [(CIImage *)v57 extent];
      v62 = v61;
      v64 = v63;
      v66 = ceil(v65 * 0.5);
      v68 = ceil(v67 * 0.5);
      *&v105.a = v57;
      [(CIImage *)v57 extent];
      v70 = v69;
      [(CIImage *)v57 extent];
      *&v105.b = [CIVector vectorWithX:v70 Y:v71];
      v57 = -[CIKernel applyWithExtent:roiCallback:arguments:](v59, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_225, [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:2], v62, v64, v66, v68);
      --v60;
    }

    while (v60 > 1);
  }

  if (v28)
  {
    [(CIImage *)self->inputImage extent];
    v73 = v72;
    [(CIImage *)v57 extent];
    v75 = v73 / v74;
    [(CIImage *)self->inputImage extent];
    v77 = v76;
    [(CIImage *)v57 extent];
    v79 = [CIVector vectorWithX:v75 Y:v77 / v78];
    v80 = [(CIImage *)v57 imageByClampingToExtent];
    v101 = @"inputScale";
    v102 = v79;
    v81 = -[CIImage imageByApplyingFilter:withInputParameters:](v80, "imageByApplyingFilter:withInputParameters:", @"CISoftCubicUpsample", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1]);
  }

  else
  {
    [(CIImage *)v57 extent];
    v83 = [CIVector vectorWithCGRect:?];
    v99 = @"inputExtent";
    v100 = v83;
    v81 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v57, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1]), "imageByClampingToExtent");
  }

  v84 = v81;
  v85 = v5 + v5;
  v86 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  if ([(NSNumber *)self->inputPerceptual BOOLValue])
  {
    v86 = [(CIImage *)v86 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  v87 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CEstretch];
  [(CIImage *)v86 extent];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v98[0] = v86;
  v98[1] = v84;
  *&v88 = v85;
  v98[2] = [MEMORY[0x1E696AD98] numberWithFloat:v88];
  v96 = -[CIColorKernel applyWithExtent:arguments:](v87, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3], v89, v91, v93, v95);
  if ([(NSNumber *)self->inputPerceptual BOOLValue])
  {
    v96 = [(CIImage *)v96 imageByApplyingFilter:@"CISRGBToneCurveToLinear"];
  }

  return [(CIImage *)v96 imageByPremultiplyingAlpha];
}

@end