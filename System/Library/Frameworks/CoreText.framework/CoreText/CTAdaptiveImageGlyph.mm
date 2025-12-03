@interface CTAdaptiveImageGlyph
+ (BOOL)_readsAdaptiveImageGlyphFromDocumentFormats;
+ (BOOL)prefersEmojiImageTextAttachment;
+ (BOOL)prefersTextAttachment;
+ (void)setPrefersEmojiImageTextAttachment:(BOOL)attachment;
+ (void)setPrefersTextAttachment:(BOOL)attachment;
- (CGImage)imageForProposedSize:(CGSize)size scaleFactor:(double)factor imageOffset:(CGPoint *)offset imageSize:(CGSize *)imageSize;
- (CGSize)_imageSizeForAttributes:(id)attributes;
- (CGSize)_imageSizeForProposedSize:(CGSize)size scaleFactor:(double)factor;
- (CTAdaptiveImageGlyph)initWithCoder:(id)coder;
- (CTAdaptiveImageGlyph)initWithFileWrapper:(id)wrapper;
- (CTAdaptiveImageGlyph)initWithImageContent:(id)content;
- (NSArray)strikes;
- (NSFileWrapper)_fallbackFileWrapper;
- (id)_configuredFileWrapperForAttributes:(id)attributes;
- (id)_initWithContentIdentifier:(id)identifier;
- (id)_nominalTextAttachmentCreatingIfNeededUsingBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTAdaptiveImageGlyph

+ (BOOL)prefersTextAttachment
{
  if (qword_1ED568250 != -1)
  {
    dispatch_once(&qword_1ED568250, &__block_literal_global_9);
  }

  return _MergedGlobals_36;
}

void __45__CTAdaptiveImageGlyph_prefersTextAttachment__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v0 objectForKey:@"_NSAdaptiveImageGlyphPrefersTextAttachment"];

  if (v2)
  {
    v1 = [v2 BOOLValue];
  }

  else
  {
    v1 = dyld_program_sdk_at_least() ^ 1;
  }

  _MergedGlobals_36 = v1;
}

+ (void)setPrefersTextAttachment:(BOOL)attachment
{
  if (_MergedGlobals_36 != attachment)
  {
    _MergedGlobals_36 = attachment;
    +[__CTAdaptiveImageGlyphStorage flushInstanceCache];
  }
}

+ (BOOL)prefersEmojiImageTextAttachment
{
  if (qword_1ED568258 != -1)
  {
    dispatch_once(&qword_1ED568258, &__block_literal_global_52);
  }

  return byte_1ED568249;
}

void __55__CTAdaptiveImageGlyph_prefersEmojiImageTextAttachment__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1ED568249 = [v0 BOOLForKey:@"_NSAdaptiveImageGlyphPrefersEmojiImageTextAttachment"];
}

+ (void)setPrefersEmojiImageTextAttachment:(BOOL)attachment
{
  if (byte_1ED568249 != attachment)
  {
    byte_1ED568249 = attachment;
    +[__CTAdaptiveImageGlyphStorage flushInstanceCache];
  }
}

- (CTAdaptiveImageGlyph)initWithImageContent:(id)content
{
  contentCopy = content;
  v10.receiver = self;
  v10.super_class = CTAdaptiveImageGlyph;
  v5 = [(CTAdaptiveImageGlyph *)&v10 init];
  if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:0 imageContent:contentCopy], v6 = objc_claimAutoreleasedReturnValue(), storage = v5->_storage, v5->_storage = v6, storage, v5->_storage))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_initWithContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CTAdaptiveImageGlyph;
  v5 = [(CTAdaptiveImageGlyph *)&v10 init];
  if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:identifierCopy imageContent:0], v6 = objc_claimAutoreleasedReturnValue(), storage = v5->_storage, v5->_storage = v6, storage, v5->_storage))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CTAdaptiveImageGlyph)initWithFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  preferredFilename = [wrapperCopy preferredFilename];
  pathExtension = [preferredFilename pathExtension];

  if (pathExtension)
  {
    v7 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    v8 = +[CTAdaptiveImageGlyph contentType];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      selfCopy = 0;
LABEL_11:

      goto LABEL_12;
    }

    regularFileContents = [wrapperCopy regularFileContents];
    if (regularFileContents)
    {
      v11 = [(CTAdaptiveImageGlyph *)self initWithImageContent:regularFileContents];
      if (v11)
      {
        self = v11;
        selfCopy = self;
LABEL_10:

        goto LABEL_11;
      }

      self = 0;
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTAdaptiveImageGlyph alloc];
  contentIdentifier = [(__CTAdaptiveImageGlyphStorage *)self->_storage contentIdentifier];
  v6 = [(CTAdaptiveImageGlyph *)v4 initWithContentIdentifier:contentIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    contentIdentifier = [(__CTAdaptiveImageGlyphStorage *)self->_storage contentIdentifier];
    [coderCopy encodeObject:contentIdentifier forKey:@"NS.contentIdentifier"];

    imageContent = [(__CTAdaptiveImageGlyphStorage *)self->_storage imageContent];
    [coderCopy encodeObject:imageContent forKey:@"NS.imageContent"];
  }
}

