@interface CIPortraitLightingEdge
+ (id)customAttributes;
- (id)_darken;
- (id)_faceContourMask;
- (id)outputImage;
@end

@implementation CIPortraitLightingEdge

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryColorAdjustment;
  v5[1] = kCICategoryVideo;
  v5[2] = kCICategoryStillImage;
  v5[3] = kCICategoryInterlaced;
  v5[4] = kCICategoryNonSquarePixels;
  v5[5] = kCICategoryBuiltIn;
  v5[6] = kCICategoryApplePrivate;
  v7[0] = [NSArray arrayWithObjects:v5 count:7];
  v7[1] = @"11";
  v6[1] = kCIAttributeFilterAvailable_iOS;
  v6[2] = kCIAttributeFilterAvailable_Mac;
  v7[2] = @"10.12";
  v6[3] = @"inputStrength";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_79A10;
  v4[1] = &off_79A10;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[2] = &off_79A20;
  v4[3] = &off_79A30;
  v4[4] = &off_79A30;
  v4[5] = kCIAttributeTypeScalar;
  v7[3] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)_faceContourMask
{
  if (qword_8CAF8 != -1)
  {
    sub_4A148();
  }

  return qword_8CAF0;
}

- (id)_darken
{
  if (qword_8CB08 != -1)
  {
    sub_4A15C();
  }

  return qword_8CB00;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputHeight floatValue];
  v4 = v3;
  [(NSNumber *)self->inputWidth floatValue];
  v6 = v5;
  [(NSNumber *)self->inputStrength floatValue];
  v52 = v7;
  if (fabsf(v4) < 1.0e-10)
  {
    [(CIVector *)self->inputCenter Y];
    v9 = v8;
    [(CIVector *)self->inputCenter W];
    *&v10 = v9 - v10;
    v4 = *&v10 * 0.85;
  }

  if (fabsf(v6) >= 1.0e-10)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4 * 0.5;
  }

  [(CIVector *)self->inputCenter X];
  v13 = v12;
  [(CIVector *)self->inputCenter Z];
  *&v13 = v13 - v14;
  [(CIVector *)self->inputCenter Y];
  v16 = v15;
  [(CIVector *)self->inputCenter W];
  *&v17 = v16 - v17;
  v18 = atan2f(-*&v17, *&v13) + 1.57079633;
  [(NSNumber *)self->inputRotate floatValue];
  v20 = v18 + v19;
  v21 = v20;
  v22 = __sincos_stret(v20);
  v23 = v11;
  v24 = sin(v21 + v21);
  v25 = [CIVector vectorWithX:v22.__cosval * v22.__cosval / ((v23 + v23) * v23) + v22.__sinval * v22.__sinval / ((v4 + v4) * v4) Y:v24 / (v4 * 4.0 * v4) - v24 / (v23 * 4.0 * v23) Z:v22.__sinval * v22.__sinval / ((v23 + v23) * v23) + v22.__cosval * v22.__cosval / ((v4 + v4) * v4) W:1.0];
  inputCenter = self->inputCenter;
  v27 = v4 * 1.3;
  v28 = v23 * 1.4;
  v29 = [CIVector vectorWithX:v22.__cosval * v22.__cosval / ((v28 + v28) * v28) + v22.__sinval * v22.__sinval / ((v27 + v27) * v27) Y:v24 / (v27 * 4.0 * v27) - v24 / (v28 * 4.0 * v28) Z:v22.__sinval * v22.__sinval / ((v28 + v28) * v28) + v22.__cosval * v22.__cosval / ((v27 + v27) * v27) W:v52];
  v30 = [(CIPortraitLightingEdge *)self _faceContourMask];
  [(CIImage *)self->inputImage extent];
  v58[0] = self->inputImage;
  v58[1] = inputCenter;
  v58[2] = v25;
  v58[3] = v29;
  v35 = [v30 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v58, 4), v31, v32, v33, v34}];
  v36 = [(CIPortraitLightingEdge *)self _darken];
  inputImage = self->inputImage;
  v56 = @"inputStrength";
  [(NSNumber *)self->inputStrength floatValue];
  v57 = [NSNumber numberWithDouble:v38 * -0.25];
  v39 = [(CIImage *)inputImage imageByApplyingFilter:@"CIHighKey" withInputParameters:[NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1]];
  [(CIImage *)self->inputImage extent];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v55[0] = v39;
  [(NSNumber *)self->inputStrength floatValue];
  v55[1] = [NSNumber numberWithDouble:v48 * 0.3];
  v49 = [v36 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v55, 2), v41, v43, v45, v47}];
  v50 = self->inputImage;
  v53[0] = @"inputBackgroundImage";
  v53[1] = @"inputMaskImage";
  v54[0] = v50;
  v54[1] = v35;
  return [v49 imageByApplyingFilter:@"CIBlendWithMask" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v54, v53, 2)}];
}

@end