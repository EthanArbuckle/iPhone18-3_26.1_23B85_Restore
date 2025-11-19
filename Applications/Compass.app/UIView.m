@interface UIView
- (CALayer)currentLayer;
@end

@implementation UIView

- (CALayer)currentLayer
{
  v3 = [(UIView *)self layer];
  v4 = [v3 presentationLayer];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(UIView *)self layer];
  }

  v6 = v5;

  return v6;
}

@end