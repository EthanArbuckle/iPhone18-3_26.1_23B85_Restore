@interface CIEdges
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIEdges

- (id)outputImage
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(CIEdges *)self _CIEdges];
  [(CIImage *)self->inputImage extent];
  inputIntensity = self->inputIntensity;
  v10[0] = self->inputImage;
  v10[1] = inputIntensity;
  return [v3 applyWithExtent:&__block_literal_global_25 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v10, 2), v5, v6, v7, v8}];
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
  v6[3] = @"inputIntensity";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1083928;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083928;
  v4[3] = &unk_1F1083938;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1083948;
  v4[5] = &unk_1F1083928;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end