- (CTAdaptiveImageGlyph)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NS.contentIdentifier"];
    if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:v5 imageContent:0], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NS.imageContent"];
      v7 = [__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:0 imageContent:v9];

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v13.receiver = self;
    v13.super_class = CTAdaptiveImageGlyph;
    v10 = [(CTAdaptiveImageGlyph *)&v13 init];
    self = v10;
    if (v10)
    {
      storage = v10->_storage;
      v10->_storage = v7;

      self = self;
      selfCopy = self;
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (NSArray)strikes
{
  v2 = __CTEmojiImageSourceCopyImageStrikes([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef]);

  return v2;
}

- (CGSize)_imageSizeForProposedSize:(CGSize)size scaleFactor:(double)factor
{
  v6 = *MEMORY[0x1E695F060];
  __CTEmojiImageSourceGetImageIndex([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef], &v6, 0, size.width, size.height, 1.0);
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_nominalTextAttachmentCreatingIfNeededUsingBlock:(id)block
{
  blockCopy = block;
  v5 = self->_storage;
  objc_sync_enter(v5);
  _nominalTextAttachment = [(__CTAdaptiveImageGlyphStorage *)self->_storage _nominalTextAttachment];
  if (!_nominalTextAttachment)
  {
    _nominalTextAttachment = blockCopy[2](blockCopy);
    [(__CTAdaptiveImageGlyphStorage *)self->_storage _setNominalTextAttachment:_nominalTextAttachment];
  }

  objc_sync_exit(v5);

  return _nominalTextAttachment;
}

- (CGImage)imageForProposedSize:(CGSize)size scaleFactor:(double)factor imageOffset:(CGPoint *)offset imageSize:(CGSize *)imageSize
{
  height = size.height;
  width = size.width;
  imageSourceRef = [(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef];
  v26 = 0;
  ImageIndex = __CTEmojiImageSourceGetImageIndex(imageSourceRef, imageSize, &v26, width, height, factor);
  v14 = v26;
  if (ImageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef], ImageIndex, 0);
    if (ImageAtIndex)
    {
      v16 = ImageAtIndex;
      if (!offset)
      {
LABEL_14:
        v21 = CFAutorelease(v16);
        goto LABEL_15;
      }

      v17 = [v14 objectForKeyedSubscript:@"__NSEmojiImagePropertyKeyOrigin"];
      v18 = v17;
      if (v17)
      {
        [v17 pointValue];
      }

      else
      {
        v19 = *MEMORY[0x1E695EFF8];
        v20 = *(MEMORY[0x1E695EFF8] + 8);
      }

      offset->x = v19;
      offset->y = v20;
      v22 = imageSize->width;
      v23 = imageSize->height;
      if (imageSize->width >= v23)
      {
        if (v23 >= v22)
        {
LABEL_13:

          goto LABEL_14;
        }

        v24 = v22 - v23 - v20;
        v19 = v20;
        offset = (offset + 8);
      }

      else
      {
        v24 = v23 - v22 - v19;
      }

      offset->x = v19 + v24 * 0.5;
      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

+ (BOOL)_readsAdaptiveImageGlyphFromDocumentFormats
{
  if (+[CTAdaptiveImageGlyph _readsAdaptiveImageGlyphFromDocumentFormats]::onceToken != -1)
  {
    dispatch_once(&+[CTAdaptiveImageGlyph _readsAdaptiveImageGlyphFromDocumentFormats]::onceToken, &__block_literal_global_71);
  }

  return +[CTAdaptiveImageGlyph _readsAdaptiveImageGlyphFromDocumentFormats]::_readsAdaptiveImageGlyphFromDocumentFormats;
}

void __67__CTAdaptiveImageGlyph__readsAdaptiveImageGlyphFromDocumentFormats__block_invoke()
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v3 valueForKey:@"_NSReadsEmojiImageTextAttachmentFromDocumentFormats"];
  v1 = v0;
  if (v0)
  {
    if ([v0 BOOLValue])
    {
      v2 = [v3 BOOLForKey:@"_NSAdaptiveImageGlyphDisableUnarchivingFromDocumentFormats"] ^ 1;
    }

    else
    {
      v2 = 0;
    }

    +[CTAdaptiveImageGlyph _readsAdaptiveImageGlyphFromDocumentFormats]::_readsAdaptiveImageGlyphFromDocumentFormats = v2;
  }
}

- (id)_configuredFileWrapperForAttributes:(id)attributes
{
  contentType = [objc_opt_class() contentType];
  preferredFilenameExtension = [contentType preferredFilenameExtension];

  contentIdentifier = [(CTAdaptiveImageGlyph *)self contentIdentifier];
  v8 = [@"AdaptiveImageGlyph-" stringByAppendingString:contentIdentifier];

  if (preferredFilenameExtension)
  {
    v9 = [v8 stringByAppendingPathExtension:preferredFilenameExtension];

    v8 = v9;
  }

  v10 = objc_alloc(MEMORY[0x1E696AC38]);
  storage = self->_storage;
  if (attributes)
  {
    [(__CTAdaptiveImageGlyphStorage *)storage _RTFDImageData];
  }

  else
  {
    [(__CTAdaptiveImageGlyphStorage *)storage imageContent];
  }
  v12 = ;
  v13 = [v10 initRegularFileWithContents:v12];

  [v13 setPreferredFilename:v8];

  return v13;
}

- (CGSize)_imageSizeForAttributes:(id)attributes
{
  v4 = [attributes objectForKeyedSubscript:@"NSFont"];
  if (!v4)
  {
    v5 = _CTGetEmojiFontName(0);
    v4 = CTFontCreateWithName(v5, 12.0, 0);
  }

  v11.origin.x = CTFontGetTypographicBoundsForAdaptiveImageProvider(v4);
  Height = CGRectGetHeight(v11);
  CFRelease(v4);

  [(CTAdaptiveImageGlyph *)self _imageSizeForProposedSize:Height scaleFactor:Height, 1.0];
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSFileWrapper)_fallbackFileWrapper
{
  _fallbackImageData = [(__CTAdaptiveImageGlyphStorage *)self->_storage _fallbackImageData];
  if (_fallbackImageData)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:_fallbackImageData];
    [v3 setPreferredFilename:@"Attachment.png"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end