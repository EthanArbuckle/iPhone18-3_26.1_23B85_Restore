@interface MFAttachment(Utilities)
+ (BOOL)_isPDF:()Utilities;
+ (id)attachmentElementHTMLStringWithAttributes:()Utilities;
+ (uint64_t)isBasicImageMimeType:()Utilities;
- (BOOL)isCameraRollCompatibleVideo;
- (NSObject)filenameStrippingZipIfNeededUseApplications:()Utilities;
- (__CFString)_imageScalingKeyForImageScale:()Utilities;
- (__CFString)className;
- (double)constrainedWidth;
- (double)imageDimensions;
- (double)imageDimensionsWithData:()Utilities;
- (double)markupSizeForImageScale:()Utilities;
- (id)contentType;
- (id)markupStringForCompositionWithPrependedBlankLine:()Utilities imageScale:useAttachmentElement:;
- (id)markupStringForDisplayWithData:()Utilities allowAttachmentElement:;
- (id)scaledImageToFit:()Utilities saveScaledImage:attachmentContextID:;
- (uint64_t)_imageScale;
- (uint64_t)_isContentTypeDisplayableByMobileMail;
- (uint64_t)imageScalingFlags;
- (uint64_t)isBasicImage;
- (uint64_t)isCalendarFile;
- (uint64_t)isContentCompressed;
- (uint64_t)isDisplayableByWebKit;
- (uint64_t)isDisplayableImage;
- (uint64_t)isDisplayableInline;
- (uint64_t)isMedia;
- (uint64_t)isPDFFile;
- (uint64_t)isRestrictedMIMEType;
- (uint64_t)needsColorspaceConversion;
- (uint64_t)scaledFileSize;
- (uint64_t)scaledFileSizeForScale:()Utilities;
- (void)_contentTypeIdentifierByStrippingZipIfNeeded:()Utilities;
- (void)_setImageScale:()Utilities;
- (void)compressContentsWithCompletion:()Utilities;
- (void)decompressContentsWithCompletion:()Utilities;
- (void)enqueueScaleAttachmentWithCompletionBlock:()Utilities;
- (void)isContentOpenable;
- (void)setImageDimensions:()Utilities;
@end

@implementation MFAttachment(Utilities)

- (void)_contentTypeIdentifierByStrippingZipIfNeeded:()Utilities
{
  if (a3)
  {
    [self filenameStrippingZipIfNeededUseApplications:0];
  }

  else
  {
    [self fileName];
  }
  v4 = ;
  v5 = MEMORY[0x1E695DFF8];
  ef_defaultAllowedCharacterSet = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v7 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:ef_defaultAllowedCharacterSet];
  v8 = [v5 URLWithString:v7];

  inferredMimeType = [self inferredMimeType];
  if (!inferredMimeType)
  {
    inferredMimeType = [self mimeType];
  }

  v10 = v8;
  v11 = inferredMimeType;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v12 = getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr;
  v21 = getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr;
  if (!getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr)
  {
    v13 = QuickLookLibrary();
    v19[3] = dlsym(v13, "QLTypeCopyUTIForURLAndMimeType");
    getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr = v19[3];
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v12)
  {
    v14 = v12(v10, v11);

    v15 = v14;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *soft_QLTypeCopyUTIForURLAndMimeType(NSURL *__strong, NSString *__strong)"}];
    [currentHandler handleFailureInFunction:v17 file:@"MFAttachment+Utilities.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (__CFString)className
{
  isPass = [self isPass];
  if (([self isDisplayableImage] & 1) != 0 || isPass)
  {
    isSinglePagePDFFile = [self isSinglePagePDFFile];
    v5 = @"Apple-mail-imageattach";
    if (isSinglePagePDFFile)
    {
      v5 = @"Apple-mail-pdf";
    }

    v3 = v5;
  }

  else
  {
    v3 = @"Apple-mail-fileattach";
  }

  return v3;
}

- (id)contentType
{
  v1 = MEMORY[0x1E6982C40];
  contentTypeIdentifier = [self contentTypeIdentifier];
  v3 = [v1 typeWithIdentifier:contentTypeIdentifier];

  return v3;
}

- (uint64_t)isRestrictedMIMEType
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"application/atom+xml", @"application/xml", @"application/rss+xml", @"application/x-webarchive", @"application/x-javascript", 0}];
  mimeType = [self mimeType];
  if (mimeType)
  {
    mimeType2 = [self mimeType];
    v5 = [v2 containsObject:mimeType2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isContentCompressed
{
  mimeType = [self mimeType];
  lowercaseString = [mimeType lowercaseString];
  v4 = [lowercaseString isEqualToString:@"application/zip"];

  if (v4)
  {
    return 1;
  }

  contentType = [self contentType];
  v5 = [contentType conformsToType:*MEMORY[0x1E69830D0]];

  return v5;
}

- (void)compressContentsWithCompletion:()Utilities
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69B1610]);
  fetchLocalData = [self fetchLocalData];
  fileName = [self fileName];
  v8 = [v5 initWithContents:fetchLocalData path:fileName];

  archiveDirectory = [MEMORY[0x1E69B1608] archiveDirectory];
  [archiveDirectory setArchiveEntry:v8];
  archive = [MEMORY[0x1E69B1600] archive];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MFAttachment_Utilities__compressContentsWithCompletion___block_invoke;
  v13[3] = &unk_1E806C9C0;
  v11 = v4;
  v16 = v11;
  v12 = archiveDirectory;
  v14 = v12;
  selfCopy = self;
  [archive compressContents:v12 completion:v13];
}

