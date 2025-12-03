@interface AXGestureRecorderGradientViewAnimationDelegate
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation AXGestureRecorderGradientViewAnimationDelegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completionBlock = [(AXGestureRecorderGradientViewAnimationDelegate *)self completionBlock];
  if (completionBlock)
  {
    v6 = completionBlock;
    completionBlock[2](completionBlock, finishedCopy);
    completionBlock = v6;
  }
}

@end