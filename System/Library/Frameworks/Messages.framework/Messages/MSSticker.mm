@interface MSSticker
+ (BOOL)_isHEICSupported;
+ (BOOL)_isImageSourceAdaptiveImageGlyph:(CGImageSource *)glyph;
+ (CGSize)_frameSizeFromFrameProperties:(id)properties;
+ (MSSticker)stickerWithContentsOfURL:(id)l localizedDescription:(id)description error:(id *)error;
+ (id)MSStickerPreviewCacheKeyForSticker:(id)sticker;
+ (id)_stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:(id)properties;
+ (id)_stickerRepresentationsForImageFileURL:(id)l;
- (MSSticker)initWithContentsOfFileURL:(NSURL *)fileURL localizedDescription:(NSString *)localizedDescription error:(NSError *)error;
- (MSSticker)initWithContentsOfURL:(id)l data:(id)data externalURI:(id)i localizedDescription:(id)description error:(id *)error;
- (MSSticker)initWithFileURL:(NSURL *)url identifier:(NSUUID *)identifier localizedDescription:(NSString *)localizedDescription;
- (MSSticker)initWithStickerIdentifier:(id)identifier representations:(id)representations stickerName:(id)name effectType:(int64_t)type externalURI:(id)i localizedDescription:(id)description metadata:(id)metadata attributionInfo:(id)self0;
- (NSString)description;
- (NSURL)animatedImageCacheURL;
- (void)_convertImageFileURLIfNeeded;
- (void)_generateImageData;
- (void)_generateImageDataFromRepresentation:(id)representation;
- (void)_generateImageDataFromURL:(id)l;
- (void)_generateThumbnail;
- (void)animatedImageCacheURL;
- (void)setStickerEffectType:(unint64_t)type;
@end

@implementation MSSticker

+ (MSSticker)stickerWithContentsOfURL:(id)l localizedDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  lCopy = l;
  v9 = [[MSSticker alloc] initWithContentsOfFileURL:lCopy localizedDescription:descriptionCopy error:error];

  return v9;
}

- (MSSticker)initWithContentsOfFileURL:(NSURL *)fileURL localizedDescription:(NSString *)localizedDescription error:(NSError *)error
{
  v7 = fileURL;
  v8 = localizedDescription;
  v19.receiver = self;
  v19.super_class = MSSticker;
  v9 = [(MSSticker *)&v19 init];
  if (v9)
  {
    v10 = [(NSURL *)v7 copy];
    imageFileURL = v9->_imageFileURL;
    v9->_imageFileURL = v10;

    objc_storeStrong(&v9->_localizedDescription, localizedDescription);
    stickerIdentifier = v9->_stickerIdentifier;
    v9->_stickerIdentifier = 0;

    representations = v9->_representations;
    v9->_representations = 0;

    absoluteString = [(NSURL *)v7 absoluteString];
    externalURI = v9->_externalURI;
    v9->_externalURI = absoluteString;

    v9->_stickerEffectType = -1;
    metadata = v9->_metadata;
    v9->_metadata = 0;

    attributionInfo = v9->_attributionInfo;
    v9->_attributionInfo = 0;
  }

  return v9;
}

- (MSSticker)initWithFileURL:(NSURL *)url identifier:(NSUUID *)identifier localizedDescription:(NSString *)localizedDescription
{
  v8 = url;
  v9 = identifier;
  v10 = localizedDescription;
  v21.receiver = self;
  v21.super_class = MSSticker;
  v11 = [(MSSticker *)&v21 init];
  if (v11)
  {
    v12 = [(NSURL *)v8 copy];
    imageFileURL = v11->_imageFileURL;
    v11->_imageFileURL = v12;

    objc_storeStrong(&v11->_localizedDescription, localizedDescription);
    stickerIdentifier = v11->_stickerIdentifier;
    v11->_stickerIdentifier = 0;

    representations = v11->_representations;
    v11->_representations = 0;

    absoluteString = [(NSURL *)v8 absoluteString];
    externalURI = v11->_externalURI;
    v11->_externalURI = absoluteString;

    v11->_stickerEffectType = -1;
    metadata = v11->_metadata;
    v11->_metadata = 0;

    attributionInfo = v11->_attributionInfo;
    v11->_attributionInfo = 0;

    objc_storeStrong(&v11->_stickerIdentifier, identifier);
  }

  return v11;
}

