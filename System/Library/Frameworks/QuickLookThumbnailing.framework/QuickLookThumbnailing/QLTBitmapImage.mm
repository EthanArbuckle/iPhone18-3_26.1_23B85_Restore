@interface QLTBitmapImage
+ (id)imageWithCGImage:(CGImage *)image;
+ (id)imageWithFormat:(id)format data:(id)data;
- (CGImage)image;
- (QLTBitmapImage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLTBitmapImage

+ (id)imageWithFormat:(id)format data:(id)data
{
  dataCopy = data;
  formatCopy = format;
  v7 = objc_opt_new();
  [v7 setFormat:formatCopy];

  [v7 setData:dataCopy];

  return v7;
}

+ (id)imageWithCGImage:(CGImage *)image
{
  if (image)
  {
    v5 = [QLTBitmapFormat bitmapFormatWithBitmapImage:?];
    DataProvider = CGImageGetDataProvider(image);
    v7 = CGDataProviderCopyData(DataProvider);
    v8 = [self imageWithFormat:v5 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (QLTBitmapImage)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = QLTBitmapImage;
  coderCopy = coder;
  v4 = [(QLTBitmapImage *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"d", v10.receiver, v10.super_class}];
  data = v4->_data;
  v4->_data = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f"];

  format = v4->_format;
  v4->_format = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"d"];
  [coderCopy encodeObject:self->_format forKey:@"f"];
}

- (CGImage)image
{
  v2 = QLCreateCGImageWithDataAndFormat(self->_data, self->_format);

  return CFAutorelease(v2);
}

@end