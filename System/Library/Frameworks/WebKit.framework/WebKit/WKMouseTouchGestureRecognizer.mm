@interface WKMouseTouchGestureRecognizer
- (WKMouseTouchGestureRecognizer)initWithInteraction:(id)interaction;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation WKMouseTouchGestureRecognizer

- (WKMouseTouchGestureRecognizer)initWithInteraction:(id)interaction
{
  v7.receiver = self;
  v7.super_class = WKMouseTouchGestureRecognizer;
  v4 = [(WKMouseTouchGestureRecognizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_interaction, interaction);
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(WKMouseTouchGestureRecognizer *)self setState:1, event];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:began];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [(WKMouseTouchGestureRecognizer *)self setState:2, event];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:moved];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(WKMouseTouchGestureRecognizer *)self setState:3, event];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:ended];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(WKMouseTouchGestureRecognizer *)self setState:4, event];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:cancelled];
}

@end