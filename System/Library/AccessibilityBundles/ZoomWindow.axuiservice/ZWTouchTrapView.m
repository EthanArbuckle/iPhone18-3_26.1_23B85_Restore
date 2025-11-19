@interface ZWTouchTrapView
- (BOOL)accessibilityActivate;
- (BOOL)enabled;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (ZWTouchTrapViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ZWTouchTrapView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ZWTouchTrapView *)self delegate];
  if (v8 && (v9 = v8, -[ZWTouchTrapView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 touchTrapView:self shouldReportSelfInHitTestAtLocation:{x, y}], v10, v9, v11))
  {
    v14.receiver = self;
    v14.super_class = ZWTouchTrapView;
    v12 = [(ZWTouchTrapView *)&v14 pointInside:v7 withEvent:x, y];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ZWTouchTrapView *)self delegate];
  if (v8 && (v9 = v8, -[ZWTouchTrapView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 touchTrapView:self shouldReportSelfInHitTestAtLocation:{x, y}], v10, v9, v11))
  {
    if ([(ZWTouchTrapView *)self pointInside:v7 withEvent:x, y])
    {
      v12 = self;
    }

    else
    {
      v15.receiver = self;
      v15.super_class = ZWTouchTrapView;
      v12 = [(ZWTouchTrapView *)&v15 hitTest:v7 withEvent:x, y];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ZWTouchTrapView *)self delegate];
  [v8 touchTrapView:self didTrapTouches:v7 withEvent:v6];
}

- (BOOL)enabled
{
  v2 = [(ZWTouchTrapView *)self layer];
  v3 = [v2 hitTestsAsOpaque];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(ZWTouchTrapView *)self layer];
  [v4 setHitTestsAsOpaque:v3];
}

- (BOOL)accessibilityActivate
{
  v3 = [(ZWTouchTrapView *)self delegate];

  if (v3)
  {
    v4 = [(ZWTouchTrapView *)self delegate];
    [v4 touchTrapViewActivated:self];
  }

  return v3 != 0;
}

- (ZWTouchTrapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end