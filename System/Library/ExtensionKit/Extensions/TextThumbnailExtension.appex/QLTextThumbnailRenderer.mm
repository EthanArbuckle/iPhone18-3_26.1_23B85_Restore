@interface QLTextThumbnailRenderer
+ (id)_readingOptionsFromContentType:(id)type encoding:(unsigned int)encoding;
+ (id)mutableAttributedStringForThumbnailWithData:(id)data contentType:(id)type documentAttributes:(id *)attributes error:(id *)error;
+ (id)mutableAttributedStringForThumbnailWithURL:(id)l contentType:(id)type documentAttributes:(id *)attributes error:(id *)error;
+ (id)textDocumentTypeFromContentType:(id)type;
- (CGSize)contextSize;
- (CGSize)paperSize;
- (QLTextThumbnailRenderer)initWithData:(id)data contentType:(id)type stringEncoding:(unint64_t)encoding maxSize:(CGSize)size iconMode:(BOOL)mode;
- (QLTextThumbnailRenderer)initWithURL:(id)l contentType:(id)type stringEncoding:(unint64_t)encoding maxSize:(CGSize)size iconMode:(BOOL)mode;
- (void)draw;
@end

@implementation QLTextThumbnailRenderer

+ (id)textDocumentTypeFromContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy conformsToType:UTTypeRTFD])
  {
    v4 = &NSRTFDTextDocumentType;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([typeCopy conformsToType:UTTypeRTF])
  {
    v4 = &NSRTFTextDocumentType;
    goto LABEL_7;
  }

  if ([typeCopy conformsToType:UTTypeText])
  {
    v4 = &NSPlainTextDocumentType;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)_readingOptionsFromContentType:(id)type encoding:(unsigned int)encoding
{
  if (type)
  {
    typeCopy = type;
    v6 = CFStringConvertEncodingToNSStringEncoding(encoding);
    v7 = [QLTextThumbnailRenderer textDocumentTypeFromContentType:typeCopy];

    if (v7)
    {
      v12[0] = &off_100008748;
      v11[0] = @"NSThumbnail";
      v11[1] = NSCharacterEncodingDocumentAttribute;
      v8 = [NSNumber numberWithUnsignedInteger:v6];
      v11[2] = NSDocumentTypeDocumentAttribute;
      v12[1] = v8;
      v12[2] = v7;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mutableAttributedStringForThumbnailWithData:(id)data contentType:(id)type documentAttributes:(id *)attributes error:(id *)error
{
  typeCopy = type;
  dataCopy = data;
  v11 = [self _readingOptionsFromContentType:typeCopy encoding:QLGuessEncodingForTextFileFromData()];

  v12 = [[NSMutableAttributedString alloc] initWithData:dataCopy options:v11 documentAttributes:attributes error:0];

  return v12;
}

+ (id)mutableAttributedStringForThumbnailWithURL:(id)l contentType:(id)type documentAttributes:(id *)attributes error:(id *)error
{
  typeCopy = type;
  lCopy = l;
  v12 = [self _readingOptionsFromContentType:typeCopy encoding:QLGuessEncodingForTextFileAtURL()];

  v13 = [[NSMutableAttributedString alloc] initWithURL:lCopy options:v12 documentAttributes:attributes error:error];

  return v13;
}

- (QLTextThumbnailRenderer)initWithData:(id)data contentType:(id)type stringEncoding:(unint64_t)encoding maxSize:(CGSize)size iconMode:(BOOL)mode
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = QLTextThumbnailRenderer;
  v13 = [(QLTextThumbnailRenderer *)&v26 init];
  if (v13)
  {
    v25 = 0;
    v14 = [QLTextThumbnailRenderer mutableAttributedStringForThumbnailWithData:dataCopy contentType:typeCopy documentAttributes:&v25 error:0];
    v15 = v25;
    attributedString = v13->_attributedString;
    v13->_attributedString = v14;

    if ([typeCopy conformsToType:UTTypePlainText])
    {
      v17 = v13->_attributedString;
      v27 = NSFontAttributeName;
      v18 = [UIFont monospacedSystemFontOfSize:17.0 weight:UIFontWeightRegular];
      v28 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [(NSMutableAttributedString *)v17 setAttributes:v19 range:0, [(NSMutableAttributedString *)v13->_attributedString length]];
    }

    v20 = [v15 objectForKeyedSubscript:NSPaperSizeDocumentAttribute];
    v21 = v20;
    if (v20)
    {
      [v20 CGSizeValue];
    }

    else
    {
      if (width != height)
      {
        v23 = 1024.0;
        v22 = width / height * 1024.0;
        goto LABEL_9;
      }

      v22 = 768.0;
      v23 = 1024.0;
    }

    width = floor(height * (v22 / v23));
LABEL_9:
    v13->_paperSize.width = v22;
    v13->_paperSize.height = v23;
    v13->_contextSize.width = width;
    v13->_contextSize.height = height;
  }

  return v13;
}

- (QLTextThumbnailRenderer)initWithURL:(id)l contentType:(id)type stringEncoding:(unint64_t)encoding maxSize:(CGSize)size iconMode:(BOOL)mode
{
  height = size.height;
  width = size.width;
  lCopy = l;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = QLTextThumbnailRenderer;
  v13 = [(QLTextThumbnailRenderer *)&v26 init];
  if (v13)
  {
    v25 = 0;
    v14 = [QLTextThumbnailRenderer mutableAttributedStringForThumbnailWithURL:lCopy contentType:typeCopy documentAttributes:&v25 error:0];
    v15 = v25;
    attributedString = v13->_attributedString;
    v13->_attributedString = v14;

    if ([typeCopy conformsToType:UTTypePlainText])
    {
      v17 = v13->_attributedString;
      v27 = NSFontAttributeName;
      v18 = [UIFont monospacedSystemFontOfSize:17.0 weight:UIFontWeightRegular];
      v28 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [(NSMutableAttributedString *)v17 setAttributes:v19 range:0, [(NSMutableAttributedString *)v13->_attributedString length]];
    }

    v20 = [v15 objectForKeyedSubscript:NSPaperSizeDocumentAttribute];
    v21 = v20;
    if (v20)
    {
      [v20 CGSizeValue];
    }

    else
    {
      if (width != height)
      {
        v23 = 1024.0;
        v22 = width / height * 1024.0;
        goto LABEL_9;
      }

      v22 = 768.0;
      v23 = 1024.0;
    }

    width = floor(height * (v22 / v23));
LABEL_9:
    v13->_paperSize.width = v22;
    v13->_paperSize.height = v23;
    v13->_contextSize.width = width;
    v13->_contextSize.height = height;
  }

  return v13;
}

- (void)draw
{
  [(QLTextThumbnailRenderer *)self paperSize];
  v4 = v3 * 0.05;
  [(QLTextThumbnailRenderer *)self paperSize];
  v6 = v5;
  [(QLTextThumbnailRenderer *)self paperSize];
  v8 = v7;
  v9 = v4 + 0.0;
  v10 = v4 + v4;
  v11 = v6 - (v4 + v4);
  v12 = v7 - v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = +[UIColor whiteColor];
  [v14 setFill];

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v6;
  v24.size.height = v8;
  UIRectFill(v24);
  [(QLTextThumbnailRenderer *)self contextSize];
  v16 = v15;
  [(QLTextThumbnailRenderer *)self paperSize];
  v18 = v16 / v17;
  [(QLTextThumbnailRenderer *)self contextSize];
  v20 = v19;
  [(QLTextThumbnailRenderer *)self paperSize];
  CGContextScaleCTM(CurrentContext, v18, v20 / v21);
  attributedString = [(QLTextThumbnailRenderer *)self attributedString];
  [attributedString drawInRect:{v9, v9, v11, v12}];
}

- (CGSize)contextSize
{
  width = self->_contextSize.width;
  height = self->_contextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)paperSize
{
  width = self->_paperSize.width;
  height = self->_paperSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end