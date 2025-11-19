@interface ZoomLensView
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation ZoomLensView

- (void)animationDidStart:(id)a3
{
  v6 = self;
  v3 = sub_100126AE0();
  [(ZoomLensView *)v6 bounds];
  Width = CGRectGetWidth(v8);
  [(ZoomLensView *)v6 bounds];
  Height = CGRectGetHeight(v9);
  if (Width > Height)
  {
    Height = Width;
  }

  [v3 setMarginWidth:Height];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = self;
  v4 = sub_100126AE0();
  [v4 setMarginWidth:0.0];
}

@end