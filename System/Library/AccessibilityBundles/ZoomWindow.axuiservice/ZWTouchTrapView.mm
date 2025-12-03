@interface ZWTouchTrapView
- (BOOL)accessibilityActivate;
- (BOOL)enabled;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (ZWTouchTrapViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ZWTouchTrapView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  delegate = [(ZWTouchTrapView *)self delegate];
  if (delegate && (v9 = delegate, -[ZWTouchTrapView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 touchTrapView:self shouldReportSelfInHitTestAtLocation:{x, y}], v10, v9, v11))
  {
    v14.receiver = self;
    v14.super_class = ZWTouchTrapView;
    v12 = [(ZWTouchTrapView *)&v14 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  delegate = [(ZWTouchTrapView *)self delegate];
  if (delegate && (v9 = delegate, -[ZWTouchTrapView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 touchTrapView:self shouldReportSelfInHitTestAtLocation:{x, y}], v10, v9, v11))
  {
    if ([(ZWTouchTrapView *)self pointInside:eventCopy withEvent:x, y])
    {
      selfCopy = self;
    }

    else
    {
      v15.receiver = self;
      v15.super_class = ZWTouchTrapView;
      selfCopy = [(ZWTouchTrapView *)&v15 hitTest:eventCopy withEvent:x, y];
    }

    v13 = selfCopy;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  delegate = [(ZWTouchTrapView *)self delegate];
  [delegate touchTrapView:self didTrapTouches:beganCopy withEvent:eventCopy];
}

- (BOOL)enabled
{
  layer = [(ZWTouchTrapView *)self layer];
  hitTestsAsOpaque = [layer hitTestsAsOpaque];

  return hitTestsAsOpaque;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  layer = [(ZWTouchTrapView *)self layer];
  [layer setHitTestsAsOpaque:enabledCopy];
}

- (BOOL)accessibilityActivate
{
  delegate = [(ZWTouchTrapView *)self delegate];

  if (delegate)
  {
    delegate2 = [(ZWTouchTrapView *)self delegate];
    [delegate2 touchTrapViewActivated:self];
  }

  return delegate != 0;
}

- (ZWTouchTrapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end