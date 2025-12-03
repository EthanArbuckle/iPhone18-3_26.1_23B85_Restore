@interface CIBlurredRoundedRectangleGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBlurredRoundedRectangleGenerator

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGenerator";
  v13[1] = @"CICategoryStillImage";
  v13[2] = @"CICategoryHighDynamicRange";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"19";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"16.0";
  v14[3] = @"inputExtent";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:100.0 W:100.0];
  v12[1] = @"CIAttributeTypeRectangle";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084828;
  v10[1] = &unk_1F1084828;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084838;
  v10[3] = &unk_1F10821F0;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeDistance";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v14[5] = @"inputSmoothness";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084828;
  v8[1] = &unk_1F1084828;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084848;
  v8[3] = &unk_1F1084848;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082208;
  v8[5] = @"CIAttributeTypeDistance";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputSigma";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084828;
  v6[1] = &unk_1F1084828;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084838;
  v6[3] = &unk_1F10821F0;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v14[7] = @"inputColor";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypeColor";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v46[3] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  if (CGRectIsEmpty(v48) || ([(CIColor *)self->inputColor alpha], v5 == 0.0))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    if (!CGRectIsInfinite(v49))
    {
      [(NSNumber *)self->inputRadius floatValue];
      v9 = width * 0.5;
      v10 = height * 0.5;
      v11 = fminf(fminf(fmaxf(v8, 0.0), v9), v10);
      v12 = v11;
      if (v11 >= 0.01)
      {
        [(NSNumber *)self->inputSigma floatValue];
        v18 = fmaxf(v17, 0.0);
        if (v18 >= 0.1)
        {
          v23.f64[0] = width;
          v24.i32[1] = HIDWORD(height);
          v23.f64[1] = height;
          *v24.i32 = v11 + v11;
          *&v23.f64[0] = vdiv_f32(vcvt_f32_f64(v23), vdup_lane_s32(v24, 0));
          __asm { FMOV            V1.2S, #-1.0 }

          v39 = vminnm_f32(vadd_f32(*&v23.f64[0], _D1), 0);
          v30 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_blurredroundedrect];
          height = [CIVector vectorWithX:x Y:y Z:x + width W:y + height];
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          v51 = CGRectInset(v50, v18 * -3.0, v18 * -3.0);
          v32 = v51.origin.x;
          v33 = v51.origin.y;
          v34 = v51.size.width;
          v35 = v51.size.height;
          v42[0] = height;
          *&v51.origin.x = v11;
          v42[1] = [MEMORY[0x1E696AD98] numberWithFloat:v51.origin.x];
          v42[2] = [CIVector vectorWithX:v39.f32[0] Y:v39.f32[1]];
          *&v36 = v18;
          v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
          inputColor = self->inputColor;
          v42[3] = v37;
          v42[4] = inputColor;
          return -[CIColorKernel applyWithExtent:arguments:](v30, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:5], v32, v33, v34, v35);
        }

        inputExtent = self->inputExtent;
        inputRadius = self->inputRadius;
        v43[0] = @"inputExtent";
        v43[1] = @"inputRadius";
        inputSmoothness = self->inputSmoothness;
        v44[0] = inputExtent;
        v44[1] = inputRadius;
        v43[2] = @"inputSmoothness";
        v43[3] = @"inputColor";
        v22 = self->inputColor;
        v44[2] = inputSmoothness;
        v44[3] = v22;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
        v16 = @"CIRoundedRectangleGenerator";
      }

      else
      {
        v13 = self->inputExtent;
        v45[0] = @"inputExtent";
        v45[1] = @"inputSigma";
        inputSigma = self->inputSigma;
        v46[0] = v13;
        v46[1] = inputSigma;
        v45[2] = @"inputColor";
        v46[2] = self->inputColor;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:{3, v12}];
        v16 = @"CIBlurredRectangleGenerator";
      }

      return [+[CIFilter filterWithName:withInputParameters:](CIFilter outputImage:v16];
    }

    v7 = self->inputColor;

    return [CIImage imageWithColor:v7];
  }
}

@end