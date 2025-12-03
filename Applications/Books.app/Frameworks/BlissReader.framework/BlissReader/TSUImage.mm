@interface TSUImage
+ (TSUImage)imageWithImageData:(id)data;
- (TSUImage)initWithImageData:(id)data;
@end

@implementation TSUImage

+ (TSUImage)imageWithImageData:(id)data
{
  v4 = objc_opt_class();
  v5 = [TSDBitmapImageProvider CGImageForImageData:data];

  return [v4 imageWithCGImage:v5];
}

- (TSUImage)initWithImageData:(id)data
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [TSDBitmapImageProvider CGImageForImageData:data];

  return [v4 initWithCGImage:v5];
}

@end