- (MSSticker)initWithContentsOfURL:(id)l data:(id)data externalURI:(id)i localizedDescription:(id)description error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  iCopy = i;
  descriptionCopy = description;
  v23.receiver = self;
  v23.super_class = MSSticker;
  v15 = [(MSSticker *)&v23 init];
  if (v15)
  {
    v16 = [lCopy copy];
    imageFileURL = v15->_imageFileURL;
    v15->_imageFileURL = v16;

    objc_storeStrong(&v15->_localizedDescription, description);
    objc_storeStrong(&v15->_data, data);
    stickerIdentifier = v15->_stickerIdentifier;
    v15->_stickerIdentifier = 0;

    representations = v15->_representations;
    v15->_representations = 0;

    objc_storeStrong(&v15->_externalURI, i);
    v15->_stickerEffectType = -1;
    metadata = v15->_metadata;
    v15->_metadata = 0;

    attributionInfo = v15->_attributionInfo;
    v15->_attributionInfo = 0;
  }

  return v15;
}

- (MSSticker)initWithStickerIdentifier:(id)identifier representations:(id)representations stickerName:(id)name effectType:(int64_t)type externalURI:(id)i localizedDescription:(id)description metadata:(id)metadata attributionInfo:(id)self0
{
  identifierCopy = identifier;
  representationsCopy = representations;
  nameCopy = name;
  iCopy = i;
  descriptionCopy = description;
  metadataCopy = metadata;
  infoCopy = info;
  v41.receiver = self;
  v41.super_class = MSSticker;
  v23 = [(MSSticker *)&v41 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    stickerIdentifier = v23->_stickerIdentifier;
    v23->_stickerIdentifier = v24;

    v26 = [representationsCopy copy];
    representations = v23->_representations;
    v23->_representations = v26;

    v28 = [nameCopy copy];
    stickerName = v23->_stickerName;
    v23->_stickerName = v28;

    v30 = [iCopy copy];
    externalURI = v23->_externalURI;
    v23->_externalURI = v30;

    v32 = [descriptionCopy copy];
    localizedDescription = v23->_localizedDescription;
    v23->_localizedDescription = v32;

    imageFileURL = v23->_imageFileURL;
    v23->_imageFileURL = 0;

    data = v23->_data;
    v23->_data = 0;

    v36 = [metadataCopy copy];
    metadata = v23->_metadata;
    v23->_metadata = v36;

    v38 = [infoCopy copy];
    attributionInfo = v23->_attributionInfo;
    v23->_attributionInfo = v38;

    v23->_stickerEffectType = type;
  }

  return v23;
}

- (NSString)description
{
  representations = self->_representations;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  v8 = 8;
  if (representations)
  {
    v9 = @"<%@-<%p> imageFileURL %@ localizedDescription %@>";
  }

  else
  {
    v8 = 56;
    v9 = @"<%@-<%p> representations %@ localizedDescription %@>";
  }

  v10 = [v4 stringWithFormat:v9, v6, self, *(&self->super.isa + v8), self->_localizedDescription];

  return v10;
}

- (void)setStickerEffectType:(unint64_t)type
{
  if (self->_stickerEffectType != type)
  {
    self->_stickerEffectType = type;
  }
}

