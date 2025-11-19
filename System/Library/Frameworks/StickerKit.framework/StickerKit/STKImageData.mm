@interface STKImageData
+ (id)UTITypeForData:(id)a3;
+ (id)UTTypeForData:(id)a3;
- (BOOL)typeSupportsAnimatedImages;
- (CGSize)ptSize;
- (CGSize)pxSize;
- (CGSize)sizeForImageSource:(CGImageSource *)a3 index:(unint64_t)a4;
- (NSData)data;
- (STKImageData)initWithData:(id)a3;
- (STKImageData)initWithURL:(id)a3;
- (UIImage)image;
- (UTType)utType;
- (id)MIMEType;
- (id)_defaultDurationsWithMaxCount:(unint64_t)a3;
- (id)_thumbnailFillToSize:(CGSize)a3 atIndex:(unint64_t)a4;
- (id)_thumbnailFitToSize:(CGSize)a3 atIndex:(unint64_t)a4;
- (id)durationsWithMaxCount:(unint64_t)a3;
- (id)thumbnailAtIndex:(unint64_t)a3 fillToSize:(CGSize)a4 maxCount:(unint64_t)a5;
- (id)thumbnailFillToSizeCropping:(CGSize)a3;
- (id)thumbnailsFillToSize:(CGSize)a3 maxCount:(unint64_t)a4;
- (id)thumbnailsFitToSize:(CGSize)a3 maxCount:(unint64_t)a4;
- (unint64_t)count;
- (void)_initializeProperties;
- (void)dealloc;
@end

@implementation STKImageData

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  v4.receiver = self;
  v4.super_class = STKImageData;
  [(STKImageData *)&v4 dealloc];
}

+ (id)UTITypeForData:(id)a3
{
  v3 = a3;
  v4 = [[STKImageData alloc] initWithData:v3];

  v5 = [(STKImageData *)v4 UTIType];

  return v5;
}

+ (id)UTTypeForData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 UTITypeForData:v4];
  v6 = v5;
  if (v5 && ![v5 isEqualToString:&stru_1F0DCF9D8])
  {
    v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 debugDescription];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19A5EE000, v7, OS_LOG_TYPE_DEFAULT, "Cannot determine UTType without a UTIType: %@", &v11, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (STKImageData)initWithData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STKImageData;
  v5 = [(STKImageData *)&v7 init];
  if (v5)
  {
    if (v4)
    {
      v5->_imageSource = CGImageSourceCreateWithData(v4, 0);
      v5->_count = 0x7FFFFFFFFFFFFFFFLL;
      [(STKImageData *)v5 setData:v4];
    }

    if (!v5->_imageSource)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (STKImageData)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STKImageData;
  v5 = [(STKImageData *)&v8 init];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v5->_imageSource = CGImageSourceCreateWithURL(v4, 0);
      v6->_count = 0x7FFFFFFFFFFFFFFFLL;
      [(STKImageData *)v6 setUrl:v4];
      if (!v6->_imageSource)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = [(STKImageData *)self url];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:8 error:0];
      v6 = self->_data;
      self->_data = v5;
    }

    data = self->_data;
  }

  return data;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [(STKImageData *)self data];
    v6 = [v4 itk_mainScreenScaledImageWithData:v5];
    v7 = self->_image;
    self->_image = v6;

    image = self->_image;
  }

  return image;
}

- (BOOL)typeSupportsAnimatedImages
{
  v2 = [(STKImageData *)self utType];
  v3 = v2;
  v4 = v2 && (([v2 itk_isPNG] & 1) != 0 || (objc_msgSend(v3, "itk_isGIF") & 1) != 0 || (objc_msgSend(v3, "itk_isWebP") & 1) != 0 || objc_msgSend(v3, "itk_isHEICS"));

  return v4;
}

