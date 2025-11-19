@interface LPImage
+ (id)_PDFImageNamed:(id)a3 template:(BOOL)a4;
+ (id)_PNGImageNamed:(id)a3;
+ (id)_PNGImageNamed:(id)a3 template:(BOOL)a4 properties:(id)a5;
+ (id)_loadImageSubsampledToScreenSizeFromData:(id)a3;
+ (id)_optionalSystemImageNamed:(id)a3 withSymbolConfiguration:(id)a4;
+ (id)_systemImageNamed:(id)a3;
+ (id)_systemImageNamed:(id)a3 withSymbolConfiguration:(id)a4;
- (BOOL)_canEncodeWithoutComputation;
- (BOOL)_isAnimated;
- (BOOL)_isFallbackIcon;
- (BOOL)_isLowResolutionAsIconWithScaleFactor:(double)a3;
- (BOOL)_isLowResolutionAsImage;
- (BOOL)hasPlaceholderValueForAsynchronousLoad;
- (BOOL)isEqual:(id)a3;
- (CGSize)_pixelSize;
- (LPImage)initWithCoder:(id)a3;
- (LPImage)initWithData:(id)a3 MIMEType:(id)a4;
- (LPImage)initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (LPImage)initWithItemProvider:(id)a3 properties:(id)a4 placeholderImage:(id)a5;
- (LPImage)initWithPlatformImage:(id)a3;
- (LPImage)initWithPlatformImage:(id)a3 properties:(id)a4;
- (LPImageProperties)properties;
- (NSData)data;
- (NSItemProvider)_itemProvider;
- (NSString)MIMEType;
- (NSString)_srcsetForRemoteURLs;
- (UIImage)platformImage;
- (id)_asTemplate;
- (id)_existingPlatformImage;
- (id)_initWithCGImage:(CGImage *)a3;
- (id)_initWithCGImage:(CGImage *)a3 properties:(id)a4;
- (id)_initWithImage:(id)a3;
- (id)_initWithImage:(id)a3 properties:(id)a4;
- (id)_initWithPlatformImageGenerator:(id)a3 properties:(id)a4;
- (id)filledVariant;
- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4;
- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (unint64_t)_encodedSize;
- (unint64_t)hash;
- (void)_computeDominantColorForProperties;
- (void)_createDataFromPlatformImage;
- (void)_ensureTransparentRegions;
- (void)_mapDataFromFileURL;
- (void)_synchronouslyDecodePlatformImageWithMaximumSize:(CGSize)a3;
- (void)_waitForAsynchronouslyLoadedImageIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)loadAsynchronouslyWithCompletionHandler:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation LPImage

- (id)_initWithImage:(id)a3
{
  v4 = a3;
  if (v4 && (v14.receiver = self, v14.super_class = LPImage, v5 = [(LPImage *)&v14 init], (self = v5) != 0))
  {
    objc_storeStrong(&v5->_originalPlatformImage, *(v4 + 1));
    objc_storeStrong(&self->_decodedPlatformImage, *(v4 + 2));
    objc_storeStrong(&self->_platformImage, *(v4 + 17));
    self->_isNonFallbackSymbolImage = *(v4 + 108);
    v6 = [v4 _cachedAtomicData];
    v7 = [v6 copy];
    [(LPImage *)self set_cachedAtomicData:v7];

    v8 = [*(v4 + 3) copy];
    MIMEType = self->_MIMEType;
    self->_MIMEType = v8;

    objc_storeStrong(&self->_fileURL, *(v4 + 18));
    v10 = [*(v4 + 4) copy];
    properties = self->_properties;
    self->_properties = v10;

    self = self;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_initWithImage:(id)a3 properties:(id)a4
{
  v7 = a4;
  v8 = [(LPImage *)self _initWithImage:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, a4);
    v10 = v9;
  }

  return v9;
}

- (LPImage)initWithData:(id)a3 MIMEType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(LPImageProperties);
  v9 = [(LPImage *)self initWithData:v6 MIMEType:v7 properties:v8];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

- (LPImage)initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = LPImage;
  v11 = [(LPImage *)&v16 init];
  if (v11)
  {
    if (!v8)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil data."];
    }

    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil MIME type."];
    }

    [(LPImage *)v11 set_cachedAtomicData:v8];
    objc_storeStrong(&v11->_MIMEType, a4);
    v12 = [v10 copy];
    properties = v11->_properties;
    v11->_properties = v12;

    v14 = v11;
  }

  return v11;
}

- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(LPImageProperties);
  v9 = [(LPImage *)self initByReferencingFileURL:v6 MIMEType:v7 properties:v8];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = LPImage;
  v11 = [(LPImage *)&v16 init];
  if (!v11)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil file URL."];
  }

  if (!v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil MIME type."];
  }

  if (([v8 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with URL which is not a file URL."];
  }

  if ([v8 checkResourceIsReachableAndReturnError:0])
  {
    [(LPImage *)v11 setFileURL:v8];
    objc_storeStrong(&v11->_MIMEType, a4);
    v12 = [v10 copy];
    properties = v11->_properties;
    v11->_properties = v12;

    v14 = v11;
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (LPImage)initWithPlatformImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LPImageProperties);
  v6 = [(LPImage *)self initWithPlatformImage:v4 properties:v5];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (LPImage)initWithPlatformImage:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = LPLogChannelImage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [LPImage initWithPlatformImage:v12 properties:?];
    }

    v10 = 0;
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = LPImage;
  v9 = [(LPImage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalPlatformImage, a3);
    v11 = [v8 copy];
    self = v10->_properties;
    v10->_properties = v11;
LABEL_7:
  }

  return v10;
}

- (LPImage)initWithItemProvider:(id)a3 properties:(id)a4 placeholderImage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 data];
    v14 = [v12 MIMEType];
    v15 = [(LPImage *)self initWithData:v13 MIMEType:v14];

    v16 = [v12 properties];
    placeholderProperties = v15->_placeholderProperties;
    v15->_placeholderProperties = v16;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = LPImage;
    v15 = [(LPImage *)&v19 init];
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v15->_itemProvider, a3);
  if (v10)
  {
    objc_storeStrong(&v15->_properties, a4);
  }

LABEL_6:

  return v15;
}

- (id)_initWithCGImage:(CGImage *)a3
{
  v5 = objc_alloc_init(LPImageProperties);
  v6 = [(LPImage *)self _initWithCGImage:a3 properties:v5];

  return v6;
}

- (id)_initWithCGImage:(CGImage *)a3 properties:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:a3];
  v8 = [(LPImage *)self initWithPlatformImage:v7 properties:v6];

  if (v8)
  {
    v8->_isAnimated = 0;
    v8->_hasComputedIsAnimated = 1;
    v9 = v8;
  }

  return v8;
}

+ (id)_systemImageNamed:(id)a3
{
  v3 = [LPImage _systemImageNamed:a3 withSymbolConfiguration:0];

  return v3;
}

+ (id)_systemImageNamed:(id)a3 withSymbolConfiguration:(id)a4
{
  v4 = [a1 _optionalSystemImageNamed:a3 withSymbolConfiguration:a4];

  return v4;
}

