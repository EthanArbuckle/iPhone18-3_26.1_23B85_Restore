@interface CIPerspectiveTransform
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPerspectiveTransform

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGeometryAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"6";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputBottomLeft";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:155.0 Y:153.0];
  v10[1] = @"CIAttributeTypePosition";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputBottomRight";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:548.0 Y:140.0];
  v8[1] = @"CIAttributeTypePosition";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[5] = @"inputTopRight";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:646.0 Y:507.0];
  v6[1] = @"CIAttributeTypePosition";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v12[6] = @"inputTopLeft";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:118.0 Y:484.0];
  v4[1] = @"CIAttributeTypePosition";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsInfinite(v11))
  {
    return 0;
  }

  v5 = self->inputImage;
  [(CIImage *)v5 extent];
  v6 = [CIVector vectorWithCGRect:?];
  inputTopLeft = self->inputTopLeft;
  if (!inputTopLeft)
  {
    inputTopLeft = [CIVector vectorWithX:0.0 Y:0.0];
  }

  inputTopRight = self->inputTopRight;
  if (!inputTopRight)
  {
    inputTopRight = [CIVector vectorWithX:0.0 Y:0.0];
  }

  inputBottomRight = self->inputBottomRight;
  if (!inputBottomRight)
  {
    inputBottomRight = [CIVector vectorWithX:0.0 Y:0.0];
  }

  inputBottomLeft = self->inputBottomLeft;
  if (!inputBottomLeft)
  {
    inputBottomLeft = [CIVector vectorWithX:0.0 Y:0.0];
  }

  return [(CIImage *)v5 filteredImage:@"CIPerspectiveTransformWithExtent" keysAndValues:@"inputExtent", v6, @"inputTopLeft", inputTopLeft, @"inputTopRight", inputTopRight, @"inputBottomRight", inputBottomRight, @"inputBottomLeft", inputBottomLeft, 0];
}

@end