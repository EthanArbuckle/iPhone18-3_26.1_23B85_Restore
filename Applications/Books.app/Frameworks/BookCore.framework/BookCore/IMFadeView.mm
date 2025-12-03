@interface IMFadeView
- (IMFadeView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
- (void)setDirection:(int)direction;
@end

@implementation IMFadeView

- (IMFadeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = IMFadeView;
  v3 = [(IMFadeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMFadeView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  colorCopy2 = color;
  CopyWithAlpha = CGColorCreateCopyWithAlpha([colorCopy2 CGColor], 0.0);
  cGColor = [colorCopy2 CGColor];

  v9 = [NSArray arrayWithObjects:cGColor, CopyWithAlpha, 0];
  gradientLayer = [(IMGradientView *)self gradientLayer];
  [gradientLayer setColors:v9];

  CGColorRelease(CopyWithAlpha);
}

- (void)setDirection:(int)direction
{
  if (direction > 1)
  {
    if (direction != 2)
    {
      if (direction != 3)
      {
        return;
      }

      gradientLayer = [(IMGradientView *)self gradientLayer];
      v5 = gradientLayer;
      v6 = 1.0;
      v7 = 0.0;
      goto LABEL_8;
    }

    y = CGPointZero.y;
    gradientLayer2 = [(IMGradientView *)self gradientLayer];
    [gradientLayer2 setStartPoint:{CGPointZero.x, y}];

    gradientLayer3 = [(IMGradientView *)self gradientLayer];
    x = 1.0;
    v11 = 0.0;
LABEL_12:
    v16 = gradientLayer3;
    goto LABEL_13;
  }

  if (!direction)
  {
    v12 = CGPointZero.y;
    gradientLayer4 = [(IMGradientView *)self gradientLayer];
    [gradientLayer4 setStartPoint:{CGPointZero.x, v12}];

    gradientLayer3 = [(IMGradientView *)self gradientLayer];
    x = 0.0;
    v11 = 1.0;
    goto LABEL_12;
  }

  if (direction != 1)
  {
    return;
  }

  gradientLayer = [(IMGradientView *)self gradientLayer];
  v5 = gradientLayer;
  v6 = 0.0;
  v7 = 1.0;
LABEL_8:
  [gradientLayer setStartPoint:{v6, v7}];

  v8 = CGPointZero.y;
  gradientLayer3 = [(IMGradientView *)self gradientLayer];
  v16 = gradientLayer3;
  x = CGPointZero.x;
  v11 = v8;
LABEL_13:
  [gradientLayer3 setEndPoint:{x, v11}];
}

@end