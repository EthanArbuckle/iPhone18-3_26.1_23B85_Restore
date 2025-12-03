@interface UIImageView
- (double)firstBaselineFromTop;
@end

@implementation UIImageView

- (double)firstBaselineFromTop
{
  selfCopy = self;
  image = [(UIImageView *)selfCopy image];
  if (image)
  {
    v4 = image;
    [(UIImage *)image size];
    v6 = v5;
  }

  else
  {

    return 0.0;
  }

  return v6;
}

@end