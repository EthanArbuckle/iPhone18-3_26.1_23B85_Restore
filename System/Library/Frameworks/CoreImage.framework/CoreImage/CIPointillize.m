@interface CIPointillize
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPointillize

- (id)outputImage
{
  v18[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = round(v3 * 0.5);
  v5 = v4 + v4;
  [(CIVector *)self->inputCenter X];
  v7 = round(v6);
  [(CIVector *)self->inputCenter Y];
  v9 = round(v8);
  [(CIImage *)self->inputImage extent];
  v20 = CGRectInset(v19, v5 * -1.5, v5 * -1.5);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v14 = [(CIPointillize *)self _CIPointillize];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __28__CIPointillize_outputImage__block_invoke;
  v16[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v17 = v5;
  v18[0] = self->inputImage;
  v18[1] = +[CIImage noiseImageNearest];
  v18[2] = [CIVector vectorWithX:v7 Y:v9 Z:v5 W:(1.0 / v5)];
  return [v14 applyWithExtent:v16 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v18, 3), x, y, width, height}];
}

double __28__CIPointillize_outputImage__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  v4 = *(a1 + 32) * -1.32499999 + 0.5;
  return a3 + v4;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryStylize";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryHighDynamicRange";
  v5[4] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084678;
  v4[3] = &unk_1F1084688;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1084668;
  v4[1] = &unk_1F1084668;
  v4[4] = &unk_1F1084668;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end