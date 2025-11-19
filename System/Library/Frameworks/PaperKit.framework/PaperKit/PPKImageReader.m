@interface PPKImageReader
+ (id)_privateImageMetadataDescriptors;
+ (id)imageDescriptionFromSource:(uint64_t)a1;
- (id)_readAnnotationsFromDataProvider:(CGDataProvider *)a3;
- (id)_readDataFromTagAtPath:(id)a3 inMetadata:(CGImageMetadata *)a4;
@end

@implementation PPKImageReader

- (id)_readAnnotationsFromDataProvider:(CGDataProvider *)a3
{
  v4 = CGImageSourceCreateWithDataProvider(a3, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CGImageSourceCopyMetadataAtIndex(v4, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixPaperKit, kMetadataEncryptedModelTag];
      v9 = [(PPKImageReader *)self _readDataFromTagAtPath:v8 inMetadata:v7];
      v10 = +[PPKPayloadEncryption sharedInstance];
      v11 = [(PPKPayloadEncryption *)v10 decryptData:v9];

      if (!v11)
      {
        v12 = +[PPKImageWriter log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D38C4000, v12, OS_LOG_TYPE_DEFAULT, "Did not find enc_model, attempting to read unencrypted model", buf, 2u);
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", kMetadataPrefixPaperKit, kMetadataModelTag];
        v11 = [(PPKImageReader *)self _readDataFromTagAtPath:v13 inMetadata:v7];
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_readDataFromTagAtPath:(id)a3 inMetadata:(CGImageMetadata *)a4
{
  v4 = CGImageMetadataCopyTagWithPath(a4, 0, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CGImageMetadataTagCopyValue(v4);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID())
      {
        v9 = MEMORY[0x1E695DEF0];
        v10 = v7;
        v11 = [[v9 alloc] initWithBase64EncodedString:v10 options:0];
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_privateImageMetadataDescriptors
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = kMetadataPrefixAnnotationKit;
  v7[0] = kMetadataEncryptedBaseImageModelTag;
  v7[1] = kMetadataBaseImageTag;
  v7[2] = kMetadataEncryptedModelTag;
  v7[3] = kMetadataModelTag;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[0] = v2;
  v8[1] = kMetadataPrefixPaperKit;
  v6[0] = kMetadataEncryptedModelTag;
  v6[1] = kMetadataModelTag;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v4;
}

+ (id)imageDescriptionFromSource:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    err = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v3 = getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr;
    v16 = getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr;
    if (!getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v18 = __getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke;
      v19 = &unk_1E845C110;
      v20 = &v13;
      __getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke(&buf);
      v3 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v3)
    {
      +[PPKImageReader imageDescriptionFromSource:];
      __break(1u);
    }

    a2 = v3(a2, &err);
    if (err)
    {
      v4 = CFErrorCopyDescription(err);
      v5 = [(__CFString *)v4 length]== 0;
      v6 = +[PPKImageWriter log];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          LOWORD(buf) = 0;
          v8 = "Error reading image source";
          v9 = v6;
          v10 = 2;
          goto LABEL_11;
        }
      }

      else if (v7)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        v8 = "Error reading image source: %@";
        v9 = v6;
        v10 = 12;
LABEL_11:
        _os_log_impl(&dword_1D38C4000, v9, OS_LOG_TYPE_DEFAULT, v8, &buf, v10);
      }

      CFRelease(err);
    }
  }

  return a2;
}

+ (void)imageDescriptionFromSource:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  [PPKPDFThumbnailsCollectionViewBase configureCell:v0 withPage:v1 indexPath:?];
}

@end