- (id)thumbnailFillToSizeCropping:(CGSize)a3
{
  if (ITKMainScreenScale_once[0] != -1)
  {
    [STKImageData thumbnailFillToSizeCropping:];
  }

  if (*&ITKMainScreenScale_sMainScreenScale == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = *&ITKMainScreenScale_sMainScreenScale;
  }

  [(STKImageData *)self ptSize];
  ITKFitOrFillSizeInSize();
  if (ITKMainScreenScale_once[0] != -1)
  {
    [STKImageData thumbnailFillToSizeCropping:];
  }

  ITKSizeGetMaxDimension();
  v6 = v4 * v5;
  if (-[STKImageData count](self, "count") > 1 || (-[STKImageData utType](self, "utType"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 conformsToType:*MEMORY[0x1E6982E58]], v7, !v8) || (-[STKImageData data](self, "data"), (ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v6)) == 0))
  {
    ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, 0, v6);
  }

  v10 = CKCreateSquareCroppedImageRef(ThumbnailWithImageSourceAtIndexForMaxDimension);
  CFRelease(ThumbnailWithImageSourceAtIndexForMaxDimension);
  if (v10)
  {
    v11 = [MEMORY[0x1E69DCAB8] itk_imageWithCGImage:v10 scale:0 orientation:v4];
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)thumbnailsFitToSize:(CGSize)a3 maxCount:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [(STKImageData *)self count];
  v9 = v8;
  v10 = 1.0;
  if (v8 > a4)
  {
    v10 = v8 / a4;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v9 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v9;
  }

  v13 = [v11 initWithCapacity:v12];
  if (v9)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      if (v15 <= v14)
      {
        v16 = [(STKImageData *)self _thumbnailFitToSize:v14 atIndex:width, height];
        if (v16)
        {
          [v13 addObject:v16];
        }

        v15 = v10 + v15;
      }

      ++v14;
    }

    while (v9 != v14);
  }

  if (v9 > a4)
  {
    v17 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218752;
      v20 = v9;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = [v13 count];
      _os_log_impl(&dword_19A5EE000, v17, OS_LOG_TYPE_DEFAULT, "GIF wanted %ld frames (> max allowed (%ld)). Used increment %f to generate %ld frames.", &v19, 0x2Au);
    }
  }

  return v13;
}

- (id)thumbnailAtIndex:(unint64_t)a3 fillToSize:(CGSize)a4 maxCount:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = [(STKImageData *)self count];
  v11 = 1.0;
  if (v10 > a5)
  {
    v11 = v10 / a5;
  }

  return [(STKImageData *)self _thumbnailFitToSize:(v11 * a3) atIndex:width, height];
}

- (id)thumbnailsFillToSize:(CGSize)a3 maxCount:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [(STKImageData *)self count];
  v9 = v8;
  v10 = 1.0;
  if (v8 > a4)
  {
    v10 = v8 / a4;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v9 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v9;
  }

  v13 = [v11 initWithCapacity:v12];
  if (v9)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      if (v15 <= v14)
      {
        v16 = [(STKImageData *)self _thumbnailFillToSize:v14 atIndex:width, height];
        if (v16)
        {
          [v13 addObject:v16];
        }

        v15 = v10 + v15;
      }

      ++v14;
    }

    while (v9 != v14);
  }

  if (v9 > a4)
  {
    v17 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218752;
      v20 = v9;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = [v13 count];
      _os_log_impl(&dword_19A5EE000, v17, OS_LOG_TYPE_DEFAULT, "GIF wanted %ld frames (> max allowed (%ld)). Used increment %f to generate %ld frames.", &v19, 0x2Au);
    }
  }

  return v13;
}

- (id)_defaultDurationsWithMaxCount:(unint64_t)a3
{
  v3 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(STKImageData *)self count]< a3)
  {
    v3 = [(STKImageData *)self count];
  }

  v5 = v3;
  bzero(v12 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v3);
  if (v3)
  {
    v6 = v3;
    v7 = (v12 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0666666667];
      v9 = *v7;
      *v7++ = v8;

      --v6;
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0) count:v3];
  if (v3)
  {
    do
    {
    }

    while (v5 * 8);
  }

  return v10;
}

