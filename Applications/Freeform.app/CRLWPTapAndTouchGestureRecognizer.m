@interface CRLWPTapAndTouchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLWPTapAndTouchGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"p_failBecauseFingerStayedUpTooLongAfterTap" object:0];
  v12.receiver = self;
  v12.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v12 touchesBegan:v6 withEvent:v7];
  v8 = [v7 allTouches];

  v9 = [v8 count];
  if (v9 < 2)
  {
    v10 = [v6 anyObject];
    -[CRLWPTapAndTouchGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([v10 type]));
    if ([v10 tapCount] >= self->_numberOfTapsRequired + 1)
    {
      if ([v10 tapCount] == (self->_numberOfTapsRequired + 1))
      {
        v11 = 1;
      }

      else
      {
        v11 = 5;
      }

      [(CRLWPTapAndTouchGestureRecognizer *)self setState:v11];
    }
  }

  else
  {
    [(CRLWPTapAndTouchGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v6 touchesMoved:a3 withEvent:a4];
  if ([(CRLWPTapAndTouchGestureRecognizer *)self state]== 1 || [(CRLWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    v5 = 2;
  }

  else if ([(CRLWPTapAndTouchGestureRecognizer *)self state])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(CRLWPTapAndTouchGestureRecognizer *)self setState:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v7 touchesEnded:a3 withEvent:a4];
  if ([(CRLWPTapAndTouchGestureRecognizer *)self state]== 1 || [(CRLWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    v5 = self;
    v6 = 3;
LABEL_4:
    [(CRLWPTapAndTouchGestureRecognizer *)v5 setState:v6];
    return;
  }

  if ([(CRLWPTapAndTouchGestureRecognizer *)self state])
  {
    v5 = self;
    v6 = 4;
    goto LABEL_4;
  }

  [(CRLWPTapAndTouchGestureRecognizer *)self setState:0];
  [(CRLWPTapAndTouchGestureRecognizer *)self performSelector:"p_failBecauseFingerStayedUpTooLongAfterTap" withObject:0 afterDelay:0.400000006];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(CRLWPTapAndTouchGestureRecognizer *)self setState:4];
}

- (void)reset
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"p_failBecauseFingerStayedUpTooLongAfterTap" object:0];
  v11.receiver = self;
  v11.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v11 reset];
  v3 = [(CRLWPTapAndTouchGestureRecognizer *)self delegate];
  v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

  [v10 didReset:self];
}

@end