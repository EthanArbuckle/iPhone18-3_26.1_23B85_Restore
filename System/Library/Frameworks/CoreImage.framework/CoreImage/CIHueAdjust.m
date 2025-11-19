@interface CIHueAdjust
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIHueAdjust

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryInterlaced";
  v5[4] = @"CICategoryNonSquarePixels";
  v5[5] = @"CICategoryHighDynamicRange";
  v5[6] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v7[1] = @"5";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1082F38;
  v4[1] = &unk_1F1082F48;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1082ED8;
  v4[3] = &unk_1F1082ED8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeAngle";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  [(NSNumber *)self->inputAngle floatValue];
  if (fabsf(v3) >= 0.001)
  {
    v6 = __sincosf_stret(v3);
    *&v7 = ((v6.__cosval * 0.7875) + 0.2125) + (v6.__sinval * -0.2125);
    v8 = (v6.__cosval * -0.7154) + 0.7154;
    *&v9 = v8 + (v6.__sinval * -0.7154);
    return _imageByApplyingColorMatrix(self->inputImage, *&v7, *&v9, ((v6.__cosval * -0.0721) + 0.0721) + (v6.__sinval * 0.9279), ((v6.__cosval * -0.2125) + 0.2125) + (v6.__sinval * 0.1404), ((v6.__cosval * 0.2846) + 0.7154) + (v6.__sinval * 0.1404), ((v6.__cosval * -0.0721) + 0.0721) + (v6.__sinval * -0.2846), v7, v9, ((v6.__cosval * -0.2125) + 0.2125) + (v6.__sinval * -0.7875), v8 + (v6.__sinval * 0.7154), ((v6.__cosval * 0.9279) + 0.0721) + (v6.__sinval * 0.0721), 0.0, 0.0, 0.0);
  }

  else
  {
    v4 = self->inputImage;

    return v4;
  }
}

@end