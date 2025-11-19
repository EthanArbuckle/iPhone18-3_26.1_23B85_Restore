@interface TSUImage
+ (TSUImage)imageWithImageData:(id)a3;
- (TSUImage)initWithImageData:(id)a3;
@end

@implementation TSUImage

+ (TSUImage)imageWithImageData:(id)a3
{
  v4 = objc_opt_class();
  v5 = [TSDBitmapImageProvider CGImageForImageData:a3];

  return [v4 imageWithCGImage:v5];
}

- (TSUImage)initWithImageData:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [TSDBitmapImageProvider CGImageForImageData:a3];

  return [v4 initWithCGImage:v5];
}

@end