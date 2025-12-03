@interface CRLWPLongPressGestureRecognizer
- (CGPoint)previousPosition;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLWPLongPressGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(CRLWPLongPressGestureRecognizer *)self setDidSendReset:0];
  [(CRLWPLongPressGestureRecognizer *)self setPreviousTimestamp:CFAbsoluteTimeGetCurrent()];
  v13.receiver = self;
  v13.super_class = CRLWPLongPressGestureRecognizer;
  [(CRLWPLongPressGestureRecognizer *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
  anyObject = [beganCopy anyObject];

  view = [(CRLWPLongPressGestureRecognizer *)self view];
  [anyObject locationInView:view];
  [(CRLWPLongPressGestureRecognizer *)self setPreviousPosition:?];

  v10 = 0;
  if ([(CRLWPLongPressGestureRecognizer *)self numberOfTouchesRequired]<= 1)
  {
    allTouches = [eventCopy allTouches];
    v10 = [allTouches count] > 1;
  }

  tapCount = [anyObject tapCount];
  -[CRLWPLongPressGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([anyObject type]));
  if ((tapCount > 1 || v10) && [(CRLWPLongPressGestureRecognizer *)self state]!= 5)
  {
    [(CRLWPLongPressGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  Current = CFAbsoluteTimeGetCurrent();
  [(CRLWPLongPressGestureRecognizer *)self previousTimestamp];
  v10 = Current - v9;
  [(CRLWPLongPressGestureRecognizer *)self setPreviousTimestamp:Current];
  anyObject = [movedCopy anyObject];
  view = [(CRLWPLongPressGestureRecognizer *)self view];
  [anyObject locationInView:view];
  v14 = v13;
  v16 = v15;

  [(CRLWPLongPressGestureRecognizer *)self previousPosition];
  v18 = v17;
  v20 = v19;
  [(CRLWPLongPressGestureRecognizer *)self setPreviousPosition:v14, v16];
  if (v10 <= 0.0)
  {
    v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A710();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A724(v22, v23);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A7D0();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v24, v22);
    }

    v25 = [NSString stringWithUTF8String:"[CRLWPLongPressGestureRecognizer touchesMoved:withEvent:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPLongPressGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:56 isFatal:0 description:"Time travel should have had a non-zero value here"];

    v21 = 0.0;
  }

  else
  {
    v21 = sub_100120090(v18, v20, v14, v16) / v10;
  }

  [(CRLWPLongPressGestureRecognizer *)self setVelocity:v21];
  v27.receiver = self;
  v27.super_class = CRLWPLongPressGestureRecognizer;
  [(CRLWPLongPressGestureRecognizer *)&v27 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPLongPressGestureRecognizer;
  [(CRLWPLongPressGestureRecognizer *)&v11 reset];
  if (![(CRLWPLongPressGestureRecognizer *)self didSendReset])
  {
    delegate = [(CRLWPLongPressGestureRecognizer *)self delegate];
    v10 = sub_1003035DC(delegate, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

    [v10 didReset:self];
    [(CRLWPLongPressGestureRecognizer *)self setDidSendReset:1];
  }
}

- (CGPoint)previousPosition
{
  x = self->_previousPosition.x;
  y = self->_previousPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end