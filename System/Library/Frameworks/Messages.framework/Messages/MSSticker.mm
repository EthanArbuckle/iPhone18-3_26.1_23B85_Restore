@interface MSSticker
+ (BOOL)_isHEICSupported;
+ (BOOL)_isImageSourceAdaptiveImageGlyph:(CGImageSource *)a3;
+ (CGSize)_frameSizeFromFrameProperties:(id)a3;
+ (MSSticker)stickerWithContentsOfURL:(id)a3 localizedDescription:(id)a4 error:(id *)a5;
+ (id)MSStickerPreviewCacheKeyForSticker:(id)a3;
+ (id)_stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:(id)a3;
+ (id)_stickerRepresentationsForImageFileURL:(id)a3;
- (MSSticker)initWithContentsOfFileURL:(NSURL *)fileURL localizedDescription:(NSString *)localizedDescription error:(NSError *)error;
- (MSSticker)initWithContentsOfURL:(id)a3 data:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7;
- (MSSticker)initWithFileURL:(NSURL *)url identifier:(NSUUID *)identifier localizedDescription:(NSString *)localizedDescription;
- (MSSticker)initWithStickerIdentifier:(id)a3 representations:(id)a4 stickerName:(id)a5 effectType:(int64_t)a6 externalURI:(id)a7 localizedDescription:(id)a8 metadata:(id)a9 attributionInfo:(id)a10;
- (NSString)description;
- (NSURL)animatedImageCacheURL;
- (void)_convertImageFileURLIfNeeded;
- (void)_generateImageData;
- (void)_generateImageDataFromRepresentation:(id)a3;
- (void)_generateImageDataFromURL:(id)a3;
- (void)_generateThumbnail;
- (void)animatedImageCacheURL;
- (void)setStickerEffectType:(unint64_t)a3;
@end

@implementation MSSticker

+ (MSSticker)stickerWithContentsOfURL:(id)a3 localizedDescription:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MSSticker alloc] initWithContentsOfFileURL:v8 localizedDescription:v7 error:a5];

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

    v14 = [(NSURL *)v7 absoluteString];
    externalURI = v9->_externalURI;
    v9->_externalURI = v14;

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

    v16 = [(NSURL *)v8 absoluteString];
    externalURI = v11->_externalURI;
    v11->_externalURI = v16;

    v11->_stickerEffectType = -1;
    metadata = v11->_metadata;
    v11->_metadata = 0;

    attributionInfo = v11->_attributionInfo;
    v11->_attributionInfo = 0;

    objc_storeStrong(&v11->_stickerIdentifier, identifier);
  }

  return v11;
}

- (MSSticker)initWithContentsOfURL:(id)a3 data:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = MSSticker;
  v15 = [(MSSticker *)&v23 init];
  if (v15)
  {
    v16 = [v11 copy];
    imageFileURL = v15->_imageFileURL;
    v15->_imageFileURL = v16;

    objc_storeStrong(&v15->_localizedDescription, a6);
    objc_storeStrong(&v15->_data, a4);
    stickerIdentifier = v15->_stickerIdentifier;
    v15->_stickerIdentifier = 0;

    representations = v15->_representations;
    v15->_representations = 0;

    objc_storeStrong(&v15->_externalURI, a5);
    v15->_stickerEffectType = -1;
    metadata = v15->_metadata;
    v15->_metadata = 0;

    attributionInfo = v15->_attributionInfo;
    v15->_attributionInfo = 0;
  }

  return v15;
}

