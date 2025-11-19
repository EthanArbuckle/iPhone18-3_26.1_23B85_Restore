@interface AXMPipelineContextInput
+ (AXMPipelineContextInput)inputWithCIImage:(id)a3;
+ (AXMPipelineContextInput)inputWithCIImage:(id)a3 photoLibraryURL:(id)a4;
+ (AXMPipelineContextInput)inputWithPHAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4;
+ (AXMPipelineContextInput)inputWithPixelBuffer:(id)a3;
+ (AXMPipelineContextInput)inputWithURL:(id)a3;
+ (AXMPipelineContextInput)inputWithURL:(id)a3 photoLibraryURL:(id)a4;
- (AXMPipelineContextInput)init;
- (AXMPipelineContextInput)initWithCoder:(id)a3;
- (CGColorSpace)imageColorSpace;
- (CGImage)createCGImageWithMetrics:(id)a3;
- (CGSize)size;
- (__CVBuffer)wrappedPixelBuffer;
- (id)_initWithCIImage:(id)a3;
- (id)_initWithCIImage:(id)a3 photoLibraryURL:(id)a4;
- (id)_initWithPHAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4;
- (id)_initWithPixelBuffer:(id)a3;
- (id)_initWithURL:(id)a3;
- (id)_initWithURL:(id)a3 photoLibraryURL:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMPipelineContextInput

- (AXMPipelineContextInput)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"use wrapperWithPixelBuffer:"];

  return 0;
}

+ (AXMPipelineContextInput)inputWithCIImage:(id)a3
{
  v3 = a3;
  v4 = [[AXMPipelineContextInput alloc] _initWithCIImage:v3];

  return v4;
}

+ (AXMPipelineContextInput)inputWithCIImage:(id)a3 photoLibraryURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AXMPipelineContextInput alloc] _initWithCIImage:v6 photoLibraryURL:v5];

  return v7;
}

+ (AXMPipelineContextInput)inputWithPixelBuffer:(id)a3
{
  v3 = a3;
  v4 = [[AXMPipelineContextInput alloc] _initWithPixelBuffer:v3];

  return v4;
}

+ (AXMPipelineContextInput)inputWithURL:(id)a3
{
  v3 = a3;
  v4 = [[AXMPipelineContextInput alloc] _initWithURL:v3];

  return v4;
}

+ (AXMPipelineContextInput)inputWithURL:(id)a3 photoLibraryURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AXMPipelineContextInput alloc] _initWithURL:v6 photoLibraryURL:v5];

  return v7;
}

+ (AXMPipelineContextInput)inputWithPHAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AXMPipelineContextInput alloc] _initWithPHAssetLocalIdentifier:v6 photoLibraryURL:v5];

  return v7;
}

- (id)_initWithCIImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMPipelineContextInput;
  v6 = [(AXMPipelineContextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_inputType = 0;
    objc_storeStrong(&v6->_ciImage, a3);
  }

  return v7;
}

