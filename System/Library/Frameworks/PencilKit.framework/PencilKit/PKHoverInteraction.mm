@interface PKHoverInteraction
- (PKHoverInteraction)initWithDelegate:(id)a3;
- (PKHoverInteractionDelegate)delegate;
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)hoverController:(id)a3 holdGestureMeanInputPoint:(id *)a4 latestInputPoint:(id *)a5;
- (void)hoverControllerHoldGestureEnded:(id)a3;
@end

@implementation PKHoverInteraction

- (PKHoverInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKHoverInteraction;
  v5 = [(PKHoverInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)didMoveToView:(id)a3
{
  v6 = a3;
  [(PKHoverInteraction *)self setView:v6];
  v4 = v6;
  if (v6)
  {
    v4 = [[PKHoverController alloc] initWithDelegate:v6 view:?];
  }

  hoverController = self->_hoverController;
  self->_hoverController = v4;
}

- (void)hoverController:(id)a3 holdGestureMeanInputPoint:(id *)a4 latestInputPoint:(id *)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 hoverInteraction:self didBeginHoverAndHoldAtLocation:a4->var0.var0.x elevation:{a4->var0.var0.y, a4->var6}];
  }
}

- (void)hoverControllerHoldGestureEnded:(id)a3
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