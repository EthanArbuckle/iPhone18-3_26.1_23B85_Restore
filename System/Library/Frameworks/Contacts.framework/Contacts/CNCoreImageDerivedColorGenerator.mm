@interface CNCoreImageDerivedColorGenerator
+ (id)defaultGrayColors;
+ (id)encodedDataFromColors:(id)colors;
+ (id)scheduler;
- (CNCoreImageDerivedColorGenerator)init;
- (id)fetchColorsForImage:(id)image;
@end

@implementation CNCoreImageDerivedColorGenerator

- (CNCoreImageDerivedColorGenerator)init
{
  v7.receiver = self;
  v7.super_class = CNCoreImageDerivedColorGenerator;
  v2 = [(CNCoreImageDerivedColorGenerator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(FastMetalColorSampler);
    colorSampler = v2->colorSampler;
    v2->colorSampler = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)scheduler
{
  if (scheduler_cn_once_token_3 != -1)
  {
    +[CNCoreImageDerivedColorGenerator scheduler];
  }

  v3 = scheduler_cn_once_object_3;

  return v3;
}

uint64_t __45__CNCoreImageDerivedColorGenerator_scheduler__block_invoke()
{
  v0 = [MEMORY[0x1E6996818] serialDispatchQueueSchedulerWithName:@"com.apple.contacts.colorExtraction"];
  v1 = scheduler_cn_once_object_3;
  scheduler_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)fetchColorsForImage:(id)image
{
  v63[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = background_color_os_log();
  v6 = v5;
  if (imageCopy)
  {
    v7 = os_signpost_id_make_with_pointer(v5, imageCopy);

    v8 = background_color_os_log();
    v9 = v8;
    v57 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CNImageDerivedColorFetchColors", "", &buf, 2u);
    }

    v10 = [imageCopy imageByScalingToFit:{100.0, 100.0}];
    [v10 extent];
    v12 = v11;
    v14 = v13;
    v15 = objc_alloc(MEMORY[0x1E69845B8]);
    v16 = [v15 initWithCIImage:v10 options:MEMORY[0x1E695E0F8]];
    v17 = objc_opt_new();
    [v17 setRevision:2];
    v18 = objc_autoreleasePoolPush();
    v63[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    v60 = 0;
    v20 = [v16 performRequests:v19 error:&v60];
    v21 = v60;

    if (v21 || (v20 & 1) == 0)
    {
      v44 = background_color_os_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [(CNCoreImageDerivedColorGenerator *)v21 fetchColorsForImage:v44];
      }

      defaultGrayColors = [objc_opt_class() defaultGrayColors];

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      objc_autoreleasePoolPop(v18);
      results = [v17 results];
      firstObject = [results firstObject];

      if (firstObject)
      {
        spid = v7;
        v55 = firstObject;
        v56 = v16;
        v24 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{objc_msgSend(firstObject, "pixelBuffer")}];
        [v24 extent];
        memset(&buf, 0, sizeof(buf));
        CGAffineTransformMakeScale(&buf, v12 / v25, v14 / v26);
        v58 = buf;
        v54 = v24;
        v27 = [v24 imageByApplyingTransform:&v58];
        colorThresholdFilter = [MEMORY[0x1E695F648] colorThresholdFilter];
        v53 = v27;
        [colorThresholdFilter setInputImage:v27];
        LODWORD(v29) = 0.5;
        [colorThresholdFilter setThreshold:v29];
        v52 = colorThresholdFilter;
        outputImage = [colorThresholdFilter outputImage];
        maskToAlphaFilter = [MEMORY[0x1E695F648] maskToAlphaFilter];
        v51 = outputImage;
        [maskToAlphaFilter setInputImage:outputImage];
        v50 = maskToAlphaFilter;
        outputImage2 = [maskToAlphaFilter outputImage];
        sourceOutCompositingFilter = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
        [sourceOutCompositingFilter setInputImage:v10];
        v49 = outputImage2;
        [sourceOutCompositingFilter setBackgroundImage:outputImage2];
        outputImage3 = [sourceOutCompositingFilter outputImage];
        v35 = objc_autoreleasePoolPush();
        v61[0] = @"inputWidth";
        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v61[1] = @"inputHeight";
        v62[0] = v36;
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v62[1] = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
        v48 = outputImage3;
        v39 = [outputImage3 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v38];

        objc_autoreleasePoolPop(v35);
        [v39 extent];
        v40 = [v39 imageByCroppingToRect:?];
        defaultGrayColors = [(FastMetalColorSampler *)self->colorSampler sampleColors:v40 sampleCount:8];
        v42 = background_color_os_log();
        v43 = v42;
        if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          LOWORD(v58.a) = 0;
          _os_signpost_emit_with_name_impl(&dword_1954A0000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CNImageDerivedColorFetchColors", "", &v58, 2u);
        }

        firstObject = v55;
        v16 = v56;
      }

      else
      {
        v45 = background_color_os_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [CNCoreImageDerivedColorGenerator fetchColorsForImage:];
        }

        defaultGrayColors = [objc_opt_class() defaultGrayColors];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNCoreImageDerivedColorGenerator fetchColorsForImage:];
    }

    defaultGrayColors = [objc_opt_class() defaultGrayColors];
  }

  return defaultGrayColors;
}

+ (id)defaultGrayColors
{
  v8 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  for (i = 0; i != 160; i += 32)
  {
    v5 = CGColorCreate(DeviceRGB, (&v7 + i));
    [array addObject:v5];
    CGColorRelease(v5);
  }

  CGColorSpaceRelease(DeviceRGB);

  return array;
}

+ (id)encodedDataFromColors:(id)colors
{
  v31 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  v4 = colorsCopy;
  if (colorsCopy && [colorsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (v11)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v13 = [v11 isEqual:null];

            if ((v13 & 1) == 0)
            {
              NumberOfComponents = CGColorGetNumberOfComponents(v11);
              numberOfComponents = [MEMORY[0x1E695DEF0] dataWithBytes:CGColorGetComponents(v11) length:8 * NumberOfComponents];
              ColorSpace = CGColorGetColorSpace(v11);
              v17 = CGColorSpaceCopyName(ColorSpace);
              v18 = v17;
              v28[0] = @"components";
              v28[1] = @"colorSpace";
              v19 = &stru_1F094DAB0;
              if (v17)
              {
                v19 = v17;
              }

              v29[0] = numberOfComponents;
              v29[1] = v19;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
              [array addObject:v20];
              if (v18)
              {
                CFRelease(v18);
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }

    v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:array requiringSecureCoding:0 error:0];

    v4 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)fetchColorsForImage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in colorsForImageSync: %@", &v2, 0xCu);
}

@end