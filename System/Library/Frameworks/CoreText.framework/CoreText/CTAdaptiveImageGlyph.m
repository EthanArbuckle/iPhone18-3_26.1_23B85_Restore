@interface CTAdaptiveImageGlyph
+ (BOOL)_readsAdaptiveImageGlyphFromDocumentFormats;
+ (BOOL)prefersEmojiImageTextAttachment;
+ (BOOL)prefersTextAttachment;
+ (void)setPrefersEmojiImageTextAttachment:(BOOL)a3;
+ (void)setPrefersTextAttachment:(BOOL)a3;
- (CGImage)imageForProposedSize:(CGSize)a3 scaleFactor:(double)a4 imageOffset:(CGPoint *)a5 imageSize:(CGSize *)a6;
- (CGSize)_imageSizeForAttributes:(id)a3;
- (CGSize)_imageSizeForProposedSize:(CGSize)a3 scaleFactor:(double)a4;
- (CTAdaptiveImageGlyph)initWithCoder:(id)a3;
- (CTAdaptiveImageGlyph)initWithFileWrapper:(id)a3;
- (CTAdaptiveImageGlyph)initWithImageContent:(id)a3;
- (NSArray)strikes;
- (NSFileWrapper)_fallbackFileWrapper;
- (id)_configuredFileWrapperForAttributes:(id)a3;
- (id)_initWithContentIdentifier:(id)a3;
- (id)_nominalTextAttachmentCreatingIfNeededUsingBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (void)setPrefersTextAttachment:(BOOL)a3
{
  if (_MergedGlobals_36 != a3)
  {
    _MergedGlobals_36 = a3;
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

+ (void)setPrefersEmojiImageTextAttachment:(BOOL)a3
{
  if (byte_1ED568249 != a3)
  {
    byte_1ED568249 = a3;
    +[__CTAdaptiveImageGlyphStorage flushInstanceCache];
  }
}

- (CTAdaptiveImageGlyph)initWithImageContent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTAdaptiveImageGlyph;
  v5 = [(CTAdaptiveImageGlyph *)&v10 init];
  if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:0 imageContent:v4], v6 = objc_claimAutoreleasedReturnValue(), storage = v5->_storage, v5->_storage = v6, storage, v5->_storage))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_initWithContentIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTAdaptiveImageGlyph;
  v5 = [(CTAdaptiveImageGlyph *)&v10 init];
  if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:v4 imageContent:0], v6 = objc_claimAutoreleasedReturnValue(), storage = v5->_storage, v5->_storage = v6, storage, v5->_storage))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CTAdaptiveImageGlyph)initWithFileWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredFilename];
  v6 = [v5 pathExtension];

  if (v6)
  {
    v7 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v6];
    v8 = +[CTAdaptiveImageGlyph contentType];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      v12 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = [v4 regularFileContents];
    if (v10)
    {
      v11 = [(CTAdaptiveImageGlyph *)self initWithImageContent:v10];
      if (v11)
      {
        self = v11;
        v12 = self;
LABEL_10:

        goto LABEL_11;
      }

      self = 0;
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTAdaptiveImageGlyph alloc];
  v5 = [(__CTAdaptiveImageGlyphStorage *)self->_storage contentIdentifier];
  v6 = [(CTAdaptiveImageGlyph *)v4 initWithContentIdentifier:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if ([v6 allowsKeyedCoding])
  {
    v4 = [(__CTAdaptiveImageGlyphStorage *)self->_storage contentIdentifier];
    [v6 encodeObject:v4 forKey:@"NS.contentIdentifier"];

    v5 = [(__CTAdaptiveImageGlyphStorage *)self->_storage imageContent];
    [v6 encodeObject:v5 forKey:@"NS.imageContent"];
  }
}

- (CTAdaptiveImageGlyph)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NS.contentIdentifier"];
    if (v5 && ([__CTAdaptiveImageGlyphStorage adaptiveImageGlyphStorageWithContentIdentifier:v5 imageContent:0], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NS.imageContent"];
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
      v8 = self;
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (NSArray)strikes
{
  v2 = __CTEmojiImageSourceCopyImageStrikes([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef]);

  return v2;
}

- (CGSize)_imageSizeForProposedSize:(CGSize)a3 scaleFactor:(double)a4
{
  v6 = *MEMORY[0x1E695F060];
  __CTEmojiImageSourceGetImageIndex([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef], &v6, 0, a3.width, a3.height, 1.0);
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_nominalTextAttachmentCreatingIfNeededUsingBlock:(id)a3
{
  v4 = a3;
  v5 = self->_storage;
  objc_sync_enter(v5);
  v6 = [(__CTAdaptiveImageGlyphStorage *)self->_storage _nominalTextAttachment];
  if (!v6)
  {
    v6 = v4[2](v4);
    [(__CTAdaptiveImageGlyphStorage *)self->_storage _setNominalTextAttachment:v6];
  }

  objc_sync_exit(v5);

  return v6;
}

- (CGImage)imageForProposedSize:(CGSize)a3 scaleFactor:(double)a4 imageOffset:(CGPoint *)a5 imageSize:(CGSize *)a6
{
  height = a3.height;
  width = a3.width;
  v12 = [(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef];
  v26 = 0;
  ImageIndex = __CTEmojiImageSourceGetImageIndex(v12, a6, &v26, width, height, a4);
  v14 = v26;
  if (ImageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex([(__CTAdaptiveImageGlyphStorage *)self->_storage imageSourceRef], ImageIndex, 0);
    if (ImageAtIndex)
    {
      v16 = ImageAtIndex;
      if (!a5)
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

      a5->x = v19;
      a5->y = v20;
      v22 = a6->width;
      v23 = a6->height;
      if (a6->width >= v23)
      {
        if (v23 >= v22)
        {
LABEL_13:

          goto LABEL_14;
        }

        v24 = v22 - v23 - v20;
        v19 = v20;
        a5 = (a5 + 8);
      }

      else
      {
        v24 = v23 - v22 - v19;
      }

      a5->x = v19 + v24 * 0.5;
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

- (id)_configuredFileWrapperForAttributes:(id)a3
{
  v5 = [objc_opt_class() contentType];
  v6 = [v5 preferredFilenameExtension];

  v7 = [(CTAdaptiveImageGlyph *)self contentIdentifier];
  v8 = [@"AdaptiveImageGlyph-" stringByAppendingString:v7];

  if (v6)
  {
    v9 = [v8 stringByAppendingPathExtension:v6];

    v8 = v9;
  }

  v10 = objc_alloc(MEMORY[0x1E696AC38]);
  storage = self->_storage;
  if (a3)
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

- (CGSize)_imageSizeForAttributes:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"NSFont"];
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
  v2 = [(__CTAdaptiveImageGlyphStorage *)self->_storage _fallbackImageData];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v2];
    [v3 setPreferredFilename:@"Attachment.png"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end