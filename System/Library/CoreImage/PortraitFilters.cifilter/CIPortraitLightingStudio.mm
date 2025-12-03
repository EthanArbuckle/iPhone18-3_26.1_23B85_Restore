@interface CIPortraitLightingStudio
+ (id)customAttributes;
- (id)_cheapEdgePreserve;
- (id)_extractRedStudio;
- (id)_studioLightKernel;
- (id)outputImage;
@end

@implementation CIPortraitLightingStudio

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

- (id)_extractRedStudio
{
  if (qword_8CA88 != -1)
  {
    sub_4A0BC();
  }

  return qword_8CA80;
}

- (id)_studioLightKernel
{
  if (qword_8CA98 != -1)
  {
    sub_4A0D0();
  }

  return qword_8CA90;
}

- (id)_cheapEdgePreserve
{
  if (qword_8CAA8 != -1)
  {
    sub_4A0E4();
  }

  return qword_8CAA0;
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
  v58 = v5;
  [(NSNumber *)self->inputHeight floatValue];
  v7 = v6;
  [(NSNumber *)self->inputRotate floatValue];
  v9 = v8;
  v10 = __sincos_stret(v8);
  v11 = sin(v9 + v9);
  v12 = [CIVector vectorWithX:v10.__cosval * v10.__cosval / ((v4 + v4) * v4) + v10.__sinval * v10.__sinval / ((v7 + v7) * v7) Y:(v11 / (v7 * 4.0 * v7) - v11 / (v4 * 4.0 * v4)) Z:v10.__sinval * v10.__sinval / ((v4 + v4) * v4) + v10.__cosval * v10.__cosval / ((v7 + v7) * v7) W:v58];
  _extractRedStudio = [(CIPortraitLightingStudio *)self _extractRedStudio];
  [(CIImage *)self->inputImage extent];
  inputImage = self->inputImage;
  v18 = [_extractRedStudio applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &inputImage, 1), v14, v15, v16, v17}];
  imageByClampingToExtent = [v18 imageByClampingToExtent];
  [(NSNumber *)self->inputScale doubleValue];
  v21 = [imageByClampingToExtent imageByApplyingGaussianBlurWithSigma:v20 * 12.0];
  [(CIImage *)self->inputImage extent];
  v22 = [v21 imageByCroppingToRect:?];
  _cheapEdgePreserve = [(CIPortraitLightingStudio *)self _cheapEdgePreserve];
  [(CIImage *)self->inputImage extent];
  v60[0] = v18;
  v60[1] = v22;
  v28 = [_cheapEdgePreserve applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v60, 2), v24, v25, v26, v27}];
  _studioLightKernel = [(CIPortraitLightingStudio *)self _studioLightKernel];
  [(CIVector *)self->inputEyes X];
  v31 = v30;
  [(CIVector *)self->inputEyes Z];
  v33 = v31 - v32;
  [(CIVector *)self->inputEyes X];
  v35 = v34;
  [(CIVector *)self->inputEyes Z];
  v37 = v35 - v36;
  [(CIVector *)self->inputEyes Y];
  v39 = v38;
  [(CIVector *)self->inputEyes W];
  v41 = v39 - v40;
  [(CIVector *)self->inputEyes Y];
  v43 = v42;
  [(CIVector *)self->inputEyes W];
  *&v44 = v41 * (v43 - v44) + v33 * v37;
  v45 = sqrtf(*&v44) * 0.35;
  [(CIImage *)self->inputImage extent];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  inputCenter = self->inputCenter;
  v59[0] = self->inputImage;
  v59[1] = v28;
  inputEyes = self->inputEyes;
  inputStrength = self->inputStrength;
  v59[2] = inputCenter;
  v59[3] = v12;
  v59[4] = inputEyes;
  v59[5] = inputStrength;
  *&v46 = v45 * v45;
  v59[6] = [NSNumber numberWithFloat:v46];
  return [_studioLightKernel applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v59, 7), v47, v49, v51, v53}];
}

@end