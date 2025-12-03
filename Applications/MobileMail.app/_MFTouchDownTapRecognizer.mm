@interface _MFTouchDownTapRecognizer
- (_MFTouchDownTapRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _MFTouchDownTapRecognizer

- (_MFTouchDownTapRecognizer)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = _MFTouchDownTapRecognizer;
  v7 = [(_MFTouchDownTapRecognizer *)&v10 initWithTarget:targetCopy action:action];
  v8 = v7;
  if (v7)
  {
    [(_MFTouchDownTapRecognizer *)v7 setDelaysTouchesEnded:0];
  }

  return v8;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = _MFTouchDownTapRecognizer;
  [(_MFTouchDownTapRecognizer *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
  self->_numberOfTouches += [beganCopy count];
  (*(self->_touchdownHandler + 2))();
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = _MFTouchDownTapRecognizer;
  [(_MFTouchDownTapRecognizer *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  self->_numberOfTouches -= [endedCopy count];
  (*(self->_touchdownHandler + 2))();
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = _MFTouchDownTapRecognizer;
  [(_MFTouchDownTapRecognizer *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  self->_numberOfTouches -= [cancelledCopy count];
  (*(self->_touchdownHandler + 2))();
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _MFTouchDownTapRecognizer;
  [(_MFTouchDownTapRecognizer *)&v3 reset];
  self->_numberOfTouches = 0;
  (*(self->_touchdownHandler + 2))();
}

@end