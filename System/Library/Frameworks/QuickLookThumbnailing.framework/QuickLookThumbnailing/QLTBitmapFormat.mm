@interface QLTBitmapFormat
+ (QLTBitmapFormat)bitmapFormatWithBitmapImage:(CGImage *)image;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFormat:(id)format;
- (QLTBitmapFormat)initWithBitmapContext:(CGContext *)context;
- (QLTBitmapFormat)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLTBitmapFormat

- (QLTBitmapFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = QLTBitmapFormat;
  v5 = [(QLTBitmapFormat *)&v13 init];
  if (v5)
  {
    v5->_width = [coderCopy decodeInt32ForKey:@"w"];
    v5->_height = [coderCopy decodeInt32ForKey:@"h"];
    v5->_bitsPerComponent = [coderCopy decodeInt32ForKey:@"bpc"];
    v5->_bitsPerPixel = [coderCopy decodeInt32ForKey:@"bpp"];
    v5->_bytesPerRow = [coderCopy decodeInt32ForKey:@"bpr"];
    v5->_bitmapInfo = [coderCopy decodeInt32ForKey:@"i"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"cs"];
    v5->_colorSpace = CGColorSpaceCreateWithPropertyList(v11);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  width_low = LODWORD(self->_width);
  coderCopy = coder;
  [coderCopy encodeInt32:width_low forKey:@"w"];
  [coderCopy encodeInt32:LODWORD(self->_height) forKey:@"h"];
  [coderCopy encodeInt32:LODWORD(self->_bitsPerComponent) forKey:@"bpc"];
  [coderCopy encodeInt32:LODWORD(self->_bitsPerPixel) forKey:@"bpp"];
  [coderCopy encodeInt32:LODWORD(self->_bytesPerRow) forKey:@"bpr"];
  [coderCopy encodeInt32:self->_bitmapInfo forKey:@"i"];
  v6 = CGColorSpaceCopyPropertyList(self->_colorSpace);
  [coderCopy encodeObject:v6 forKey:@"cs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(QLTBitmapFormat *)self isEqualToFormat:equalCopy];

  return v5;
}

- (BOOL)isEqualToFormat:(id)format
{
  formatCopy = format;
  width = self->_width;
  if (width == [formatCopy width] && (height = self->_height, height == objc_msgSend(formatCopy, "height")) && (bitsPerComponent = self->_bitsPerComponent, bitsPerComponent == objc_msgSend(formatCopy, "bitsPerComponent")) && (bytesPerRow = self->_bytesPerRow, bytesPerRow == objc_msgSend(formatCopy, "bytesPerRow")) && (bitmapInfo = self->_bitmapInfo, bitmapInfo == objc_msgSend(formatCopy, "bitmapInfo")))
  {
    colorSpace = self->_colorSpace;
    colorSpace = [formatCopy colorSpace];
    if (colorSpace)
    {
      v12 = CFEqual(colorSpace, colorSpace) != 0;
    }

    else
    {
      v12 = colorSpace == 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (QLTBitmapFormat)bitmapFormatWithBitmapImage:(CGImage *)image
{
  v4 = objc_alloc_init(QLTBitmapFormat);
  if (image)
  {
    [(QLTBitmapFormat *)v4 setWidth:CGImageGetWidth(image)];
    [(QLTBitmapFormat *)v4 setHeight:CGImageGetHeight(image)];
    [(QLTBitmapFormat *)v4 setBitsPerComponent:CGImageGetBitsPerComponent(image)];
    [(QLTBitmapFormat *)v4 setBytesPerRow:CGImageGetBytesPerRow(image)];
    [(QLTBitmapFormat *)v4 setBitsPerPixel:CGImageGetBitsPerPixel(image)];
    [(QLTBitmapFormat *)v4 setBitmapInfo:CGImageGetBitmapInfo(image)];
    [(QLTBitmapFormat *)v4 setColorSpace:CGImageGetColorSpace(image)];
  }

  return v4;
}

- (QLTBitmapFormat)initWithBitmapContext:(CGContext *)context
{
  v6.receiver = self;
  v6.super_class = QLTBitmapFormat;
  v4 = [(QLTBitmapFormat *)&v6 init];
  if (v4)
  {
    v4->_width = CGBitmapContextGetWidth(context);
    v4->_height = CGBitmapContextGetHeight(context);
    v4->_bitsPerComponent = CGBitmapContextGetBitsPerComponent(context);
    v4->_bytesPerRow = CGBitmapContextGetBytesPerRow(context);
    v4->_bitsPerPixel = CGBitmapContextGetBitsPerPixel(context);
    v4->_bitmapInfo = CGBitmapContextGetBitmapInfo(context);
    v4->_colorSpace = CGBitmapContextGetColorSpace(context);
  }

  return v4;
}

@end