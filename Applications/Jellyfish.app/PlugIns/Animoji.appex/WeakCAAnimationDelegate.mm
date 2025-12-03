@interface WeakCAAnimationDelegate
+ (id)weakAnimationDelegate:(id)delegate;
- (CAAnimationDelegate)animationDelegate;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation WeakCAAnimationDelegate

+ (id)weakAnimationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(self);
  [v5 setAnimationDelegate:delegateCopy];

  return v5;
}

- (void)animationDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_animationDelegate);
    [v6 animationDidStart:startCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_animationDelegate);
    [v8 animationDidStop:stopCopy finished:finishedCopy];
  }
}

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end