@interface CSLPanGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (CGPoint)touchPoint;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CSLPanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  [anyObject locationInView:0];
  [(CSLPanGestureRecognizer *)self setTouchPoint:?];
  v9.receiver = self;
  v9.super_class = CSLPanGestureRecognizer;
  [(CSLPanGestureRecognizer *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSLPanGestureRecognizer;
    v5 = [(CSLPanGestureRecognizer *)&v7 canBePreventedByGestureRecognizer:recognizerCopy];
  }

  return v5;
}

- (CGPoint)touchPoint
{
  x = self->_touchPoint.x;
  y = self->_touchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end