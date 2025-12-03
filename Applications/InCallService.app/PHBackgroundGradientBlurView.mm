@interface PHBackgroundGradientBlurView
- (UIImage)image;
- (void)setImage:(id)image;
@end

@implementation PHBackgroundGradientBlurView

- (UIImage)image
{
  v2 = sub_100235AD8();

  return v2;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_100235B44(imageCopy);
}

@end