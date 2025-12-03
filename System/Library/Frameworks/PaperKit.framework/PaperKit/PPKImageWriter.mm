@interface PPKImageWriter
+ (id)log;
+ (uint64_t)supportsGainMapForImageDataType:(uint64_t)type;
+ (uint64_t)supportsHDRForImageDataType:(uint64_t)type;
- (BOOL)writeUsingBaseImage:(id)image annotationImage:(CGImage *)annotationImage sdrAnnotationImage:(CGImage *)sdrAnnotationImage asImageOfType:(id)type toConsumer:(CGDataConsumer *)consumer annotationMetadata:(id)metadata modifiedMetadataHandler:(id)handler encryptPrivateMetadata:(BOOL)self0 error:(id *)self1;
- (id)encodedModelFromData:(int)data encrypt:;
- (void)addGainMapImageToImageDestination:(CGImage *)destination sdrImage:(CGImage *)image hdrImage:(const CGImageMetadata *)hdrImage imageMetadata:(void *)metadata imageOptions:;
- (void)addHDRImageToImageDestination:(CGImage *)destination hdrImage:(const CGImageMetadata *)image imageMetadata:(void *)metadata imageOptions:;
- (void)addSDRHEICImageToImageDestination:(CGImage *)destination sdrImage:(const CGImageMetadata *)image imageMetadata:(void *)metadata imageOptions:;
- (void)writeUsingBaseImageData:(uint64_t)data annotationImage:(uint64_t)image sdrAnnotationImage:(uint64_t)annotationImage asImageOfType:(uint64_t)type toConsumer:(uint64_t)consumer annotationMetadata:modifiedMetadataHandler:encryptPrivateMetadata:error:;
@end

@implementation PPKImageWriter

+ (id)log
{
  objc_opt_self();
  if (log_onceToken != -1)
  {
    +[PPKImageWriter log];
  }

  v0 = log__sharedLog;

  return v0;
}

void __21__PPKImageWriter_log__block_invoke()
{
  v0 = os_log_create("com.apple.PaperKit", "image-writer");
  v1 = log__sharedLog;
  log__sharedLog = v0;
}

+ (uint64_t)supportsHDRForImageDataType:(uint64_t)type
{
  v2 = a2;
  v3 = objc_opt_self();
  if (([(PPKImageWriter *)v3 supportsGainMapForImageDataType:v2]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:v2];
    v4 = [v5 conformsToType:*MEMORY[0x1E6982DA0]];
  }

  return v4;
}

+ (uint64_t)supportsGainMapForImageDataType:(uint64_t)type
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:v2];

  if (v3)
  {
    if ([v3 conformsToType:*MEMORY[0x1E6982E00]])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 conformsToType:*MEMORY[0x1E6982E58]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)writeUsingBaseImage:(id)image annotationImage:(CGImage *)annotationImage sdrAnnotationImage:(CGImage *)sdrAnnotationImage asImageOfType:(id)type toConsumer:(CGDataConsumer *)consumer annotationMetadata:(id)metadata modifiedMetadataHandler:(id)handler encryptPrivateMetadata:(BOOL)self0 error:(id *)self1
{
  v75[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  typeCopy = type;
  metadataCopy = metadata;
  handlerCopy = handler;
  v17 = &kMetadataEncryptedModelTag;
  if (!privateMetadata)
  {
    v17 = &kMetadataModelTag;
  }

  name = *v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = 0;
LABEL_12:
      ImageAtIndex = 0;
      options = 0;
      v23 = 0;
LABEL_15:
      Mutable = CGImageMetadataCreateMutable();
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = CGImageSourceCreateWithURL(imageCopy, 0);
  }

  else
  {
    v18 = CGImageSourceCreateWithData(imageCopy, 0);
  }

  v19 = v18;
  if (!v18)
  {
    goto LABEL_12;
  }

  v74 = *MEMORY[0x1E696DFD0];
  v75[0] = MEMORY[0x1E695E118];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v21 = CGImageSourceCopyPropertiesAtIndex(v19, 0, v20);
  options = [(__CFDictionary *)v21 muDeepMutableCopy];

  v22 = CGImageSourceCopyMetadataAtIndex(v19, 0, 0);
  v23 = v22 != 0;
  if (v22)
  {
    v24 = v22;
    Mutable = CGImageMetadataCreateMutableCopy(v22);
    CFRelease(v24);
  }

  else
  {
    Mutable = 0;
  }

  v72 = *MEMORY[0x1E696E0A8];
  v73 = MEMORY[0x1E695E110];
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, v26);

  if (!Mutable)
  {
    goto LABEL_15;
  }

