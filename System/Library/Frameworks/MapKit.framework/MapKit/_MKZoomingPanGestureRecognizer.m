@interface _MKZoomingPanGestureRecognizer
- (_MKZoomingPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)velocity;
- (void)_updateScaleAndVelocityIfNeeded:(int64_t)a3;
- (void)reset;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _MKZoomingPanGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _MKZoomingPanGestureRecognizer;
  [(_MKZoomingPanGestureRecognizer *)&v3 reset];
  self->_didStartUpdate = 0;
  self->_translation = 0.0;
  self->_scale = 1.0;
  self->_velocity = 0.0;
  self->_previousVelocity = 0.0;
}

- (void)_updateScaleAndVelocityIfNeeded:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(_MKZoomingPanGestureRecognizer *)self view];
    [(_MKZoomingPanGestureRecognizer *)self translationInView:v4];
    v6 = v5;

    if (self->_didStartUpdate)
    {
      v7 = (1.0 - (v6 - self->_translation) / self->_zoomDraggingResistance) * self->_scale;
      Current = CFAbsoluteTimeGetCurrent();
      v9 = Current - self->_lastUpdateTimestamp;
      self->_previousVelocity = self->_velocity;
      self->_lastUpdateTimestamp = Current;
      self->_velocity = (v7 - self->_scale) / v9;
      self->_translation = v6;
      self->_scale = v7;
    }

    else
    {
      self->_didStartUpdate = 1;
      self->_lastUpdateTimestamp = CFAbsoluteTimeGetCurrent();
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _MKZoomingPanGestureRecognizer;
  [(_MKZoomingPanGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(_MKZoomingPanGestureRecognizer *)self _updateScaleAndVelocityIfNeeded:[(_MKZoomingPanGestureRecognizer *)self state]];
}

- (double)velocity
{
  previousVelocity = self->_previousVelocity;
  if (previousVelocity == 0.0)
  {
    return self->_velocity;
  }

  else
  {
    return previousVelocity * 0.75 + self->_velocity * 0.25;
  }
}

- (_MKZoomingPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _MKZoomingPanGestureRecognizer;
  v4 = [(_MKZoomingPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_MKZoomingPanGestureRecognizer *)v4 reset];
  }

  return v5;
}

@end