@interface CILocalLightMapPrepare
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILocalLightMapPrepare

+ (id)customAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorAdjustment";
  v7[1] = @"CICategoryStillImage";
  v7[2] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v8[1] = @"inputLightMapWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeDefault";
  v6[0] = &unk_1F10840B8;
  v6[1] = &unk_1F10840B8;
  v5[2] = @"CIAttributeType";
  v5[3] = @"CIAttributeClass";
  v6[2] = @"CIAttributeTypeDistance";
  v6[3] = @"NSNumber";
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[2] = @"inputLightMapHeight";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeDefault";
  v4[0] = &unk_1F10840B8;
  v4[1] = &unk_1F10840B8;
  v3[2] = @"CIAttributeType";
  v3[3] = @"CIAttributeClass";
  v4[2] = @"CIAttributeTypeDistance";
  v4[3] = @"NSNumber";
  v9[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

- (id)outputImage
{
  result = self->inputLightMap;
  if (result)
  {
    result = _lightMapImageFromData(result, self->inputLightMapWidth, self->inputLightMapHeight);
    inputGuideImage = self->inputGuideImage;
    if (inputGuideImage)
    {

      return _scaledLightMapImage(result, inputGuideImage);
    }
  }

  return result;
}

@end