- (void)_convertImageFileURLIfNeeded
{
  if (self->_imageFileURL)
  {
    if (!self->_representations)
    {
      v3 = [objc_opt_class() _stickerRepresentationsForImageFileURL:self->_imageFileURL];
      representations = self->_representations;
      self->_representations = v3;

      if (!self->_externalURI)
      {
        self->_externalURI = [(NSURL *)self->_imageFileURL absoluteString];

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

+ (BOOL)_isImageSourceAdaptiveImageGlyph:(CGImageSource *)glyph
{
  if (CGImageSourceGetCount(glyph) == 1)
  {
    return 0;
  }

  v5 = CGImageSourceCopyPropertiesAtIndex(glyph, 0, 0);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DF30]];
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v7 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGSize)_frameSizeFromFrameProperties:(id)properties
{
  v3 = *MEMORY[0x1E696DED8];
  propertiesCopy = properties;
  v5 = [propertiesCopy objectForKeyedSubscript:v3];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];

  unsignedIntegerValue2 = [v7 unsignedIntegerValue];
  v9 = unsignedIntegerValue;
  v10 = unsignedIntegerValue2;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)_stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:(id)properties
{
  [self _frameSizeFromFrameProperties:properties];
  v5 = v3;
  if (v3 == 40.0 && v4 == 40.0)
  {
    v9 = MEMORY[0x1E69DEAA0];
    goto LABEL_14;
  }

  v7 = v4;
  if (v3 == 64.0 && v4 == 64.0)
  {
    v9 = MEMORY[0x1E69DEAA8];
    goto LABEL_14;
  }

  if (v3 == 96.0 && v4 == 96.0)
  {
    v9 = MEMORY[0x1E69DEAB0];
LABEL_14:
    v10 = *v9;
    goto LABEL_15;
  }

  if (v3 == 160.0 && v4 == 160.0)
  {
    v9 = MEMORY[0x1E69DEA90];
    goto LABEL_14;
  }

  if (v3 == 320.0 && v4 == 320.0)
  {
    v9 = MEMORY[0x1E69DEA98];
    goto LABEL_14;
  }

  v12 = ms_defaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(MSSticker *)v12 _stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:v5, v7];
  }

  v10 = 0;
LABEL_15:

  return v10;
}

+ (id)_stickerRepresentationsForImageFileURL:(id)l
{
  v70 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    array = 0;
    goto LABEL_58;
  }

  v6 = MEMORY[0x1E69DCAB8];
  path = [(__CFURL *)lCopy path];
  v8 = [v6 imageWithContentsOfFile:path];

  if (!v8)
  {
    array = 0;
    goto LABEL_57;
  }

  isrc = CGImageSourceCreateWithURL(v5, 0);
  Type = CGImageSourceGetType(isrc);
  v10 = Type;
  v11 = MEMORY[0x1E6963860];
  selfCopy = self;
  if (!Type)
  {
    v13 = 0;
    v17 = 0;
    v64 = 0;
    v16 = 0;
    v62 = 0;
    goto LABEL_14;
  }

  v12 = CFStringCompare(Type, *MEMORY[0x1E6963860], 0);
  v13 = v12 == kCFCompareEqualTo;
  if (v12 == kCFCompareEqualTo)
  {
    goto LABEL_7;
  }

  if (CFStringCompare(v10, *MEMORY[0x1E69A83F8], 0) == kCFCompareEqualTo)
  {
    v64 = [self _isImageSourceAdaptiveImageGlyph:isrc];
    v13 = 0;
    v16 = 0;
    v62 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  v14 = IMSupportedAnimatedImageUTTypesSortedByPreference();
  v15 = [v14 containsObject:v10];

  if (!v15)
  {
    v13 = 0;
    v17 = 0;
    v64 = 0;
    v16 = 0;
    v62 = 0;
  }

  else
  {
LABEL_7:
    v16 = v12 != kCFCompareEqualTo;
    v62 = IMFileURLIsActuallyAnimated();
    v17 = 0;
    v64 = 0;
  }

  self = selfCopy;
LABEL_14:
  array = [MEMORY[0x1E695DF70] array];
  v59 = v10;
  if (v16)
  {
LABEL_15:
    v19 = objc_alloc_init(MEMORY[0x1E69DD760]);
    v67 = 0;
    v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v67];
    v21 = v67;
    [v19 setData:v20];

    if (!v21)
    {
      v22 = [(__CFString *)v10 copy];
      [v19 setType:v22];

      [v8 size];
      [v19 setSize:?];
      v23 = MEMORY[0x1E69DEA78];
      if (!v62)
      {
        v23 = MEMORY[0x1E69DEA88];
      }

      [v19 setRole:*v23];
      [array addObject:v19];
    }

    self = selfCopy;
    goto LABEL_20;
  }

  if (v17)
  {
    if ((v13 | [self _isHEICSupported] & (v64 ^ 1)))
    {
      goto LABEL_15;
    }

    v13 = 0;
  }

  else if (v13)
  {
    goto LABEL_15;
  }