+ (id)_optionalSystemImageNamed:(id)a3 withSymbolConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:v6];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [v8 _lp_imageByApplyingSymbolConfiguration:v7];

      v9 = v10;
    }

    v11 = [[LPImage alloc] initWithPlatformImage:v9];
    objc_storeStrong(&v11->_symbolName, a3);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithPlatformImageGenerator:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = LPImage;
  v8 = [(LPImage *)&v20 init];
  if (v8)
  {
    v9 = [v7 copy];
    properties = v8->_properties;
    v8->_properties = v9;

    v11 = dispatch_group_create();
    [(LPImage *)v8 _setAsynchronousLoadGroup:v11];

    v12 = [(LPImage *)v8 _asynchronousLoadGroup];
    dispatch_group_enter(v12);

    if (asyncImageLoadingSerialRequestQueue_onceToken != -1)
    {
      [LPImage _initWithPlatformImageGenerator:properties:];
    }

    v13 = asyncImageLoadingSerialRequestQueue_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke;
    v17[3] = &unk_1E7A35428;
    v19 = v6;
    v14 = v8;
    v18 = v14;
    dispatch_async(v13, v17);
    v15 = v14;
  }

  return v8;
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke(uint64_t a1)
{
  v2 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
  if (!MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore)
  {
    v3 = dispatch_semaphore_create(4);
    v4 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
    MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore = v3;

    v2 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
  }

  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (asyncImageLoadingQueue_onceToken != -1)
  {
    __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_cold_1();
  }

  v5 = asyncImageLoadingQueue_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_2;
  v6[3] = &unk_1E7A35428;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  dispatch_async(v5, v6);
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_3;
  v2[3] = &unk_1E7A355B8;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, v2);
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = LPLogChannelImage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 134218240;
    v9 = v6;
    v10 = 1024;
    v11 = v4 != 0;
    _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image (success: %d)", &v8, 0x12u);
  }

  objc_storeStrong((*(a1 + 32) + 8), a2);
  v7 = [*(a1 + 32) _asynchronousLoadGroup];
  dispatch_group_leave(v7);

  dispatch_semaphore_signal(MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore);
  [*(a1 + 32) _setAsynchronousLoadGroup:0];
}

- (void)_computeDominantColorForProperties
{
  v3 = [(LPImage *)self platformImage];
  v5 = [v3 _lp_dominantColors];

  -[LPImageProperties setHasSingleDominantColor:](self->_properties, "setHasSingleDominantColor:", [v5 count] == 1);
  v4 = [v5 firstObject];
  [(LPImageProperties *)self->_properties setDominantColor:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LPImage;
  if (![(LPImage *)&v13 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_17;
    }

    v6 = v4;
    if (objectsAreEqual(v6[1], self->_originalPlatformImage))
    {
      v7 = [v6 _cachedAtomicData];
      v8 = [(LPImage *)self _cachedAtomicData];
      v9 = objectsAreEqual(v7, v8);

      if ((v9 & 1) != 0 && objectsAreEqual(v6[3], self->_MIMEType) && objectsAreEqual(v6[18], self->_fileURL) && objectsAreEqual(v6[4], self->_properties) && !v6[6] && !self->_itemProvider)
      {
        v10 = [v6 _asynchronousLoadGroup];
        if (v10)
        {
        }

        else
        {
          v11 = [(LPImage *)self _asynchronousLoadGroup];

          if (!v11)
          {
            v5 = *(v6 + 108) == self->_isNonFallbackSymbolImage;
            goto LABEL_16;
          }
        }
      }
    }

    v5 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v5 = 1;
LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(LPImage *)self _cachedAtomicData];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_MIMEType hash];

  return v5 ^ v4;
}

- (void)_waitForAsynchronouslyLoadedImageIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1AE886000, a2, OS_LOG_TYPE_FAULT, "LPImage<%p>: timed out in _waitForAsynchronouslyLoadedImageIfNeeded", &v2, 0xCu);
}

+ (id)_PNGImageNamed:(id)a3
{
  v3 = [a1 _PNGImageNamed:a3 template:0 properties:0];

  return v3;
}