LABEL_16:
  err = 0;
  CGImageMetadataRegisterNamespaceForPrefix(Mutable, kMetadataNamespacePaperKit, kMetadataPrefixPaperKit, &err);
  if (v23)
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
    CGImageMetadataRemoveTagWithPath(Mutable, 0, name);
    name2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixPaperKit, name];
    CGImageMetadataRemoveTagWithPath(Mutable, 0, name2);
  }

  v29 = ImageAtIndex;
  if (ImageAtIndex)
  {
    v30 = CGImageRetain(annotationImage);
    if (_os_feature_enabled_impl())
    {
      ColorSpace = CGImageGetColorSpace(v30);
      if (ColorSpace)
      {
        v32 = ColorSpace;
        v33 = (MEMORY[0x1DA6CEC30]() & 1) != 0 || CGColorSpaceUsesExtendedRange(v32);
      }

      else
      {
        v33 = 0;
      }

      CGImageGetContentHeadroom();
      v36 = v37;
    }

    else
    {
      v33 = 0;
      v36 = 0.0;
    }

    v38 = +[PPKImageWriter log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v69 = v36;
      v70 = 1024;
      v71 = v33;
      _os_log_impl(&dword_1D38C4000, v38, OS_LOG_TYPE_DEFAULT, "Image headroom: %g, wantsEDR: %d", buf, 0x12u);
    }

    v39 = CGImageDestinationCreateWithDataConsumer(consumer, typeCopy, 1uLL, 0);
    if (v39)
    {
      v40 = v39;
      if (metadataCopy)
      {
        consumera = objc_autoreleasePoolPush();
        v59 = [(PPKImageWriter *)self encodedModelFromData:metadataCopy encrypt:privateMetadata];
        v57 = [v59 base64EncodedStringWithOptions:0];
        v53 = CGImageMetadataTagCreate(kMetadataNamespacePaperKit, kMetadataPrefixPaperKit, name, kCGImageMetadataTypeString, v57);
        if (v53)
        {
          v54 = v53;
          v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixPaperKit, name, v57];
          CGImageMetadataSetTagWithPath(Mutable, 0, v55, v54);
          CFRelease(v54);
        }

        objc_autoreleasePoolPop(consumera);
      }

      v56 = v33;
      v41 = *MEMORY[0x1E696DE78];
      [(__CFDictionary *)options setObject:&unk_1F4F832D0 forKey:*MEMORY[0x1E696DE78]];
      v42 = *MEMORY[0x1E696DF28];
      v43 = [(__CFDictionary *)options objectForKey:*MEMORY[0x1E696DF28]];
      v34 = v43;
      if (v43)
      {
        [v43 setObject:&unk_1F4F832D0 forKey:v41];
      }

      CGImageMetadataSetValueMatchingImageProperty(Mutable, v42, *MEMORY[0x1E696DF58], &unk_1F4F832D0);
      Width = CGImageGetWidth(v30);
      Height = CGImageGetHeight(v30);
      v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
      [(__CFDictionary *)options setObject:v46 forKey:*MEMORY[0x1E696DFB8]];

      v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
      [(__CFDictionary *)options setObject:v47 forKey:*MEMORY[0x1E696DD58]];

      if (handlerCopy)
      {
        handlerCopy[2]();
      }

      if (v56 && [PPKImageWriter supportsGainMapForImageDataType:typeCopy])
      {
        if (sdrAnnotationImage)
        {
          [(PPKImageWriter *)self addGainMapImageToImageDestination:v40 sdrImage:sdrAnnotationImage hdrImage:v30 imageMetadata:Mutable imageOptions:options];
        }

        else
        {
          [(PPKImageWriter *)self addHDRImageToImageDestination:v40 hdrImage:v30 imageMetadata:Mutable imageOptions:options];
        }
      }

      else
      {
        identifier = [*MEMORY[0x1E6982E00] identifier];
        v49 = [(__CFString *)typeCopy isEqualToString:identifier];

        if (v49)
        {
          [(PPKImageWriter *)self addSDRHEICImageToImageDestination:v40 sdrImage:v30 imageMetadata:Mutable imageOptions:options];
        }

        else
        {
          CGImageDestinationAddImageAndMetadata(v40, v30, Mutable, options);
        }
      }

      v35 = CGImageDestinationFinalize(v40);
      if (!v35)
      {
        v50 = +[PPKImageWriter log];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D38C4000, v50, OS_LOG_TYPE_DEFAULT, "CGImageDestinationFinalize failed.", buf, 2u);
        }
      }

      CFRelease(v40);
    }

    else
    {
      v34 = +[PPKImageWriter log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D38C4000, v34, OS_LOG_TYPE_DEFAULT, "Failed to create CGImageDestinationRef.", buf, 2u);
      }

      v35 = 0;
    }

    v29 = ImageAtIndex;
  }

  else
  {
    v34 = +[PPKImageWriter log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D38C4000, v34, OS_LOG_TYPE_DEFAULT, "Failed to create a CGImageRef.", buf, 2u);
    }

    v30 = 0;
    v35 = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (error)
  {
    v51 = v35;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
  }

  return v35;
}

