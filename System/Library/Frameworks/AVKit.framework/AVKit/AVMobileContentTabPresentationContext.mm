@interface AVMobileContentTabPresentationContext
- (void)setCustomInfoViewController:(id)controller;
- (void)setPresentationHeight:(double)height;
- (void)setPresentationLayout:(unint64_t)layout;
- (void)setState:(unint64_t)state;
- (void)setTransitionContext:(id)context;
@end

@implementation AVMobileContentTabPresentationContext

- (void)setTransitionContext:(id)context
{
  contextCopy = context;
  transitionContext = self->_transitionContext;
  p_transitionContext = &self->_transitionContext;
  if (transitionContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_transitionContext, context);
    contextCopy = v8;
  }
}

- (void)setPresentationLayout:(unint64_t)layout
{
  if (self->_presentationLayout != layout)
  {
    self->_presentationLayout = layout;
  }
}

- (void)setPresentationHeight:(double)height
{
  if (self->_presentationHeight != height)
  {
    self->_presentationHeight = height;
  }
}

- (void)setCustomInfoViewController:(id)controller
{
  controllerCopy = controller;
  customInfoViewController = self->_customInfoViewController;
  p_customInfoViewController = &self->_customInfoViewController;
  if (customInfoViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(p_customInfoViewController, controller);
    controllerCopy = v8;
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }
}

@end