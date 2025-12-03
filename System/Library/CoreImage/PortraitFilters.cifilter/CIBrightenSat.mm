@interface CIBrightenSat
+ (id)customAttributes;
- (id)_brightenSat;
- (id)outputImage;
@end

@implementation CIBrightenSat

+ (id)customAttributes
{
  v12[0] = kCIAttributeFilterCategories;
  v11[0] = kCICategoryColorAdjustment;
  v11[1] = kCICategoryVideo;
  v11[2] = kCICategoryStillImage;
  v13[0] = [NSArray arrayWithObjects:v11 count:3];
  v12[1] = @"inputStrength";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeMax;
  v10[0] = &off_7A2D0;
  v10[1] = &off_7A2E0;
  v9[2] = kCIAttributeMin;
  v9[3] = kCIAttributeType;
  v10[2] = &off_7A2F0;
  v10[3] = kCIAttributeTypeScalar;
  v13[1] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12[2] = @"inputSat";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeMax;
  v8[0] = &off_7A2D0;
  v8[1] = &off_7A2E0;
  v7[2] = kCIAttributeMin;
  v7[3] = kCIAttributeType;
  v8[2] = &off_7A2F0;
  v8[3] = kCIAttributeTypeScalar;
  v13[2] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v12[3] = @"inputPShift";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeMax;
  v6[0] = &off_7A2F0;
  v6[1] = &off_7A2D0;
  v5[2] = kCIAttributeMin;
  v5[3] = kCIAttributeType;
  v6[2] = &off_7A300;
  v6[3] = kCIAttributeTypeScalar;
  v13[3] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[4] = @"inputTShift";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_7A2F0;
  v4[1] = &off_7A2D0;
  v3[2] = kCIAttributeMin;
  v3[3] = kCIAttributeType;
  v4[2] = &off_7A300;
  v4[3] = kCIAttributeTypeScalar;
  v13[4] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
}

- (id)_brightenSat
{
  if (qword_8CEB8 != -1)
  {
    sub_4B33C();
  }

  return qword_8CEB0;
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  _brightenSat = [(CIBrightenSat *)self _brightenSat];
  [(NSNumber *)self->inputPShift floatValue];
  v6 = v5;
  [(NSNumber *)self->inputTShift floatValue];
  v8 = v7;
  v9 = [[CIFilter filterWithName:?]];
  [(CIImage *)self->inputImage extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v21[0] = inputImage;
  v21[1] = v9;
  inputSat = self->inputSat;
  v21[2] = self->inputStrength;
  v21[3] = inputSat;
  LODWORD(v10) = v6;
  v21[4] = [NSNumber numberWithFloat:v10];
  LODWORD(v19) = v8;
  v21[5] = [NSNumber numberWithFloat:v19];
  return [_brightenSat applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v21, 6), v11, v13, v15, v17}];
}

@end