+ (id)_PNGImageNamed:(id)a3 template:(BOOL)a4 properties:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = +[LPTestingOverrides forceImageLoadingScaleFactor];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v10 = [LPImage alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__LPImage__PNGImageNamed_template_properties___block_invoke;
  v18[3] = &unk_1E7A355E0;
  v20 = &v23;
  v21 = v9;
  v11 = v7;
  v19 = v11;
  v22 = a4;
  v12 = [(LPImage *)v10 _initWithPlatformImageGenerator:v18 properties:v8];
  v13 = v24[5];
  v24[5] = v12;

  v14 = LPLogChannelImage();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v24[5];
    *buf = 134218242;
    v30 = v15;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_INFO, "LPImage<%p>: created async image for %@", buf, 0x16u);
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __46__LPImage__PNGImageNamed_template_properties___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LPLogChannelImage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v17 = 134217984;
    v18 = v5;
    _os_log_impl(&dword_1AE886000, v4, OS_LOG_TYPE_INFO, "LPImage<%p>: started loading async image", &v17, 0xCu);
  }

  if (!*(a1 + 48) || (v6 = MEMORY[0x1E69DCAB8], v7 = *(a1 + 32), linkPresentationBundle(), v8 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DD1B8] traitCollectionWithDisplayScale:*(a1 + 48)], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "imageNamed:inBundle:compatibleWithTraitCollection:", v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v11 = MEMORY[0x1E69DCAB8];
    v12 = *(a1 + 32);
    v13 = linkPresentationBundle();
    v10 = [v11 imageNamed:v12 inBundle:v13 withConfiguration:0];
  }

  if (*(a1 + 56) == 1)
  {
    v14 = [v10 imageWithRenderingMode:2];

    v10 = v14;
  }

  v15 = LPLogChannelImage();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(*(*(a1 + 40) + 8) + 40);
    v17 = 134217984;
    v18 = v16;
    _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image", &v17, 0xCu);
  }

  v3[2](v3, v10);
}

+ (id)_PDFImageNamed:(id)a3 template:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v6 = [LPImage alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__LPImage__PDFImageNamed_template___block_invoke;
  v14[3] = &unk_1E7A35608;
  v16 = &v18;
  v7 = v5;
  v15 = v7;
  v17 = a4;
  v8 = [(LPImage *)v6 _initWithPlatformImageGenerator:v14 properties:0];
  v9 = v19[5];
  v19[5] = v8;

  v10 = LPLogChannelImage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v19[5];
    *buf = 134218242;
    v25 = v11;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_INFO, "LPImage<%p>: created async LPImage for %@", buf, 0x16u);
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __35__LPImage__PDFImageNamed_template___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LPLogChannelImage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v13 = 134217984;
    v14 = v5;
    _os_log_impl(&dword_1AE886000, v4, OS_LOG_TYPE_INFO, "LPImage<%p>: started loading async image", &v13, 0xCu);
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = *(a1 + 32);
  v8 = linkPresentationBundle();
  v9 = [v6 imageNamed:v7 inBundle:v8 withConfiguration:0];

  if (*(a1 + 48) == 1)
  {
    v10 = [v9 imageWithRenderingMode:2];

    v9 = v10;
  }

  v11 = LPLogChannelImage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = 134217984;
    v14 = v12;
    _os_log_impl(&dword_1AE886000, v11, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image", &v13, 0xCu);
  }

  v3[2](v3, v9);
}

