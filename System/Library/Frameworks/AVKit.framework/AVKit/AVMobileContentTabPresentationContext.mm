@interface AVMobileContentTabPresentationContext
- (void)setCustomInfoViewController:(id)a3;
- (void)setPresentationHeight:(double)a3;
- (void)setPresentationLayout:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
- (void)setTransitionContext:(id)a3;
@end

@implementation AVMobileContentTabPresentationContext

- (void)setTransitionContext:(id)a3
{
  v5 = a3;
  transitionContext = self->_transitionContext;
  p_transitionContext = &self->_transitionContext;
  if (transitionContext != v5)
  {
    v8 = v5;
    objc_storeStrong(p_transitionContext, a3);
    v5 = v8;
  }
}

- (void)setPresentationLayout:(unint64_t)a3
{
  if (self->_presentationLayout != a3)
  {
    self->_presentationLayout = a3;
  }
}

- (void)setPresentationHeight:(double)a3
{
  if (self->_presentationHeight != a3)
  {
    self->_presentationHeight = a3;
  }
}

- (void)setCustomInfoViewController:(id)a3
{
  v5 = a3;
  customInfoViewController = self->_customInfoViewController;
  p_customInfoViewController = &self->_customInfoViewController;
  if (customInfoViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_customInfoViewController, a3);
    v5 = v8;
  }
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
  }
}

@end