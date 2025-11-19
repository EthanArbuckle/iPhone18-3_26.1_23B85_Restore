@interface CIPhotoEffect3D
+ (id)customAttributes;
- (CIPhotoEffect3D)init;
- (id)applyCubeWithName:(id)a3 toImage:(id)a4;
- (id)backgroundCubeName;
- (id)backgroundCubePath;
- (id)cubeName;
- (id)cubePath;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPhotoEffect3D

- (CIPhotoEffect3D)init
{
  v5.receiver = self;
  v5.super_class = CIPhotoEffect3D;
  v2 = [(CIPhotoEffect3D *)&v5 init];
  v3 = v2;
  if (v2)
  {
    -[CIPhotoEffect3D setValue:forKey:](v2, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPhotoEffect3D _defaultVersion](v2, "_defaultVersion")}], @"__inputVersion");
  }

  return v3;
}

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIPhotoEffect3D;
  [(CIFilter *)&v3 setDefaults];
  -[CIPhotoEffect3D setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPhotoEffect3D _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
}

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryNonSquarePixels";
  v9[4] = @"CICategoryStillImage";
  v9[5] = @"CICategoryBuiltIn";
  v9[6] = @"CICategoryXMPSerializable";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v11[1] = @"10";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.11";
  v10[3] = @"inputThreshold";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1084558;
  v8[1] = &unk_1F1084568;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1084558;
  v8[3] = &unk_1F1084568;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeIdentity";
  v8[4] = &unk_1F1084578;
  v8[5] = &unk_1F1084588;
  v7[6] = @"CIAttributeType";
  v8[6] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v10[4] = @"inputGrainAmount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1084558;
  v6[1] = &unk_1F1084568;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1084558;
  v6[3] = &unk_1F1084568;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1084558;
  v6[5] = &unk_1F1084558;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[5] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1084558;
  v4[1] = &unk_1F1084598;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1084558;
  v4[3] = &unk_1F1084598;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084568;
  v4[5] = &unk_1F1084568;
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)cubeName
{
  v3 = [-[CIPhotoEffect3D valueForKey:](self valueForKey:{@"__inputVersion", "intValue"}];
  if (v3 >= [(CIPhotoEffect3D *)self _maxVersion])
  {
    v3 = [(CIPhotoEffect3D *)self _maxVersion];
  }

  v4 = objc_opt_class();
  result = NSStringFromClass(v4);
  if (v3 >= 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%d", result, v3];
  }

  return result;
}

- (id)backgroundCubeName
{
  v3 = [-[CIPhotoEffect3D valueForKey:](self valueForKey:{@"__inputVersion", "intValue"}];
  if (v3 >= [(CIPhotoEffect3D *)self _maxVersionBG])
  {
    v3 = [(CIPhotoEffect3D *)self _maxVersionBG];
  }

  v4 = objc_opt_class();
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@BG", NSStringFromClass(v4)];
  if (v3 >= 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%d", result, v3];
  }

  return result;
}

- (id)cubePath
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(CIPhotoEffect3D *)self cubeName];

  return [v3 pathForResource:v4 ofType:@"scube"];
}

- (id)backgroundCubePath
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(CIPhotoEffect3D *)self backgroundCubeName];

  return [v3 pathForResource:v4 ofType:@"scube"];
}