- (id)_initWithCIImage:(id)a3 photoLibraryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXMPipelineContextInput;
  v9 = [(AXMPipelineContextInput *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_inputType = 0;
    objc_storeStrong(&v9->_ciImage, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (id)_initWithPixelBuffer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMPipelineContextInput;
  v6 = [(AXMPipelineContextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_inputType = 1;
    objc_storeStrong(&v6->_pixelBuffer, a3);
  }

  return v7;
}

- (id)_initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMPipelineContextInput;
  v6 = [(AXMPipelineContextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_inputType = 2;
    objc_storeStrong(&v6->_URL, a3);
    v7->_cachedImageURLSize = *MEMORY[0x1E695F060];
  }

  return v7;
}

- (id)_initWithURL:(id)a3 photoLibraryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXMPipelineContextInput;
  v9 = [(AXMPipelineContextInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_inputType = 2;
    objc_storeStrong(&v9->_URL, a3);
    v10->_cachedImageURLSize = *MEMORY[0x1E695F060];
    objc_storeStrong(&v10->_photoLibraryURL, a4);
  }

  return v10;
}

- (id)_initWithPHAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXMPipelineContextInput;
  v9 = [(AXMPipelineContextInput *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_inputType = 3;
    objc_storeStrong(&v9->_phAssetLocalIdentifier, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (void)dealloc
{
  extendedSRGBColorSpace = self->_extendedSRGBColorSpace;
  if (extendedSRGBColorSpace)
  {
    CFRelease(extendedSRGBColorSpace);
  }

  v4.receiver = self;
  v4.super_class = AXMPipelineContextInput;
  [(AXMPipelineContextInput *)&v4 dealloc];
}

- (CGSize)size
{
  inputType = self->_inputType;
  if (inputType > 1)
  {
    if (inputType == 2)
    {
      width = self->_cachedImageURLSize.width;
      if (width == *MEMORY[0x1E695F060])
      {
        v11 = CGImageSourceCreateWithURL(self->_URL, 0);
        v12 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
        v13 = [(__CFDictionary *)v12 objectForKey:@"PixelWidth"];
        [v13 doubleValue];
        self->_cachedImageURLSize.width = v14;

        v15 = [(__CFDictionary *)v12 objectForKey:@"PixelHeight"];
        [v15 doubleValue];
        self->_cachedImageURLSize.height = v16;

        if (v11)
        {
          CFRelease(v11);
        }

        width = self->_cachedImageURLSize.width;
      }

      height = self->_cachedImageURLSize.height;
    }

    else if (inputType == 3)
    {
      v8 = [AXMPhotoAssetData phAssetFromLocalIdentifier:self->_phAssetLocalIdentifier photoLibraryURL:self->_photoLibraryURL];
      width = [v8 pixelWidth];
      height = [v8 pixelHeight];
    }
  }

  else if (inputType)
  {
    if (inputType == 1)
    {
      [(AXMPixelBufferWrapper *)self->_pixelBuffer orientedSize];
      width = v6;
      height = v7;
    }
  }

  else
  {
    [(CIImage *)self->_ciImage extent];
    width = v9;
    height = v10;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGColorSpace)imageColorSpace
{
  if (self->_inputType || ![(CIImage *)self->_ciImage CGImage]|| (result = CGImageGetColorSpace([(CIImage *)self->_ciImage CGImage])) == 0)
  {
    result = self->_extendedSRGBColorSpace;
    if (!result)
    {
      result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
      self->_extendedSRGBColorSpace = result;
    }
  }

  return result;
}

- (AXMPipelineContextInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputType"];
  v6 = [v5 integerValue];

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ciImage"];
        v8 = [v7 pixelBuffer];
        if (v8)
        {
          v9 = v8;
          v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
          v11 = [v10 integerValue];

          v12 = [AXMPixelBufferWrapper wrapperWithPixelBuffer:v9 orientation:v11];
          v13 = [(AXMPipelineContextInput *)self _initWithPixelBuffer:v12];
LABEL_14:
          self = v13;

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ciImage"];
    if ([v4 containsValueForKey:@"photoLibraryURL"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryURL"];
      v13 = [(AXMPipelineContextInput *)self _initWithCIImage:v7 photoLibraryURL:v12];
      goto LABEL_14;
    }

    v15 = [(AXMPipelineContextInput *)self _initWithCIImage:v7];
LABEL_17:
    self = v15;
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v14 = [(AXMPipelineContextInput *)self _initWithURL:v7];
    if ([v4 containsValueForKey:@"photoLibraryURL"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryURL"];
      v13 = [v14 _initWithURL:v7 photoLibraryURL:v12];
      goto LABEL_14;
    }

    v15 = [v14 _initWithURL:v7];
    goto LABEL_17;
  }

  if (v6 == 3)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetLocalIdentifier"];
    if ([v4 containsValueForKey:@"photoLibraryURL"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryURL"];
      v13 = [(AXMPipelineContextInput *)self _initWithPHAssetLocalIdentifier:v7 photoLibraryURL:v12];
      goto LABEL_14;
    }

LABEL_18:
  }

LABEL_19:

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMPipelineContextInput inputType](self, "inputType")}];
  [v15 encodeObject:v4 forKey:@"inputType"];

  if ([(AXMPipelineContextInput *)self inputType])
  {
    if ([(AXMPipelineContextInput *)self inputType]== 1)
    {
      v5 = [(AXMPipelineContextInput *)self pixelBuffer];
      v6 = [v5 pixelBuffer];

      if (!v6)
      {
        goto LABEL_13;
      }

      v7 = MEMORY[0x1E695F658];
      v8 = [(AXMPipelineContextInput *)self pixelBuffer];
      v9 = [v7 imageWithCVPixelBuffer:{objc_msgSend(v8, "pixelBuffer")}];

      if (v9)
      {
        [v15 encodeObject:v9 forKey:@"ciImage"];
        v10 = MEMORY[0x1E696AD98];
        v11 = [(AXMPipelineContextInput *)self pixelBuffer];
        v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "orientation")}];
        [v15 encodeObject:v12 forKey:@"orientation"];
      }

      goto LABEL_12;
    }

    if ([(AXMPipelineContextInput *)self inputType]== 2)
    {
      v13 = [(AXMPipelineContextInput *)self URL];
      v14 = @"URL";
    }

    else
    {
      if ([(AXMPipelineContextInput *)self inputType]!= 3)
      {
        goto LABEL_13;
      }

      v13 = [(AXMPipelineContextInput *)self phAssetLocalIdentifier];
      v14 = @"assetLocalIdentifier";
    }
  }

  else
  {
    v13 = [(AXMPipelineContextInput *)self ciImage];
    v14 = @"ciImage";
  }

  [v15 encodeObject:v13 forKey:v14];

  v9 = [(AXMPipelineContextInput *)self photoLibraryURL];
  [v15 encodeObject:v9 forKey:@"photoLibraryURL"];
LABEL_12:

LABEL_13:
}

- (id)description
{
  inputType = self->_inputType;
  if (inputType > 3)
  {
    v3 = &stru_1F23EA908;
  }

  else
  {
    v3 = off_1E7A1DB68[inputType];
  }

  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXMPipelineContextInput;
  v5 = [(AXMPipelineContextInput *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v5, v3];

  return v6;
}

- (CGImage)createCGImageWithMetrics:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__AXMPipelineContextInput_createCGImageWithMetrics___block_invoke;
  v8[3] = &unk_1E7A1DB48;
  v8[4] = self;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [v5 measure:@"Convert to CGImage" execute:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __52__AXMPipelineContextInput_createCGImageWithMetrics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  v6 = *(v4 + 8);
  if (v6 == 2)
  {
    v8 = [v4 URL];
    v9 = CGDataProviderCreateWithURL(v8);

    if (v9)
    {
      v10 = CGImageSourceCreateWithDataProvider(v9, 0);
      if (v10)
      {
        v11 = v10;
        *(*(*(a1 + 48) + 8) + 24) = CGImageSourceCreateImageAtIndex(v10, 0, 0);
        CFRelease(v11);
      }

      CGDataProviderRelease(v9);
    }

    else
    {
      v14 = AXMediaLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __52__AXMPipelineContextInput_createCGImageWithMetrics___block_invoke_cold_1(v5, v14);
      }
    }
  }

  else if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(v4 + 16) CGImage];
    v7 = *(*(*(a1 + 48) + 8) + 24);
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = CGImageRetain(v7);
    }

    else
    {
      v12 = AXMCoreImageContext(*(a1 + 40));
      v13 = *(*(a1 + 32) + 16);
      [v13 extent];
      *(*(*(a1 + 48) + 8) + 24) = [v12 createCGImage:v13 fromRect:?];
    }
  }
}

- (__CVBuffer)wrappedPixelBuffer
{
  inputType = self->_inputType;
  if (inputType == 1)
  {
    v3 = [(AXMPipelineContextInput *)self pixelBuffer];
    goto LABEL_5;
  }

  if (!inputType)
  {
    v3 = [(AXMPipelineContextInput *)self ciImage];
LABEL_5:
    v4 = v3;
    v5 = [v3 pixelBuffer];

    return v5;
  }

  return 0;
}

void __52__AXMPipelineContextInput_createCGImageWithMetrics___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 URL];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not create CGDataProviderRef for URL: %@", &v4, 0xCu);
}

@end