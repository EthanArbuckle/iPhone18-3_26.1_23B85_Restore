@interface CIPortraitLightingContour
+ (id)customAttributes;
- (id)_contourLightKernel;
- (id)_extractRed;
- (id)outputImage;
@end

@implementation CIPortraitLightingContour

+ (id)customAttributes
{
  v10[0] = kCIAttributeFilterCategories;
  v9[0] = kCICategoryColorAdjustment;
  v9[1] = kCICategoryVideo;
  v9[2] = kCICategoryStillImage;
  v9[3] = kCICategoryInterlaced;
  v9[4] = kCICategoryNonSquarePixels;
  v9[5] = kCICategoryBuiltIn;
  v9[6] = kCICategoryApplePrivate;
  v11[0] = [NSArray arrayWithObjects:v9 count:7];
  v11[1] = @"11";
  v10[1] = kCIAttributeFilterAvailable_iOS;
  v10[2] = kCIAttributeFilterAvailable_Mac;
  v11[2] = @"10.12";
  v10[3] = @"inputStrength";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_79A10;
  v8[1] = &off_79A10;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_79A20;
  v8[3] = &off_79A80;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_79A80;
  v8[5] = kCIAttributeTypeScalar;
  v11[3] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputScale";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_79A30;
  v6[1] = &off_79A30;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_79A20;
  v6[3] = &off_79A80;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_79A80;
  v6[5] = kCIAttributeTypeScalar;
  v11[4] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputOrientation";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_79A80;
  v4[1] = &off_79A80;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_79A90;
  v4[3] = &off_79A80;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_79A80;
  v4[5] = kCIAttributeTypeScalar;
  v11[5] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)_extractRed
{
  if (qword_8CA48 != -1)
  {
    sub_4A06C();
  }

  return qword_8CA40;
}

- (id)_contourLightKernel
{
  if (qword_8CA58 != -1)
  {
    sub_4A080();
  }

  return qword_8CA50;
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
  v51 = v5;
  [(NSNumber *)self->inputHeight floatValue];
  v7 = v6;
  [(NSNumber *)self->inputRotate floatValue];
  v9 = v8;
  v10 = __sincos_stret(v8);
  v11 = sin(v9 + v9);
  v12 = [CIVector vectorWithX:v10.__cosval * v10.__cosval / ((v4 + v4) * v4) + v10.__sinval * v10.__sinval / ((v7 + v7) * v7) Y:(v11 / (v7 * 4.0 * v7) - v11 / (v4 * 4.0 * v4)) Z:v10.__sinval * v10.__sinval / ((v4 + v4) * v4) + v10.__cosval * v10.__cosval / ((v7 + v7) * v7) W:v51];
  v13 = [(CIPortraitLightingContour *)self _extractRed];
  [(CIImage *)self->inputImage extent];
  inputImage = self->inputImage;
  v18 = [objc_msgSend(v13 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &inputImage, 1), v14, v15, v16, v17), "imageByClampingToExtent"}];
  [(NSNumber *)self->inputScale doubleValue];
  v20 = [v18 imageByApplyingGaussianBlurWithSigma:v19 * 12.0];
  [(CIImage *)self->inputImage extent];
  v21 = [v20 imageByCroppingToRect:?];
  v22 = [(CIPortraitLightingContour *)self _contourLightKernel];
  [(CIVector *)self->inputEyes X];
  v24 = v23;
  [(CIVector *)self->inputEyes Z];
  v26 = v24 - v25;
  [(CIVector *)self->inputEyes X];
  v28 = v27;
  [(CIVector *)self->inputEyes Z];
  v30 = v28 - v29;
  [(CIVector *)self->inputEyes Y];
  v32 = v31;
  [(CIVector *)self->inputEyes W];
  v34 = v32 - v33;
  [(CIVector *)self->inputEyes Y];
  v36 = v35;
  [(CIVector *)self->inputEyes W];
  *&v37 = v34 * (v36 - v37) + v26 * v30;
  v38 = sqrtf(*&v37) * 0.35;
  [(CIImage *)self->inputImage extent];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  inputCenter = self->inputCenter;
  v52[0] = self->inputImage;
  v52[1] = v21;
  inputEyes = self->inputEyes;
  inputStrength = self->inputStrength;
  v52[2] = inputCenter;
  v52[3] = v12;
  v52[4] = inputEyes;
  v52[5] = inputStrength;
  *&v39 = v38 * v38;
  v52[6] = [NSNumber numberWithFloat:v39];
  return [v22 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v52, 7), v40, v42, v44, v46}];
}

@end