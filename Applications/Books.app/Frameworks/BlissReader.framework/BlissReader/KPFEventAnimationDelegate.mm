@interface KPFEventAnimationDelegate
- (KPFEventAnimationDelegate)initWithEvent:(id)event;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation KPFEventAnimationDelegate

- (KPFEventAnimationDelegate)initWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = KPFEventAnimationDelegate;
  result = [(KPFEventAnimationDelegate *)&v5 init];
  if (result)
  {
    result->_weakEvent = event;
  }

  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  weakEvent = [(KPFEventAnimationDelegate *)self weakEvent];

  [(KPFEvent *)weakEvent animationDidStop:stop finished:finishedCopy];
}

@end