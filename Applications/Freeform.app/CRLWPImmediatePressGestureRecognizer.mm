@interface CRLWPImmediatePressGestureRecognizer
- (CGPoint)initialPosition;
- (CGPoint)previousPosition;
- (UIView)canvasView;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLWPImmediatePressGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(CRLWPImmediatePressGestureRecognizer *)self setDidSendReset:0];
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousTimestamp:CFAbsoluteTimeGetCurrent()];
  v14.receiver = self;
  v14.super_class = CRLWPImmediatePressGestureRecognizer;
  [(CRLWPImmediatePressGestureRecognizer *)&v14 touchesBegan:beganCopy withEvent:eventCopy];

  anyObject = [beganCopy anyObject];

  canvasView = [(CRLWPImmediatePressGestureRecognizer *)self canvasView];

  if (canvasView)
  {
    [(CRLWPImmediatePressGestureRecognizer *)self canvasView];
  }

  else
  {
    [(CRLWPImmediatePressGestureRecognizer *)self view];
  }
  v10 = ;
  [anyObject locationInView:v10];
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousPosition:?];

  tapCount = [anyObject tapCount];
  -[CRLWPImmediatePressGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([anyObject type]));
  state = [(CRLWPImmediatePressGestureRecognizer *)self state];
  if (tapCount < 2)
  {
    if (state <= 0)
    {
      [(CRLWPImmediatePressGestureRecognizer *)self previousPosition];
      [(CRLWPImmediatePressGestureRecognizer *)self setInitialPosition:?];
      if (([(CRLWPImmediatePressGestureRecognizer *)self modifierFlags]& 0x20000) != 0)
      {
        v13 = 1;
        goto LABEL_13;
      }

      if ([(CRLWPImmediatePressGestureRecognizer *)self disallowOptionKey]&& ([(CRLWPImmediatePressGestureRecognizer *)self modifierFlags]& 0x80000) != 0)
      {
LABEL_6:
        v13 = 5;
LABEL_13:
        [(CRLWPImmediatePressGestureRecognizer *)self setState:v13];
      }
    }
  }

  else if (state != 5)
  {
    goto LABEL_6;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  Current = CFAbsoluteTimeGetCurrent();
  [(CRLWPImmediatePressGestureRecognizer *)self previousTimestamp];
  v10 = Current - v9;
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousTimestamp:Current];
  anyObject = [movedCopy anyObject];
  view = [(CRLWPImmediatePressGestureRecognizer *)self view];
  [anyObject locationInView:view];
  v14 = v13;
  v16 = v15;

  [(CRLWPImmediatePressGestureRecognizer *)self previousPosition];
  v18 = v17;
  v20 = v19;
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousPosition:v14, v16];
  if (v10 <= 0.0)
  {
    v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101390580();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101390594(v22, v23);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101390640();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v24, v22);
    }

    v25 = [NSString stringWithUTF8String:"[CRLWPImmediatePressGestureRecognizer touchesMoved:withEvent:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPImmediatePressGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:75 isFatal:0 description:"Time travel should have had a non-zero value here"];

    v21 = 0.0;
  }

  else
  {
    v21 = sub_100120090(v18, v20, v14, v16) / v10;
  }

  [(CRLWPImmediatePressGestureRecognizer *)self setVelocity:v21];
  v27.receiver = self;
  v27.super_class = CRLWPImmediatePressGestureRecognizer;
  [(CRLWPImmediatePressGestureRecognizer *)&v27 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPImmediatePressGestureRecognizer;
  [(CRLWPImmediatePressGestureRecognizer *)&v11 reset];
  if (![(CRLWPImmediatePressGestureRecognizer *)self didSendReset])
  {
    delegate = [(CRLWPImmediatePressGestureRecognizer *)self delegate];
    v10 = sub_1003035DC(delegate, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

    [v10 didReset:self];
    [(CRLWPImmediatePressGestureRecognizer *)self setDidSendReset:1];
  }
}

- (CGPoint)initialPosition
{
  x = self->_initialPosition.x;
  y = self->_initialPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)canvasView
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  return WeakRetained;
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