@interface UIImage
- (id)resizedImageWithNewSize:(CGSize)a3;
@end

@implementation UIImage

- (id)resizedImageWithNewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_100183174(width, height);

  return v6;
}

@end