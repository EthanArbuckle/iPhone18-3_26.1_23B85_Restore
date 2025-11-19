@interface CIHardMixBlendMode
+ (id)customAttributes;
@end

@implementation CIHardMixBlendMode

+ (id)customAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryCompositeOperation";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryInterlaced";
  v3[4] = @"CICategoryNonSquarePixels";
  v3[5] = @"CICategoryBuiltIn";
  v3[6] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

@end