- (LPImage)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPImage;
  v5 = [(LPImage *)&v20 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([v4 _lp_coderType] == 1)
  {
    v6 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"platformImage"];
    originalPlatformImage = v5->_originalPlatformImage;
    v5->_originalPlatformImage = v6;
  }

  v8 = [v4 _lp_strictlyDecodeNSDataForKey:@"data"];
  [(LPImage *)v5 set_cachedAtomicData:v8];

  if ([(LPImage *)v5 _isSubstitute])
  {
    goto LABEL_8;
  }

  v9 = [(LPImage *)v5 _cachedAtomicData];
  if (![v9 length])
  {
    v10 = v5->_originalPlatformImage;

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v11 = [v4 _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
  MIMEType = v5->_MIMEType;
  v5->_MIMEType = v11;

  v13 = objc_alloc_init(LPImageProperties);
  properties = v5->_properties;
  v5->_properties = v13;

  v15 = [v4 _lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
  [(LPImageProperties *)v5->_properties setAccessibilityText:v15];

  v16 = [v4 _lp_strictlyDecodeColorForKey:@"overlaidTextColor"];
  [(LPImageProperties *)v5->_properties setOverlaidTextColor:v16];

  v17 = [v4 _lp_strictlyDecodeColorForKey:@"dominantColor"];
  [(LPImageProperties *)v5->_properties setDominantColor:v17];

  -[LPImageProperties setHasSingleDominantColor:](v5->_properties, "setHasSingleDominantColor:", [v4 decodeBoolForKey:@"hasSingleDominantColor"]);
  -[LPImageProperties setType:](v5->_properties, "setType:", [v4 decodeIntegerForKey:@"imageType"]);
  if ([(LPImageProperties *)v5->_properties type]>= 8)
  {
    [(LPImageProperties *)v5->_properties setType:0];
  }

  v18 = v5;
LABEL_12:

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 _lp_coderType] == 1)
  {
    v5 = [(LPImage *)self _existingPlatformImage];
    v6 = [v5 _lp_isSymbolImage];
    if (v6)
    {
      [v4 _lp_encodeObjectIfNotNil:v5 forKey:@"platformImage"];
    }
  }

  else
  {
    if ([(LPImage *)self needsAsynchronousLoad])
    {
      v7 = LPLogChannelSerialization();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "Trying to encode an LPImage with an unloaded item provider.", v13, 2u);
      }
    }

    v6 = 0;
  }

  if (((v6 | [(LPImage *)self _isSubstitute]) & 1) == 0)
  {
    v8 = [(LPImage *)self data];
    [v4 _lp_encodeObjectIfNotNil:v8 forKey:@"data"];
  }

  [v4 _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  v9 = [(LPImage *)self properties];
  v10 = [v9 accessibilityText];
  [v4 _lp_encodeStringIfNotNil:v10 forKey:@"accessibilityText"];

  v11 = [v9 overlaidTextColor];
  [v4 _lp_encodeColorIfNotNil:v11 forKey:@"overlaidTextColor"];

  v12 = [v9 dominantColor];
  [v4 _lp_encodeColorIfNotNil:v12 forKey:@"dominantColor"];

  [v4 encodeBool:objc_msgSend(v9 forKey:{"hasSingleDominantColor"), @"hasSingleDominantColor"}];
  [v4 encodeInteger:objc_msgSend(v9 forKey:{"type"), @"imageType"}];
}

- (BOOL)_canEncodeWithoutComputation
{
  v3 = [(LPImage *)self _existingPlatformImage];
  if ([v3 _lp_isSymbolImage])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LPImage *)self _cachedAtomicData];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)setFileURL:(id)a3
{
  v6 = a3;
  if ([v6 isFileURL])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = v4;
}

+ (id)_loadImageSubsampledToScreenSizeFromData:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![(__CFData *)v3 length])
  {
    v14 = 0;
    goto LABEL_14;
  }

  [MEMORY[0x1E69DCEB0] _lp_mainScreenScale];
  v5 = v4;
  [MEMORY[0x1E69DCEB0] _lp_mainScreenSize];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [v10 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E696E0E8], 0}];
  v12 = [(__CFData *)v3 copy];

  v13 = CGImageSourceCreateWithData(v12, v11);
  v14 = v13;
  if (v13)
  {
    if (CGImageSourceGetCount(v13))
    {
      v15 = CGImageSourceCopyPropertiesAtIndex(v14, 0, v11);
      v16 = [(__CFDictionary *)v15 objectForKey:*MEMORY[0x1E696DED8]];
      v17 = [(__CFDictionary *)v15 objectForKey:*MEMORY[0x1E696DEC8]];
      v18 = v17;
      if (v16 && v17 && ([v16 doubleValue], v20 = v19, objc_msgSend(v18, "doubleValue"), v22 = v21, !sizeIsEmptyOrInvalid(v20, v21)))
      {
        sizeFittingInsideSizeMaintainingAspectRatio(v20, v22, v5 * v7, v5 * v9);
        v26 = fmin(v20 / v24, v22 / v25);
        if (v26 < 2.0)
        {
          goto LABEL_27;
        }

        v27 = 8.0;
        if (v26 < 8.0)
        {
          v27 = 4.0;
        }

        if (v26 >= 4.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 2.0;
        }

        v29 = LPLogChannelImage();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          v34 = v20;
          v35 = 2048;
          v36 = v22;
          v37 = 2048;
          v38 = v28;
          _os_log_debug_impl(&dword_1AE886000, v29, OS_LOG_TYPE_DEBUG, "Subsampling %g x %g image by %gx", buf, 0x20u);
        }

        v30 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
        [(__CFDictionary *)v11 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696E0F8]];

        CFRelease(v14);
        v31 = CGImageSourceCreateWithData(v12, v11);
        v14 = v31;
        if (!v31)
        {
          goto LABEL_12;
        }

        if (CGImageSourceGetCount(v31))
        {
LABEL_27:
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, v11);
          CFRelease(v14);
          v14 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:ImageAtIndex];
          CGImageRelease(ImageAtIndex);
          goto LABEL_12;
        }

        CFRelease(v14);
      }

      else
      {
        CFRelease(v14);
      }

      v14 = 0;
