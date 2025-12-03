@interface UIImage(AVAdditions)
+ (id)_avkit_imageLoadingQueue;
+ (id)_avkit_imageWithSize:()AVAdditions ofText:font:scaleFactor:;
+ (id)_avkit_textImageCache;
+ (id)avkit_flatWhiteResizableTemplateImage;
+ (id)avkit_imageWithSymbolNamed:()AVAdditions textStyle:scale:;
+ (id)avkit_loadedImageConfigurations;
+ (void)avkit_imageNamed:()AVAdditions completion:;
+ (void)avkit_imageWithSize:()AVAdditions ofText:font:scaleFactor:completion:;
+ (void)avkit_imageWithSymbolNamed:()AVAdditions font:completion:;
@end

@implementation UIImage(AVAdditions)

+ (id)_avkit_textImageCache
{
  if (_avkit_textImageCache_createTextImageCacheOnceToken != -1)
  {
    dispatch_once(&_avkit_textImageCache_createTextImageCacheOnceToken, &__block_literal_global_158);
  }

  v1 = _avkit_textImageCache_AVMobileTextImageCache;

  return v1;
}

+ (id)_avkit_imageLoadingQueue
{
  if (_avkit_imageLoadingQueue_createImageLoadingQueueOnceToken != -1)
  {
    dispatch_once(&_avkit_imageLoadingQueue_createImageLoadingQueueOnceToken, &__block_literal_global_155);
  }

  v1 = _avkit_imageLoadingQueue_AVMobileImageLoadingQueue;

  return v1;
}

+ (id)_avkit_imageWithSize:()AVAdditions ofText:font:scaleFactor:
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v13 = _AVLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "Rendering image with text: %@", buf, 0xCu);
  }

  [v12 pointSize];
  v15 = [v12 fontWithSize:v14 * a3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v28[1] = whiteColor;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:2];

  [v11 sizeWithAttributes:v17];
  v19 = (self - v18) * 0.5;
  v21 = (a2 - v20) * 0.5;
  v33.width = self;
  v33.height = a2;
  UIGraphicsBeginImageContext(v33);
  [v11 drawAtPoint:v17 withAttributes:{v19, v21}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetShouldAntialias(CurrentContext, 1);
  v23 = UIGraphicsGetCurrentContext();
  CGContextSetAllowsAntialiasing(v23, 1);
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v25 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v24 scale:"CGImage") orientation:{objc_msgSend(v24, "imageOrientation"), a3}];

  return v25;
}

+ (void)avkit_imageWithSize:()AVAdditions ofText:font:scaleFactor:completion:
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v16 = _AVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v16, OS_LOG_TYPE_ERROR, "Error: [UIImage avkit_imageFromString:font:completion:] called off of the main thread. The AVMobileTextImageCache should only be accessed on the main thread.", buf, 2u);
    }
  }

  v17 = [[AVMobileImageConfiguration alloc] initWithString:v13 font:v14];
  _avkit_textImageCache = [MEMORY[0x1E69DCAB8] _avkit_textImageCache];
  v19 = [_avkit_textImageCache objectForKey:v17];
  if (v19)
  {
    v15[2](v15, v19);
  }

  else
  {
    _avkit_imageLoadingQueue = [MEMORY[0x1E69DCAB8] _avkit_imageLoadingQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__UIImage_AVAdditions__avkit_imageWithSize_ofText_font_scaleFactor_completion___block_invoke;
    v21[3] = &unk_1E72090B0;
    selfCopy = self;
    v28 = a2;
    v22 = v13;
    v23 = v14;
    v29 = a3;
    v24 = _avkit_textImageCache;
    v25 = v17;
    v26 = v15;
    dispatch_async(_avkit_imageLoadingQueue, v21);
  }
}

+ (id)avkit_imageWithSymbolNamed:()AVAdditions textStyle:scale:
{
  v7 = MEMORY[0x1E69DCAD8];
  v8 = a3;
  v9 = [v7 configurationWithTextStyle:a4 scale:a5];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v8 withConfiguration:v9];

  return v10;
}

