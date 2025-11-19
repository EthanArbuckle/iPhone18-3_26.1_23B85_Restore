@interface CRLWPLongPressGestureRecognizer
- (CGPoint)previousPosition;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLWPLongPressGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CRLWPLongPressGestureRecognizer *)self setDidSendReset:0];
  [(CRLWPLongPressGestureRecognizer *)self setPreviousTimestamp:CFAbsoluteTimeGetCurrent()];
  v13.receiver = self;
  v13.super_class = CRLWPLongPressGestureRecognizer;
  [(CRLWPLongPressGestureRecognizer *)&v13 touchesBegan:v7 withEvent:v6];
  v8 = [v7 anyObject];

  v9 = [(CRLWPLongPressGestureRecognizer *)self view];
  [v8 locationInView:v9];
  [(CRLWPLongPressGestureRecognizer *)self setPreviousPosition:?];

  v10 = 0;
  if ([(CRLWPLongPressGestureRecognizer *)self numberOfTouchesRequired]<= 1)
  {
    v11 = [v6 allTouches];
    v10 = [v11 count] > 1;
  }

  v12 = [v8 tapCount];
  -[CRLWPLongPressGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([v8 type]));
  if ((v12 > 1 || v10) && [(CRLWPLongPressGestureRecognizer *)self state]!= 5)
  {
    [(CRLWPLongPressGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  [(CRLWPLongPressGestureRecognizer *)self previousTimestamp];
  v10 = Current - v9;
  [(CRLWPLongPressGestureRecognizer *)self setPreviousTimestamp:Current];
  v11 = [v6 anyObject];
  v12 = [(CRLWPLongPressGestureRecognizer *)self view];
  [v11 locationInView:v12];
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
  [(CRLWPLongPressGestureRecognizer *)&v27 touchesMoved:v6 withEvent:v7];
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPLongPressGestureRecognizer;
  [(CRLWPLongPressGestureRecognizer *)&v11 reset];
  if (![(CRLWPLongPressGestureRecognizer *)self didSendReset])
  {
    v3 = [(CRLWPLongPressGestureRecognizer *)self delegate];
    v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

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