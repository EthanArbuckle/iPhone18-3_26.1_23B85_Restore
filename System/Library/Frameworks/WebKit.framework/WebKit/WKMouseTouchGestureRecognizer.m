@interface WKMouseTouchGestureRecognizer
- (WKMouseTouchGestureRecognizer)initWithInteraction:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WKMouseTouchGestureRecognizer

- (WKMouseTouchGestureRecognizer)initWithInteraction:(id)a3
{
  v7.receiver = self;
  v7.super_class = WKMouseTouchGestureRecognizer;
  v4 = [(WKMouseTouchGestureRecognizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_interaction, a3);
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(WKMouseTouchGestureRecognizer *)self setState:1, a4];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:a3];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  [(WKMouseTouchGestureRecognizer *)self setState:2, a4];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:a3];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(WKMouseTouchGestureRecognizer *)self setState:3, a4];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:a3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(WKMouseTouchGestureRecognizer *)self setState:4, a4];
  Weak = objc_loadWeak(&self->_interaction);

  [Weak _updateMouseTouches:a3];
}

@end