@interface CIPhotoEffect
+ (id)customAttributes;
- (CIPhotoEffect)init;
- (id)cubeName;
- (id)cubePath;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPhotoEffect

- (CIPhotoEffect)init
{
  v5.receiver = self;
  v5.super_class = CIPhotoEffect;
  v2 = [(CIPhotoEffect *)&v5 init];
  v3 = v2;
  if (v2)
  {
    -[CIPhotoEffect setValue:forKey:](v2, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPhotoEffect _defaultVersion](v2, "_defaultVersion")}], @"__inputVersion");
  }

  return v3;
}

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIPhotoEffect;
  [(CIFilter *)&v3 setDefaults];
  -[CIPhotoEffect setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPhotoEffect _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryInterlaced";
  v5[3] = @"CICategoryNonSquarePixels";
  v5[4] = @"CICategoryStillImage";
  v5[5] = @"CICategoryHighDynamicRange";
  v5[6] = @"CICategoryBuiltIn";
  v5[7] = @"CICategoryXMPSerializable";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v7[1] = @"7";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.9";
  v6[3] = @"inputExtrapolate";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = @"CIAttributeTypeBoolean";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)cubeName
{
  _maxVersion = [-[CIPhotoEffect valueForKey:](self valueForKey:{@"__inputVersion", "intValue"}];
  if (_maxVersion >= [(CIPhotoEffect *)self _maxVersion])
  {
    _maxVersion = [(CIPhotoEffect *)self _maxVersion];
  }

  v4 = objc_opt_class();
  result = NSStringFromClass(v4);
  if (_maxVersion >= 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%d", result, _maxVersion];
  }

  return result;
}

- (id)cubePath
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  cubeName = [(CIPhotoEffect *)self cubeName];

  return [v3 pathForResource:cubeName ofType:@"scube"];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  if ([CIPhotoEffect outputImage]::once != -1)
  {
    [CIPhotoEffect outputImage];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CIPhotoEffect_outputImage__block_invoke_22;
  v5[3] = &unk_1E75C2AF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync([CIPhotoEffect outputImage]::isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __28__CIPhotoEffect_outputImage__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  [CIPhotoEffect outputImage]::isolationQueue = dispatch_queue_create("com.apple.coreimage.photoEffectsIsolation", v0);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  [CIPhotoEffect outputImage]::cubes = result;
  return result;
}

uint64_t __28__CIPhotoEffect_outputImage__block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) cubeName];
  v3 = [-[CIPhotoEffect outputImage]::cubes objectForKey:v2];
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", v2, @"scube"}];
    v5 = cbrt(([v4 length] >> 2));
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v3 = +[CIFilter filterWithName:keysAndValues:](CIFilter, "filterWithName:keysAndValues:", @"CIColorCubeWithColorSpace", @"inputCubeData", v4, @"inputColorSpace", DeviceRGB, @"inputCubeDimension", [MEMORY[0x1E696AD98] numberWithInt:v5], 0);
    CGColorSpaceRelease(DeviceRGB);
    [-[CIPhotoEffect outputImage]::cubes setObject:v3 forKey:v2];
  }

  [(CIFilter *)v3 setValue:*(*(a1 + 32) + 80) forKey:@"inputImage"];
  [(CIFilter *)v3 setValue:*(*(a1 + 32) + 88) forKey:@"inputExtrapolate"];
  *(*(*(a1 + 40) + 8) + 40) = [(CIFilter *)v3 outputImage];

  return [(CIFilter *)v3 setValue:0 forKey:@"inputImage"];
}

@end