- (MSSticker)initWithStickerIdentifier:(id)a3 representations:(id)a4 stickerName:(id)a5 effectType:(int64_t)a6 externalURI:(id)a7 localizedDescription:(id)a8 metadata:(id)a9 attributionInfo:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v41.receiver = self;
  v41.super_class = MSSticker;
  v23 = [(MSSticker *)&v41 init];
  if (v23)
  {
    v24 = [v16 copy];
    stickerIdentifier = v23->_stickerIdentifier;
    v23->_stickerIdentifier = v24;

    v26 = [v17 copy];
    representations = v23->_representations;
    v23->_representations = v26;

    v28 = [v18 copy];
    stickerName = v23->_stickerName;
    v23->_stickerName = v28;

    v30 = [v19 copy];
    externalURI = v23->_externalURI;
    v23->_externalURI = v30;

    v32 = [v20 copy];
    localizedDescription = v23->_localizedDescription;
    v23->_localizedDescription = v32;

    imageFileURL = v23->_imageFileURL;
    v23->_imageFileURL = 0;

    data = v23->_data;
    v23->_data = 0;

    v36 = [v21 copy];
    metadata = v23->_metadata;
    v23->_metadata = v36;

    v38 = [v22 copy];
    attributionInfo = v23->_attributionInfo;
    v23->_attributionInfo = v38;

    v23->_stickerEffectType = a6;
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

- (void)setStickerEffectType:(unint64_t)a3
{
  if (self->_stickerEffectType != a3)
  {
    self->_stickerEffectType = a3;
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

+ (BOOL)_isImageSourceAdaptiveImageGlyph:(CGImageSource *)a3
{
  if (CGImageSourceGetCount(a3) == 1)
  {
    return 0;
  }

  v5 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
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

+ (CGSize)_frameSizeFromFrameProperties:(id)a3
{
  v3 = *MEMORY[0x1E696DED8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];

  v8 = [v7 unsignedIntegerValue];
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)_stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:(id)a3
{
  [a1 _frameSizeFromFrameProperties:a3];
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

+ (id)_stickerRepresentationsForImageFileURL:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v18 = 0;
    goto LABEL_58;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [(__CFURL *)v4 path];
  v8 = [v6 imageWithContentsOfFile:v7];

  if (!v8)
  {
    v18 = 0;
    goto LABEL_57;
  }

  isrc = CGImageSourceCreateWithURL(v5, 0);
  Type = CGImageSourceGetType(isrc);
  v10 = Type;
  v11 = MEMORY[0x1E6963860];
  v65 = a1;
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
    v64 = [a1 _isImageSourceAdaptiveImageGlyph:isrc];
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

  a1 = v65;
LABEL_14:
  v18 = [MEMORY[0x1E695DF70] array];
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
      [v18 addObject:v19];
    }

    a1 = v65;
    goto LABEL_20;
  }

  if (v17)
  {
    if ((v13 | [a1 _isHEICSupported] & (v64 ^ 1)))
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

  if (![a1 _isHEICSupported])
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
  v61 = v18;
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
    v32 = [a1 _stickerRepresentationRoleForAdaptiveImageGlyphFrameWithProperties:v31];
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

    [a1 _frameSizeFromFrameProperties:v31];
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
    v40 = [v39 __ms_HEICData];
    if (![v40 length])
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
    [v41 setData:v40];
    [v41 setType:@"public.heic"];
    [v41 setSize:v34, v36];
    [v41 setRole:v32];
    [v61 addObject:v41];
    if (v34 <= v27)
    {
      goto LABEL_36;
    }

    v42 = v40;

    v60 = v42;
    v29 = isrc;
LABEL_37:

    CFRelease(v38);
    v28 = v36;
    v27 = v34;
    a1 = v65;
LABEL_38:

    objc_autoreleasePoolPop(v30);
    ++v26;
  }

  while (v25 != v26);
  v8 = v57;
  v5 = v58;
  v18 = v61;
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
      [v18 addObject:v46];
    }

    a1 = v65;
  }

  if (((v13 | v64) & 1) == 0)
  {
    v50 = objc_alloc_init(MEMORY[0x1E69DD760]);
    v51 = [v8 __ms_PNGData];
    [v50 setData:v51];

    [v50 setType:*v11];
    [v8 size];
    [v50 setSize:?];
    [v50 setRole:*MEMORY[0x1E69DEA80]];
    [v18 addObject:v50];
  }

  if ((v17 & 1) == 0 && [a1 _isHEICSupported])
  {
    v52 = objc_alloc_init(MEMORY[0x1E69DD760]);
    v53 = [v8 __ms_HEICData];
    [v52 setData:v53];

    [v52 setType:@"public.heic"];
    [v8 size];
    [v52 setSize:?];
    [v52 setRole:*MEMORY[0x1E69DEA88]];
    [v18 addObject:v52];
  }

  CFRelease(isrc);
LABEL_57:

LABEL_58:

  return v18;
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
  v3 = [(MSSticker *)self _imageData];

  if (!v3)
  {
    v4 = [(MSSticker *)self imageFileURL];
    if (v4)
    {
      [(MSSticker *)self _generateImageDataFromURL:v4];
    }

    else
    {
      representations = self->_representations;
      if (representations)
      {
        v6 = [(NSArray *)representations firstObject];
        [(MSSticker *)self _generateImageDataFromRepresentation:v6];
      }
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_generateImageDataFromURL:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 __ms_conformsToUTI:*MEMORY[0x1E69637F8]];
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696ABC0];
    if (v4)
    {
      v23 = @"MSStickersErrorStickerInfoKey";
      v24[0] = v4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v6 errorWithDomain:@"com.apple.messages.stickers-error" code:3 userInfo:v7];
    [(MSSticker *)self set_stickerError:v8];

    if (v4)
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
  v13 = [(MSSticker *)self imageFileURL];
  v14 = [v12 initWithURL:v13];

  if (!v14)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v4 path];
    if ([v16 fileExistsAtPath:v17])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = MEMORY[0x1E696ABC0];
    v21 = @"MSStickersErrorStickerInfoKey";
    v22 = v4;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [v19 errorWithDomain:@"com.apple.messages.stickers-error" code:v18 userInfo:v15];
    [(MSSticker *)self set_stickerError:v20];

    goto LABEL_19;
  }

  if (v5)
  {
    [(MSSticker *)self set_imageData:v14];
    v15 = [(MSSticker *)self _imageData];
    [v15 count];
LABEL_19:
  }
}

