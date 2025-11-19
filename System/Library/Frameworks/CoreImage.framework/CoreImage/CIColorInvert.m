@interface CIColorInvert
+ (id)customAttributes;
@end

@implementation CIColorInvert

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorEffect";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryHighDynamicRange";
  v3[6] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v5[1] = @"5";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end