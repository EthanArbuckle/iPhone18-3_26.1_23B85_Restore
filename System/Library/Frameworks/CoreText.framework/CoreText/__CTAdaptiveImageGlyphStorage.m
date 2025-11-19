@interface __CTAdaptiveImageGlyphStorage
+ (id)adaptiveImageGlyphStorageWithContentIdentifier:(id)a3 imageContent:(id)a4;
- (NSData)_RTFDImageData;
- (NSData)_fallbackImageData;
- (__CTAdaptiveImageGlyphStorage)initWithImageContent:(id)a3;
- (void)dealloc;
@end

@implementation __CTAdaptiveImageGlyphStorage

+ (id)adaptiveImageGlyphStorageWithContentIdentifier:(id)a3 imageContent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [__CTAdaptiveImageGlyphStorageCache objectForKey:v6];

  if (v5)
  {
    if (!v8)
    {
      v8 = [[__CTAdaptiveImageGlyphStorage alloc] initWithImageContent:v5];
      if (v8)
      {
        v9 = __CTAdaptiveImageGlyphStorageCache;
        if (__CTAdaptiveImageGlyphStorageCache)
        {
          if (v6)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
          v11 = __CTAdaptiveImageGlyphStorageCache;
          __CTAdaptiveImageGlyphStorageCache = v10;

          v9 = __CTAdaptiveImageGlyphStorageCache;
          if (v6)
          {
            goto LABEL_11;
          }
        }

        v12 = [(__CTAdaptiveImageGlyphStorage *)v8 contentIdentifier];
        v13 = [v9 objectForKey:v12];

        if (v13)
        {
          v14 = v13;

          v8 = v14;
LABEL_12:

          goto LABEL_13;
        }

        v9 = __CTAdaptiveImageGlyphStorageCache;
LABEL_11:
        v14 = [(__CTAdaptiveImageGlyphStorage *)v8 contentIdentifier];
        [v9 setObject:v8 forKey:v14];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  objc_sync_exit(v7);

  return v8;
}

- (__CTAdaptiveImageGlyphStorage)initWithImageContent:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = __CTAdaptiveImageGlyphStorage;
  v5 = [(__CTAdaptiveImageGlyphStorage *)&v23 init];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = CGImageSourceCreateWithData(v4, 0);
  v7 = v6;
  if (v6)
  {
    if (CGImageSourceGetCount(v6))
    {
      v8 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DF30]];
      v11 = v10;
      v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DF40]];
      v13 = v12;

      if (v10)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v7);
    v10 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v10 = 0;
  v12 = 0;
LABEL_10:
  v14 = v10;
  v15 = v12;
  v5->_imageSourceRef = v7;
  if (v7)
  {
    v16 = [(__CFData *)v4 copy];
    imageContent = v5->_imageContent;
    v5->_imageContent = v16;

    v18 = [v14 copy];
    contentIdentifier = v5->_contentIdentifier;
    v5->_contentIdentifier = v18;

    v20 = [v15 copy];
    imageDescription = v5->_imageDescription;
    v5->_imageDescription = v20;
  }

  else
  {
    imageDescription = v5;
    v5 = 0;
  }

LABEL_14:
  return v5;
}

- (void)dealloc
{
  imageSourceRef = self->_imageSourceRef;
  if (imageSourceRef)
  {
    CFRelease(imageSourceRef);
  }

  v4.receiver = self;
  v4.super_class = __CTAdaptiveImageGlyphStorage;
  [(__CTAdaptiveImageGlyphStorage *)&v4 dealloc];
}

- (NSData)_fallbackImageData
{
  p_fallbackImageData = &self->_fallbackImageData;
  fallbackImageData = self->_fallbackImageData;
  if (fallbackImageData)
  {
    v4 = fallbackImageData;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v7 = CGImageDestinationCreateWithData(v6, @"public.png", 1uLL, 0);
    if (v7)
    {
      v8 = v7;
      Count = CGImageSourceGetCount(self->_imageSourceRef);
      if (Count)
      {
        v10 = Count;
        v11 = 0;
        v12 = *MEMORY[0x1E696DEC8];
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        v14 = 0.0;
        do
        {
          v15 = CGImageSourceCopyPropertiesAtIndex(self->_imageSourceRef, v11, 0);
          v16 = [(__CFDictionary *)v15 objectForKeyedSubscript:v12];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            if (v18 >= v14)
            {
              v13 = v11;
              v14 = v18;
            }
          }

          ++v11;
        }

        while (v10 != v11);
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          CGImageDestinationAddImageFromSource(v8, self->_imageSourceRef, v13, 0);
          if (CGImageDestinationFinalize(v8))
          {
            objc_storeStrong(p_fallbackImageData, v6);
          }
        }
      }

      CFRelease(v8);
      v4 = *p_fallbackImageData;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSData)_RTFDImageData
{
  p_RTFDImageData = &self->_RTFDImageData;
  RTFDImageData = self->_RTFDImageData;
  if (!RTFDImageData)
  {
    v5 = __CTEmojiImageSourceCopyImageStrikes(self->_imageSourceRef);
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        v10 = [v9 cgImage];

        Width = CGImageGetWidth(v10);
        Height = CGImageGetHeight(v10);
        if (Width == 64 && Height == 64)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_15;
        }
      }

      if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = objc_opt_new();
        v14 = [v5 objectAtIndexedSubscript:v8];
        [v13 addObject:v14];

        for (i = 0; i != v7; ++i)
        {
          if (v8 != i)
          {
            v16 = [v5 objectAtIndexedSubscript:i];
            [v13 addObject:v16];
          }
        }

        v17 = v13;

        v18 = [[CTEmojiImageAsset alloc] initWithContentIdentifier:self->_contentIdentifier shortDescription:self->_imageDescription strikeImages:v17];
        v19 = [(CTEmojiImageAsset *)v18 imageData];
        v20 = self->_RTFDImageData;
        self->_RTFDImageData = v19;

        v5 = v17;
      }
    }

LABEL_15:
    if (!*p_RTFDImageData)
    {
      objc_storeStrong(p_RTFDImageData, self->_imageContent);
    }

    RTFDImageData = *p_RTFDImageData;
  }

  return RTFDImageData;
}

@end