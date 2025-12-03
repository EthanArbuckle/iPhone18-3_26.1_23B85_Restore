@interface CRLWPTapAndTouchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLWPTapAndTouchGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"p_failBecauseFingerStayedUpTooLongAfterTap" object:0];
  v12.receiver = self;
  v12.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v12 touchesBegan:beganCopy withEvent:eventCopy];
  allTouches = [eventCopy allTouches];

  v9 = [allTouches count];
  if (v9 < 2)
  {
    anyObject = [beganCopy anyObject];
    -[CRLWPTapAndTouchGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([anyObject type]));
    if ([anyObject tapCount] >= self->_numberOfTapsRequired + 1)
    {
      if ([anyObject tapCount] == (self->_numberOfTapsRequired + 1))
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v6 touchesMoved:moved withEvent:event];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v7 touchesEnded:ended withEvent:event];
  if ([(CRLWPTapAndTouchGestureRecognizer *)self state]== 1 || [(CRLWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    selfCopy2 = self;
    v6 = 3;
LABEL_4:
    [(CRLWPTapAndTouchGestureRecognizer *)selfCopy2 setState:v6];
    return;
  }

  if ([(CRLWPTapAndTouchGestureRecognizer *)self state])
  {
    selfCopy2 = self;
    v6 = 4;
    goto LABEL_4;
  }

  [(CRLWPTapAndTouchGestureRecognizer *)self setState:0];
  [(CRLWPTapAndTouchGestureRecognizer *)self performSelector:"p_failBecauseFingerStayedUpTooLongAfterTap" withObject:0 afterDelay:0.400000006];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(CRLWPTapAndTouchGestureRecognizer *)self setState:4];
}

- (void)reset
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"p_failBecauseFingerStayedUpTooLongAfterTap" object:0];
  v11.receiver = self;
  v11.super_class = CRLWPTapAndTouchGestureRecognizer;
  [(CRLWPTapAndTouchGestureRecognizer *)&v11 reset];
  delegate = [(CRLWPTapAndTouchGestureRecognizer *)self delegate];
  v10 = sub_1003035DC(delegate, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

  [v10 didReset:self];
}

@end