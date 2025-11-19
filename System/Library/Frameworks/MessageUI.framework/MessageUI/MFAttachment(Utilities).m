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
    [a1 filenameStrippingZipIfNeededUseApplications:0];
  }

  else
  {
    [a1 fileName];
  }
  v4 = ;
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v7 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v6];
  v8 = [v5 URLWithString:v7];

  v9 = [a1 inferredMimeType];
  if (!v9)
  {
    v9 = [a1 mimeType];
  }

  v10 = v8;
  v11 = v9;
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
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *soft_QLTypeCopyUTIForURLAndMimeType(NSURL *__strong, NSString *__strong)"}];
    [v16 handleFailureInFunction:v17 file:@"MFAttachment+Utilities.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (__CFString)className
{
  v2 = [a1 isPass];
  if (([a1 isDisplayableImage] & 1) != 0 || v2)
  {
    v4 = [a1 isSinglePagePDFFile];
    v5 = @"Apple-mail-imageattach";
    if (v4)
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
  v2 = [a1 contentTypeIdentifier];
  v3 = [v1 typeWithIdentifier:v2];

  return v3;
}

- (uint64_t)isRestrictedMIMEType
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"application/atom+xml", @"application/xml", @"application/rss+xml", @"application/x-webarchive", @"application/x-javascript", 0}];
  v3 = [a1 mimeType];
  if (v3)
  {
    v4 = [a1 mimeType];
    v5 = [v2 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isContentCompressed
{
  v2 = [a1 mimeType];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"application/zip"];

  if (v4)
  {
    return 1;
  }

  v6 = [a1 contentType];
  v5 = [v6 conformsToType:*MEMORY[0x1E69830D0]];

  return v5;
}

- (void)compressContentsWithCompletion:()Utilities
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69B1610]);
  v6 = [a1 fetchLocalData];
  v7 = [a1 fileName];
  v8 = [v5 initWithContents:v6 path:v7];

  v9 = [MEMORY[0x1E69B1608] archiveDirectory];
  [v9 setArchiveEntry:v8];
  v10 = [MEMORY[0x1E69B1600] archive];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MFAttachment_Utilities__compressContentsWithCompletion___block_invoke;
  v13[3] = &unk_1E806C9C0;
  v11 = v4;
  v16 = v11;
  v12 = v9;
  v14 = v12;
  v15 = a1;
  [v10 compressContents:v12 completion:v13];
}

- (void)decompressContentsWithCompletion:()Utilities
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B1608] archiveDirectory];
  v6 = [a1 fetchLocalData];
  [v5 inputWithData:v6];

  v7 = [MEMORY[0x1E69B1600] archive];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MFAttachment_Utilities__decompressContentsWithCompletion___block_invoke;
  v10[3] = &unk_1E806C9E8;
  v8 = v5;
  v11 = v8;
  v9 = v4;
  v12 = a1;
  v13 = v9;
  [v7 decompressContents:v8 completion:v10];
}

- (uint64_t)isMedia
{
  v2 = [MEMORY[0x1E6988168] audiovisualMIMETypes];
  v3 = [a1 mimeType];

  if (v3)
  {
    v4 = [a1 mimeType];
    v5 = [v2 containsObject:v4];
  }

  else
  {
    v6 = [a1 fileName];
    v7 = [v6 pathExtension];
    v4 = [v7 lowercaseString];

    v8 = [MEMORY[0x1E696AF48] sharedMappings];
    v9 = [v8 MIMETypeForExtension:v4];

    v5 = [v2 containsObject:v9];
  }

  return v5;
}