LABEL_20:
  if (!v64)
  {
    goto LABEL_47;
  }

  if (![self _isHEICSupported])
  {
    goto LABEL_47;
  }

  Count = CGImageSourceGetCount(isrc);
  if (!Count)
  {
    goto LABEL_47;
  }

  v25 = Count;
  v55 = v13;
  v56 = v17;
  v60 = 0;
  v61 = array;
  v57 = v8;
  v58 = v5;
  v26 = 0;
  v27 = *MEMORY[0x1E695F060];
  v28 = *(MEMORY[0x1E695F060] + 8);
  v29 = isrc;
  do
  {
    v30 = objc_autoreleasePoolPush();
    v31 = CGImageSourceCopyPropertiesAtIndex(v29, v26, 0);
    v32 = [self _stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:v31];
    if (![v32 length])
    {
      v39 = ms_defaultLog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buf = 134217984;
      v69 = v26;
      v43 = v39;
      v44 = "Skipping frame %ld with no role";
LABEL_33:
      _os_log_error_impl(&dword_1CADE6000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);
      goto LABEL_38;
    }

    [self _frameSizeFromFrameProperties:v31];
    v34 = v33;
    v36 = v35;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v29, v26, 0);
    if (!ImageAtIndex)
    {
      v39 = ms_defaultLog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buf = 134217984;
      v69 = v26;
      v43 = v39;
      v44 = "Skipping frame %ld due to failure to make CGImage";
      goto LABEL_33;
    }

    v38 = ImageAtIndex;
    v39 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
    __ms_HEICData = [v39 __ms_HEICData];
    if (![__ms_HEICData length])
    {
      v41 = ms_defaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v69 = v26;
        _os_log_error_impl(&dword_1CADE6000, v41, OS_LOG_TYPE_ERROR, "Skipping frame %ld due to failure to convert to HEIC data", buf, 0xCu);
      }

LABEL_36:
      v36 = v28;
      v34 = v27;
      goto LABEL_37;
    }

    v41 = objc_alloc_init(MEMORY[0x1E69DD760]);
    [v41 setData:__ms_HEICData];
    [v41 setType:@"public.heic"];
    [v41 setSize:v34, v36];
    [v41 setRole:v32];
    [v61 addObject:v41];
    if (v34 <= v27)
    {
      goto LABEL_36;
    }

    v42 = __ms_HEICData;

    v60 = v42;
    v29 = isrc;
LABEL_37:

    CFRelease(v38);
    v28 = v36;
    v27 = v34;
    self = selfCopy;
LABEL_38:

    objc_autoreleasePoolPop(v30);
    ++v26;
  }

  while (v25 != v26);
  v8 = v57;
  v5 = v58;
  array = v61;
  v11 = MEMORY[0x1E6963860];
  v13 = v55;
  LOBYTE(v17) = v56;
  if (v60)
  {
    v45 = objc_alloc_init(MEMORY[0x1E69DD760]);
    [v45 setData:v60];
    [v45 setType:@"public.heic"];
    [v45 setSize:{v27, v28}];
    [v45 setRole:*MEMORY[0x1E69DEA88]];
    [v61 insertObject:v45 atIndex:0];
  }