- (void)writeUsingBaseImageData:(uint64_t)data annotationImage:(uint64_t)image sdrAnnotationImage:(uint64_t)annotationImage asImageOfType:(uint64_t)type toConsumer:(uint64_t)consumer annotationMetadata:modifiedMetadataHandler:encryptPrivateMetadata:error:
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_0(result, a2, data, image, annotationImage, type, consumer);
  }

  return result;
}

- (id)encodedModelFromData:(int)data encrypt:
{
  v5 = a2;
  if (self)
  {
    if (data)
    {
      v6 = +[PPKPayloadEncryption sharedInstance];
      v7 = [(PPKPayloadEncryption *)v6 encryptData:v5];

      v5 = v7;
    }

    v5 = v5;
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addGainMapImageToImageDestination:(CGImage *)destination sdrImage:(CGImage *)image hdrImage:(const CGImageMetadata *)hdrImage imageMetadata:(void *)metadata imageOptions:
{
  metadataCopy = metadata;
  if (self)
  {
    v23 = metadataCopy;
    if (metadataCopy)
    {
      dictionary = [metadataCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = dictionary;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v15 = MEMORY[0x1E695E118];
    [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D300]];
    [dictionary2 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696D200]];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [dictionary2 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696D2E0]];

    [dictionary2 setObject:*MEMORY[0x1E695F0B8] forKeyedSubscript:*MEMORY[0x1E696D2D8]];
    v17 = *MEMORY[0x1E696D338];
    [dictionary2 setObject:&unk_1F4F83328 forKeyedSubscript:*MEMORY[0x1E696D338]];
    v18 = *MEMORY[0x1E696D310];
    [v13 setObject:dictionary2 forKeyedSubscript:*MEMORY[0x1E696D310]];
    if (destination)
    {
      imageCopy = destination;
    }

    else
    {
      imageCopy = image;
    }

    CGImageDestinationAddImageAndMetadata(a2, imageCopy, hdrImage, v13);
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary3 setObject:*MEMORY[0x1E696D318] forKeyedSubscript:*MEMORY[0x1E696D308]];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [dictionary4 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696D2E8]];

    [dictionary4 setObject:&unk_1F4F832E8 forKeyedSubscript:*MEMORY[0x1E696D2F0]];
    [dictionary4 setObject:*MEMORY[0x1E695F0C8] forKeyedSubscript:*MEMORY[0x1E696D2D0]];
    [dictionary4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D2F8]];
    [dictionary4 setObject:&unk_1F4F83328 forKeyedSubscript:v17];
    [dictionary3 setObject:dictionary4 forKeyedSubscript:v18];
    CGImageDestinationAddImage(a2, image, dictionary3);

    metadataCopy = v23;
  }
}

- (void)addHDRImageToImageDestination:(CGImage *)destination hdrImage:(const CGImageMetadata *)image imageMetadata:(void *)metadata imageOptions:
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    metadataCopy = metadata;
    v10 = +[PPKImageWriter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ColorSpace = CGImageGetColorSpace(destination);
      Name = CGColorSpaceGetName(ColorSpace);
      CGImageGetContentHeadroom();
      v14 = 138412546;
      v15 = Name;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&dword_1D38C4000, v10, OS_LOG_TYPE_DEFAULT, "Write HDR image with color space: %@, headroom: %g", &v14, 0x16u);
    }

    [(PPKImageWriter *)self addGainMapImageToImageDestination:a2 sdrImage:0 hdrImage:destination imageMetadata:image imageOptions:metadataCopy];
  }
}

- (void)addSDRHEICImageToImageDestination:(CGImage *)destination sdrImage:(const CGImageMetadata *)image imageMetadata:(void *)metadata imageOptions:
{
  metadataCopy = metadata;
  if (self)
  {
    v13 = metadataCopy;
    if (metadataCopy)
    {
      dictionary = [metadataCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = dictionary;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696E148]];

    [v11 setObject:&unk_1F4F83318 forKeyedSubscript:*MEMORY[0x1E696D338]];
    if (image)
    {
      CGImageDestinationAddImageAndMetadata(a2, destination, image, v11);
    }

    else
    {
      CGImageDestinationAddImage(a2, destination, v11);
    }

    metadataCopy = v13;
  }
}

@end