- (id)durationsWithMaxCount:(unint64_t)a3
{
  v56 = *MEMORY[0x1E69E9840];
  if ([(STKImageData *)self supportsAnimatedImages])
  {
    v5 = [(STKImageData *)self count];
    v6 = v5;
    if (v5 > a3)
    {
      v7 = v5 / a3;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v39 = a3;
    if (v6 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v6;
    }

    v10 = [v8 initWithCapacity:v9];
    if (v6)
    {
      v11 = 0;
      v12 = *MEMORY[0x1E696DB70];
      key = *MEMORY[0x1E696DB80];
      v43 = *MEMORY[0x1E696DB68];
      v13 = *MEMORY[0x1E696DEB0];
      v46 = *MEMORY[0x1E696D3D0];
      v42 = *MEMORY[0x1E696D3C0];
      v14 = *MEMORY[0x1E696DD20];
      v45 = *MEMORY[0x1E696DD30];
      v41 = *MEMORY[0x1E696DD18];
      v15 = *MEMORY[0x1E696DFA8];
      v44 = *MEMORY[0x1E696DFB0];
      v16 = 0.0;
      v17 = 0.0;
      v40 = *MEMORY[0x1E696DFA0];
      do
      {
        if (v7 + v17 <= v11)
        {
          v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v16];
          [v10 addObject:v18];

          v16 = 0.0;
          v17 = v7 + v17;
        }

        imageSource = self->_imageSource;
        *&valuePtr = 0.0;
        v20 = CGImageSourceCopyPropertiesAtIndex(imageSource, v11, 0);
        if (v20)
        {
          v21 = v20;
          Value = CFDictionaryGetValue(v20, v12);
          if (Value)
          {
            v23 = Value;
            v24 = CFDictionaryGetValue(Value, key);
            if (v24 || (v24 = CFDictionaryGetValue(v23, v43)) != 0)
            {
              CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
            }
          }

          v25 = CFDictionaryGetValue(v21, v13);
          if (v25)
          {
            v26 = v25;
            v27 = CFDictionaryGetValue(v25, v46);
            if (v27 || (v27 = CFDictionaryGetValue(v26, v42)) != 0)
            {
              CFNumberGetValue(v27, kCFNumberFloatType, &valuePtr);
            }
          }

          v28 = CFDictionaryGetValue(v21, v14);
          if (v28)
          {
            v29 = v28;
            v30 = CFDictionaryGetValue(v28, v45);
            if (v30 || (v30 = CFDictionaryGetValue(v29, v41)) != 0)
            {
              CFNumberGetValue(v30, kCFNumberFloatType, &valuePtr);
            }
          }

          v31 = CFDictionaryGetValue(v21, v15);
          if (v31)
          {
            v32 = v31;
            v33 = CFDictionaryGetValue(v31, v44);
            if (v33 || (v33 = CFDictionaryGetValue(v32, v40)) != 0)
            {
              CFNumberGetValue(v33, kCFNumberFloatType, &valuePtr);
            }
          }

          CFRelease(v21);
          v34 = *&valuePtr;
        }

        else
        {
          v34 = 0.0;
        }

        if (v34 < 0.011)
        {
          v34 = 0.1;
        }

        v16 = v16 + v34;
        ++v11;
      }

      while (v6 != v11);
    }

    else
    {
      v16 = 0.0;
    }

    v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v16];
    [v10 addObject:v35];
    if (v6 > v39)
    {
      v36 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v10 count];
        *&valuePtr = 3.8523e-34;
        v49 = v6;
        v50 = 2048;
        v51 = v39;
        v52 = 2048;
        v53 = v7;
        v54 = 2048;
        v55 = v37;
        _os_log_impl(&dword_19A5EE000, v36, OS_LOG_TYPE_DEFAULT, "GIF wanted %ld durations (> max allowed (%ld)). Used increment %f to generate %ld durations.", &valuePtr, 0x2Au);
      }
    }
  }

  else
  {
    v10 = &unk_1F0DFA308;
  }

  return v10;
}

- (id)MIMEType
{
  v2 = [(STKImageData *)self utType];
  v3 = [v2 preferredMIMEType];

  return v3;
}

- (UTType)utType
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(STKImageData *)self UTIType];
  v4 = v3;
  if (v3 && ![v3 isEqualToString:&stru_1F0DCF9D8])
  {
    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      imageSource = self->_imageSource;
      v9 = 138412290;
      v10 = imageSource;
      _os_log_impl(&dword_19A5EE000, v5, OS_LOG_TYPE_DEFAULT, "Cannot determine UTType without a UTIType: %@", &v9, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (CGSize)ptSize
{
  [(STKImageData *)self pxSize];
  v3 = v2;
  v5 = v4;
  if (ITKMainScreenScale_once[0] != -1)
  {
    [STKImageData thumbnailFillToSizeCropping:];
  }

  v6 = 1.0;
  if (*&ITKMainScreenScale_sMainScreenScale != 0.0)
  {
    v6 = *&ITKMainScreenScale_sMainScreenScale;
  }

  v7 = v3 / v6;
  v8 = v5 / v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)pxSize
{
  [(STKImageData *)self _initializeProperties];
  width = self->_pxSize.width;
  height = self->_pxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)count
{
  result = self->_count;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = CGImageSourceGetCount(self->_imageSource);
    self->_count = result;
  }

  return result;
}

- (void)_initializeProperties
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!self->_initializedProperties)
  {
    self->_initializedProperties = 1;
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
    if (![(STKImageData *)self count])
    {
      v12 = 0;
LABEL_18:
      self->_orientation = v12;
      self->_pxSize.width = v3;
      self->_pxSize.height = v4;
      return;
    }

    imageSource = self->_imageSource;
    v21 = *MEMORY[0x1E696E0E8];
    v22[0] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v7 = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, v6);

    if (!v7)
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v8 = v7;
    v9 = *MEMORY[0x1E696DE78];
    v10 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DE78]];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v13 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
      v11 = [v13 objectForKeyedSubscript:v9];

      if (!v11)
      {
        v12 = 0;
LABEL_16:

        v17 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DED8]];
        v18 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DEC8]];
        [v17 floatValue];
        v3 = v19;
        [v18 floatValue];
        v4 = v20;

        goto LABEL_17;
      }
    }

    v14 = [v11 integerValue];
    v15 = 2;
    v16 = 3;
    if (v14 != 6)
    {
      v16 = 0;
    }

    if (v14 != 8)
    {
      v15 = v16;
    }

    if (v14 == 3)
    {
      v12 = 1;
    }

    else
    {
      v12 = v15;
    }

    goto LABEL_16;
  }
}

