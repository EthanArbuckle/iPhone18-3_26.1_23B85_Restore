@interface UIImageView
- (double)firstBaselineFromTop;
@end

@implementation UIImageView

- (double)firstBaselineFromTop
{
  v2 = self;
  v3 = [(UIImageView *)v2 image];
  if (v3)
  {
    v4 = v3;
    [(UIImage *)v3 size];
    v6 = v5;
  }

  else
  {

    return 0.0;
  }

  return v6;
}

@end