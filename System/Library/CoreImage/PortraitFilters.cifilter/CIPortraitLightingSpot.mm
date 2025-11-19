@interface CIPortraitLightingSpot
+ (id)customAttributes;
- (id)_portraitSpotKernel;
- (id)outputImage;
@end

@implementation CIPortraitLightingSpot

+ (id)customAttributes
{
  v12[0] = kCIAttributeFilterCategories;
  v11[0] = kCICategoryColorAdjustment;
  v11[1] = kCICategoryVideo;
  v11[2] = kCICategoryStillImage;
  v11[3] = kCICategoryInterlaced;
  v11[4] = kCICategoryNonSquarePixels;
  v11[5] = kCICategoryBuiltIn;
  v11[6] = kCICategoryApplePrivate;
  v13[0] = [NSArray arrayWithObjects:v11 count:7];
  v13[1] = @"11";
  v12[1] = kCIAttributeFilterAvailable_iOS;
  v12[2] = kCIAttributeFilterAvailable_Mac;
  v13[2] = @"10.12";
  v12[3] = @"inputStrength";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_79A10;
  v10[1] = &off_79A10;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeDefault;
  v10[2] = &off_79AB0;
  v10[3] = &off_79A80;
  v9[4] = kCIAttributeIdentity;
  v9[5] = kCIAttributeType;
  v10[4] = &off_79A80;
  v10[5] = kCIAttributeTypeScalar;
  v13[3] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputScale";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_79A30;
  v8[1] = &off_79A30;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_79A20;
  v8[3] = &off_79A80;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_79A80;
  v8[5] = kCIAttributeTypeScalar;
  v13[4] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputOrientation";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_79A80;
  v6[1] = &off_79A80;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_79A90;
  v6[3] = &off_79A80;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_79A80;
  v6[5] = kCIAttributeTypeScalar;
  v13[5] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputDarken";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_79AC0;
  v4[1] = &off_79AC0;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_79A80;
  v4[3] = &off_79A80;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_79A80;
  v4[5] = kCIAttributeTypeScalar;
  v13[6] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)_portraitSpotKernel
{
  if (qword_8CA68 != -1)
  {
    sub_4A094();
  }

  return qword_8CA60;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputStrength floatValue];
  v6 = v5;
  [(NSNumber *)self->inputHeight floatValue];
  v8 = v7;
  [(NSNumber *)self->inputRotate floatValue];
  v10 = v9;
  [(NSNumber *)self->inputDarken floatValue];
  v26 = v11;
  v12 = fmax(fmin(v6, 1.15), 1.0);
  v25 = v12;
  v13 = v10;
  v14 = __sincos_stret(v13);
  v15 = sin(v13 + v13);
  v16 = [CIVector vectorWithX:v14.__cosval * v14.__cosval / ((v4 + v4) * v4) + v14.__sinval * v14.__sinval / ((v8 + v8) * v8) Y:(v15 / (v8 * 4.0 * v8) - v15 / (v4 * 4.0 * v4)) Z:v14.__sinval * v14.__sinval / ((v4 + v4) * v4) + v14.__cosval * v14.__cosval / ((v8 + v8) * v8) W:v6];
  v17 = [CIVector vectorWithX:v26 Y:v25];
  v18 = [(CIPortraitLightingSpot *)self _portraitSpotKernel];
  [(CIImage *)self->inputImage extent];
  inputCenter = self->inputCenter;
  v27[0] = self->inputImage;
  v27[1] = inputCenter;
  v27[2] = v16;
  v27[3] = v17;
  return [v18 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v27, 4), v20, v21, v22, v23}];
}

@end