- (id)_thumbnailFitToSize:(CGSize)a3 atIndex:(unint64_t)a4
{
  if (ITKMainScreenScale_once[0] != -1)
  {
    [STKImageData thumbnailFillToSizeCropping:];
  }

  if (*&ITKMainScreenScale_sMainScreenScale == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = *&ITKMainScreenScale_sMainScreenScale;
  }

  [(STKImageData *)self ptSize];
  ITKScaleSizeWithinSize();
  ITKFloorSize();
  ITKSizeGetMaxDimension();
  v8 = v6 * v7;
  v9 = [(STKImageData *)self UTIType];
  v10 = [v9 isEqualToString:@"public.heics"];

  v11 = [(STKImageData *)self UTIType];
  v12 = [*MEMORY[0x1E6982E58] identifier];
  v13 = [v11 isEqualToString:v12];

  if ([(STKImageData *)self count]<= 1 && v13)
  {
    [(STKImageData *)self data];
    ThumbnailWithJPEGForMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v8);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    [(STKImageData *)self sizeForImageSource:self->_imageSource index:a4];
    if (v16 <= v17)
    {
      v16 = v17;
    }

    if (v16 != 0.0 && v16 >= v8)
    {
      goto LABEL_20;
    }

    ThumbnailWithJPEGForMaxDimension = _CreateThumbnailFromHEICSWithMaxDimension(self->_imageSource, a4);
  }

  ThumbnailWithImageSourceAtIndexForMaxDimension = ThumbnailWithJPEGForMaxDimension;
  if (ThumbnailWithJPEGForMaxDimension)
  {
LABEL_21:
    v19 = [MEMORY[0x1E69DCAB8] itk_imageWithCGImage:ThumbnailWithImageSourceAtIndexForMaxDimension scale:0 orientation:v6];
    CFRelease(ThumbnailWithImageSourceAtIndexForMaxDimension);
    goto LABEL_23;
  }

LABEL_20:
  ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, a4, v8);
  if (ThumbnailWithImageSourceAtIndexForMaxDimension)
  {
    goto LABEL_21;
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (CGSize)sizeForImageSource:(CGImageSource *)a3 index:(unint64_t)a4
{
  v4 = CGImageSourceCopyPropertiesAtIndex(a3, a4, 0);
  v5 = v4;
  if (v4)
  {
    v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v6 doubleValue];
    v8 = v7;

    v9 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
    v8 = 0.0;
  }

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)_thumbnailFillToSize:(CGSize)a3 atIndex:(unint64_t)a4
{
  if (ITKMainScreenScale_once[0] != -1)
  {
    [STKImageData thumbnailFillToSizeCropping:];
  }

  if (*&ITKMainScreenScale_sMainScreenScale == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = *&ITKMainScreenScale_sMainScreenScale;
  }

  [(STKImageData *)self ptSize];
  ITKFitOrFillSizeInSize();
  ITKSizeGetMaxDimension();
  v8 = v6 * v7;
  if (!a4)
  {
    v9 = [(STKImageData *)self utType];
    if ([v9 itk_isJPEG])
    {
      v10 = [(STKImageData *)self count];

      if (v10 <= 1)
      {
        [(STKImageData *)self data];
        ThumbnailWithJPEGForMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v8);
        if (ThumbnailWithJPEGForMaxDimension)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }
  }

  ThumbnailWithJPEGForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, a4, v8);
  if (ThumbnailWithJPEGForMaxDimension)
  {
LABEL_13:
    v12 = ThumbnailWithJPEGForMaxDimension;
    v13 = [MEMORY[0x1E69DCAB8] itk_imageWithCGImage:ThumbnailWithJPEGForMaxDimension scale:0 orientation:v6];
    CFRelease(v12);
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

@end