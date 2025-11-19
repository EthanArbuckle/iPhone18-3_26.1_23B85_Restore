@interface PPKImageWriter
+ (id)log;
+ (uint64_t)supportsGainMapForImageDataType:(uint64_t)a1;
+ (uint64_t)supportsHDRForImageDataType:(uint64_t)a1;
- (BOOL)writeUsingBaseImage:(id)a3 annotationImage:(CGImage *)a4 sdrAnnotationImage:(CGImage *)a5 asImageOfType:(id)a6 toConsumer:(CGDataConsumer *)a7 annotationMetadata:(id)a8 modifiedMetadataHandler:(id)a9 encryptPrivateMetadata:(BOOL)a10 error:(id *)a11;
- (id)encodedModelFromData:(int)a3 encrypt:;
- (void)addGainMapImageToImageDestination:(CGImage *)a3 sdrImage:(CGImage *)a4 hdrImage:(const CGImageMetadata *)a5 imageMetadata:(void *)a6 imageOptions:;
- (void)addHDRImageToImageDestination:(CGImage *)a3 hdrImage:(const CGImageMetadata *)a4 imageMetadata:(void *)a5 imageOptions:;
- (void)addSDRHEICImageToImageDestination:(CGImage *)a3 sdrImage:(const CGImageMetadata *)a4 imageMetadata:(void *)a5 imageOptions:;
- (void)writeUsingBaseImageData:(uint64_t)a3 annotationImage:(uint64_t)a4 sdrAnnotationImage:(uint64_t)a5 asImageOfType:(uint64_t)a6 toConsumer:(uint64_t)a7 annotationMetadata:modifiedMetadataHandler:encryptPrivateMetadata:error:;
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

+ (uint64_t)supportsHDRForImageDataType:(uint64_t)a1
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

+ (uint64_t)supportsGainMapForImageDataType:(uint64_t)a1
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

- (BOOL)writeUsingBaseImage:(id)a3 annotationImage:(CGImage *)a4 sdrAnnotationImage:(CGImage *)a5 asImageOfType:(id)a6 toConsumer:(CGDataConsumer *)a7 annotationMetadata:(id)a8 modifiedMetadataHandler:(id)a9 encryptPrivateMetadata:(BOOL)a10 error:(id *)a11
{
  v75[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v63 = a9;
  v17 = &kMetadataEncryptedModelTag;
  if (!a10)
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
    v18 = CGImageSourceCreateWithURL(v14, 0);
  }

  else
  {
    v18 = CGImageSourceCreateWithData(v14, 0);
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
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
    CGImageMetadataRemoveTagWithPath(Mutable, 0, v27);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixPaperKit, name];
    CGImageMetadataRemoveTagWithPath(Mutable, 0, v28);
  }

  v29 = ImageAtIndex;
  if (ImageAtIndex)
  {
    v30 = CGImageRetain(a4);
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

    v39 = CGImageDestinationCreateWithDataConsumer(a7, v15, 1uLL, 0);
    if (v39)
    {
      v40 = v39;
      if (v16)
      {
        consumera = objc_autoreleasePoolPush();
        v59 = [(PPKImageWriter *)self encodedModelFromData:v16 encrypt:a10];
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

      if (v63)
      {
        v63[2]();
      }

      if (v56 && [PPKImageWriter supportsGainMapForImageDataType:v15])
      {
        if (a5)
        {
          [(PPKImageWriter *)self addGainMapImageToImageDestination:v40 sdrImage:a5 hdrImage:v30 imageMetadata:Mutable imageOptions:options];
        }

        else
        {
          [(PPKImageWriter *)self addHDRImageToImageDestination:v40 hdrImage:v30 imageMetadata:Mutable imageOptions:options];
        }
      }

      else
      {
        v48 = [*MEMORY[0x1E6982E00] identifier];
        v49 = [(__CFString *)v15 isEqualToString:v48];

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

  if (a11)
  {
    v51 = v35;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    *a11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
  }

  return v35;
}

- (void)writeUsingBaseImageData:(uint64_t)a3 annotationImage:(uint64_t)a4 sdrAnnotationImage:(uint64_t)a5 asImageOfType:(uint64_t)a6 toConsumer:(uint64_t)a7 annotationMetadata:modifiedMetadataHandler:encryptPrivateMetadata:error:
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_0(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

- (id)encodedModelFromData:(int)a3 encrypt:
{
  v5 = a2;
  if (a1)
  {
    if (a3)
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

- (void)addGainMapImageToImageDestination:(CGImage *)a3 sdrImage:(CGImage *)a4 hdrImage:(const CGImageMetadata *)a5 imageMetadata:(void *)a6 imageOptions:
{
  v11 = a6;
  if (a1)
  {
    v23 = v11;
    if (v11)
    {
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = v12;
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = MEMORY[0x1E695E118];
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D300]];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696D200]];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696D2E0]];

    [v14 setObject:*MEMORY[0x1E695F0B8] forKeyedSubscript:*MEMORY[0x1E696D2D8]];
    v17 = *MEMORY[0x1E696D338];
    [v14 setObject:&unk_1F4F83328 forKeyedSubscript:*MEMORY[0x1E696D338]];
    v18 = *MEMORY[0x1E696D310];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696D310]];
    if (a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a4;
    }

    CGImageDestinationAddImageAndMetadata(a2, v19, a5, v13);
    v20 = [MEMORY[0x1E695DF90] dictionary];
    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v20 setObject:*MEMORY[0x1E696D318] forKeyedSubscript:*MEMORY[0x1E696D308]];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696D2E8]];

    [v21 setObject:&unk_1F4F832E8 forKeyedSubscript:*MEMORY[0x1E696D2F0]];
    [v21 setObject:*MEMORY[0x1E695F0C8] forKeyedSubscript:*MEMORY[0x1E696D2D0]];
    [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D2F8]];
    [v21 setObject:&unk_1F4F83328 forKeyedSubscript:v17];
    [v20 setObject:v21 forKeyedSubscript:v18];
    CGImageDestinationAddImage(a2, a4, v20);

    v11 = v23;
  }
}

- (void)addHDRImageToImageDestination:(CGImage *)a3 hdrImage:(const CGImageMetadata *)a4 imageMetadata:(void *)a5 imageOptions:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a5;
    v10 = +[PPKImageWriter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ColorSpace = CGImageGetColorSpace(a3);
      Name = CGColorSpaceGetName(ColorSpace);
      CGImageGetContentHeadroom();
      v14 = 138412546;
      v15 = Name;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&dword_1D38C4000, v10, OS_LOG_TYPE_DEFAULT, "Write HDR image with color space: %@, headroom: %g", &v14, 0x16u);
    }

    [(PPKImageWriter *)a1 addGainMapImageToImageDestination:a2 sdrImage:0 hdrImage:a3 imageMetadata:a4 imageOptions:v9];
  }
}

- (void)addSDRHEICImageToImageDestination:(CGImage *)a3 sdrImage:(const CGImageMetadata *)a4 imageMetadata:(void *)a5 imageOptions:
{
  v9 = a5;
  if (a1)
  {
    v13 = v9;
    if (v9)
    {
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = v10;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696E148]];

    [v11 setObject:&unk_1F4F83318 forKeyedSubscript:*MEMORY[0x1E696D338]];
    if (a4)
    {
      CGImageDestinationAddImageAndMetadata(a2, a3, a4, v11);
    }

    else
    {
      CGImageDestinationAddImage(a2, a3, v11);
    }

    v9 = v13;
  }
}

@end