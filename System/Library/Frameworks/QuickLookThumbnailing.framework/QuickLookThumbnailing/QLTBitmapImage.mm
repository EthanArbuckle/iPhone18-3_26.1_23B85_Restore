@interface QLTBitmapImage
+ (id)imageWithCGImage:(CGImage *)a3;
+ (id)imageWithFormat:(id)a3 data:(id)a4;
- (CGImage)image;
- (QLTBitmapImage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLTBitmapImage

+ (id)imageWithFormat:(id)a3 data:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setFormat:v6];

  [v7 setData:v5];

  return v7;
}

+ (id)imageWithCGImage:(CGImage *)a3
{
  if (a3)
  {
    v5 = [QLTBitmapFormat bitmapFormatWithBitmapImage:?];
    DataProvider = CGImageGetDataProvider(a3);
    v7 = CGDataProviderCopyData(DataProvider);
    v8 = [a1 imageWithFormat:v5 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (QLTBitmapImage)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = QLTBitmapImage;
  v3 = a3;
  v4 = [(QLTBitmapImage *)&v10 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"d", v10.receiver, v10.super_class}];
  data = v4->_data;
  v4->_data = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"f"];

  format = v4->_format;
  v4->_format = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"d"];
  [v5 encodeObject:self->_format forKey:@"f"];
}

- (CGImage)image
{
  v2 = QLCreateCGImageWithDataAndFormat(self->_data, self->_format);

  return CFAutorelease(v2);
}

@end