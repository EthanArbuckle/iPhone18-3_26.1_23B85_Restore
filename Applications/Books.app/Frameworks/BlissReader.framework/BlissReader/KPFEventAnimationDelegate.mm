@interface KPFEventAnimationDelegate
- (KPFEventAnimationDelegate)initWithEvent:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation KPFEventAnimationDelegate

- (KPFEventAnimationDelegate)initWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = KPFEventAnimationDelegate;
  result = [(KPFEventAnimationDelegate *)&v5 init];
  if (result)
  {
    result->_weakEvent = a3;
  }

  return result;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(KPFEventAnimationDelegate *)self weakEvent];

  [(KPFEvent *)v6 animationDidStop:a3 finished:v4];
}

@end