LABEL_12:

      goto LABEL_13;
    }

    CFRelease(v14);
    v14 = 0;
  }

LABEL_13:

  v3 = v12;
LABEL_14:

  return v14;
}

- (id)_existingPlatformImage
{
  decodedPlatformImage = self->_decodedPlatformImage;
  if (decodedPlatformImage || ([(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded], (decodedPlatformImage = self->_originalPlatformImage) != 0))
  {
    v4 = decodedPlatformImage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)platformImage
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(LPImage *)v2 _existingPlatformImage];
  platformImage = v3;
  if (!v3)
  {
    platformImage = v2->_platformImage;
    if (!platformImage)
    {
      v5 = [(LPImage *)v2 data];
      if (!v5)
      {
        goto LABEL_9;
      }

      if (+[LPSettings subsampleImagesToScreenSize])
      {
        v6 = [LPImage _loadImageSubsampledToScreenSizeFromData:v5];
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v5];
      }

      v7 = v2->_platformImage;
      v2->_platformImage = v6;

      platformImage = v2->_platformImage;
    }
  }

  v5 = platformImage;
LABEL_9:

  objc_sync_exit(v2);

  return v5;
}

- (void)_synchronouslyDecodePlatformImageWithMaximumSize:(CGSize)a3
{
  v22[6] = *MEMORY[0x1E69E9840];
  if (!self->_decodedPlatformImage)
  {
    height = a3.height;
    width = a3.width;
    [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
    v6 = [(LPImage *)self data];
    if (v6)
    {
      v7 = MEMORY[0x1E695E118];
      v8 = *MEMORY[0x1E696DFE8];
      v21[0] = *MEMORY[0x1E696E0E8];
      v21[1] = v8;
      v22[0] = MEMORY[0x1E695E118];
      v22[1] = MEMORY[0x1E695E118];
      v21[2] = *MEMORY[0x1E696E100];
      v9 = [MEMORY[0x1E696AD98] numberWithLong:{fmax(width, height)}];
      v10 = *MEMORY[0x1E696E000];
      v22[2] = v9;
      v22[3] = v7;
      v11 = *MEMORY[0x1E696E138];
      v21[3] = v10;
      v21[4] = v11;
      v21[5] = *MEMORY[0x1E696E0A8];
      v22[4] = v7;
      v22[5] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

      v13 = CGImageSourceCreateWithData(v6, 0);
      v14 = v13;
      if (v13)
      {
        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v13, 0, v12);
        if (ThumbnailAtIndex)
        {
          v16 = self;
          objc_sync_enter(v16);
          v17 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:ThumbnailAtIndex];
          decodedPlatformImage = self->_decodedPlatformImage;
          self->_decodedPlatformImage = v17;

          originalPlatformImage = v16->_originalPlatformImage;
          v16->_originalPlatformImage = 0;

          platformImage = v16->_platformImage;
          v16->_platformImage = 0;

          objc_sync_exit(v16);
          CFRelease(v14);
          CGImageRelease(ThumbnailAtIndex);
        }

        else
        {
          CFRelease(v14);
        }
      }
    }
  }
}

