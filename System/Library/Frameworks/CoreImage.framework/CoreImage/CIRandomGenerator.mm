@interface CIRandomGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRandomGenerator

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryGenerator";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"6";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = +[CIImage noiseImagePadded];
  [v3 extent];
  v5 = v4 + -2.0;
  [v3 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CIRandomGenerator *)self _kernel];
  v15 = *MEMORY[0x1E695F040];
  v16 = *(MEMORY[0x1E695F040] + 8);
  v17 = *(MEMORY[0x1E695F040] + 16);
  v19 = *(MEMORY[0x1E695F040] + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __32__CIRandomGenerator_outputImage__block_invoke;
  v20[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v20[4] = v7;
  v20[5] = v9;
  v20[6] = v11;
  v20[7] = v13;
  v21[0] = [CIVector vectorWithX:v5 Y:v5 Z:1.0 / v5 W:1.0 / v5];
  return [v14 applyWithExtent:v20 roiCallback:v3 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v21, 1), v15, v16, v17, v19}];
}

@end