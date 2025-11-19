@interface CIExposureAdjust
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIExposureAdjust

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
  v5[7] = @"CICategoryXMPSerializable";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v7[1] = @"5";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputEV";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F10839B8;
  v4[1] = &unk_1F10839C8;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F10839D8;
  v4[3] = &unk_1F10839D8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputEV doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputEV doubleValue];
  if (fabs(v5) >= 0.001)
  {
    v8 = exp2(v4);
    return [(CIImage *)self->inputImage filteredImage:@"CIColorMatrix" keysAndValues:@"inputRVector", [CIVector vectorWithX:v8 Y:0.0 Z:0.0], @"inputGVector", [CIVector vectorWithX:0.0 Y:v8 Z:0.0], @"inputBVector", [CIVector vectorWithX:0.0 Y:0.0 Z:v8], @"inputAVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0], @"inputBiasVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0], 0];
  }

  else
  {
    v6 = self->inputImage;

    return v6;
  }
}

@end