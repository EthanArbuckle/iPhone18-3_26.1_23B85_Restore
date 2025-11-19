@interface ZWLensRootView
- (ZWLensRootView)initWithDelegate:(id)a3;
- (ZWLensRootViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ZWLensRootView

- (ZWLensRootView)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ZWLensRootView;
  v5 = [(ZWLensRootView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(ZWLensRootView *)v5 setDelegate:v4];
    [(ZWLensRootView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v6;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ZWLensRootView *)self delegate];
  v9 = [v8 zoomRootview:self viewForHitTestAtPoint:{x, y}];

  if (!v9)
  {
    v11.receiver = self;
    v11.super_class = ZWLensRootView;
    v9 = [(ZWLensRootView *)&v11 hitTest:v7 withEvent:x, y];
  }

  return v9;
}

- (ZWLensRootViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end