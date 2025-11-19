@interface CIIPTtoSRGB
+ (id)customAttributes;
- (id)_hueChromaToRect;
- (id)_iptToSRGB;
- (id)outputImage;
@end

@implementation CIIPTtoSRGB

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryColorAdjustment;
  v5[1] = kCICategoryVideo;
  v5[2] = kCICategoryStillImage;
  v7[0] = [NSArray arrayWithObjects:v5 count:3];
  v6[1] = @"inputIsHueChroma";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &__kCFBooleanFalse;
  v4[1] = kCIAttributeTypeBoolean;
  v7[1] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
}

- (id)_iptToSRGB
{
  if (qword_8CB48 != -1)
  {
    sub_4A288();
  }

  return qword_8CB40;
}

- (id)_hueChromaToRect
{
  if (qword_8CB58 != -1)
  {
    sub_4A29C();
  }

  return qword_8CB50;
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  if ([(NSNumber *)self->inputIsHueChroma BOOLValue])
  {
    v4 = [(CIIPTtoSRGB *)self _hueChromaToRect];
    [(CIImage *)self->inputImage extent];
    v16 = inputImage;
    inputImage = [v4 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v16, 1), v5, v6, v7, v8}];
  }

  v9 = [(CIIPTtoSRGB *)self _iptToSRGB];
  [(CIImage *)self->inputImage extent];
  v15 = inputImage;
  return [v9 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v15, 1), v10, v11, v12, v13}];
}

@end