- (void)_generateImageDataFromRepresentation:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 type];
  if (UTTypeConformsTo(v6, *MEMORY[0x1E69637F8]))
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
    v14 = [v5 data];
    v11 = [v13 initWithData:v14];

    [(MSSticker *)self set_imageData:v11];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [(MSSticker *)self stickerIdentifier];
    if (v11)
    {
      v16 = @"MSStickersErrorStickerInfoKey";
      v3 = [(MSSticker *)self stickerIdentifier];
      v17[0] = v3;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    v15 = [v10 errorWithDomain:@"com.apple.messages.stickers-error" code:3 userInfo:v12];
    [(MSSticker *)self set_stickerError:v15];

    if (v11)
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

+ (id)MSStickerPreviewCacheKeyForSticker:(id)a3
{
  v3 = a3;
  v4 = [v3 stickerIdentifier];

  if (v4)
  {
    v5 = [v3 stickerIdentifier];

    [v5 UUIDString];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v5 = [v3 imageFileURL];

    [v6 stringWithFormat:@"%lu", objc_msgSend(v5, "hash")];
  }
  v7 = ;

  return v7;
}

- (NSURL)animatedImageCacheURL
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] __ms_cachesDirectory];
  v4 = [v3 path];

  v5 = [(NSUUID *)self->_stickerIdentifier UUIDString];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = [(NSURL *)self->_imageFileURL lastPathComponent];
  }

  v7 = v6;
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
  if ([v4 length] && objc_msgSend(v12, "length"))
  {
    v19[0] = v4;
    v19[1] = @"BrowserData";
    v19[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [MEMORY[0x1E696AEC0] pathWithComponents:v13];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v14 stringByDeletingLastPathComponent];
    [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:0];

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