@interface CICode128BarcodeGenerator
+ (id)customAttributes;
- (CGImage)outputCGImage;
@end

@implementation CICode128BarcodeGenerator

+ (id)customAttributes
{
  v14[0] = kCIAttributeFilterCategories;
  v13[0] = kCICategoryGenerator;
  v13[1] = kCICategoryStillImage;
  v13[2] = kCICategoryBuiltIn;
  v2 = [NSArray arrayWithObjects:v13 count:3];
  v15[0] = v2;
  v15[1] = @"8";
  v14[1] = kCIAttributeFilterAvailable_iOS;
  v14[2] = kCIAttributeFilterAvailable_Mac;
  v15[2] = @"10.10";
  v15[3] = &__NSDictionary0__struct;
  v14[3] = @"inputMessage";
  v14[4] = @"inputQuietSpace";
  v11[0] = kCIAttributeMin;
  v11[1] = kCIAttributeMax;
  v12[0] = &off_1DC88;
  v12[1] = &off_1DDD8;
  v11[2] = kCIAttributeSliderMin;
  v11[3] = kCIAttributeSliderMax;
  v12[2] = &off_1DC88;
  v12[3] = &off_1DDF0;
  v11[4] = kCIAttributeDefault;
  v3 = dyld_program_sdk_at_least();
  v4 = &off_1DE20;
  if (v3)
  {
    v4 = &off_1DE08;
  }

  v11[5] = kCIAttributeType;
  v12[4] = v4;
  v12[5] = kCIAttributeTypeInteger;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  v15[4] = v5;
  v14[5] = @"inputBarcodeHeight";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeMax;
  v10[0] = &off_1DCB8;
  v10[1] = &off_1DE38;
  v9[2] = kCIAttributeSliderMin;
  v9[3] = kCIAttributeSliderMax;
  v10[2] = &off_1DCB8;
  v10[3] = &off_1DE50;
  v9[4] = kCIAttributeDefault;
  v9[5] = kCIAttributeType;
  v10[4] = &off_1DC58;
  v10[5] = kCIAttributeTypeInteger;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v15[5] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v7;
}

- (CGImage)outputCGImage
{
  if (!self->super.inputMessage)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSException raise:@"CICode128BarcodeGenerator" format:@"CICode128BarcodeGenerator filter requires NSData for inputMessage"];
    return 0;
  }

  inputQuietSpace = self->inputQuietSpace;
  if (inputQuietSpace)
  {
    [(NSNumber *)inputQuietSpace doubleValue];
    v5 = llround(fmin(fmax(v4, 0.0), 100.0));
  }

  else
  {
    v5 = 7;
  }

  inputBarcodeHeight = self->inputBarcodeHeight;
  if (inputBarcodeHeight)
  {
    [(NSNumber *)inputBarcodeHeight doubleValue];
    v9 = llround(fmin(fmax(v8, 1.0), 500.0));
  }

  else
  {
    v9 = 32;
  }

  v6 = sub_E104(self->super.inputMessage, v5, v9);
  v10 = 0;
  v11 = v10;
  if (v6)
  {
    CFAutorelease(v6);
  }

  else if (v10)
  {
    localizedDescription = [v10 localizedDescription];
    NSLog(@"%@", localizedDescription);
  }

  else
  {
    NSLog(@"CICode128BarcodeGenerator could not generate an image");
  }

  return v6;
}

@end