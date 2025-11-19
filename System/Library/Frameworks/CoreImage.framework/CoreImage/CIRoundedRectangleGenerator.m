@interface CIRoundedRectangleGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRoundedRectangleGenerator

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGenerator";
  v11[1] = @"CICategoryStillImage";
  v11[2] = @"CICategoryHighDynamicRange";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"13";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.15";
  v12[3] = @"inputExtent";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:100.0 W:100.0];
  v10[1] = @"CIAttributeTypeRectangle";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputRadius";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084828;
  v8[1] = &unk_1F1084828;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1084838;
  v8[3] = &unk_1F10821F0;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputSmoothness";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084828;
  v6[1] = &unk_1F1084828;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1084848;
  v6[3] = &unk_1F1084848;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082208;
  v6[5] = @"CIAttributeTypeDistance";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputColor";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v4[1] = @"CIAttributeTypeColor";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v30[4] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if (CGRectIsEmpty(v32) || ([(CIColor *)self->inputColor alpha], v5 == 0.0))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    if (CGRectIsInfinite(v33))
    {
      inputColor = self->inputColor;

      return [CIImage imageWithColor:inputColor];
    }

    else
    {
      [(NSNumber *)self->inputRadius floatValue];
      v9 = width * 0.5;
      v10 = height * 0.5;
      v11 = fminf(fminf(fmaxf(v8, 0.0), v9), v10);
      v12 = v11;
      if (v11 >= 0.01)
      {
        [(NSNumber *)self->inputSmoothness floatValue];
        v15 = fminf(fmaxf(v14, 0.0), 1.0) * 0.707106781;
        *&v15 = v15;
        v16.f64[0] = width;
        v17.i32[1] = HIDWORD(height);
        v16.f64[1] = height;
        *v17.i32 = v11 + v11;
        *&v16.f64[0] = vdiv_f32(vcvt_f32_f64(v16), vdup_lane_s32(v17, 0));
        __asm { FMOV            V2.2S, #-1.0 }

        v27 = vminnm_f32(vdup_lane_s32(*&v15, 0), vadd_f32(*&v16.f64[0], _D2));
        v23 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_roundedrect];
        v30[0] = [CIVector vectorWithX:x Y:y Z:x + width W:y + height];
        LODWORD(v24) = fmaxf(v11, 0.5);
        v30[1] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v25 = [CIVector vectorWithX:v27.f32[0] Y:v27.f32[1]];
        v26 = self->inputColor;
        v30[2] = v25;
        v30[3] = v26;
        return -[CIColorKernel applyWithExtent:arguments:](v23, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4], x, y, width, height);
      }

      else
      {
        v13 = [CIImage imageWithColor:self->inputColor, v12];

        return [(CIImage *)v13 imageByCroppingToRect:x, y, width, height];
      }
    }
  }
}

@end