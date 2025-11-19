@interface PHBackgroundGradientBlurView
- (UIImage)image;
- (void)setImage:(id)a3;
@end

@implementation PHBackgroundGradientBlurView

- (UIImage)image
{
  v2 = sub_100235AD8();

  return v2;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100235B44(v4);
}

@end