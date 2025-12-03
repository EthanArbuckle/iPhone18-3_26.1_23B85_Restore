@interface UIImage
- (id)resizedImageWithNewSize:(CGSize)size;
@end

@implementation UIImage

- (id)resizedImageWithNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = sub_100183174(width, height);

  return v6;
}

@end