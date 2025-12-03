@interface BICImage
+ (id)imageWithCGImage:(CGImage *)image;
- (CGImage)CGImage;
- (void)dealloc;
@end

@implementation BICImage

+ (id)imageWithCGImage:(CGImage *)image
{
  v4 = objc_alloc_init(BICImage);
  [(BICImage *)v4 setCGImage:image];

  return v4;
}

- (void)dealloc
{
  CGImageRelease(self->_CGImage);
  v3.receiver = self;
  v3.super_class = BICImage;
  [(BICImage *)&v3 dealloc];
}

- (CGImage)CGImage
{
  result = self->_CGImage;
  if (result)
  {
    v3 = CGImageRetain(result);

    return CFAutorelease(v3);
  }

  return result;
}

@end