- (uint64_t)isPDFFile
{
  v2 = objc_opt_class();
  v3 = [a1 mimeType];
  LOBYTE(v2) = [v2 _isPDF:v3];

  if (v2)
  {
    return 1;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v6 = [a1 fileName];
  v7 = [v6 pathExtension];
  [v5 setPathExtension:v7];

  v8 = [a1 fileName];
  [v5 setFilename:v8];

  if (MFGetTypeInfo())
  {
    v9 = [v5 mimeType];
    if (v9)
    {
      v10 = [v5 mimeType];
      v4 = [v10 caseInsensitiveCompare:@"application/pdf"] == 0;
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
  v1 = [a1 mimeType];
  v2 = [v1 isEqualToString:@"text/calendar"];

  return v2;
}

- (uint64_t)_isContentTypeDisplayableByMobileMail
{
  v19[7] = *MEMORY[0x1E69E9840];
  v1 = [a1 _contentTypeIdentifierByStrippingZipIfNeeded:1];
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
  v2 = [a1 _contentTypeIdentifierByStrippingZipIfNeeded:0];
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

    if ((v5 & 1) == 0 && ([a1 _isContentTypeDisplayableByMobileMail] & 1) == 0)
    {
      [a1 isMedia];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_QLPreviewControllerSupportsContentType(NSString *__strong)"];
    [v6 handleFailureInFunction:v7 file:@"MFAttachment+Utilities.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (BOOL)isCameraRollCompatibleVideo
{
  v1 = [a1 path];
  IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(v1);

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
  [a1 setMetadataValue:? forKey:?];
}

- (double)imageDimensions
{
  v2 = [a1 metadataValueForKey:@"_MFImageDimensionsKey"];
  v3 = v2;
  if (v2)
  {
    [v2 CGSizeValue];
    v5 = v4;
  }

  else if ([a1 isDataAvailableLocally] && objc_msgSend(a1, "isDisplayableImage"))
  {
    v7 = [a1 fetchLocalData];
    [a1 imageDimensionsWithData:v7];
    v5 = v8;
    v9 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    [a1 setMetadataValue:v9 forKey:@"_MFImageDimensionsKey"];
  }

  else
  {
    v10 = [a1 isDisplayableImage];
    v5 = *MEMORY[0x1E695F060];
    if ((v10 & 1) == 0)
    {
      +[MFAttachmentImageGenerator defaultHeight];
      if (![a1 isPass])
      {
        v5 = 0.0;
      }
    }
  }

  return v5;
}

- (double)markupSizeForImageScale:()Utilities
{
  [a1 imageDimensions];
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
      [a1 constrainedWidth];
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
  v0 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  [v0 bounds];
  v2 = v1;

  return v2;
}

- (uint64_t)imageScalingFlags
{
  if (![a1 isImageFile] || !objc_msgSend(a1, "isDataAvailableLocally"))
  {
    return 0;
  }

  v2 = [a1 fetchLocalData];
  v3 = v2;
  if (v2 && (v4 = CGImageSourceCreateWithData(v2, 0), (v5 = v4) != 0))
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
        [a1 setMetadataValue:MEMORY[0x1E695E118] forKey:@"_MFImageNeedsColorspaceConversion"];
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
  v1 = [a1 metadataValueForKey:@"_MFImageNeedsColorspaceConversion"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_setImageScale:()Utilities
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setMetadataValue:? forKey:?];
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
  v5 = [a1 _imageScalingKeyForImageScale:?];
  if (v5)
  {
    v6 = [a1 metadataValueForKey:v5];

    if (!v6)
    {
      v7 = [a1 scaledImageToFit:a3 saveScaledImage:0 attachmentContextID:0];
    }
  }

  v8 = [a1 metadataValueForKey:v5];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

- (id)scaledImageToFit:()Utilities saveScaledImage:attachmentContextID:
{
  v65[1] = *MEMORY[0x1E69E9840];
  v61 = a5;
  v8 = a1;
  v9 = [v8 _imageScalingKeyForImageScale:a3];
  v10 = [v8 needsColorspaceConversion];
  if (v9)
  {
    v11 = [v8 metadataValueForKey:v9];
    if (v11)
    {
      v62 = v11;
      if (!a4)
      {
        v62 = v11;
LABEL_21:
        v26 = v8;
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

  if (![v8 isDisplayableImage])
  {
    goto LABEL_21;
  }

  v12 = [v8 imageScalingFlags];
  if (!a3 || (v12 & a3) == 0)
  {
    v27 = [v8 decodedFileSize];
    if (v27)
    {
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = [v8 fetchDataSynchronously:0];
      v27 = [v28 length];

      if (!v9)
      {
LABEL_27:
        v13 = 0;
        v30 = 1;
        goto LABEL_66;
      }
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [v8 setMetadataValue:v29 forKey:v9];

    goto LABEL_27;
  }

  v13 = [v8 fetchDataSynchronously:0];
  v59 = v13;
  if (v13)
  {
    v14 = [v8 contentTypeIdentifier];
    v64 = *MEMORY[0x1E696E118];
    v65[0] = v14;
    v58 = v14;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v15 = CGImageSourceCreateWithData(v13, v56);
    if (!v15)
    {
      v13 = 0;
      v30 = 1;
      v27 = 0xAAAAAAAAAAAAAAAALL;
LABEL_64:

      goto LABEL_65;
    }

    v54 = [[MFHardwareJPEGScaler alloc] initWithImageData:v13 imageSource:v15];
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
          v40 = [info data];
          v27 = [v40 length];

          if (v9)
          {
            v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
            [v8 setMetadataValue:v41 forKey:v9];
          }

          if ((v19 & a4) == 1)
          {
            v13 = [info data];
            v42 = [MEMORY[0x1E69B15D0] defaultManager];
            v43 = [info data];
            v44 = [v42 updateAttachment:v8 withNewData:v43];

            [v8 _setImageScale:a3];
          }

          else
          {
            v13 = 0;
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
            if (((v10 | v52) & 1) != 0 || ![(MFHardwareJPEGScaler *)v57 scaleImageToFitLargestDimension:v55 dataConsumer:info])
            {
              if (v10)
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
                  v39 = [MEMORY[0x1E695DF90] dictionary];
                  [v39 setObject:v55 forKey:*MEMORY[0x1E696D328]];
                  if (v10)
                  {
                    [v39 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696D350]];
                  }

                  if (v52)
                  {
                    [v39 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696D360]];
                  }

                  CGImageDestinationAddImageFromSource(v38, v15, 0, v39);
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
  v27 = 0xAAAAAAAAAAAAAAAALL;
LABEL_65:

LABEL_66:
  if (v61 && v30)
  {
    v45 = *&v8[*MEMORY[0x1E69B16B0]];
    v46 = [v8 mimeType];
    v47 = [v8 fileName];
    v48 = [v8 contentID];
    v26 = [v45 attachmentForData:v13 mimeType:v46 fileName:v47 contentID:v48 context:v61];

    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [v26 setMetadataValue:v49 forKey:v9];

    [v26 _setImageScale:a3];
  }

  else
  {
    v26 = v8;
  }

LABEL_71:

  return v26;
}

- (void)enqueueScaleAttachmentWithCompletionBlock:()Utilities
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = a3;
  queue = [*&a1[*MEMORY[0x1E69B16B0]] imageScalingQueue];
  v4 = dispatch_group_create();
  v5 = [a1 url];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [a1 imageScalingFlags];
  if (v7)
  {
    v8 = &unk_1F3D16050;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = &unk_1F3D16068;
  }

  else
  {
    if ((v7 & 4) == 0)
    {
      goto LABEL_8;
    }

    v8 = &unk_1F3D16080;
  }

  [v6 addObject:v8];
LABEL_8:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
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

        v12 = [*(*(&v24 + 1) + 8 * v11) unsignedIntegerValue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__MFAttachment_Utilities__enqueueScaleAttachmentWithCompletionBlock___block_invoke;
        block[3] = &unk_1E806C548;
        block[4] = a1;
        v22 = v5;
        v23 = v12;
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
  v18[4] = a1;
  v19 = v5;
  v20 = v15;
  v13 = v15;
  v14 = v5;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v18);
}

- (uint64_t)_imageScale
{
  v1 = [a1 metadataValueForKey:@"_MFImageScaleSelected"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)scaledFileSize
{
  v2 = [a1 _imageScale];
  v3 = [a1 _imageScalingKeyForImageScale:0];
  if (v2)
  {
    v4 = 1;
  }

  else if ((v2 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

    v4 = 4;
  }

  v5 = [a1 _imageScalingKeyForImageScale:v4];

  v3 = v5;
LABEL_8:
  if (v3)
  {
    v6 = [a1 metadataValueForKey:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 integerValue];

  return v7;
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
  v3 = [a1 mimeType];
  v4 = [v2 isBasicImageMimeType:v3];

  return v4;
}

- (uint64_t)isDisplayableImage
{
  if ([a1 isBasicImage])
  {
    return 1;
  }

  v3 = [a1 mimeType];
  v4 = [v3 hasPrefix:@"image"];

  if (v4)
  {
    if ([a1 isDisplayableByWebKit])
    {
      return 1;
    }
  }

  else
  {
    v2 = 1;
    if ([a1 _isSinglePagePDFFileFetchLocalData:1])
    {
      return v2;
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v6 = [a1 fileName];
  v7 = [v6 pathExtension];
  [v5 setPathExtension:v7];

  v8 = [a1 fileName];
  [v5 setFilename:v8];

  if (MFGetTypeInfo())
  {
    v9 = [v5 mimeType];
    if ([v9 hasPrefix:@"image"])
    {
      v10 = +[MFWebKitMainThread sharedInstance];
      v11 = [v5 mimeType];
      v2 = [v10 dictValueForMimeType:v11] & 1;
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
  v2 = [a1 mimeType];
  if (v2)
  {
    v3 = v2;
    v4 = +[MFWebKitMainThread sharedInstance];
    v5 = [a1 mimeType];
    v6 = [v4 dictValueForMimeType:v5];

    if (v6)
    {
      return 1;
    }
  }

  v7 = [a1 fileName];
  v8 = [v7 pathExtension];
  v9 = [v8 lowercaseString];

  v10 = v9 && [v9 length] && ((objc_msgSend(v9, "isEqualToString:", @"doc") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"xls") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"pdf"));
  return v10;
}

- (uint64_t)isDisplayableInline
{
  v2 = [a1 metadataValueForKey:@"MFAttachmentDisplayabilityCheckedKey"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [a1 metadataValueForKey:@"MFAttachmentIsDisplayableKey"];
    v5 = [v4 BOOLValue];
LABEL_7:

    return v5;
  }

  if ([a1 isDisplayableImage])
  {
    goto LABEL_5;
  }

  v6 = [a1 mimeType];
  v7 = [v6 hasSuffix:@"css"];

  if (v7)
  {
    goto LABEL_5;
  }

  if ([a1 isRestrictedMIMEType] & 1) != 0 || (objc_msgSend(a1, "isContentOpenable"))
  {
    goto LABEL_19;
  }

  v9 = [a1 mimeType];
  if ([v9 hasPrefix:@"application"])
  {
    v10 = [a1 isDisplayableByWebKit];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v11 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v12 = [a1 fileName];
  v13 = [v12 pathExtension];
  [v11 setPathExtension:v13];

  v14 = [a1 fileName];
  [v11 setFilename:v14];

  if (!MFGetTypeInfo() || ([v11 mimeType], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {

    goto LABEL_19;
  }

  v16 = +[MFWebKitMainThread sharedInstance];
  v17 = [v11 mimeType];
  v18 = [v16 dictValueForMimeType:v17];

  if (v18)
  {
LABEL_5:
    v5 = 1;
LABEL_6:
    [a1 setMetadataValue:MEMORY[0x1E695E118] forKey:@"MFAttachmentDisplayabilityCheckedKey"];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    [a1 setMetadataValue:v4 forKey:@"MFAttachmentIsDisplayableKey"];
    goto LABEL_7;
  }

LABEL_19:
  v19 = [a1 isDataAvailableLocally];
  v5 = 0;
  result = 0;
  if (v19)
  {
    goto LABEL_6;
  }

  return result;
}

- (NSObject)filenameStrippingZipIfNeededUseApplications:()Utilities
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = [a1 fileName];
  v5 = [v4 pathExtension];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"zip"];

  if (v7)
  {
    v8 = [v4 stringByDeletingPathExtension];
    v9 = [v8 pathExtension];
    if (([v9 isEqualToString:&stru_1F3CF3758] & 1) == 0)
    {
      if (a3)
      {
        v10 = [MEMORY[0x1E6963658] documentProxyForName:v8 type:0 MIMEType:0];
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

          v14 = v4;
          v4 = v8;
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

      v15 = v8;

      v4 = v15;
    }

LABEL_13:
  }

  return v4;
}

- (id)markupStringForCompositionWithPrependedBlankLine:()Utilities imageScale:useAttachmentElement:
{
  v9 = [a1 contentID];
  v10 = [a1 contentID];
  v11 = MFCreateURLForContentID();

  if (a5 && ([a1 isDisplayableImage] & 1) == 0)
  {
    v27 = [a1 decodedFileSize];
    if (!v27)
    {
      v27 = [a1 encodedFileSize];
    }

    v28 = [a1 fileName];
    v18 = [v28 ef_stringByEscapingForXML];

    v29 = MEMORY[0x1E696AEC0];
    v19 = [a1 mimeType];
    v25 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v27];
    v26 = [v29 stringWithFormat:@"<ATTACHMENT SRC=%@ ID=%@ TITLE=%@ TYPE=%@ SUBTITLE=%@>", v11, v9, v18, v19, v25];
  }

  else
  {
    [a1 markupSizeForImageScale:a4];
    v13 = v12;
    v15 = v14;
    if (([a1 isDisplayableImage] & 1) != 0 || (v13 == *MEMORY[0x1E695F060] ? (v16 = v15 == *(MEMORY[0x1E695F060] + 8)) : (v16 = 0), v16))
    {
      v18 = &stru_1F3CF3758;
    }

    else
    {
      v17 = [MEMORY[0x1E696AD60] stringWithString:@" "];
      v18 = v17;
      if (v13 > 0.00000011920929)
      {
        [(__CFString *)v17 appendFormat:@"WIDTH=%d %@=", v13, @"X-APPLE-ORIGINAL-WIDTH"];
      }

      if (v15 > 0.00000011920929)
      {
        [(__CFString *)v18 appendFormat:@"HEIGHT=%d %@=", v15, @"X-APPLE-ORIGINAL-HEIGHT"];
      }
    }

    v19 = &stru_1F3CF3758;
    if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
    {
      v20 = [a1 mimeType];
      v21 = [v20 isEqualToString:@"application/pdf"];

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

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@" STYLE=padding:0px 1px 1px 0px%@%@", v22, v23];;
    }

    v24 = MEMORY[0x1E696AEC0];
    v25 = [a1 className];
    v26 = [v24 stringWithFormat:@"<IMG SRC=%@ CLASS=%@ ID=%@%@%@>", v11, v25, v9, v18, v19];
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
  v7 = [a1 contentID];
  v8 = [a1 isDataAvailableLocally];
  v9 = [a1 isDisplayableInline];
  v10 = [a1 hasCalendarMetadata];
  if (v9)
  {
    v11 = a3 ? v8 : 0;
    if ((v11 | v10) == 1)
    {
      v12 = &stru_1F3CF3758;
      if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
      {
        v13 = [a1 mimeType];
        v14 = [v13 isEqualToString:@"application/pdf"];

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
      v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"<img src=%@ id=%@", v17, v7];
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

  v19 = [MEMORY[0x1E69B15D0] defaultManager];
  v20 = [a1 url];
  v21 = [v19 attachmentForURL:v20 error:0];

  v22 = [a1 filenameStrippingZipIfNeededUseApplications:1];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  [v23 setObject:v7 forKeyedSubscript:@"id"];
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"---";
  }

  [v23 setObject:v24 forKeyedSubscript:@"title"];
  v25 = [a1 attachmentContentTypeForFileName:v22];
  [v23 setObject:v25 forKeyedSubscript:@"type"];

  if (![v21 isDataAvailableLocally] || !objc_msgSend(a1, "isPass"))
  {
    v26 = 0;
    goto LABEL_34;
  }

  v40 = 0;
  v26 = [v21 passWithError:&v40];
  v27 = v40;
  if (v26)
  {
    v28 = [v26 localizedName];

    if (v28)
    {
      v29 = [v26 localizedName];
      [v23 setObject:v29 forKeyedSubscript:@"title"];
    }

    v30 = [v26 organizationName];

    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = [v26 organizationName];
    [v23 setObject:v31 forKeyedSubscript:@"subtitle"];
  }

  else
  {
    v31 = MFLogGeneral();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v39 = [v27 localizedDescription];
      v37 = [v27 userInfo];
      v38 = [v37 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      *buf = 138412546;
      v42 = v39;
      v43 = 2112;
      v44 = v38;
      _os_log_error_impl(&dword_1BE819000, v31, OS_LOG_TYPE_ERROR, "#Attachments Error creating pass [%@] [%@]", buf, 0x16u);
    }
  }

LABEL_33:
LABEL_34:
  v32 = [a1 decodedFileSize];
  if (v32 || (v32 = [a1 encodedFileSize]) != 0)
  {
    v33 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v32];
    [v23 setObject:v33 forKeyedSubscript:@"subtitle"];
  }

  v18 = [objc_opt_class() attachmentElementHTMLStringWithAttributes:v23];

LABEL_38:
  v34 = MFLogGeneral();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [a1 fileName];
    *buf = 138412546;
    v42 = v35;
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