- (void)decompressContentsWithCompletion:()Utilities
{
  v4 = a3;
  archiveDirectory = [MEMORY[0x1E69B1608] archiveDirectory];
  fetchLocalData = [self fetchLocalData];
  [archiveDirectory inputWithData:fetchLocalData];

  archive = [MEMORY[0x1E69B1600] archive];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MFAttachment_Utilities__decompressContentsWithCompletion___block_invoke;
  v10[3] = &unk_1E806C9E8;
  v8 = archiveDirectory;
  v11 = v8;
  v9 = v4;
  selfCopy = self;
  v13 = v9;
  [archive decompressContents:v8 completion:v10];
}

- (uint64_t)isMedia
{
  audiovisualMIMETypes = [MEMORY[0x1E6988168] audiovisualMIMETypes];
  mimeType = [self mimeType];

  if (mimeType)
  {
    mimeType2 = [self mimeType];
    v5 = [audiovisualMIMETypes containsObject:mimeType2];
  }

  else
  {
    fileName = [self fileName];
    pathExtension = [fileName pathExtension];
    mimeType2 = [pathExtension lowercaseString];

    mEMORY[0x1E696AF48] = [MEMORY[0x1E696AF48] sharedMappings];
    v9 = [mEMORY[0x1E696AF48] MIMETypeForExtension:mimeType2];

    v5 = [audiovisualMIMETypes containsObject:v9];
  }

  return v5;
}

