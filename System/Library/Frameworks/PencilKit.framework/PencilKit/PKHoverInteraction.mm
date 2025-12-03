@interface PKHoverInteraction
- (PKHoverInteraction)initWithDelegate:(id)delegate;
- (PKHoverInteractionDelegate)delegate;
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)hoverController:(id)controller holdGestureMeanInputPoint:(id *)point latestInputPoint:(id *)inputPoint;
- (void)hoverControllerHoldGestureEnded:(id)ended;
@end

@implementation PKHoverInteraction

- (PKHoverInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKHoverInteraction;
  v5 = [(PKHoverInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(PKHoverInteraction *)self setView:viewCopy];
  v4 = viewCopy;
  if (viewCopy)
  {
    v4 = [[PKHoverController alloc] initWithDelegate:viewCopy view:?];
  }

  hoverController = self->_hoverController;
  self->_hoverController = v4;
}

- (void)hoverController:(id)controller holdGestureMeanInputPoint:(id *)point latestInputPoint:(id *)inputPoint
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 hoverInteraction:self didBeginHoverAndHoldAtLocation:point->var0.var0.x elevation:{point->var0.var0.y, point->var6}];
  }
}

- (void)hoverControllerHoldGestureEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 hoverInteractionDidEndHoverAndHold:self];
  }
}

- (PKHoverInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end