@interface CRLWPImmediatePressGestureRecognizer
- (CGPoint)initialPosition;
- (CGPoint)previousPosition;
- (UIView)canvasView;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLWPImmediatePressGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CRLWPImmediatePressGestureRecognizer *)self setDidSendReset:0];
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousTimestamp:CFAbsoluteTimeGetCurrent()];
  v14.receiver = self;
  v14.super_class = CRLWPImmediatePressGestureRecognizer;
  [(CRLWPImmediatePressGestureRecognizer *)&v14 touchesBegan:v7 withEvent:v6];

  v8 = [v7 anyObject];

  v9 = [(CRLWPImmediatePressGestureRecognizer *)self canvasView];

  if (v9)
  {
    [(CRLWPImmediatePressGestureRecognizer *)self canvasView];
  }

  else
  {
    [(CRLWPImmediatePressGestureRecognizer *)self view];
  }
  v10 = ;
  [v8 locationInView:v10];
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousPosition:?];

  v11 = [v8 tapCount];
  -[CRLWPImmediatePressGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([v8 type]));
  v12 = [(CRLWPImmediatePressGestureRecognizer *)self state];
  if (v11 < 2)
  {
    if (v12 <= 0)
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

  else if (v12 != 5)
  {
    goto LABEL_6;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  [(CRLWPImmediatePressGestureRecognizer *)self previousTimestamp];
  v10 = Current - v9;
  [(CRLWPImmediatePressGestureRecognizer *)self setPreviousTimestamp:Current];
  v11 = [v6 anyObject];
  v12 = [(CRLWPImmediatePressGestureRecognizer *)self view];
  [v11 locationInView:v12];
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
  [(CRLWPImmediatePressGestureRecognizer *)&v27 touchesMoved:v6 withEvent:v7];
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPImmediatePressGestureRecognizer;
  [(CRLWPImmediatePressGestureRecognizer *)&v11 reset];
  if (![(CRLWPImmediatePressGestureRecognizer *)self didSendReset])
  {
    v3 = [(CRLWPImmediatePressGestureRecognizer *)self delegate];
    v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

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