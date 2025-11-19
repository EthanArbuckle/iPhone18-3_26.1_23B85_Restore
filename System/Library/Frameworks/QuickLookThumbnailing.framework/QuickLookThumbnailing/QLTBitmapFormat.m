@interface QLTBitmapFormat
+ (QLTBitmapFormat)bitmapFormatWithBitmapImage:(CGImage *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFormat:(id)a3;
- (QLTBitmapFormat)initWithBitmapContext:(CGContext *)a3;
- (QLTBitmapFormat)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLTBitmapFormat

- (QLTBitmapFormat)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = QLTBitmapFormat;
  v5 = [(QLTBitmapFormat *)&v13 init];
  if (v5)
  {
    v5->_width = [v4 decodeInt32ForKey:@"w"];
    v5->_height = [v4 decodeInt32ForKey:@"h"];
    v5->_bitsPerComponent = [v4 decodeInt32ForKey:@"bpc"];
    v5->_bitsPerPixel = [v4 decodeInt32ForKey:@"bpp"];
    v5->_bytesPerRow = [v4 decodeInt32ForKey:@"bpr"];
    v5->_bitmapInfo = [v4 decodeInt32ForKey:@"i"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"cs"];
    v5->_colorSpace = CGColorSpaceCreateWithPropertyList(v11);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  width_low = LODWORD(self->_width);
  v5 = a3;
  [v5 encodeInt32:width_low forKey:@"w"];
  [v5 encodeInt32:LODWORD(self->_height) forKey:@"h"];
  [v5 encodeInt32:LODWORD(self->_bitsPerComponent) forKey:@"bpc"];
  [v5 encodeInt32:LODWORD(self->_bitsPerPixel) forKey:@"bpp"];
  [v5 encodeInt32:LODWORD(self->_bytesPerRow) forKey:@"bpr"];
  [v5 encodeInt32:self->_bitmapInfo forKey:@"i"];
  v6 = CGColorSpaceCopyPropertyList(self->_colorSpace);
  [v5 encodeObject:v6 forKey:@"cs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(QLTBitmapFormat *)self isEqualToFormat:v4];

  return v5;
}

- (BOOL)isEqualToFormat:(id)a3
{
  v4 = a3;
  width = self->_width;
  if (width == [v4 width] && (height = self->_height, height == objc_msgSend(v4, "height")) && (bitsPerComponent = self->_bitsPerComponent, bitsPerComponent == objc_msgSend(v4, "bitsPerComponent")) && (bytesPerRow = self->_bytesPerRow, bytesPerRow == objc_msgSend(v4, "bytesPerRow")) && (bitmapInfo = self->_bitmapInfo, bitmapInfo == objc_msgSend(v4, "bitmapInfo")))
  {
    colorSpace = self->_colorSpace;
    v11 = [v4 colorSpace];
    if (colorSpace)
    {
      v12 = CFEqual(colorSpace, v11) != 0;
    }

    else
    {
      v12 = v11 == 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (QLTBitmapFormat)bitmapFormatWithBitmapImage:(CGImage *)a3
{
  v4 = objc_alloc_init(QLTBitmapFormat);
  if (a3)
  {
    [(QLTBitmapFormat *)v4 setWidth:CGImageGetWidth(a3)];
    [(QLTBitmapFormat *)v4 setHeight:CGImageGetHeight(a3)];
    [(QLTBitmapFormat *)v4 setBitsPerComponent:CGImageGetBitsPerComponent(a3)];
    [(QLTBitmapFormat *)v4 setBytesPerRow:CGImageGetBytesPerRow(a3)];
    [(QLTBitmapFormat *)v4 setBitsPerPixel:CGImageGetBitsPerPixel(a3)];
    [(QLTBitmapFormat *)v4 setBitmapInfo:CGImageGetBitmapInfo(a3)];
    [(QLTBitmapFormat *)v4 setColorSpace:CGImageGetColorSpace(a3)];
  }

  return v4;
}

- (QLTBitmapFormat)initWithBitmapContext:(CGContext *)a3
{
  v6.receiver = self;
  v6.super_class = QLTBitmapFormat;
  v4 = [(QLTBitmapFormat *)&v6 init];
  if (v4)
  {
    v4->_width = CGBitmapContextGetWidth(a3);
    v4->_height = CGBitmapContextGetHeight(a3);
    v4->_bitsPerComponent = CGBitmapContextGetBitsPerComponent(a3);
    v4->_bytesPerRow = CGBitmapContextGetBytesPerRow(a3);
    v4->_bitsPerPixel = CGBitmapContextGetBitsPerPixel(a3);
    v4->_bitmapInfo = CGBitmapContextGetBitmapInfo(a3);
    v4->_colorSpace = CGBitmapContextGetColorSpace(a3);
  }

  return v4;
}

@end