LABEL_47:
  if (v62)
  {
    v46 = objc_alloc_init(MEMORY[0x1E69DD760]);
    v66 = 0;
    v47 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v66];
    v48 = v66;
    [v46 setData:v47];

    if (!v48)
    {
      v49 = [(__CFString *)v59 copy];
      [v46 setType:v49];

      [v8 size];
      [v46 setSize:?];
      [v46 setRole:*MEMORY[0x1E69DEA88]];
      [array addObject:v46];
    }

    self = selfCopy;
  }

  if (((v13 | v64) & 1) == 0)
  {
    v50 = objc_alloc_init(MEMORY[0x1E69DD760]);
    __ms_PNGData = [v8 __ms_PNGData];
    [v50 setData:__ms_PNGData];

    [v50 setType:*v11];
    [v8 size];
    [v50 setSize:?];
    [v50 setRole:*MEMORY[0x1E69DEA80]];
    [array addObject:v50];
  }

  if ((v17 & 1) == 0 && [self _isHEICSupported])
  {
    v52 = objc_alloc_init(MEMORY[0x1E69DD760]);
    __ms_HEICData2 = [v8 __ms_HEICData];
    [v52 setData:__ms_HEICData2];

    [v52 setType:@"public.heic"];
    [v8 size];
    [v52 setSize:?];
    [v52 setRole:*MEMORY[0x1E69DEA88]];
    [array addObject:v52];
  }

  CFRelease(isrc);
LABEL_57:

LABEL_58:

  return array;
}

+ (BOOL)_isHEICSupported
{
  if (_isHEICSupported_onceToken != -1)
  {
    +[MSSticker _isHEICSupported];
  }

  return _isHEICSupported_isSupported;
}

void __29__MSSticker__isHEICSupported__block_invoke()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  _isHEICSupported_isSupported = [(__CFArray *)v0 containsObject:@"public.heic"];
}

- (void)_generateImageData
{
  _imageData = [(MSSticker *)self _imageData];

  if (!_imageData)
  {
    imageFileURL = [(MSSticker *)self imageFileURL];
    if (imageFileURL)
    {
      [(MSSticker *)self _generateImageDataFromURL:imageFileURL];
    }

    else
    {
      representations = self->_representations;
      if (representations)
      {
        firstObject = [(NSArray *)representations firstObject];
        [(MSSticker *)self _generateImageDataFromRepresentation:firstObject];
      }
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_generateImageDataFromURL:(id)l
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [lCopy __ms_conformsToUTI:*MEMORY[0x1E69637F8]];
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696ABC0];
    if (lCopy)
    {
      v23 = @"MSStickersErrorStickerInfoKey";
      v24[0] = lCopy;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v6 errorWithDomain:@"com.apple.messages.stickers-error" code:3 userInfo:v7];
    [(MSSticker *)self set_stickerError:v8];

    if (lCopy)
    {
    }
  }

  CKImageDataClass = getCKImageDataClass();
  v10 = IMLogHandleForCategory();
  v11 = v10;
  if (CKImageDataClass)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MSSticker _generateImageDataFromURL:?];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MSSticker _generateImageDataFromURL:];
  }

  v12 = [CKImageDataClass alloc];
  imageFileURL = [(MSSticker *)self imageFileURL];
  v14 = [v12 initWithURL:imageFileURL];

  if (!v14)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    if ([defaultManager fileExistsAtPath:path])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = MEMORY[0x1E696ABC0];
    v21 = @"MSStickersErrorStickerInfoKey";
    v22 = lCopy;
    _imageData = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [v19 errorWithDomain:@"com.apple.messages.stickers-error" code:v18 userInfo:_imageData];
    [(MSSticker *)self set_stickerError:v20];

    goto LABEL_19;
  }

  if (v5)
  {
    [(MSSticker *)self set_imageData:v14];
    _imageData = [(MSSticker *)self _imageData];
    [_imageData count];
LABEL_19:
  }
}

