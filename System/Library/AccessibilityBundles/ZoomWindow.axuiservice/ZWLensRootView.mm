@interface ZWLensRootView
- (ZWLensRootView)initWithDelegate:(id)delegate;
- (ZWLensRootViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ZWLensRootView

- (ZWLensRootView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ZWLensRootView;
  v5 = [(ZWLensRootView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(ZWLensRootView *)v5 setDelegate:delegateCopy];
    [(ZWLensRootView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v6;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  delegate = [(ZWLensRootView *)self delegate];
  v9 = [delegate zoomRootview:self viewForHitTestAtPoint:{x, y}];

  if (!v9)
  {
    v11.receiver = self;
    v11.super_class = ZWLensRootView;
    v9 = [(ZWLensRootView *)&v11 hitTest:eventCopy withEvent:x, y];
  }

  return v9;
}

- (ZWLensRootViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end