@interface WeakCAAnimationDelegate
+ (id)weakAnimationDelegate:(id)a3;
- (CAAnimationDelegate)animationDelegate;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation WeakCAAnimationDelegate

+ (id)weakAnimationDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAnimationDelegate:v4];

  return v5;
}

- (void)animationDidStart:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_animationDelegate);
    [v6 animationDidStart:v7];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_animationDelegate);
    [v8 animationDidStop:v9 finished:v4];
  }
}

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end