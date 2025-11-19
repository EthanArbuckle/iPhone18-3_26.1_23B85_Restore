@interface CIGaussianBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIGaussianBlur

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryStillImage";
  v5[2] = @"CICategoryVideo";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"6";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083B88;
  v4[3] = &unk_1F1083B98;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1083B78;
  v4[1] = &unk_1F1083B78;
  v4[4] = &unk_1F1083B78;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIGaussianBlur *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputRadius doubleValue];
    v6 = v5;
    if (v5 <= 1.12)
    {
      v8 = 0;
      v9 = &v50.f64[1];
      if (v5 <= 0.7)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      v11 = 0.707106781 / v5;
      do
      {
        v12 = v11 * v8;
        v13 = v12 + v11 * 0.5;
        v14 = v12 + v11 * -0.5;
        if (v12 <= 2.0)
        {
          v17 = erf(v13);
          v16 = (v17 - erf(v14)) * 0.5;
        }

        else
        {
          v15 = erfc(v13);
          v16 = (v15 - erfc(v14)) * -0.5;
        }

        v52.f64[v8++] = v16;
      }

      while (v8 != 4);
      if (v6 <= 0.4)
      {
        v18 = 2;
      }

      else
      {
        v18 = v10;
      }

      v50 = 0u;
      v51 = 0u;
      v19.f64[0] = vmuld_lane_f64(-2.0, v52, 1);
      if (v18 == 2)
      {
        v29 = v19.f64[0] + v52.f64[0] * 2.0 + 1.0;
        v28 = 0.333333333;
        v50.f64[0] = v29 * 0.333333333;
        v27 = v52.f64[1] - v52.f64[0];
      }

      else
      {
        v19.f64[1] = -v52.f64[0];
        if (v18 == 3)
        {
          __asm { FMOV            V4.2D, #-2.0 }

          v25 = vmlaq_n_f64(vmlaq_f64(v19, xmmword_19CF26A00, v52), _Q4, v53);
          __asm { FMOV            V4.2D, #1.0 }

          v50 = vmulq_f64(vaddq_f64(v25, _Q4), vdupq_n_s64(0x3FC999999999999AuLL));
          v27 = v53 * 3.0 - (v52.f64[0] - v52.f64[1] * -2.0);
          v28 = 0.2;
          v9 = &v51;
        }

        else
        {
          __asm { FMOV            V5.2D, #-2.0 }

          v31 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(v19, xmmword_19CF269F0, v52), _Q5, v53), _Q5, v54);
          __asm { FMOV            V5.2D, #1.0 }

          v50 = vmulq_f64(vaddq_f64(v31, _Q5), vdupq_n_s64(0x3FC2492492492492uLL));
          v28 = 0.142857143;
          *&v51 = (v53 * 5.0 - (v52.f64[0] - v52.f64[1] * -2.0) + v54 * -2.0 + 1.0) * 0.142857143;
          v27 = v53 * -2.0 - (v52.f64[0] - v52.f64[1] * -2.0) + v54 * 5.0;
          v9 = &v51 + 1;
        }
      }

      v33 = 0;
      v34 = (2 * v18 - 1);
      *v9 = (v27 + 1.0) * v28;
      v35 = v49;
      do
      {
        if (v33 - v18 >= -1)
        {
          v36 = v33 - v18 + 1;
        }

        else
        {
          v36 = v18 + ~v33;
        }

        v37 = v50.f64[v36];
        v38 = (2 * v18 - 1);
        v39 = -v18;
        v40 = 1 - v18;
        v41 = v35;
        v42 = v18 - 1;
        do
        {
          if (v39 >= -1)
          {
            v43 = v40;
          }

          else
          {
            v43 = v42;
          }

          *v41++ = v50.f64[v43] * v37;
          --v42;
          ++v40;
          ++v39;
          --v38;
        }

        while (v38);
        ++v33;
        v35 = (v35 + ((16 * (((2 * v18 - 2) >> 1) & 0x7FFFFFFF)) | 8));
      }

      while (v33 != v34);
      v44 = [CIVector vectorWithValues:v49 count:(v34 * v34)];
      v45 = off_1E75C2C80[v18 - 2];
      inputImage = self->inputImage;
      v47[0] = @"inputWeights";
      v47[1] = @"inputBias";
      v48[0] = v44;
      v48[1] = &unk_1F1083B78;
      return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", v45, [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2]);
    }

    else
    {
      v7 = self->inputImage;

      return blurImage(v7, v5, v5);
    }
  }
}

@end