- (void)_generateImageDataFromRepresentation:(id)representation
{
  v17[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  type = [representationCopy type];
  if (UTTypeConformsTo(type, *MEMORY[0x1E69637F8]))
  {
    CKImageDataClass = getCKImageDataClass();
    v8 = IMLogHandleForCategory();
    v9 = v8;
    if (CKImageDataClass)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [MSSticker _generateImageDataFromRepresentation:?];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MSSticker _generateImageDataFromRepresentation:];
    }

    v13 = [CKImageDataClass alloc];
    data = [representationCopy data];
    stickerIdentifier = [v13 initWithData:data];

    [(MSSticker *)self set_imageData:stickerIdentifier];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    stickerIdentifier = [(MSSticker *)self stickerIdentifier];
    if (stickerIdentifier)
    {
      v16 = @"MSStickersErrorStickerInfoKey";
      stickerIdentifier2 = [(MSSticker *)self stickerIdentifier];
      v17[0] = stickerIdentifier2;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    v15 = [v10 errorWithDomain:@"com.apple.messages.stickers-error" code:3 userInfo:v12];
    [(MSSticker *)self set_stickerError:v15];

    if (stickerIdentifier)
    {
    }
  }
}

- (void)_generateThumbnail
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

+ (id)MSStickerPreviewCacheKeyForSticker:(id)sticker
{
  stickerCopy = sticker;
  stickerIdentifier = [stickerCopy stickerIdentifier];

  if (stickerIdentifier)
  {
    stickerIdentifier2 = [stickerCopy stickerIdentifier];

    [stickerIdentifier2 UUIDString];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    stickerIdentifier2 = [stickerCopy imageFileURL];

    [v6 stringWithFormat:@"%lu", objc_msgSend(stickerIdentifier2, "hash")];
  }
  v7 = ;

  return v7;
}

- (NSURL)animatedImageCacheURL
{
  v19[3] = *MEMORY[0x1E69E9840];
  __ms_cachesDirectory = [MEMORY[0x1E695DFF8] __ms_cachesDirectory];
  path = [__ms_cachesDirectory path];

  uUIDString = [(NSUUID *)self->_stickerIdentifier UUIDString];
  if ([uUIDString length])
  {
    lastPathComponent = uUIDString;
  }

  else
  {
    lastPathComponent = [(NSURL *)self->_imageFileURL lastPathComponent];
  }

  v7 = lastPathComponent;
  CKImageDataClass = getCKImageDataClass();
  v9 = IMLogHandleForCategory();
  v10 = v9;
  if (CKImageDataClass)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(MSSticker *)CKImageDataClass animatedImageCacheURL];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MSSticker animatedImageCacheURL];
  }

  if ([(objc_class *)CKImageDataClass supportsASTC])
  {
    v11 = @"ckanimatedimage";
  }

  else
  {
    v11 = @"cpbitmap";
  }

  v12 = [v7 stringByAppendingPathExtension:v11];
  if ([path length] && objc_msgSend(v12, "length"))
  {
    v19[0] = path;
    v19[1] = @"BrowserData";
    v19[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [MEMORY[0x1E696AEC0] pathWithComponents:v13];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingLastPathComponent = [v14 stringByDeletingLastPathComponent];
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)_stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_1CADE6000, log, OS_LOG_TYPE_ERROR, "Unable to determine role for frame of size %ldx%ld", &v3, 0x16u);
}

- (void)_generateImageDataFromURL:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)_generateImageDataFromURL:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)_generateImageDataFromRepresentation:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)_generateImageDataFromRepresentation:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)animatedImageCacheURL
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

@end