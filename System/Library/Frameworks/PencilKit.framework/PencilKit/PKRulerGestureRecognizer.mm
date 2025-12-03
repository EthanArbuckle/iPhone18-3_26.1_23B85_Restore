@interface PKRulerGestureRecognizer
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)rulerTransform;
- (CGAffineTransform)unscaledFreeTransform;
- (PKRulerGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)resetAndAccumulateTransform;
- (void)start;
- (void)stopTimer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKRulerGestureRecognizer

- (PKRulerGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PKRulerGestureRecognizer;
  v4 = [(PKFreeTransformGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PKFreeTransformGestureRecognizer *)v4 setStartThreshold:1.79769313e308];
    [(PKRulerGestureRecognizer *)v5 setAllowedTouchTypes:&unk_1F47C1E98];
  }

  return v5;
}

- (CGAffineTransform)freeTransform
{
  if (LOBYTE(self[9].b) == 1)
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PKRulerGestureRecognizer;
    return [(CGAffineTransform *)&v7 freeTransform];
  }

  return self;
}

- (CGAffineTransform)unscaledFreeTransform
{
  if (LOBYTE(self[9].b) == 1)
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PKRulerGestureRecognizer;
    return [(CGAffineTransform *)&v7 unscaledFreeTransform];
  }

  return self;
}

- (CGAffineTransform)rulerTransform
{
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [touches count];

  if (v6 == 2)
  {
    touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
    v9 = [touches2 objectAtIndexedSubscript:0];
    view = [(PKRulerGestureRecognizer *)self view];
    superview = [view superview];
    [v9 locationInView:superview];
    v13 = v12;
    v15 = v14;

    touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
    v17 = [touches3 objectAtIndexedSubscript:1];
    view2 = [(PKRulerGestureRecognizer *)self view];
    superview2 = [view2 superview];
    [v17 locationInView:superview2];
    v21 = v20;
    v23 = v22;

    v24 = atan2(v15 - v23, v13 - v21);
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    CGAffineTransformMakeRotation(&t1, v24);
    CGAffineTransformMakeTranslation(&v27, (v13 + v21) * 0.5, (v15 + v23) * 0.5);
    return CGAffineTransformConcat(retstr, &t1, &v27);
  }

  else
  {
    v25 = MEMORY[0x1E695EFD0];
    v26 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v26;
    *&retstr->tx = *(v25 + 32);
  }

  return result;
}

- (void)resetAndAccumulateTransform
{
  v3 = objc_opt_class();
  delegate = [(PKRulerGestureRecognizer *)self delegate];
  v5 = PKDynamicCast(v3, delegate);

  if (v5)
  {
    [(PKRulerController *)v5 resetRulerTransform];
    [(PKFreeTransformGestureRecognizer *)self resetStartingTouches];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PKRulerGestureRecognizer;
    [(PKFreeTransformGestureRecognizer *)&v6 resetAndAccumulateTransform];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v3 reset];
  [(PKRulerGestureRecognizer *)self stopTimer];
  self->_initialSnap = 1;
}

- (void)start
{
  [(PKRulerGestureRecognizer *)self stopTimer];
  if ([(PKRulerGestureRecognizer *)self state]!= 1)
  {

    [(PKRulerGestureRecognizer *)self setState:1];
  }
}

- (void)stopTimer
{
  [(NSTimer *)self->_startTimer invalidate];
  startTimer = self->_startTimer;
  self->_startTimer = 0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v11 touchesBegan:began withEvent:event rejectExcessTouches:0];
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [touches count];

  if (v6 == 2)
  {
    [(PKRulerGestureRecognizer *)self startDelay];
    if (v7 <= 0.0)
    {
      [(PKRulerGestureRecognizer *)self start];
    }

    else if (!self->_startTimer)
    {
      v8 = MEMORY[0x1E695DFF0];
      [(PKRulerGestureRecognizer *)self startDelay];
      v9 = [v8 scheduledTimerWithTimeInterval:self target:sel_start selector:0 userInfo:0 repeats:?];
      startTimer = self->_startTimer;
      self->_startTimer = v9;
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  if (self->_initialSnap)
  {
    [(PKRulerGestureRecognizer *)self startSnapThreshold];
    if ([(PKFreeTransformGestureRecognizer *)self touchesMovedPastThreshold:?])
    {
      self->_initialSnap = 0;
      [(PKFreeTransformGestureRecognizer *)self resetStartingTouches];
    }
  }

  if ([(PKRulerGestureRecognizer *)self state])
  {
    [(PKRulerGestureRecognizer *)self stopTimer];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(PKRulerGestureRecognizer *)self stopTimer];
}

@end