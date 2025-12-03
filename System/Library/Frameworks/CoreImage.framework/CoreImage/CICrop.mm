@interface CICrop
+ (id)customAttributes;
- (id)_initFromProperties:(id)properties;
- (id)_outputProperties;
- (id)outputImage;
@end

@implementation CICrop

+ (id)customAttributes
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"CIAttributeFilterCategories";
  v6[0] = @"CICategoryGeometryAdjustment";
  v6[1] = @"CICategoryVideo";
  v6[2] = @"CICategoryStillImage";
  v6[3] = @"CICategoryBuiltIn";
  v8[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v8[1] = @"5";
  v7[1] = @"CIAttributeFilterAvailable_iOS";
  v7[2] = @"CIAttributeFilterAvailable_Mac";
  v8[2] = @"10.4";
  v7[3] = @"inputRectangle";
  v5[0] = @"CIAttributeTypeRectangle";
  v4[0] = @"CIAttributeType";
  v4[1] = @"CIAttributeDefault";
  v2 = MEMORY[0x1E695F040];
  v5[1] = [CIVector vectorWithCGRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v4[2] = @"CIAttributeIdentity";
  v5[2] = [CIVector vectorWithCGRect:*v2, v2[1], v2[2], v2[3]];
  v8[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  inputRectangle = self->inputRectangle;
  if (inputRectangle)
  {
    [(CIVector *)inputRectangle CGRectValue];
    v5 = self->inputImage;

    return [(CIImage *)v5 imageByCroppingToRect:?];
  }

  else
  {
    v7 = inputImage;

    return v7;
  }
}

- (id)_outputProperties
{
  v6[4] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputRectangle CGRectValue];
  v8 = CGRectStandardize(v7);
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6[0] = metadataPropertyWithDouble(v8.origin.x);
  v6[1] = metadataPropertyWithDouble(y);
  v6[2] = metadataPropertyWithDouble(width);
  v6[3] = metadataPropertyWithDouble(height);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
}

- (id)_initFromProperties:(id)properties
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"CropX", &v9) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"CropY", &v8) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"CropW", &v7) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"CropH", &v6))
  {
    [(CICrop *)self setInputRectangle:[CIVector vectorWithX:v9 Y:v8 Z:v7 W:v6]];
  }

  else
  {

    return 0;
  }

  return self;
}

@end