- (id)applyCubeWithName:(id)a3 toImage:(id)a4
{
  if ([CIPhotoEffect3D applyCubeWithName:toImage:]::once != -1)
  {
    [CIPhotoEffect3D applyCubeWithName:toImage:];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CIPhotoEffect3D_applyCubeWithName_toImage___block_invoke_44;
  v9[3] = &unk_1E75C3780;
  v9[4] = a3;
  v9[5] = self;
  v9[6] = a4;
  v9[7] = &v10;
  dispatch_sync([CIPhotoEffect3D applyCubeWithName:toImage:]::isolationQueue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __45__CIPhotoEffect3D_applyCubeWithName_toImage___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  [CIPhotoEffect3D applyCubeWithName:toImage:]::isolationQueue = dispatch_queue_create("com.apple.coreimage.photoEffects3DIsolation", v0);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  [CIPhotoEffect3D applyCubeWithName:toImage:]::cubes = result;
  return result;
}

uint64_t __45__CIPhotoEffect3D_applyCubeWithName_toImage___block_invoke_44(void *a1)
{
  v2 = [-[CIPhotoEffect3D applyCubeWithName:toImage:]::cubes objectForKey:a1[4]];
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", a1[4], @"scube"}];
    v4 = cbrt(([v3 length] >> 2));
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v2 = +[CIFilter filterWithName:keysAndValues:](CIFilter, "filterWithName:keysAndValues:", @"CIColorCube", @"inputCubeData", v3, @"inputCubeDimension", [MEMORY[0x1E696AD98] numberWithInt:v4], 0);
    CGColorSpaceRelease(v5);
    [-[CIPhotoEffect3D applyCubeWithName:toImage:]::cubes setObject:v2 forKey:a1[4]];
  }

  [(CIFilter *)v2 setValue:a1[6] forKey:@"inputImage"];
  *(*(a1[7] + 8) + 40) = [(CIFilter *)v2 outputImage];

  return [(CIFilter *)v2 setValue:0 forKey:@"inputImage"];
}

- (id)outputImage
{
  v39[4] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsEmpty(v40))
  {
    return 0;
  }

  v6 = [(CIPhotoEffect3D *)self cubeName];
  v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  inputImage = self->inputImage;
  if (v7)
  {
    inputImage = [(CIImage *)inputImage imageByColorMatchingWorkingSpaceToColorSpace:v7];
    v9 = [-[CIPhotoEffect3D applyCubeWithName:toImage:](self applyCubeWithName:v6 toImage:{inputImage), "imageByColorMatchingColorSpaceToWorkingSpace:", v7}];
  }

  else
  {
    v9 = [(CIPhotoEffect3D *)self applyCubeWithName:v6 toImage:inputImage];
  }

  v5 = v9;
  [(CIImage *)self->inputDepthMap extent];
  v10 = v41.size.width;
  v11 = v41.size.height;
  if (!CGRectIsEmpty(v41))
  {
    v12 = [(CIPhotoEffect3D *)self applyCubeWithName:[(CIPhotoEffect3D *)self backgroundCubeName] toImage:inputImage];
    v13 = v12;
    if (v7)
    {
      v13 = [v12 imageByColorMatchingColorSpaceToWorkingSpace:v7];
    }

    inputDepthMap = self->inputDepthMap;
    if (width != v10 || height != v11)
    {
      v16 = width;
      v17 = v10;
      v18 = v16 / v17;
      v19 = height;
      v20 = v11;
      CGAffineTransformMakeScale(&v36, v18, (v19 / v20));
      inputDepthMap = [(CIImage *)inputDepthMap imageByApplyingTransform:&v36];
    }

    v21 = [(CIPhotoEffect3D *)self _CIPhotoEffectDepthBlend];
    [v5 extent];
    v39[0] = v5;
    v39[1] = v13;
    inputThreshold = self->inputThreshold;
    v39[2] = inputDepthMap;
    v39[3] = inputThreshold;
    v5 = [v21 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 4), v23, v24, v25, v26}];
    [(NSNumber *)self->inputGrainAmount floatValue];
    v28 = v27;
    [(NSNumber *)self->inputScale floatValue];
    v30 = v28 * v29;
    if (fabsf(v30) < 0.001)
    {
      v37[0] = @"inputAmount";
      v31 = MEMORY[0x1E696AD98];
      [(NSNumber *)self->inputScale floatValue];
      *&v33 = v30 * v32;
      v34 = [v31 numberWithFloat:v33];
      v37[1] = @"inputISO";
      v38[0] = v34;
      v38[1] = &unk_1F1082028;
      v5 = [v5 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v38, v37, 2)}];
    }
  }

  CGColorSpaceRelease(v7);
  return v5;
}

@end