- (uint64_t)isPDFFile
{
  v2 = objc_opt_class();
  mimeType = [self mimeType];
  LOBYTE(v2) = [v2 _isPDF:mimeType];

  if (v2)
  {
    return 1;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69AD778]);
  fileName = [self fileName];
  pathExtension = [fileName pathExtension];
  [v5 setPathExtension:pathExtension];

  fileName2 = [self fileName];
  [v5 setFilename:fileName2];

  if (MFGetTypeInfo())
  {
    mimeType2 = [v5 mimeType];
    if (mimeType2)
    {
      mimeType3 = [v5 mimeType];
      v4 = [mimeType3 caseInsensitiveCompare:@"application/pdf"] == 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isCalendarFile
{
  mimeType = [self mimeType];
  v2 = [mimeType isEqualToString:@"text/calendar"];

  return v2;
}

- (uint64_t)_isContentTypeDisplayableByMobileMail
{
  v19[7] = *MEMORY[0x1E69E9840];
  v1 = [self _contentTypeIdentifierByStrippingZipIfNeeded:1];
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:v1];
  v3 = *MEMORY[0x1E6982F10];
  v19[0] = *MEMORY[0x1E6982E18];
  v19[1] = v3;
  v4 = *MEMORY[0x1E69830A8];
  v19[2] = *MEMORY[0x1E6983078];
  v19[3] = v4;
  v19[4] = *MEMORY[0x1E6982F20];
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:*MEMORY[0x1E69B16F8]];
  v19[5] = v5;
  v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:*MEMORY[0x1E69B1700]];
  v19[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([v2 conformsToType:{*(*(&v14 + 1) + 8 * v11), v14}])
        {

          IsPlainText = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  IsPlainText = MFContentTypeIsPlainText(v1);
LABEL_11:

  return IsPlainText;
}

- (void)isContentOpenable
{
  v2 = [self _contentTypeIdentifierByStrippingZipIfNeeded:0];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getQLPreviewControllerSupportsContentTypeSymbolLoc_ptr;
  v11 = getQLPreviewControllerSupportsContentTypeSymbolLoc_ptr;
  if (!getQLPreviewControllerSupportsContentTypeSymbolLoc_ptr)
  {
    v4 = QuickLookLibrary();
    v9[3] = dlsym(v4, "QLPreviewControllerSupportsContentType");
    getQLPreviewControllerSupportsContentTypeSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v3)
  {
    v5 = v3(v2);

    if ((v5 & 1) == 0 && ([self _isContentTypeDisplayableByMobileMail] & 1) == 0)
    {
      [self isMedia];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_QLPreviewControllerSupportsContentType(NSString *__strong)"];
    [currentHandler handleFailureInFunction:v7 file:@"MFAttachment+Utilities.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (BOOL)isCameraRollCompatibleVideo
{
  path = [self path];
  IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(path);

  return IsCompatibleWithSavedPhotosAlbum;
}

- (double)imageDimensionsWithData:()Utilities
{
  v3 = a3;
  v4 = CGImageSourceCreateWithData(v3, 0);
  v5 = v4;
  v6 = *MEMORY[0x1E695F060];
  if (v4)
  {
    if (CGImageSourceGetCount(v4))
    {
      v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
      v8 = v7;
      if (v7)
      {
        [CFDictionaryGetValue(v7 *MEMORY[0x1E696DED8])];
        v10 = v9;
        [CFDictionaryGetValue(v8 *MEMORY[0x1E696DEC8])];
        v12 = v11;
        if ([CFDictionaryGetValue(v8 *MEMORY[0x1E696DE78])] <= 4)
        {
          v6 = v10;
        }

        else
        {
          v6 = v12;
        }

        CFRelease(v8);
      }
    }

    CFRelease(v5);
  }

  return v6;
}

- (void)setImageDimensions:()Utilities
{
  v2 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  [self setMetadataValue:? forKey:?];
}

- (double)imageDimensions
{
  v2 = [self metadataValueForKey:@"_MFImageDimensionsKey"];
  v3 = v2;
  if (v2)
  {
    [v2 CGSizeValue];
    v5 = v4;
  }

  else if ([self isDataAvailableLocally] && objc_msgSend(self, "isDisplayableImage"))
  {
    fetchLocalData = [self fetchLocalData];
    [self imageDimensionsWithData:fetchLocalData];
    v5 = v8;
    v9 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    [self setMetadataValue:v9 forKey:@"_MFImageDimensionsKey"];
  }

  else
  {
    isDisplayableImage = [self isDisplayableImage];
    v5 = *MEMORY[0x1E695F060];
    if ((isDisplayableImage & 1) == 0)
    {
      +[MFAttachmentImageGenerator defaultHeight];
      if (![self isPass])
      {
        v5 = 0.0;
      }
    }
  }

  return v5;
}

- (double)markupSizeForImageScale:()Utilities
{
  [self imageDimensions];
  v7 = v5;
  if (v5 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v9 = 1280.0;
    v10 = 640.0;
    if (a3 != 2)
    {
      v10 = v5;
    }

    if (a3 != 4)
    {
      v9 = v10;
    }

    if (a3 == 1)
    {
      v11 = 320.0;
    }

    else
    {
      v11 = v9;
    }

    if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
    {
      v12 = 728.0;
    }

    else
    {
      [self constrainedWidth];
    }

    if (v11 <= v12)
    {
      v12 = v11;
    }

    if (v12 < v7)
    {
      return v12;
    }
  }

  return v7;
}

- (double)constrainedWidth
{
  _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  [_applicationKeyWindow bounds];
  v2 = v1;

  return v2;
}

- (uint64_t)imageScalingFlags
{
  if (![self isImageFile] || !objc_msgSend(self, "isDataAvailableLocally"))
  {
    return 0;
  }

  fetchLocalData = [self fetchLocalData];
  v3 = fetchLocalData;
  if (fetchLocalData && (v4 = CGImageSourceCreateWithData(fetchLocalData, 0), (v5 = v4) != 0))
  {
    if (CGImageSourceGetCount(v4) <= 1)
    {
      v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
      v6 = v7;
      if (v7)
      {
        [CFDictionaryGetValue(v7 *MEMORY[0x1E696DED8])];
        v9 = v8;
        [CFDictionaryGetValue(v6 *MEMORY[0x1E696DEC8])];
        v11 = v10;
        CFRelease(v6);
        if ([(__CFData *)v3 length]<= 0x60000)
        {
          v6 = 0;
        }

        else
        {
          v12 = v9;
          if (v9 >= v11)
          {
            v13 = v9;
          }

          else
          {
            v13 = v11;
          }

          if (v9 >= v11)
          {
            v12 = v11;
          }

          if (v13 <= 1280.0 && v12 <= 960.0)
          {
            if (v13 <= 640.0 && v12 <= 480.0)
            {
              v6 = v12 > 240.0 || v13 > 320.0;
            }

            else
            {
              v6 = 3;
            }
          }

          else
          {
            v6 = 7;
          }
        }
      }

      if ((CGImageSourceIsColorOptimizedForSharing() & 1) == 0)
      {
        [self setMetadataValue:MEMORY[0x1E695E118] forKey:@"_MFImageNeedsColorspaceConversion"];
      }
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)needsColorspaceConversion
{
  v1 = [self metadataValueForKey:@"_MFImageNeedsColorspaceConversion"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_setImageScale:()Utilities
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self setMetadataValue:? forKey:?];
}

- (__CFString)_imageScalingKeyForImageScale:()Utilities
{
  if (a3 > 4)
  {
    return @"kFullScaleKey";
  }

  else
  {
    return off_1E806CA58[a3];
  }
}

- (uint64_t)scaledFileSizeForScale:()Utilities
{
  v5 = [self _imageScalingKeyForImageScale:?];
  if (v5)
  {
    v6 = [self metadataValueForKey:v5];

    if (!v6)
    {
      v7 = [self scaledImageToFit:a3 saveScaledImage:0 attachmentContextID:0];
    }
  }

  v8 = [self metadataValueForKey:v5];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)scaledImageToFit:()Utilities saveScaledImage:attachmentContextID:
{
  v65[1] = *MEMORY[0x1E69E9840];
  v61 = a5;
  selfCopy = self;
  v9 = [selfCopy _imageScalingKeyForImageScale:a3];
  needsColorspaceConversion = [selfCopy needsColorspaceConversion];
  if (v9)
  {
    v11 = [selfCopy metadataValueForKey:v9];
    if (v11)
    {
      v62 = v11;
      if (!a4)
      {
        v62 = v11;
LABEL_21:
        v26 = selfCopy;
        goto LABEL_71;
      }
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  if (![selfCopy isDisplayableImage])
  {
    goto LABEL_21;
  }

  imageScalingFlags = [selfCopy imageScalingFlags];
  if (!a3 || (imageScalingFlags & a3) == 0)
  {
    decodedFileSize = [selfCopy decodedFileSize];
    if (decodedFileSize)
    {
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = [selfCopy fetchDataSynchronously:0];
      decodedFileSize = [v28 length];

      if (!v9)
      {
LABEL_27:
        data2 = 0;
        v30 = 1;
        goto LABEL_66;
      }
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:decodedFileSize];
    [selfCopy setMetadataValue:v29 forKey:v9];

    goto LABEL_27;
  }

  data2 = [selfCopy fetchDataSynchronously:0];
  v59 = data2;
  if (data2)
  {
    contentTypeIdentifier = [selfCopy contentTypeIdentifier];
    v64 = *MEMORY[0x1E696E118];
    v65[0] = contentTypeIdentifier;
    v58 = contentTypeIdentifier;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v15 = CGImageSourceCreateWithData(data2, v56);
    if (!v15)
    {
      data2 = 0;
      v30 = 1;
      decodedFileSize = 0xAAAAAAAAAAAAAAAALL;
LABEL_64:

      goto LABEL_65;
    }

    v54 = [[MFHardwareJPEGScaler alloc] initWithImageData:data2 imageSource:v15];
    v16 = objc_alloc_init(MEMORY[0x1E69AD698]);
    v57 = v54;
    info = v16;
    context = objc_autoreleasePoolPush();
    v17 = CGImageSourceCopyPropertiesAtIndex(v15, 0, 0);
    v19 = v17;
    switch(a3)
    {
      case 1:
        v31 = 1134559232;
        break;
      case 2:
        v31 = 1142947840;
        break;
      case 4:
        if (!v17)
        {
          v34 = 0;
LABEL_58:

          objc_autoreleasePoolPop(context);
          CFRelease(v15);
          [info done];
          data = [info data];
          decodedFileSize = [data length];

          if (v9)
          {
            v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:decodedFileSize];
            [selfCopy setMetadataValue:v41 forKey:v9];
          }

          if ((v19 & a4) == 1)
          {
            data2 = [info data];
            defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
            data3 = [info data];
            v44 = [defaultManager updateAttachment:selfCopy withNewData:data3];

            [selfCopy _setImageScale:a3];
          }

          else
          {
            data2 = 0;
            v44 = 0;
          }

          v30 = v44 ^ 1;
          goto LABEL_64;
        }

        v51 = CFDictionaryGetValue(v17, *MEMORY[0x1E696DED8]);
        v20 = CFDictionaryGetValue(v19, *MEMORY[0x1E696DEC8]);
        v21 = v51;
        v22 = v20;
        v23 = [v21 compare:v20];
        v24 = v21;
        if (v23 == -1)
        {
          v24 = v22;
        }

        [v24 floatValue];
        *&v25 = *&v25 * 0.5;
        if (*&v25 < 1280.0)
        {
          *&v25 = 1280.0;
        }

        v55 = [MEMORY[0x1E696AD98] numberWithFloat:v25];

        goto LABEL_33;
      default:
        v55 = 0;
        if (!v17)
        {
LABEL_35:
          v52 = 0;
LABEL_36:
          v34 = v55;
          if (v55)
          {
            if (((needsColorspaceConversion | v52) & 1) != 0 || ![(MFHardwareJPEGScaler *)v57 scaleImageToFitLargestDimension:v55 dataConsumer:info])
            {
              if (needsColorspaceConversion)
              {
                v35 = MFLogGeneral();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  LOWORD(buf.putBytes) = 0;
                  _os_log_impl(&dword_1BE819000, v35, OS_LOG_TYPE_INFO, "#Attachments doing color-conversion for wide-gamut image", &buf, 2u);
                }
              }

              buf.putBytes = _DataConsumerPutBytesCallback;
              buf.releaseConsumer = 0;
              v36 = CGDataConsumerCreate(info, &buf);
              if (v36)
              {
                v37 = CGImageSourceCopyProperties(v15, 0);
                v38 = CGImageDestinationCreateWithDataConsumer(v36, v58, 1uLL, v37);
                if (v37)
                {
                  CFRelease(v37);
                }

                if (v38)
                {
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [dictionary setObject:v55 forKey:*MEMORY[0x1E696D328]];
                  if (needsColorspaceConversion)
                  {
                    [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696D350]];
                  }

                  if (v52)
                  {
                    [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696D360]];
                  }

                  CGImageDestinationAddImageFromSource(v38, v15, 0, dictionary);
                  LODWORD(v19) = CGImageDestinationFinalize(v38);
                  CFRelease(v38);
                }

                else
                {
                  LODWORD(v19) = 0;
                }

                CGDataConsumerRelease(v36);
              }

              else
              {
                LODWORD(v19) = 0;
              }
            }

            else
            {
              LODWORD(v19) = 1;
            }

            v34 = v55;
          }

          else
          {
            LODWORD(v19) = 0;
          }

          goto LABEL_58;
        }

LABEL_33:
        v32 = CFDictionaryGetValue(v19, *MEMORY[0x1E696DE30]);
        v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E69867E0]];
        CFRelease(v19);
        v52 = v33 != 0;

        goto LABEL_36;
    }

    LODWORD(v18) = v31;
    v55 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    if (!v19)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v30 = 1;
  decodedFileSize = 0xAAAAAAAAAAAAAAAALL;
LABEL_65:

LABEL_66:
  if (v61 && v30)
  {
    v45 = *&selfCopy[*MEMORY[0x1E69B16B0]];
    mimeType = [selfCopy mimeType];
    fileName = [selfCopy fileName];
    contentID = [selfCopy contentID];
    v26 = [v45 attachmentForData:data2 mimeType:mimeType fileName:fileName contentID:contentID context:v61];

    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:decodedFileSize];
    [v26 setMetadataValue:v49 forKey:v9];

    [v26 _setImageScale:a3];
  }

  else
  {
    v26 = selfCopy;
  }

LABEL_71:

  return v26;
}

- (void)enqueueScaleAttachmentWithCompletionBlock:()Utilities
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = a3;
  queue = [*&self[*MEMORY[0x1E69B16B0]] imageScalingQueue];
  v4 = dispatch_group_create();
  v5 = [self url];
  array = [MEMORY[0x1E695DF70] array];
  imageScalingFlags = [self imageScalingFlags];
  if (imageScalingFlags)
  {
    v8 = &unk_1F3D16050;
  }

  else if ((imageScalingFlags & 2) != 0)
  {
    v8 = &unk_1F3D16068;
  }

  else
  {
    if ((imageScalingFlags & 4) == 0)
    {
      goto LABEL_8;
    }

    v8 = &unk_1F3D16080;
  }

  [array addObject:v8];
LABEL_8:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = array;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v24 + 1) + 8 * v11) unsignedIntegerValue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__MFAttachment_Utilities__enqueueScaleAttachmentWithCompletionBlock___block_invoke;
        block[3] = &unk_1E806C548;
        block[4] = self;
        v22 = v5;
        v23 = unsignedIntegerValue;
        dispatch_group_async(v4, queue, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__MFAttachment_Utilities__enqueueScaleAttachmentWithCompletionBlock___block_invoke_2;
  v18[3] = &unk_1E806CA10;
  v18[4] = self;
  v19 = v5;
  v20 = v15;
  v13 = v15;
  v14 = v5;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v18);
}

