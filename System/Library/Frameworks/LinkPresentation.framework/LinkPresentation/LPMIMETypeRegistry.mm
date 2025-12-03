@interface LPMIMETypeRegistry
+ (BOOL)isAudioType:(id)type;
+ (BOOL)isImageType:(id)type;
+ (BOOL)isMediaType:(id)type;
+ (BOOL)isVideoType:(id)type;
+ (BOOL)isWebPageType:(id)type;
+ (id)MIMETypeForUTI:(id)i;
+ (id)UTIForFileExtension:(id)extension;
+ (id)UTIForMIMEType:(id)type;
+ (id)fileExtensionForMIMEType:(id)type;
+ (id)fileExtensionForUTI:(id)i;
@end

@implementation LPMIMETypeRegistry

+ (BOOL)isWebPageType:(id)type
{
  typeCopy = type;
  if ([typeCopy _lp_isEqualIgnoringCase:@"text/html"] & 1) != 0 || (objc_msgSend(typeCopy, "_lp_isEqualIgnoringCase:", @"application/xhtml+xml") & 1) != 0 || (objc_msgSend(typeCopy, "_lp_isEqualIgnoringCase:", @"text/xml"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy _lp_isEqualIgnoringCase:@"application/xml"];
  }

  return v4;
}

+ (BOOL)isImageType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (isImageType__onceToken != -1)
  {
    +[LPMIMETypeRegistry isImageType:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!typeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ([v4 _lp_isEqualIgnoringCase:@"image/x-icon"] & 1) != 0 || (objc_msgSend(v4, "_lp_isEqualIgnoringCase:", @"image/jpg"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 _lp_isEqualToAnyIgnoringCase:isImageType__validImageMIMETypes];
  }

LABEL_9:

  return v5;
}

void __34__LPMIMETypeRegistry_isImageType___block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = isImageType__validImageMIMETypes;
  isImageType__validImageMIMETypes = v0;

  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = CGImageSourceCopyTypeIdentifiers();
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [LPMIMETypeRegistry MIMETypeForUTI:*(*(&v7 + 1) + 8 * v5), v7];
        if (v6)
        {
          [isImageType__validImageMIMETypes addObject:v6];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (BOOL)isVideoType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy && (([typeCopy _lp_hasCaseInsensitivePrefix:@"video/"] & 1) != 0 || (objc_msgSend(v5, "_lp_hasCaseInsensitivePrefix:", @"application/") & 1) != 0))
  {
    v6 = [self isMediaType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isMediaType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (!typeCopy || ([typeCopy _lp_hasCaseInsensitivePrefix:@"video/"] & 1) == 0 && (objc_msgSend(v4, "_lp_hasCaseInsensitivePrefix:", @"audio/") & 1) == 0 && (objc_msgSend(v4, "_lp_hasCaseInsensitivePrefix:", @"application/") & 1) == 0)
  {
    goto LABEL_8;
  }

  if (knownUnavailableMediaMIMETypes_onceToken != -1)
  {
    +[LPMIMETypeRegistry isMediaType:];
  }

  if (([v4 _lp_isEqualToAnyIgnoringCase:knownUnavailableMediaMIMETypes_types] & 1) == 0)
  {
    if (knownAvailableMediaMIMETypes_onceToken != -1)
    {
      +[LPMIMETypeRegistry isMediaType:];
    }

    if ([v4 _lp_isEqualToAnyIgnoringCase:knownAvailableMediaMIMETypes_types])
    {
      v5 = 1;
    }

    else
    {
      if (avFoundationMIMETypes_onceToken != -1)
      {
        +[LPMIMETypeRegistry isMediaType:];
      }

      v5 = [v4 _lp_isEqualToAnyIgnoringCase:avFoundationMIMETypes_types];
    }
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAudioType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    v5 = [typeCopy _lp_hasCaseInsensitivePrefix:@"audio/"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)MIMETypeForUTI:(id)i
{
  iCopy = i;
  if (([(__CFString *)iCopy _lp_isEqualIgnoringCase:@"com.pixar.universal-scene-description-mobile"]& 1) != 0)
  {
    v4 = @"model/vnd.usdz+zip";
  }

  else if (([(__CFString *)iCopy _lp_isEqualIgnoringCase:@"com.apple.watchface"]& 1) != 0)
  {
    v4 = @"application/vnd.apple.watchface";
  }

  else if (([(__CFString *)iCopy _lp_isEqualIgnoringCase:@"com.apple.coreaudio-format"]& 1) != 0)
  {
    v4 = @"audio/x-caf";
  }

  else
  {
    v4 = UTTypeCopyPreferredTagWithClass(iCopy, *MEMORY[0x1E6963718]);
  }

  return v4;
}

+ (id)UTIForMIMEType:(id)type
{
  typeCopy = type;
  if (([(__CFString *)typeCopy _lp_isEqualIgnoringCase:@"application/vnd.apple.watchface"]& 1) != 0)
  {
    PreferredIdentifierForTag = @"com.apple.watchface";
  }

  else if (([(__CFString *)typeCopy _lp_isEqualIgnoringCase:@"image/x-icon"]& 1) != 0)
  {
    PreferredIdentifierForTag = @"com.microsoft.ico";
  }

  else
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], typeCopy, 0);
  }

  return PreferredIdentifierForTag;
}

+ (id)UTIForFileExtension:(id)extension
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], extension, 0);

  return PreferredIdentifierForTag;
}

+ (id)fileExtensionForUTI:(id)i
{
  v3 = UTTypeCopyPreferredTagWithClass(i, *MEMORY[0x1E6963710]);

  return v3;
}

+ (id)fileExtensionForMIMEType:(id)type
{
  typeCopy = type;
  if ([typeCopy _lp_isEqualIgnoringCase:@"application/vnd.apple.watchface"])
  {
    v5 = @"watchface";
  }

  else if ([typeCopy _lp_isEqualIgnoringCase:@"image/x-icon"])
  {
    v5 = @"ico";
  }

  else
  {
    v6 = [self UTIForMIMEType:typeCopy];
    v5 = [self fileExtensionForUTI:v6];
  }

  return v5;
}

@end