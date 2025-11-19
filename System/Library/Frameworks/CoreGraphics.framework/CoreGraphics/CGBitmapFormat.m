@interface CGBitmapFormat
- (CGBitmapFormat)initWithBitmapContext:(CGContext *)a3;
- (CGBitmapFormat)initWithCoder:(id)a3;
- (CGImage)createImageWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CGBitmapFormat

- (void)encodeWithCoder:(id)a3
{
  width_low = LODWORD(self->_width);
  v5 = a3;
  [v5 encodeInt32:width_low forKey:@"w"];
  [v5 encodeInt32:LODWORD(self->_height) forKey:@"h"];
  [v5 encodeInt32:LODWORD(self->_bitsPerPixel) forKey:@"bpp"];
  [v5 encodeInt32:LODWORD(self->_bitsPerComponent) forKey:@"bpc"];
  [v5 encodeInt32:LODWORD(self->_bytesPerRow) forKey:@"bpr"];
  [v5 encodeInt32:self->_bitmapInfo forKey:@"bmi"];
  v6 = CGColorSpaceCopyPropertyList(self->_colorSpace);
  [v5 encodeObject:v6 forKey:@"cs"];
}

- (CGBitmapFormat)initWithCoder:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CGBitmapFormat;
  v5 = [(CGBitmapFormat *)&v11 init];
  if (v5)
  {
    v5->_width = [v4 decodeInt32ForKey:@"w"];
    v5->_height = [v4 decodeInt32ForKey:@"h"];
    v5->_bitsPerPixel = [v4 decodeInt32ForKey:@"bpp"];
    v5->_bitsPerComponent = [v4 decodeInt32ForKey:@"bpc"];
    v5->_bytesPerRow = [v4 decodeInt32ForKey:@"bpr"];
    v5->_bitmapInfo = [v4 decodeInt32ForKey:@"bmi"];
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v12[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"cs"];
    v5->_colorSpace = CGColorSpaceCreateWithPropertyList(v9);
  }

  return v5;
}

- (CGImage)createImageWithData:(id)a3
{
  v4 = a3;
  v5 = CGDataProviderCreateWithCFData(v4);
  if (v5)
  {
    v12 = v5;
    v13 = CGImageCreate([(CGBitmapFormat *)self width], [(CGBitmapFormat *)self height], [(CGBitmapFormat *)self bitsPerComponent], [(CGBitmapFormat *)self bitsPerPixel], [(CGBitmapFormat *)self bytesPerRow], [(CGBitmapFormat *)self colorSpace], [(CGBitmapFormat *)self bitmapInfo], v5, 0, 1, kCGRenderingIntentPerceptual);
    CFRelease(v12);
  }

  else
  {
    CGLog(2, "Failed to create data provoder with data: (%p)", v6, v7, v8, v9, v10, v11, v4);
    v13 = 0;
  }

  return v13;
}

- (CGBitmapFormat)initWithBitmapContext:(CGContext *)a3
{
  v6.receiver = self;
  v6.super_class = CGBitmapFormat;
  v4 = [(CGBitmapFormat *)&v6 init];
  if (v4)
  {
    v4->_width = CGBitmapContextGetWidth(a3);
    v4->_height = CGBitmapContextGetHeight(a3);
    v4->_bitsPerPixel = CGBitmapContextGetBitsPerPixel(a3);
    v4->_bitsPerComponent = CGBitmapContextGetBitsPerComponent(a3);
    v4->_bytesPerRow = CGBitmapContextGetBytesPerRow(a3);
    v4->_bitmapInfo = CGBitmapContextGetBitmapInfo(a3);
    v4->_colorSpace = CGBitmapContextGetColorSpace(a3);
  }

  return v4;
}

@end