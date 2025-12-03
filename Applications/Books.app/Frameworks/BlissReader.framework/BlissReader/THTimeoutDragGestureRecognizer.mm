@interface THTimeoutDragGestureRecognizer
- (CGPoint)locationInView:(id)view;
- (CGPoint)requiredMovement;
- (CGPoint)touchMovement;
- (CGPoint)touchStartPoint;
- (void)dealloc;
- (void)p_cancelTimerFired;
- (void)p_recognizeTimerFired;
- (void)p_startCancelTimerWithTimeout:(double)timeout;
- (void)p_startRecognizeTimer;
- (void)p_teardownTimers;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation THTimeoutDragGestureRecognizer

- (void)dealloc
{
  if (self->_cancelTimer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_recognizeTimer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v3 dealloc];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = THTimeoutDragGestureRecognizer;
  [THTimeoutDragGestureRecognizer touchesBegan:"touchesBegan:withEvent:" withEvent:?];
  if ([objc_msgSend(event "allTouches")] == &dword_0 + 1)
  {
    anyObject = [began anyObject];
    +[NSDate timeIntervalSinceReferenceDate];
    self->_touchStartTime = v8;
    [anyObject locationInView:{-[THTimeoutDragGestureRecognizer view](self, "view")}];
    self->_touchStartPoint.x = v9;
    self->_touchStartPoint.y = v10;
    self->_touchMovement = CGPointZero;
    [(THTimeoutDragGestureRecognizer *)self delegate];
    v11 = TSUProtocolCast();
    if (v11)
    {
      [v11 dragGestureRecognizer:self requiredMovementForTouch:anyObject];
      self->_requiredMovement.x = v12;
      self->_requiredMovement.y = v13;
    }

    [(THTimeoutDragGestureRecognizer *)self p_startRecognizeTimer];
    [(THTimeoutDragGestureRecognizer *)self maximumPressDuration];
    [(THTimeoutDragGestureRecognizer *)self p_startCancelTimerWithTimeout:?];
  }

  else
  {
    [(THTimeoutDragGestureRecognizer *)self setState:4];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [objc_msgSend(moved "anyObject")];
  TSDSubtractPoints();
  self->_touchMovement.x = v5;
  self->_touchMovement.y = v6;
  if ([(THTimeoutDragGestureRecognizer *)self state])
  {
    if ([(THTimeoutDragGestureRecognizer *)self state]!= &dword_0 + 1)
    {
      return;
    }

    v7 = 2;
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8 - self->_touchStartTime;
    [(THTimeoutDragGestureRecognizer *)self minimumPressDuration];
    if (v9 <= v10)
    {
      TSDPointLength();
      v12 = v11;
      [(THTimeoutDragGestureRecognizer *)self allowableMovement];
      if (v12 <= v13)
      {
        return;
      }

      v7 = 4;
    }

    else
    {
      if (![(THTimeoutDragGestureRecognizer *)self hasMovedDistance:self->_requiredMovement.x, self->_requiredMovement.y])
      {
        return;
      }

      v7 = 1;
    }
  }

  [(THTimeoutDragGestureRecognizer *)self setState:v7];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(THTimeoutDragGestureRecognizer *)self setState:4];
  v7.receiver = self;
  v7.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v7 touchesCancelled:cancelled withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(THTimeoutDragGestureRecognizer *)self state]== &dword_0 + 1)
  {
    v7 = 3;
  }

  else if ([(THTimeoutDragGestureRecognizer *)self state]== &dword_0 + 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 5;
  }

  [(THTimeoutDragGestureRecognizer *)self setState:v7];
  v8.receiver = self;
  v8.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v8 touchesEnded:ended withEvent:event];
}

- (CGPoint)locationInView:(id)view
{
  v13.receiver = self;
  v13.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v13 locationInView:?];
  v6 = v5;
  v8 = v7;
  if ([(THTimeoutDragGestureRecognizer *)self state]== &dword_0 + 1)
  {
    [-[THTimeoutDragGestureRecognizer view](self "view")];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v5 setState:?];
  if ((state - 3) <= 2)
  {
    [(THTimeoutDragGestureRecognizer *)self p_teardownTimers];
    [(UIGestureRecognizer *)self->_dependentGestureRecognizer cancel];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = THTimeoutDragGestureRecognizer;
  [(THTimeoutDragGestureRecognizer *)&v3 reset];
  [(THTimeoutDragGestureRecognizer *)self p_teardownTimers];
  [(UIGestureRecognizer *)self->_dependentGestureRecognizer cancel];
}

- (void)p_startRecognizeTimer
{
  [(NSTimer *)[(THTimeoutDragGestureRecognizer *)self recognizeTimer] invalidate];
  [(THTimeoutDragGestureRecognizer *)self minimumPressDuration];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_recognizeTimerFired" selector:0 userInfo:0 repeats:?];

  [(THTimeoutDragGestureRecognizer *)self setRecognizeTimer:v3];
}

- (void)p_startCancelTimerWithTimeout:(double)timeout
{
  [(NSTimer *)[(THTimeoutDragGestureRecognizer *)self cancelTimer] invalidate];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_cancelTimerFired" selector:0 userInfo:0 repeats:timeout];

  [(THTimeoutDragGestureRecognizer *)self setCancelTimer:v5];
}

- (void)p_teardownTimers
{
  [(NSTimer *)[(THTimeoutDragGestureRecognizer *)self recognizeTimer] invalidate];
  [(THTimeoutDragGestureRecognizer *)self setRecognizeTimer:0];
  [(NSTimer *)[(THTimeoutDragGestureRecognizer *)self cancelTimer] invalidate];

  [(THTimeoutDragGestureRecognizer *)self setCancelTimer:0];
}

- (void)p_recognizeTimerFired
{
  if (![(THTimeoutDragGestureRecognizer *)self state])
  {
    if ([(THTimeoutDragGestureRecognizer *)self hasMovedDistance:self->_requiredMovement.x, self->_requiredMovement.y]|| (CGPointZero.x == self->_requiredMovement.x ? (v3 = CGPointZero.y == self->_requiredMovement.y) : (v3 = 0), v3))
    {

      [(THTimeoutDragGestureRecognizer *)self setState:1];
    }
  }
}

- (void)p_cancelTimerFired
{
  if (![(THTimeoutDragGestureRecognizer *)self state])
  {

    [(THTimeoutDragGestureRecognizer *)self setState:5];
  }
}

- (CGPoint)requiredMovement
{
  x = self->_requiredMovement.x;
  y = self->_requiredMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchStartPoint
{
  x = self->_touchStartPoint.x;
  y = self->_touchStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchMovement
{
  x = self->_touchMovement.x;
  y = self->_touchMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

@end