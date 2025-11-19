@interface CIDynamicLocalLightMapPrepare
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDynamicLocalLightMapPrepare

+ (id)customAttributes
{
  v10[0] = kCIAttributeFilterCategories;
  v9[0] = kCICategoryColorAdjustment;
  v9[1] = kCICategoryStillImage;
  v9[2] = kCICategoryApplePrivate;
  v11[0] = [NSArray arrayWithObjects:v9 count:3];
  v10[1] = @"inputLightMapWidth";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeDefault;
  v8[0] = &off_79BE0;
  v8[1] = &off_79BE0;
  v7[2] = kCIAttributeType;
  v7[3] = kCIAttributeClass;
  v8[2] = kCIAttributeTypeDistance;
  v8[3] = @"NSNumber";
  v11[1] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v10[2] = @"inputLightMapHeight";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeDefault;
  v6[0] = &off_79BE0;
  v6[1] = &off_79BE0;
  v5[2] = kCIAttributeType;
  v5[3] = kCIAttributeClass;
  v6[2] = kCIAttributeTypeDistance;
  v6[3] = @"NSNumber";
  v11[2] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v10[3] = @"inputGuidedFilterEpsilon";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeDefault;
  v4[0] = &off_79BE0;
  v4[1] = &off_79BF0;
  v3[2] = kCIAttributeType;
  v3[3] = kCIAttributeClass;
  v4[2] = kCIAttributeTypeScalar;
  v4[3] = @"NSNumber";
  v11[3] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
}

- (id)outputImage
{
  inputLightMap = self->inputLightMap;
  if (!inputLightMap)
  {
    return 0;
  }

  v4 = sub_17188(inputLightMap, self->inputLightMapWidth, self->inputLightMapHeight);
  inputGuideImage = self->inputGuideImage;
  if (inputGuideImage)
  {
    CGAffineTransformMakeScale(&v8, 0.5, 0.5);
    v6 = sub_17308(v4, [(CIImage *)inputGuideImage imageByApplyingTransform:&v8], self->inputGuidedFilterEpsilon);
    CGAffineTransformMakeScale(&v8, 2.0, 2.0);
    return [v6 imageByApplyingTransform:&v8];
  }

  return v4;
}

@end