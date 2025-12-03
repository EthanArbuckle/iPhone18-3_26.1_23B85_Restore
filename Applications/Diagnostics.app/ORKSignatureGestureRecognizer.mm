@interface ORKSignatureGestureRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (DrawingGestureRecognizerDelegate)eventDelegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ORKSignatureGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([beganCopy count] <= 1 && -[ORKSignatureGestureRecognizer numberOfTouches](self, "numberOfTouches") < 2)
  {
    [(ORKSignatureGestureRecognizer *)self setState:1];
    eventDelegate = [(ORKSignatureGestureRecognizer *)self eventDelegate];
    [eventDelegate gestureTouchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = beganCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ORKSignatureGestureRecognizer *)self ignoreTouch:*(*(&v14 + 1) + 8 * v12) forEvent:eventCopy, v14];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  eventDelegate = [(ORKSignatureGestureRecognizer *)self eventDelegate];
  [eventDelegate gestureTouchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  [(ORKSignatureGestureRecognizer *)self setState:3];
  eventDelegate = [(ORKSignatureGestureRecognizer *)self eventDelegate];
  [eventDelegate gestureTouchesEnded:endedCopy withEvent:eventCopy];
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (DrawingGestureRecognizerDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

@end