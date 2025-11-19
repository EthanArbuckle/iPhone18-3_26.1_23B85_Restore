@interface PKRulerGestureRecognizer
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)rulerTransform;
- (CGAffineTransform)unscaledFreeTransform;
- (PKRulerGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)resetAndAccumulateTransform;
- (void)start;
- (void)stopTimer;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PKRulerGestureRecognizer

- (PKRulerGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = PKRulerGestureRecognizer;
  v4 = [(PKFreeTransformGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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
  v5 = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [v5 count];

  if (v6 == 2)
  {
    v8 = [(PKFreeTransformGestureRecognizer *)self touches];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [(PKRulerGestureRecognizer *)self view];
    v11 = [v10 superview];
    [v9 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [(PKFreeTransformGestureRecognizer *)self touches];
    v17 = [v16 objectAtIndexedSubscript:1];
    v18 = [(PKRulerGestureRecognizer *)self view];
    v19 = [v18 superview];
    [v17 locationInView:v19];
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
  v4 = [(PKRulerGestureRecognizer *)self delegate];
  v5 = PKDynamicCast(v3, v4);

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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v11 touchesBegan:a3 withEvent:a4 rejectExcessTouches:0];
  v5 = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [v5 count];

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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKRulerGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(PKRulerGestureRecognizer *)self stopTimer];
}

@end