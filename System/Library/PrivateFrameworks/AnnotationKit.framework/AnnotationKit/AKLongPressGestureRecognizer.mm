@interface AKLongPressGestureRecognizer
- (void)_checkTouchesForStylus:(id)stylus;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AKLongPressGestureRecognizer

- (void)reset
{
  [(AKLongPressGestureRecognizer *)self setPenGestureDetected:0];
  v3.receiver = self;
  v3.super_class = AKLongPressGestureRecognizer;
  [(AKLongPressGestureRecognizer *)&v3 reset];
}

- (void)_checkTouchesForStylus:(id)stylus
{
  anyObject = [stylus anyObject];
  -[AKLongPressGestureRecognizer setPenGestureDetected:](self, "setPenGestureDetected:", [anyObject type] == 2);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(AKLongPressGestureRecognizer *)self _checkTouchesForStylus:beganCopy];
  v8.receiver = self;
  v8.super_class = AKLongPressGestureRecognizer;
  [(AKLongPressGestureRecognizer *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  [(AKLongPressGestureRecognizer *)self _checkTouchesForStylus:movedCopy];
  v8.receiver = self;
  v8.super_class = AKLongPressGestureRecognizer;
  [(AKLongPressGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = AKLongPressGestureRecognizer;
  [(AKLongPressGestureRecognizer *)&v4 touchesEnded:ended withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  [(AKLongPressGestureRecognizer *)self setPenGestureDetected:0];
  v8.receiver = self;
  v8.super_class = AKLongPressGestureRecognizer;
  [(AKLongPressGestureRecognizer *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

@end