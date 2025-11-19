@interface IMFadeView
- (IMFadeView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDirection:(int)a3;
@end

@implementation IMFadeView

- (IMFadeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = IMFadeView;
  v3 = [(IMFadeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMFadeView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = a3;
  CopyWithAlpha = CGColorCreateCopyWithAlpha([v6 CGColor], 0.0);
  v8 = [v6 CGColor];

  v9 = [NSArray arrayWithObjects:v8, CopyWithAlpha, 0];
  v10 = [(IMGradientView *)self gradientLayer];
  [v10 setColors:v9];

  CGColorRelease(CopyWithAlpha);
}

- (void)setDirection:(int)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return;
      }

      v4 = [(IMGradientView *)self gradientLayer];
      v5 = v4;
      v6 = 1.0;
      v7 = 0.0;
      goto LABEL_8;
    }

    y = CGPointZero.y;
    v15 = [(IMGradientView *)self gradientLayer];
    [v15 setStartPoint:{CGPointZero.x, y}];

    v9 = [(IMGradientView *)self gradientLayer];
    x = 1.0;
    v11 = 0.0;
LABEL_12:
    v16 = v9;
    goto LABEL_13;
  }

  if (!a3)
  {
    v12 = CGPointZero.y;
    v13 = [(IMGradientView *)self gradientLayer];
    [v13 setStartPoint:{CGPointZero.x, v12}];

    v9 = [(IMGradientView *)self gradientLayer];
    x = 0.0;
    v11 = 1.0;
    goto LABEL_12;
  }

  if (a3 != 1)
  {
    return;
  }

  v4 = [(IMGradientView *)self gradientLayer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
LABEL_8:
  [v4 setStartPoint:{v6, v7}];

  v8 = CGPointZero.y;
  v9 = [(IMGradientView *)self gradientLayer];
  v16 = v9;
  x = CGPointZero.x;
  v11 = v8;
LABEL_13:
  [v9 setEndPoint:{x, v11}];
}

@end