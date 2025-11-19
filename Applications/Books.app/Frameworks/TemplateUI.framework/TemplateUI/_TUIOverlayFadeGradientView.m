@interface _TUIOverlayFadeGradientView
- (void)configureGradientWithAxis:(unint64_t)a3 leading:(BOOL)a4;
@end

@implementation _TUIOverlayFadeGradientView

- (void)configureGradientWithAxis:(unint64_t)a3 leading:(BOOL)a4
{
  v4 = a4;
  v6 = [(_TUIOverlayFadeGradientView *)self gradientLayer];
  [v6 setCompositingFilter:kCAFilterDestOut];
  v7 = !v4;
  if (a3 == 2)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = !v4;
  }

  if (a3 == 2)
  {
    v9 = 0.5;
  }

  else
  {
    v7 = 0.5;
    v9 = v4;
  }

  if (a3 == 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0.5;
  }

  [v6 setStartPoint:{v8, v7, v4}];
  [v6 setEndPoint:{v9, v10}];
  v11 = +[UIColor blackColor];
  v14[0] = [v11 CGColor];
  v12 = +[UIColor clearColor];
  v14[1] = [v12 CGColor];
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [v6 setColors:v13];
}

@end