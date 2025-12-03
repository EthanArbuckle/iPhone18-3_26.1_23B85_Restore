@interface _TUIEmbeddedCollectionGradientView
- (void)configureGradientWithAxis:(unint64_t)axis leading:(BOOL)leading;
@end

@implementation _TUIEmbeddedCollectionGradientView

- (void)configureGradientWithAxis:(unint64_t)axis leading:(BOOL)leading
{
  leadingCopy = leading;
  gradientLayer = [(_TUIEmbeddedCollectionGradientView *)self gradientLayer];
  [gradientLayer setCompositingFilter:kCAFilterDestOut];
  v7 = !leadingCopy;
  if (axis == 2)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = !leadingCopy;
  }

  if (axis == 2)
  {
    v9 = 0.5;
  }

  else
  {
    v7 = 0.5;
    v9 = leadingCopy;
  }

  if (axis == 2)
  {
    v10 = leadingCopy;
  }

  else
  {
    v10 = 0.5;
  }

  [gradientLayer setStartPoint:{v8, v7, leadingCopy}];
  [gradientLayer setEndPoint:{v9, v10}];
  v11 = +[UIColor blackColor];
  v14[0] = [v11 CGColor];
  v12 = +[UIColor clearColor];
  v14[1] = [v12 CGColor];
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [gradientLayer setColors:v13];
}

@end