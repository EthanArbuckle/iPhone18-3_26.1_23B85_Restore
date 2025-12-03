@interface CIHighKey
+ (id)customAttributes;
- (id)_highKey;
- (id)outputImage;
@end

@implementation CIHighKey

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryColorAdjustment;
  v5[1] = kCICategoryVideo;
  v5[2] = kCICategoryStillImage;
  v5[3] = kCICategoryApplePrivate;
  v7[0] = [NSArray arrayWithObjects:v5 count:4];
  v6[1] = @"inputStrength";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_7A480;
  v4[1] = &off_7A490;
  v3[2] = kCIAttributeMin;
  v3[3] = kCIAttributeType;
  v4[2] = &off_7A4A0;
  v4[3] = kCIAttributeTypeScalar;
  v7[1] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
}

- (id)_highKey
{
  if (qword_8CF40 != -1)
  {
    sub_4B41C();
  }

  return qword_8CF38;
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  _highKey = [(CIHighKey *)self _highKey];
  [(CIImage *)self->inputImage extent];
  inputStrength = self->inputStrength;
  v11[0] = inputImage;
  v11[1] = inputStrength;
  return [_highKey applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v11, 2), v6, v7, v8, v9}];
}

@end