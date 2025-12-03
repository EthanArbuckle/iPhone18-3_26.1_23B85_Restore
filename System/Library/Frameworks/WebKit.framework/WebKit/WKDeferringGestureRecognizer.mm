@interface WKDeferringGestureRecognizer
- (BOOL)shouldDeferGestureRecognizer:(id)recognizer;
- (WKDeferringGestureRecognizer)initWithDeferringGestureDelegate:(id)delegate;
- (void)endDeferral:(BOOL)deferral;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation WKDeferringGestureRecognizer

- (WKDeferringGestureRecognizer)initWithDeferringGestureDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = WKDeferringGestureRecognizer;
  v4 = [(WKDeferringGestureRecognizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_deferringGestureDelegate.m_weakReference, delegate);
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7 = [objc_loadWeak(&self->_deferringGestureDelegate.m_weakReference) deferringGestureRecognizer:self willBeginTouchesWithEvent:event];
  v8.receiver = self;
  v8.super_class = WKDeferringGestureRecognizer;
  [(WKDeferringGestureRecognizer *)&v8 touchesBegan:began withEvent:event];
  if ((v7 & 1) == 0)
  {
    [(WKDeferringGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WKDeferringGestureRecognizer;
  [(WKDeferringGestureRecognizer *)&v6 touchesEnded:ended withEvent:?];
  if ([(WKDeferringGestureRecognizer *)self immediatelyFailsAfterTouchEnd])
  {
    [(WKDeferringGestureRecognizer *)self setState:5];
  }

  [objc_loadWeak(&self->_deferringGestureDelegate.m_weakReference) deferringGestureRecognizer:self didEndTouchesWithEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = WKDeferringGestureRecognizer;
  [(WKDeferringGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(WKDeferringGestureRecognizer *)self setState:5];
}

- (void)endDeferral:(BOOL)deferral
{
  if (deferral)
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  [(WKDeferringGestureRecognizer *)self setState:v3];
}

- (BOOL)shouldDeferGestureRecognizer:(id)recognizer
{
  Weak = objc_loadWeak(&self->_deferringGestureDelegate.m_weakReference);

  return [Weak deferringGestureRecognizer:self shouldDeferOtherGestureRecognizer:recognizer];
}

- (void)setState:(int64_t)state
{
  state = [(WKDeferringGestureRecognizer *)self state];
  v6.receiver = self;
  v6.super_class = WKDeferringGestureRecognizer;
  [(WKDeferringGestureRecognizer *)&v6 setState:state];
  if (state != [(WKDeferringGestureRecognizer *)self state])
  {
    [objc_loadWeak(&self->_deferringGestureDelegate.m_weakReference) deferringGestureRecognizer:self didTransitionToState:state];
  }
}

@end