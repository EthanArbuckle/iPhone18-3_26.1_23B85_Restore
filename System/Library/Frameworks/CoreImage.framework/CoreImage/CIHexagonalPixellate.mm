@interface CIHexagonalPixellate
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIHexagonalPixellate

- (id)outputImage
{
  v15[5] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputScale floatValue];
  v4 = v3;
  v5 = v3;
  v6 = (v3 * 1.7321) * 0.5;
  v7 = [CIVector vectorWithX:1.0 / v3 Y:1.0 / v6];
  v8 = [CIVector vectorWithX:v5 Y:v6];
  _CIHexagonalPixellate = [(CIHexagonalPixellate *)self _CIHexagonalPixellate];
  [(CIImage *)self->inputImage extent];
  v17 = CGRectInset(v16, -v4, -v4);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  LODWORD(v17.origin.x) = 1058262330;
  v15[4] = [MEMORY[0x1E696AD98] numberWithFloat:{v17.origin.x, self->inputImage, self->inputCenter, v7, v8}];
  return [_CIHexagonalPixellate applyWithExtent:&__block_literal_global_57 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v15, 5), x, y, width, height}];
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
  v7[2] = @"10.5";
  v6[3] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084648;
  v4[3] = &unk_1F1084658;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1084638;
  v4[1] = &unk_1F1084638;
  v4[4] = &unk_1F1084638;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end