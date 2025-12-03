@interface ZoomLensView
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation ZoomLensView

- (void)animationDidStart:(id)start
{
  selfCopy = self;
  v3 = sub_100126AE0();
  [(ZoomLensView *)selfCopy bounds];
  Width = CGRectGetWidth(v8);
  [(ZoomLensView *)selfCopy bounds];
  Height = CGRectGetHeight(v9);
  if (Width > Height)
  {
    Height = Width;
  }

  [v3 setMarginWidth:Height];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  selfCopy = self;
  v4 = sub_100126AE0();
  [v4 setMarginWidth:0.0];
}

@end