@interface AXGestureRecorderGradientViewAnimationDelegate
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation AXGestureRecorderGradientViewAnimationDelegate

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v5 = [(AXGestureRecorderGradientViewAnimationDelegate *)self completionBlock];
  if (v5)
  {
    v6 = v5;
    v5[2](v5, v4);
    v5 = v6;
  }
}

@end