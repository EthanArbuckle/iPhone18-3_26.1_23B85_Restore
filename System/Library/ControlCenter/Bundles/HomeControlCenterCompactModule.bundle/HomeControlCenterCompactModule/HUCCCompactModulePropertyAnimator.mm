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
  delegate = [(HUCCCompactModulePropertyAnimator *)self delegate];
  [delegate propertyAnimatorDidStartAnimating:self];
}

- (HUCCCompactModulePropertyAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end