+ (void)avkit_imageWithSymbolNamed:()AVAdditions font:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 copy];
  if (v8 == @"gobackward.15" || v8 == @"goforward.15")
  {
    v8 = v8;
    if (MapImageNameNumberAware_onceToken != -1)
    {
      dispatch_once(&MapImageNameNumberAware_onceToken, &__block_literal_global_213);
    }

    if ([MapImageNameNumberAware_sDigitAwareSet containsObject:v8])
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      languageCode = [currentLocale languageCode];

      if (([languageCode isEqualToString:@"ar"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"hi"))
      {
        currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
        numberingSystem = [currentLocale2 numberingSystem];

        if ([numberingSystem isEqualToString:@"latn"])
        {
          v16 = [(__CFString *)v8 stringByAppendingFormat:@".westernarabic"];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    currentLocale3 = [MEMORY[0x1E695DF58] currentLocale];
    languageCode2 = [currentLocale3 languageCode];

    v11 = v16 != 0;
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      if (([languageCode2 isEqualToString:@"ar"] & 1) == 0 && !objc_msgSend(languageCode2, "isEqualToString:", @"hi"))
      {
        goto LABEL_22;
      }

      v19 = [(__CFString *)v8 stringByAppendingFormat:@".%@", languageCode2];
    }

    v20 = v19;

    v8 = v20;
LABEL_22:

    goto LABEL_23;
  }

  v11 = v8 == @"forward.end.fill.tv";
LABEL_23:
  v21 = [[AVMobileImageConfiguration alloc] initWithImageName:v8 font:v9 imageContainedInBundle:v11];

  if ([MEMORY[0x1E696AF00] isMainThread] && v8 && (objc_msgSend(self, "avkit_loadedImageConfigurations"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v21), v22, v23))
  {
    v24 = [AVImage imageWithConfiguration:v21];
    (v10)[2](v10, v24);
  }

  else if (v9 && v8)
  {
    _avkit_imageLoadingQueue = [MEMORY[0x1E69DCAB8] _avkit_imageLoadingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__UIImage_AVAdditions__avkit_imageWithSymbolNamed_font_completion___block_invoke;
    block[3] = &unk_1E7209060;
    v27 = v21;
    v28 = v8;
    selfCopy = self;
    v29 = v10;
    dispatch_async(_avkit_imageLoadingQueue, block);
  }
}

+ (void)avkit_imageNamed:()AVAdditions completion:
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = [[AVMobileImageConfiguration alloc] initWithImageName:v6 font:0 imageContainedInBundle:0];
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (v6 && isMainThread)
  {
    avkit_loadedImageConfigurations = [self avkit_loadedImageConfigurations];
    v11 = [avkit_loadedImageConfigurations containsObject:v8];

    if (v11)
    {
      v12 = AVBundle();
      v13 = [AVImage imageNamed:v6 inBundle:v12 compatibleWithTraitCollection:0];
      (v7)[2](v7, v13);

      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  if (avkit_imageNamed_completion__onceToken != -1)
  {
    dispatch_once(&avkit_imageNamed_completion__onceToken, &__block_literal_global_145);
  }

  v14 = avkit_imageNamed_completion__imageQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__UIImage_AVAdditions__avkit_imageNamed_completion___block_invoke_2;
  v15[3] = &unk_1E7209060;
  v16 = v6;
  selfCopy = self;
  v17 = v8;
  v18 = v7;
  dispatch_async(v14, v15);

LABEL_9:
}

+ (id)avkit_flatWhiteResizableTemplateImage
{
  if (avkit_flatWhiteResizableTemplateImage_onceToken != -1)
  {
    dispatch_once(&avkit_flatWhiteResizableTemplateImage_onceToken, &__block_literal_global_135_24673);
  }

  v1 = avkit_flatWhiteResizableTemplateImage_solidWhitePixelTemplateImage;

  return v1;
}

+ (id)avkit_loadedImageConfigurations
{
  if (avkit_loadedImageConfigurations_onceToken != -1)
  {
    dispatch_once(&avkit_loadedImageConfigurations_onceToken, &__block_literal_global_24678);
  }

  v1 = avkit_loadedImageConfigurations_avkit_loadedImageConfigurations;

  return v1;
}

@end