- (NSData)data
{
  v3 = [(LPImage *)self _cachedAtomicData];

  if (!v3)
  {
    [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
    if (self->_originalPlatformImage)
    {
      [(LPImage *)self _createDataFromPlatformImage];
    }

    else if (self->_fileURL)
    {
      [(LPImage *)self _mapDataFromFileURL];
    }
  }

  return [(LPImage *)self _cachedAtomicData];
}

- (NSString)MIMEType
{
  MIMEType = self->_MIMEType;
  if (MIMEType)
  {
    goto LABEL_2;
  }

  [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
  if (!self->_originalPlatformImage)
  {
    MIMEType = self->_MIMEType;
LABEL_2:
    v3 = MIMEType;
    goto LABEL_5;
  }

  v3 = @"image/png";
LABEL_5:

  return v3;
}

- (LPImageProperties)properties
{
  if (self->_itemProvider && !self->_imageLoadedFromItemProvider && self->_placeholderProperties)
  {
    placeholderProperties = self->_placeholderProperties;
  }

  else
  {
    placeholderProperties = self->_properties;
  }

  v3 = [(LPImageProperties *)placeholderProperties copy];

  return v3;
}

- (void)_createDataFromPlatformImage
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(LPImage *)obj _cachedAtomicData];

  v3 = obj;
  if (!v2)
  {
    [(LPImage *)obj _waitForAsynchronouslyLoadedImageIfNeeded];
    v3 = obj;
    originalPlatformImage = obj->_originalPlatformImage;
    if (originalPlatformImage)
    {
      if (obj->_useLossyCompressionForEncodedData)
      {
        UIImageJPEGRepresentation(originalPlatformImage, 0.8);
      }

      else
      {
        UIImagePNGRepresentation(originalPlatformImage);
      }
      v5 = ;
      [(LPImage *)obj set_cachedAtomicData:v5];

      MIMEType = obj->_MIMEType;
      obj->_MIMEType = @"image/png";

      v3 = obj;
    }
  }

  objc_sync_exit(v3);
}

- (void)_mapDataFromFileURL
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPImage: Failed to load data: %@", &v2, 0xCu);
}

- (unint64_t)_encodedSize
{
  if (self->_fileURL)
  {
    fileURL = self->_fileURL;

    return [(NSURL *)fileURL _lp_fileSize];
  }

  else
  {
    v4 = [(LPImage *)self data];
    v5 = [v4 length];

    return v5;
  }
}

- (CGSize)_pixelSize
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_hasComputedPixelSize)
  {
    v3 = [(LPImage *)v2 platformImage];
    [v3 _lp_pixelSize];
    v2->_pixelSize.width = v4;
    v2->_pixelSize.height = v5;

    v2->_hasComputedPixelSize = 1;
  }

  width = v2->_pixelSize.width;
  height = v2->_pixelSize.height;
  objc_sync_exit(v2);

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)_isAnimated
{
  if (self->_hasComputedIsAnimated)
  {
    return self->_isAnimated;
  }

  self->_hasComputedIsAnimated = 1;
  v3 = [(LPImage *)self MIMEType];
  v4 = [LPMIMETypeRegistry isNonAnimatedMultiframeImageType:v3];

  if (!v4)
  {
    v6 = [(LPImage *)self data];
    v7 = CGImageSourceCreateWithData(v6, MEMORY[0x1E695E0F8]);

    if (!v7)
    {
      return 0;
    }

    self->_isAnimated = CGImageSourceGetCount(v7) > 1;
    CFRelease(v7);
    return self->_isAnimated;
  }

  v5 = 0;
  self->_isAnimated = 0;
  return v5;
}

- (NSString)_srcsetForRemoteURLs
{
  v3 = [(LPImage *)self _remoteURLsForEmailCompatibleOutput];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = [(LPImage *)self _remoteURLsForEmailCompatibleOutput];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __31__LPImage__srcsetForRemoteURLs__block_invoke;
    v12 = &unk_1E7A35630;
    v6 = v4;
    v13 = v6;
    v14 = self;
    [v5 enumerateObjectsUsingBlock:&v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = &stru_1F2447CF0;
  }

  return v7;
}

void __31__LPImage__srcsetForRemoteURLs__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AEC0];
  v13 = v5;
  v8 = [v5 URL];
  v9 = [v8 absoluteString];
  v10 = [v7 stringWithFormat:@"%@ %dx", v9, objc_msgSend(v13, "scale")];
  [v6 appendString:v10];

  v11 = [*(a1 + 40) _remoteURLsForEmailCompatibleOutput];
  v12 = [v11 count] - 1;

  if (v12 != a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }
}

