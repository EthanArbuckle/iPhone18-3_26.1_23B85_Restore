@interface CIAffineTransform
+ (id)customAttributes;
- (id)_initFromProperties:(id)properties;
- (id)_outputProperties;
- (id)outputImage;
@end

@implementation CIAffineTransform

+ (id)customAttributes
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithBytes:MEMORY[0x1E695EFD0] objCType:"{CGAffineTransform=dddddd}"];
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
  v7[3] = @"inputTransform";
  v4[0] = @"CIAttributeDefault";
  v4[1] = @"CIAttributeIdentity";
  v5[0] = v2;
  v5[1] = v2;
  v4[2] = @"CIAttributeType";
  v5[2] = @"CIAttributeTypeTransform";
  v8[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
}

- (id)outputImage
{
  if (self->inputImage)
  {
    if (CGAffineTransformFromObject(self->inputTransform, &v7))
    {
      inputImage = self->inputImage;
      v6 = v7;
      return [(CIImage *)inputImage imageByApplyingTransform:&v6];
    }

    v5 = ci_logger_filter();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIAffineClamp *)self outputImage];
    }
  }

  return 0;
}

- (id)_outputProperties
{
  v4[6] = *MEMORY[0x1E69E9840];
  if (!CGAffineTransformFromObject(self->inputTransform, &v3))
  {
    return MEMORY[0x1E695E0F0];
  }

  v4[0] = metadataPropertyWithDouble(v3.a);
  v4[1] = metadataPropertyWithDouble(v3.b);
  v4[2] = metadataPropertyWithDouble(v3.c);
  v4[3] = metadataPropertyWithDouble(v3.d);
  v4[4] = metadataPropertyWithDouble(v3.tx);
  v4[5] = metadataPropertyWithDouble(v3.ty);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
}

- (id)_initFromProperties:(id)properties
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineA", &v12) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineB", &v11) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineC", &v10) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineD", &v9) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineX", &v8) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"AffineY", &v7))
  {
    v6[0] = v12;
    v6[1] = v11;
    v6[2] = v10;
    v6[3] = v9;
    v6[4] = v8;
    v6[5] = v7;
    -[CIAffineTransform setInputTransform:](self, "setInputTransform:", [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGAffineTransform=dddddd}"]);
  }

  else
  {

    return 0;
  }

  return self;
}

@end