- (uint64_t)_imageScale
{
  v1 = [self metadataValueForKey:@"_MFImageScaleSelected"];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (uint64_t)scaledFileSize
{
  _imageScale = [self _imageScale];
  v3 = [self _imageScalingKeyForImageScale:0];
  if (_imageScale)
  {
    v4 = 1;
  }

  else if ((_imageScale & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    if ((_imageScale & 4) == 0)
    {
      goto LABEL_8;
    }

    v4 = 4;
  }

  v5 = [self _imageScalingKeyForImageScale:v4];

  v3 = v5;
LABEL_8:
  if (v3)
  {
    v6 = [self metadataValueForKey:v3];
  }

  else
  {
    v6 = 0;
  }

  integerValue = [v6 integerValue];

  return integerValue;
}

+ (uint64_t)isBasicImageMimeType:()Utilities
{
  v3 = a3;
  if (isBasicImageMimeType__onceToken != -1)
  {
    +[MFAttachment(Utilities) isBasicImageMimeType:];
  }

  v4 = [isBasicImageMimeType__sBasicImageMIMETypes containsObject:v3];

  return v4;
}

+ (BOOL)_isPDF:()Utilities
{
  v3 = a3;
  if (v3)
  {
    if ([@"application/pdf" caseInsensitiveCompare:v3])
    {
      v4 = [@"image/pdf" caseInsensitiveCompare:v3] == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isBasicImage
{
  v2 = objc_opt_class();
  mimeType = [self mimeType];
  v4 = [v2 isBasicImageMimeType:mimeType];

  return v4;
}

- (uint64_t)isDisplayableImage
{
  if ([self isBasicImage])
  {
    return 1;
  }

  mimeType = [self mimeType];
  v4 = [mimeType hasPrefix:@"image"];

  if (v4)
  {
    if ([self isDisplayableByWebKit])
    {
      return 1;
    }
  }

  else
  {
    v2 = 1;
    if ([self _isSinglePagePDFFileFetchLocalData:1])
    {
      return v2;
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E69AD778]);
  fileName = [self fileName];
  pathExtension = [fileName pathExtension];
  [v5 setPathExtension:pathExtension];

  fileName2 = [self fileName];
  [v5 setFilename:fileName2];

  if (MFGetTypeInfo())
  {
    mimeType2 = [v5 mimeType];
    if ([mimeType2 hasPrefix:@"image"])
    {
      v10 = +[MFWebKitMainThread sharedInstance];
      mimeType3 = [v5 mimeType];
      v2 = [v10 dictValueForMimeType:mimeType3] & 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)isDisplayableByWebKit
{
  mimeType = [self mimeType];
  if (mimeType)
  {
    v3 = mimeType;
    v4 = +[MFWebKitMainThread sharedInstance];
    mimeType2 = [self mimeType];
    v6 = [v4 dictValueForMimeType:mimeType2];

    if (v6)
    {
      return 1;
    }
  }

  fileName = [self fileName];
  pathExtension = [fileName pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  v10 = lowercaseString && [lowercaseString length] && ((objc_msgSend(lowercaseString, "isEqualToString:", @"doc") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"xls") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"pdf"));
  return v10;
}

- (uint64_t)isDisplayableInline
{
  v2 = [self metadataValueForKey:@"MFAttachmentDisplayabilityCheckedKey"];
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue)
  {
    v4 = [self metadataValueForKey:@"MFAttachmentIsDisplayableKey"];
    bOOLValue2 = [v4 BOOLValue];
LABEL_7:

    return bOOLValue2;
  }

  if ([self isDisplayableImage])
  {
    goto LABEL_5;
  }

  mimeType = [self mimeType];
  v7 = [mimeType hasSuffix:@"css"];

  if (v7)
  {
    goto LABEL_5;
  }

  if ([self isRestrictedMIMEType] & 1) != 0 || (objc_msgSend(self, "isContentOpenable"))
  {
    goto LABEL_19;
  }

  mimeType2 = [self mimeType];
  if ([mimeType2 hasPrefix:@"application"])
  {
    isDisplayableByWebKit = [self isDisplayableByWebKit];

    if (isDisplayableByWebKit)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v11 = objc_alloc_init(MEMORY[0x1E69AD778]);
  fileName = [self fileName];
  pathExtension = [fileName pathExtension];
  [v11 setPathExtension:pathExtension];

  fileName2 = [self fileName];
  [v11 setFilename:fileName2];

  if (!MFGetTypeInfo() || ([v11 mimeType], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {

    goto LABEL_19;
  }

  v16 = +[MFWebKitMainThread sharedInstance];
  mimeType3 = [v11 mimeType];
  v18 = [v16 dictValueForMimeType:mimeType3];

  if (v18)
  {
LABEL_5:
    bOOLValue2 = 1;
LABEL_6:
    [self setMetadataValue:MEMORY[0x1E695E118] forKey:@"MFAttachmentDisplayabilityCheckedKey"];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue2];
    [self setMetadataValue:v4 forKey:@"MFAttachmentIsDisplayableKey"];
    goto LABEL_7;
  }

LABEL_19:
  isDataAvailableLocally = [self isDataAvailableLocally];
  bOOLValue2 = 0;
  result = 0;
  if (isDataAvailableLocally)
  {
    goto LABEL_6;
  }

  return result;
}

- (NSObject)filenameStrippingZipIfNeededUseApplications:()Utilities
{
  v17[4] = *MEMORY[0x1E69E9840];
  fileName = [self fileName];
  pathExtension = [fileName pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v7 = [lowercaseString isEqualToString:@"zip"];

  if (v7)
  {
    stringByDeletingPathExtension = [fileName stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];
    if (([pathExtension2 isEqualToString:&stru_1F3CF3758] & 1) == 0)
    {
      if (a3)
      {
        v10 = [MEMORY[0x1E6963658] documentProxyForName:stringByDeletingPathExtension type:0 MIMEType:0];
        v17[0] = 0;
        v11 = [v10 applicationsAvailableForOpeningWithError:v17];
        v12 = v17[0];
        v13 = v12;
        if (v11 || !v12)
        {
          if (![v11 count])
          {
LABEL_12:

            goto LABEL_13;
          }

          v14 = fileName;
          fileName = stringByDeletingPathExtension;
        }

        else
        {
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [v13 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            [MFAttachment(Utilities) filenameStrippingZipIfNeededUseApplications:];
          }
        }

        goto LABEL_12;
      }

      v15 = stringByDeletingPathExtension;

      fileName = v15;
    }

LABEL_13:
  }

  return fileName;
}

- (id)markupStringForCompositionWithPrependedBlankLine:()Utilities imageScale:useAttachmentElement:
{
  contentID = [self contentID];
  contentID2 = [self contentID];
  v11 = MFCreateURLForContentID();

  if (a5 && ([self isDisplayableImage] & 1) == 0)
  {
    decodedFileSize = [self decodedFileSize];
    if (!decodedFileSize)
    {
      decodedFileSize = [self encodedFileSize];
    }

    fileName = [self fileName];
    ef_stringByEscapingForXML = [fileName ef_stringByEscapingForXML];

    v29 = MEMORY[0x1E696AEC0];
    mimeType = [self mimeType];
    className = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:decodedFileSize];
    v26 = [v29 stringWithFormat:@"<ATTACHMENT SRC=%@ ID=%@ TITLE=%@ TYPE=%@ SUBTITLE=%@>", v11, contentID, ef_stringByEscapingForXML, mimeType, className];
  }

  else
  {
    [self markupSizeForImageScale:a4];
    v13 = v12;
    v15 = v14;
    if (([self isDisplayableImage] & 1) != 0 || (v13 == *MEMORY[0x1E695F060] ? (v16 = v15 == *(MEMORY[0x1E695F060] + 8)) : (v16 = 0), v16))
    {
      ef_stringByEscapingForXML = &stru_1F3CF3758;
    }

    else
    {
      v17 = [MEMORY[0x1E696AD60] stringWithString:@" "];
      ef_stringByEscapingForXML = v17;
      if (v13 > 0.00000011920929)
      {
        [(__CFString *)v17 appendFormat:@"WIDTH=%d %@=", v13, @"X-APPLE-ORIGINAL-WIDTH"];
      }

      if (v15 > 0.00000011920929)
      {
        [(__CFString *)ef_stringByEscapingForXML appendFormat:@"HEIGHT=%d %@=", v15, @"X-APPLE-ORIGINAL-HEIGHT"];
      }
    }

    mimeType = &stru_1F3CF3758;
    if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
    {
      mimeType2 = [self mimeType];
      v21 = [mimeType2 isEqualToString:@"application/pdf"];

      v22 = @" background-color: white;";
      if (!v21)
      {
        v22 = &stru_1F3CF3758;
      }

      v23 = @" max-width: 100%";
      if (!v21)
      {
        v23 = &stru_1F3CF3758;
      }

      mimeType = [MEMORY[0x1E696AEC0] stringWithFormat:@" STYLE=padding:0px 1px 1px 0px%@%@", v22, v23];;
    }

    v24 = MEMORY[0x1E696AEC0];
    className = [self className];
    v26 = [v24 stringWithFormat:@"<IMG SRC=%@ CLASS=%@ ID=%@%@%@>", v11, className, contentID, ef_stringByEscapingForXML, mimeType];
  }

  v30 = v26;

  if (a3 && [v30 length])
  {
    v31 = [@"<BR><BR>" stringByAppendingString:v30];

    v30 = v31;
  }

  return v30;
}

- (id)markupStringForDisplayWithData:()Utilities allowAttachmentElement:
{
  v45 = *MEMORY[0x1E69E9840];
  contentID = [self contentID];
  isDataAvailableLocally = [self isDataAvailableLocally];
  isDisplayableInline = [self isDisplayableInline];
  hasCalendarMetadata = [self hasCalendarMetadata];
  if (isDisplayableInline)
  {
    v11 = a3 ? isDataAvailableLocally : 0;
    if ((v11 | hasCalendarMetadata) == 1)
    {
      v12 = &stru_1F3CF3758;
      if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
      {
        mimeType = [self mimeType];
        v14 = [mimeType isEqualToString:@"application/pdf"];

        v15 = @" max-width: 100%";
        if (!v14)
        {
          v15 = &stru_1F3CF3758;
        }

        v16 = @" background-color: white;";
        if (!v14)
        {
          v16 = &stru_1F3CF3758;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" STYLE=padding:1px 0px 1px 0px%@%@", v16, v15];;
      }

      v17 = MFCreateURLForContentID();
      v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"<img src=%@ id=%@", v17, contentID];
      if ([(__CFString *)v12 length])
      {
        [v18 appendString:v12];
      }

      if ([&stru_1F3CF3758 length])
      {
        [v18 appendString:&stru_1F3CF3758];
      }

      [v18 appendString:@">"];

      goto LABEL_38;
    }
  }

  if (!a4)
  {
    v18 = 0;
    goto LABEL_38;
  }

  defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
  v20 = [self url];
  v21 = [defaultManager attachmentForURL:v20 error:0];

  v22 = [self filenameStrippingZipIfNeededUseApplications:1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:contentID forKeyedSubscript:@"id"];
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"---";
  }

  [dictionary setObject:v24 forKeyedSubscript:@"title"];
  v25 = [self attachmentContentTypeForFileName:v22];
  [dictionary setObject:v25 forKeyedSubscript:@"type"];

  if (![v21 isDataAvailableLocally] || !objc_msgSend(self, "isPass"))
  {
    v26 = 0;
    goto LABEL_34;
  }

  v40 = 0;
  v26 = [v21 passWithError:&v40];
  v27 = v40;
  if (v26)
  {
    localizedName = [v26 localizedName];

    if (localizedName)
    {
      localizedName2 = [v26 localizedName];
      [dictionary setObject:localizedName2 forKeyedSubscript:@"title"];
    }

    organizationName = [v26 organizationName];

    if (!organizationName)
    {
      goto LABEL_33;
    }

    organizationName2 = [v26 organizationName];
    [dictionary setObject:organizationName2 forKeyedSubscript:@"subtitle"];
  }

  else
  {
    organizationName2 = MFLogGeneral();
    if (os_log_type_enabled(organizationName2, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v27 localizedDescription];
      userInfo = [v27 userInfo];
      v38 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      *buf = 138412546;
      v42 = localizedDescription;
      v43 = 2112;
      v44 = v38;
      _os_log_error_impl(&dword_1BE819000, organizationName2, OS_LOG_TYPE_ERROR, "#Attachments Error creating pass [%@] [%@]", buf, 0x16u);
    }
  }

LABEL_33:
LABEL_34:
  decodedFileSize = [self decodedFileSize];
  if (decodedFileSize || (decodedFileSize = [self encodedFileSize]) != 0)
  {
    v33 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:decodedFileSize];
    [dictionary setObject:v33 forKeyedSubscript:@"subtitle"];
  }

  v18 = [objc_opt_class() attachmentElementHTMLStringWithAttributes:dictionary];

LABEL_38:
  v34 = MFLogGeneral();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    fileName = [self fileName];
    *buf = 138412546;
    v42 = fileName;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_1BE819000, v34, OS_LOG_TYPE_INFO, "#Attachments Attachment %@ translates to HTML:%@", buf, 0x16u);
  }

  return v18;
}

+ (id)attachmentElementHTMLStringWithAttributes:()Utilities
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [a3 mutableCopy];
  v10[0] = @"---";
  v9[0] = @"action";
  v9[1] = @"_mf_downloadingStatus";
  v4 = MFLookupLocalizedString();
  v10[1] = v4;
  v9[2] = @"_mf_downloadableStatus";
  v5 = MFLookupLocalizedString();
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  [v3 addEntriesFromDictionary:v6];
  v7 = [MEMORY[0x1E699B7D0] htmlSnippetWithTag:@"attachment" includeTrailingTag:1 attributes:v3];

  return v7;
}

- (void)filenameStrippingZipIfNeededUseApplications:()Utilities .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2(&dword_1BE819000, "#Attachments Error retriving applications for %@: %{public}@", v4, v5);
}

@end