- (BOOL)hasPlaceholderValueForAsynchronousLoad
{
  if (!self->_itemProvider)
  {
    return 0;
  }

  v2 = [(LPImage *)self _cachedAtomicData];
  v3 = v2 != 0;

  return v3;
}

- (void)loadAsynchronouslyWithCompletionHandler:(id)a3
{
  v4 = a3;
  itemProviderLoadGroup = self->_itemProviderLoadGroup;
  if (!itemProviderLoadGroup)
  {
    v6 = dispatch_group_create();
    v7 = self->_itemProviderLoadGroup;
    self->_itemProviderLoadGroup = v6;

    dispatch_group_enter(self->_itemProviderLoadGroup);
    itemProvider = self->_itemProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7A35678;
    v12[4] = self;
    [(NSItemProvider *)itemProvider _lp_loadFirstDataRepresentationMatchingMIMETypePredicate:&__block_literal_global_2 completionHandler:v12];
    itemProviderLoadGroup = self->_itemProviderLoadGroup;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7A356A0;
  block[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(itemProviderLoadGroup, MEMORY[0x1E69E96A0], block);
}

void __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[LPImage alloc] initWithData:v9 MIMEType:v5 properties:*(*(a1 + 32) + 32)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;
  }

  dispatch_group_leave(*(*(a1 + 32) + 64));
}

uint64_t __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);
  if (v4[7])
  {
    v5 = *(a1 + 40);
LABEL_5:
    v9 = *(v5 + 16);
    goto LABEL_6;
  }

  v6 = [v4 _cachedAtomicData];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;

    v5 = *(a1 + 40);
    goto LABEL_5;
  }

  v9 = *(*(a1 + 40) + 16);
LABEL_6:

  return v9();
}

- (NSItemProvider)_itemProvider
{
  itemProvider = self->_itemProvider;
  if (itemProvider)
  {
    v3 = itemProvider;
  }

  else
  {
    v5 = [(LPImage *)self data];
    v6 = MEMORY[0x1E696ACA0];
    v7 = [(LPImage *)self MIMEType];
    v3 = [v6 _lp_itemProviderWithData:v5 MIMEType:v7];
  }

  return v3;
}

- (id)_asTemplate
{
  v3 = [(LPImage *)self platformImage];
  v4 = [v3 renderingMode];

  if (v4 == 2)
  {
    v5 = self;
  }

  else
  {
    v6 = [(LPImage *)self platformImage];
    v7 = [v6 imageWithRenderingMode:2];

    v8 = [LPImage alloc];
    v9 = [(LPImage *)self properties];
    v5 = [(LPImage *)v8 initWithPlatformImage:v7 properties:v9];
  }

  return v5;
}

- (BOOL)_isFallbackIcon
{
  if (self->_isNonFallbackSymbolImage)
  {
    return self->_fallbackIcon;
  }

  v3 = [(LPImage *)self platformImage];
  v4 = [v3 _lp_isSymbolImage];

  return (v4 & 1) != 0 || self->_fallbackIcon;
}

- (void)_ensureTransparentRegions
{
  if (!self->_hasComputedTransparentRegions)
  {
    v3 = [(LPImage *)self platformImage];
    self->_transparentRegions = [v3 _lp_transparentRegions];

    self->_hasComputedTransparentRegions = 1;
  }
}

- (id)filledVariant
{
  v2 = self;
  v3 = sub_1AE971D38();

  return v3;
}

- (BOOL)_isLowResolutionAsImage
{
  v2 = self;
  v3 = sub_1AE971F8C();

  return v3;
}

- (BOOL)_isLowResolutionAsIconWithScaleFactor:(double)a3
{
  v4 = self;
  if ([(LPImage *)v4 _isFallbackIcon])
  {

    return 0;
  }

  else
  {
    [(LPImage *)v4 _pixelSize];
    v7 = v6;
    [objc_opt_self() largestIconSizeInPoints];
    v9 = v8;

    return v7 < v9 * a3;
  }
}

@end