@interface AVTouchGestureRecognizer
- (void)_addCandidateGestureIncrementForTouches:(id *)touches;
- (void)_evaluateCandidateGestureIncrements;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AVTouchGestureRecognizer

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self)
  {
    if ([(AVTouchGestureRecognizer *)self state:cancelled]== 1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    [(AVTouchGestureRecognizer *)self setState:v5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self)
  {
    if ([(AVTouchGestureRecognizer *)self state:ended]== 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    [(AVTouchGestureRecognizer *)self setState:v5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [(AVTouchGestureRecognizer *)&self->super.super.isa _addCandidateGestureIncrementForTouches:moved];
  if ([(NSMutableArray *)self->_candidateGestureIncrementsMultiTouchInfo count]== 7)
  {

    [(AVTouchGestureRecognizer *)self _evaluateCandidateGestureIncrements];
  }
}

- (void)_addCandidateGestureIncrementForTouches:(id *)touches
{
  v5 = a2;
  if (touches)
  {
    v3 = [touches numberOfTouches] > 1 || objc_msgSend(v5, "count") > 1;
    v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [touches[36] addObject:v4];
  }
}

- (void)_evaluateCandidateGestureIncrements
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = [result state];
    if (!result)
    {
      v2 = v1[36];
      if (v2)
      {
        v9 = 0u;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v3 = v2;
        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v10;
          v7 = 5;
LABEL_7:
          v8 = 0;
          while (1)
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v3);
            }

            if ([*(*(&v9 + 1) + 8 * v8) BOOLValue])
            {
              break;
            }

            if (v5 == ++v8)
            {
              v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
              if (v5)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v7 = 1;
        }

        return [v1 setState:v7];
      }
    }
  }

  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  array = [MEMORY[0x1E695DF70] array];
  candidateGestureIncrementsMultiTouchInfo = self->_candidateGestureIncrementsMultiTouchInfo;
  self->_candidateGestureIncrementsMultiTouchInfo = array;

  [(AVTouchGestureRecognizer *)&self->super.super.isa _addCandidateGestureIncrementForTouches:beganCopy];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E695DFF0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AVTouchGestureRecognizer_touchesBegan_withEvent___block_invoke;
  v13[3] = &unk_1E7209DA8;
  objc_copyWeak(&v14, &location);
  v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v13 block:0.0];
  gestureWarmUpDelayTimer = self->_gestureWarmUpDelayTimer;
  self->_gestureWarmUpDelayTimer = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__AVTouchGestureRecognizer_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVTouchGestureRecognizer *)WeakRetained _evaluateCandidateGestureIncrements];
}

- (void)reset
{
  candidateGestureIncrementsMultiTouchInfo = self->_candidateGestureIncrementsMultiTouchInfo;
  self->_candidateGestureIncrementsMultiTouchInfo = 0;

  [(NSTimer *)self->_gestureWarmUpDelayTimer invalidate];
  gestureWarmUpDelayTimer = self->_gestureWarmUpDelayTimer;
  self->_gestureWarmUpDelayTimer = 0;
}

@end