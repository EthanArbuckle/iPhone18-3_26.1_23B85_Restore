@interface HUCCCompactModulePropertyAnimator
- (HUCCCompactModulePropertyAnimatorDelegate)delegate;
- (void)startAnimation;
@end

@implementation HUCCCompactModulePropertyAnimator

- (void)startAnimation
{
  v4.receiver = self;
  v4.super_class = HUCCCompactModulePropertyAnimator;
  [(UIViewPropertyAnimator *)&v4 startAnimation];
  v3 = [(HUCCCompactModulePropertyAnimator *)self delegate];
  [v3 propertyAnimatorDidStartAnimating:self];
}

- (HUCCCompactModulePropertyAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end