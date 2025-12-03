@interface CGBitmapFormat
- (CGBitmapFormat)initWithBitmapContext:(CGContext *)context;
- (CGBitmapFormat)initWithCoder:(id)coder;
- (CGImage)createImageWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CGBitmapFormat

- (void)encodeWithCoder:(id)coder
{
  width_low = LODWORD(self->_width);
  coderCopy = coder;
  [coderCopy encodeInt32:width_low forKey:@"w"];
  [coderCopy encodeInt32:LODWORD(self->_height) forKey:@"h"];
  [coderCopy encodeInt32:LODWORD(self->_bitsPerPixel) forKey:@"bpp"];
  [coderCopy encodeInt32:LODWORD(self->_bitsPerComponent) forKey:@"bpc"];
  [coderCopy encodeInt32:LODWORD(self->_bytesPerRow) forKey:@"bpr"];
  [coderCopy encodeInt32:self->_bitmapInfo forKey:@"bmi"];
  v6 = CGColorSpaceCopyPropertyList(self->_colorSpace);
  [coderCopy encodeObject:v6 forKey:@"cs"];
}

- (CGBitmapFormat)initWithCoder:(id)coder
{
  v12[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CGBitmapFormat;
  v5 = [(CGBitmapFormat *)&v11 init];
  if (v5)
  {
    v5->_width = [coderCopy decodeInt32ForKey:@"w"];
    v5->_height = [coderCopy decodeInt32ForKey:@"h"];
    v5->_bitsPerPixel = [coderCopy decodeInt32ForKey:@"bpp"];
    v5->_bitsPerComponent = [coderCopy decodeInt32ForKey:@"bpc"];
    v5->_bytesPerRow = [coderCopy decodeInt32ForKey:@"bpr"];
    v5->_bitmapInfo = [coderCopy decodeInt32ForKey:@"bmi"];
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v12[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cs"];
    v5->_colorSpace = CGColorSpaceCreateWithPropertyList(v9);
  }

  return v5;
}

- (CGImage)createImageWithData:(id)data
{
  dataCopy = data;
  v5 = CGDataProviderCreateWithCFData(dataCopy);
  if (v5)
  {
    v12 = v5;
    v13 = CGImageCreate([(CGBitmapFormat *)self width], [(CGBitmapFormat *)self height], [(CGBitmapFormat *)self bitsPerComponent], [(CGBitmapFormat *)self bitsPerPixel], [(CGBitmapFormat *)self bytesPerRow], [(CGBitmapFormat *)self colorSpace], [(CGBitmapFormat *)self bitmapInfo], v5, 0, 1, kCGRenderingIntentPerceptual);
    CFRelease(v12);
  }

  else
  {
    CGLog(2, "Failed to create data provoder with data: (%p)", v6, v7, v8, v9, v10, v11, dataCopy);
    v13 = 0;
  }

  return v13;
}

- (CGBitmapFormat)initWithBitmapContext:(CGContext *)context
{
  v6.receiver = self;
  v6.super_class = CGBitmapFormat;
  v4 = [(CGBitmapFormat *)&v6 init];
  if (v4)
  {
    v4->_width = CGBitmapContextGetWidth(context);
    v4->_height = CGBitmapContextGetHeight(context);
    v4->_bitsPerPixel = CGBitmapContextGetBitsPerPixel(context);
    v4->_bitsPerComponent = CGBitmapContextGetBitsPerComponent(context);
    v4->_bytesPerRow = CGBitmapContextGetBytesPerRow(context);
    v4->_bitmapInfo = CGBitmapContextGetBitmapInfo(context);
    v4->_colorSpace = CGBitmapContextGetColorSpace(context);
  }

  return v4;
}

@end