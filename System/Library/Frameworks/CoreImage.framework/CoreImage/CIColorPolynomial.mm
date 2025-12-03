@interface CIColorPolynomial
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (BOOL)_isIdentityAlpha;
- (id)outputImage;
@end

@implementation CIColorPolynomial

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryInterlaced";
  v11[3] = @"CICategoryNonSquarePixels";
  v11[4] = @"CICategoryStillImage";
  v11[5] = @"CICategoryHighDynamicRange";
  v11[6] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];
  v13[1] = @"7";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.9";
  v12[3] = @"inputRedCoefficients";
  v9[0] = @"CIAttributeDefault";
  v10[0] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v9[1] = @"CIAttributeIdentity";
  v10[1] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputGreenCoefficients";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeIdentity";
  v8[0] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v8[1] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[5] = @"inputBlueCoefficients";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeIdentity";
  v6[0] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v6[1] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v12[6] = @"inputAlphaCoefficients";
  v3[1] = @"CIAttributeIdentity";
  v4[0] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0, @"CIAttributeDefault"];
  v4[1] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (BOOL)_isIdentity
{
  inputRedCoefficients = self->inputRedCoefficients;
  inputGreenCoefficients = self->inputGreenCoefficients;
  inputBlueCoefficients = self->inputBlueCoefficients;
  inputAlphaCoefficients = self->inputAlphaCoefficients;
  [(CIVector *)inputRedCoefficients X];
  if (fabs(v6) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputGreenCoefficients X];
  if (fabs(v7) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputBlueCoefficients X];
  if (fabs(v8) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients X];
  if (fabs(v9) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputRedCoefficients Y];
  if (vabdd_f64(1.0, v10) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputGreenCoefficients Y];
  if (vabdd_f64(1.0, v11) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputBlueCoefficients Y];
  if (vabdd_f64(1.0, v12) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients Y];
  if (vabdd_f64(1.0, v13) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputRedCoefficients Z];
  if (fabs(v14) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputGreenCoefficients Z];
  if (fabs(v15) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputBlueCoefficients Z];
  if (fabs(v16) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients Z];
  if (fabs(v17) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputRedCoefficients W];
  if (fabs(v18) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputGreenCoefficients W];
  if (fabs(v19) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputBlueCoefficients W];
  if (fabs(v20) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients W];
  return fabs(v21) < 0.00001;
}

- (BOOL)_isIdentityAlpha
{
  inputAlphaCoefficients = self->inputAlphaCoefficients;
  [(CIVector *)inputAlphaCoefficients X];
  if (fabs(v3) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients Y];
  if (vabdd_f64(1.0, v4) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients Z];
  if (fabs(v5) >= 0.00001)
  {
    return 0;
  }

  [(CIVector *)inputAlphaCoefficients W];
  return fabs(v6) < 0.00001;
}

- (id)outputImage
{
  v48[5] = *MEMORY[0x1E69E9840];
  if ([(CIColorPolynomial *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(CIVector *)self->inputRedCoefficients X];
    v6 = v5;
    [(CIVector *)self->inputGreenCoefficients X];
    v8 = v7;
    [(CIVector *)self->inputBlueCoefficients X];
    v10 = v9;
    [(CIVector *)self->inputAlphaCoefficients X];
    v12 = [CIVector vectorWithX:v6 Y:v8 Z:v10 W:v11];
    [(CIVector *)self->inputRedCoefficients Y];
    v14 = v13;
    [(CIVector *)self->inputGreenCoefficients Y];
    v16 = v15;
    [(CIVector *)self->inputBlueCoefficients Y];
    v18 = v17;
    [(CIVector *)self->inputAlphaCoefficients Y];
    v20 = [CIVector vectorWithX:v14 Y:v16 Z:v18 W:v19];
    [(CIVector *)self->inputRedCoefficients Z];
    v22 = v21;
    [(CIVector *)self->inputGreenCoefficients Z];
    v24 = v23;
    [(CIVector *)self->inputBlueCoefficients Z];
    v26 = v25;
    [(CIVector *)self->inputAlphaCoefficients Z];
    v28 = [CIVector vectorWithX:v22 Y:v24 Z:v26 W:v27];
    [(CIVector *)self->inputRedCoefficients W];
    v30 = v29;
    [(CIVector *)self->inputGreenCoefficients W];
    v32 = v31;
    [(CIVector *)self->inputBlueCoefficients W];
    v34 = v33;
    [(CIVector *)self->inputAlphaCoefficients W];
    v36 = [CIVector vectorWithX:v30 Y:v32 Z:v34 W:v35];
    imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    [(CIVector *)self->inputAlphaCoefficients X];
    if (v38 == 0.0)
    {
      [(CIImage *)self->inputImage extent];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
    }

    else
    {
      v40 = *MEMORY[0x1E695F040];
      v42 = *(MEMORY[0x1E695F040] + 8);
      v44 = *(MEMORY[0x1E695F040] + 16);
      v46 = *(MEMORY[0x1E695F040] + 24);
    }

    if ([(CIColorPolynomial *)self _isIdentityAlpha])
    {
      _kernelRGB = [(CIColorPolynomial *)self _kernelRGB];
    }

    else
    {
      _kernelRGB = [(CIColorPolynomial *)self _kernel];
    }

    v48[0] = imageByUnpremultiplyingAlpha;
    v48[1] = v12;
    v48[2] = v20;
    v48[3] = v28;
    v48[4] = v36;
    return [objc_msgSend(_kernelRGB applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 5), v40, v42, v44, v46), "imageByPremultiplyingAlpha"}];
  }
}

@end