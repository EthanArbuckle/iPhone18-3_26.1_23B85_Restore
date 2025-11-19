@interface HUCCSmartGridPropertyAnimator
- (HUCCSmartGridPropertyAnimatorDelegate)delegate;
- (void)startAnimation;
@end

@implementation HUCCSmartGridPropertyAnimator

- (void)startAnimation
{
  v7.receiver = self;
  v7.super_class = HUCCSmartGridPropertyAnimator;
  [(UIViewPropertyAnimator *)&v7 startAnimation];
  v5 = objc_msgSend_delegate(self, v3, v4);
  objc_msgSend_propertyAnimatorDidStartAnimating_(v5, v6, self);
}

- (HUCCSmartGridPropertyAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end