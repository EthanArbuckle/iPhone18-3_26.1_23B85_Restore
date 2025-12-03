@interface CIMotionBlur
+ (id)customAttributes;
- (id)_blur:(id)_blur pass:(int)pass weightsFactor:(float)factor legacyExtent:(CGRect *)extent;
- (id)outputImage;
@end

@implementation CIMotionBlur

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryStillImage";
  v5[2] = @"CICategoryVideo";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"8.3";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084368;
  v4[1] = &unk_1F1084368;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084378;
  v4[3] = &unk_1F1084368;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1084388;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)_blur:(id)_blur pass:(int)pass weightsFactor:(float)factor legacyExtent:(CGRect *)extent
{
  passCopy = pass;
  v31[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle floatValue];
  v28 = sinf(v11);
  [(NSNumber *)self->inputAngle floatValue];
  v13.f32[0] = cosf(v12);
  v13.f32[1] = v28;
  v14 = vmul_n_f32(v13, (1 << passCopy));
  v15 = vcvtq_f64_f32(vabs_f32(v14));
  v27 = v14.f32[0];
  v29 = vcvt_f32_f64(vrndpq_f64(vaddq_f64(v15, v15)));
  v16 = v14.f32[1];
  v17 = [CIVector vectorWithX:v14.f32[0] Y:v14.f32[1] Z:(1.0 - factor) + factor * 0.375 W:factor * 0.25];
  [_blur extent];
  v33 = CGRectInset(v32, -v29.f32[0], -v29.f32[1]);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v22 = -v27;
  if (v27 >= 0.0)
  {
    v22 = v27;
  }

  v23 = -floor(v22 + v22);
  v24 = -v16;
  if (v16 >= 0.0)
  {
    v24 = v16;
  }

  *extent = CGRectInset(*extent, v23, -floor(v24 + v24));
  _kernel = [(CIMotionBlur *)self _kernel];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __54__CIMotionBlur__blur_pass_weightsFactor_legacyExtent___block_invoke;
  v30[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v30[4] = v29;
  v31[0] = _blur;
  v31[1] = v17;
  return [_kernel applyWithExtent:v30 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v31, 2), x, y, width, height}];
}

- (id)outputImage
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  _isIdentity = [(CIMotionBlur *)self _isIdentity];
  inputImage = self->inputImage;
  if (_isIdentity)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      [(NSNumber *)self->inputAngle doubleValue];
      v8 = v7;
      [(NSNumber *)self->inputRadius doubleValue];
      v10 = v9;
      CGAffineTransformMakeRotation(&v38, -v8);
      v11 = [(CIImage *)inputImage imageByApplyingTransform:&v38];
      v39[0] = @"inputSigmaX";
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v39[1] = @"inputSigmaY";
      v40[0] = v12;
      v40[1] = &unk_1F1081F98;
      v13 = -[CIImage imageByApplyingFilter:withInputParameters:](v11, "imageByApplyingFilter:withInputParameters:", @"CIGaussianBlurXY", [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2]);
      CGAffineTransformMakeRotation(&v38, v8);
      v14 = [(CIImage *)v13 imageByApplyingTransform:&v38];
      [(CIImage *)self->inputImage extent];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(NSNumber *)self->inputAngle floatValue];
      v24 = __sincos_stret(v23);
      v42.origin.x = v16;
      v42.origin.y = v18;
      v42.size.width = v20;
      v42.size.height = v22;
      v43 = CGRectInset(v42, -ceil(fabs(v10 * (v24.__cosval * 3.0))), -ceil(fabs(v10 * (v24.__sinval * 3.0))));
      v25 = v14;
    }

    else
    {
      [(NSNumber *)self->inputRadius floatValue];
      v27 = v26 * v26;
      v28 = 1.0833;
      v29 = 0;
      if (v27 > 1.0833)
      {
        v30 = 1.0;
        do
        {
          v31 = v28;
          v29 = (v29 + 1);
          v30 = v30 * 4.0;
          v28 = v28 + v30;
        }

        while (v27 > v28);
        v27 = v27 - v31;
        v28 = v28 - v31;
      }

      v32 = v27 / v28;
      [(CIImage *)self->inputImage extent];
      v38.a = v33;
      v38.b = v34;
      v38.c = v35;
      v38.d = v36;
      if (v29 < 1)
      {
        v29 = 0;
      }

      else
      {
        v37 = 0;
        do
        {
          LODWORD(v33) = 1.0;
          inputImage = [(CIMotionBlur *)self _blur:inputImage pass:v37 weightsFactor:&v38 legacyExtent:v33];
          v37 = (v37 + 1);
        }

        while (v29 != v37);
      }

      *&v33 = v32;
      v25 = [(CIMotionBlur *)self _blur:inputImage pass:v29 weightsFactor:&v38 legacyExtent:v33];
      v43.origin.x = v38.a;
      v43.origin.y = v38.b;
      v43.size.width = v38.c;
      v43.size.height = v38.d;
    }

    return [v25 imageByCroppingToRect:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];
  }
}

@end