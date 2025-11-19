@interface CILinearBurnBlendMode
+ (id)customAttributes;
- (CILinearBurnBlendMode)init;
- (id)_kernel;
- (void)setDefaults;
@end

@implementation CILinearBurnBlendMode

- (CILinearBurnBlendMode)init
{
  v5.receiver = self;
  v5.super_class = CILinearBurnBlendMode;
  v2 = [(CILinearBurnBlendMode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    -[CILinearBurnBlendMode setValue:forKey:](v2, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CILinearBurnBlendMode _defaultVersion](v2, "_defaultVersion")}], @"__inputVersion");
  }

  return v3;
}

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CILinearBurnBlendMode;
  [(CIFilter *)&v3 setDefaults];
  -[CILinearBurnBlendMode setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CILinearBurnBlendMode _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
}

- (id)_kernel
{
  v3 = [-[CILinearBurnBlendMode valueForKey:](self valueForKey:{@"__inputVersion", "intValue"}];
  if (v3 == 1)
  {

    return [(CILinearBurnBlendMode *)self _kernel_v1];
  }

  else if (v3)
  {
    return 0;
  }

  else
  {

    return [(CILinearBurnBlendMode *)self _kernel_v0];
  }
}

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryCompositeOperation";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryInterlaced";
  v3[4] = @"CICategoryNonSquarePixels";
  v3[5] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"8";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.10";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end