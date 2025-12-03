@interface AVScrubbingPanGestureRecognizer
- (CGPoint)translation;
- (CGPoint)velocity;
- (id)_getPanGestureIncrementForTouches:(id *)touches;
- (void)_debugLogGestureIncrements:(id)increments withPrefix:(id)prefix;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AVScrubbingPanGestureRecognizer

- (void)_debugLogGestureIncrements:(id)increments withPrefix:(id)prefix
{
  v23 = *MEMORY[0x1E69E9840];
  incrementsCopy = increments;
  prefix = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ {\n", prefix];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = incrementsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    do
    {
      v12 = 0;
      v13 = prefix;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [*(*(&v18 + 1) + 8 * v12) debugDescription];
        v16 = [v14 stringWithFormat:@"%ld %@\n", v10, v15, v18];
        prefix = [v13 stringByAppendingString:v16];

        ++v10;
        ++v12;
        v13 = prefix;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = [prefix stringByAppendingString:@"}"];

  NSLog(&stru_1EFED6778.isa, v17);
}

- (void)reset
{
  candidateGestureIncrements = self->_candidateGestureIncrements;
  self->_candidateGestureIncrements = 0;

  lastPanGestureIncrement = self->_lastPanGestureIncrement;
  self->_lastPanGestureIncrement = 0;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:cancelled];
  lastPanGestureIncrement = self->_lastPanGestureIncrement;
  self->_lastPanGestureIncrement = v5;

  if (([(AVScrubbingPanGestureRecognizer *)self state]- 1) < 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  [(AVScrubbingPanGestureRecognizer *)self setState:v7];
}

- (id)_getPanGestureIncrementForTouches:(id *)touches
{
  touchesCopy = touches;
  if (touches)
  {
    v3 = a2;
    anyObject = [v3 anyObject];
    view = [touchesCopy view];
    [anyObject locationInView:view];
    v7 = v6;
    v9 = v8;
    [anyObject timestamp];
    v11 = v10;
    v12 = [v3 count];

    v13 = v12 > 1 || [touchesCopy numberOfTouches] > 1;
    v14 = touchesCopy[36];
    if (v14)
    {
      [v14 translation];
      v16 = v15;
      v18 = v17;
      [touchesCopy[36] timestamp];
      v20 = v11 - v19;
      v21 = (v7 - v16) / v20;
      v22 = (v9 - v18) / v20;
    }

    else
    {
      v21 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695EFF8] + 8);
    }

    touchesCopy = [AVPanGestureIncrement gestureIncrementWithTranslation:v13 velocity:v7 timestamp:v9 hasMultipleTouches:v21, v22, v11];
  }

  return touchesCopy;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:ended];
  lastPanGestureIncrement = self->_lastPanGestureIncrement;
  self->_lastPanGestureIncrement = v5;

  if (([(AVScrubbingPanGestureRecognizer *)self state]- 1) >= 2)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  [(AVScrubbingPanGestureRecognizer *)self setState:v7];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:moved];
  objc_storeStrong(&self->_lastPanGestureIncrement, v5);
  if (([(AVScrubbingPanGestureRecognizer *)self state]- 1) > 1)
  {
    [(NSMutableArray *)self->_candidateGestureIncrements addObject:v5];
    candidateGestureIncrements = self->_candidateGestureIncrements;
    view = [(AVScrubbingPanGestureRecognizer *)self view];
    v10 = candidateGestureIncrements;
    objc_opt_self();
    if ([(NSMutableArray *)v10 count]> 1)
    {
      lastObject = [(NSMutableArray *)v10 lastObject];
      firstObject = [(NSMutableArray *)v10 firstObject];
      [firstObject translation];
      v14 = v13;
      v16 = v15;
      [lastObject translation];
      v18 = v17 - v14;
      v20 = v19 - v16;
      *&v17 = v17 - v14;
      *&v19 = v19 - v16;
      v21 = hypotf(*&v17, *&v19);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v10 = v10;
      v22 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v36 = lastObject;
        v37 = view;
        v24 = 0;
        v25 = *v39;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v10);
            }

            v27 = *(*(&v38 + 1) + 8 * i);
            [v27 velocity];
            v29 = v28;
            v31 = v30;
            if ([v27 hasMultipleTouches])
            {

              lastObject = v36;
              view = v37;
LABEL_22:

              v35 = self->_candidateGestureIncrements;
              self->_candidateGestureIncrements = 0;

              v7 = 5;
              goto LABEL_26;
            }

            v32 = v31 != 0.0 || v29 != 0.0;
            v24 += v32;
          }

          v23 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

        v33 = v24 < 3 || v21 <= 15.0;
        lastObject = v36;
        view = v37;
        if (!v33)
        {
          if (fabs(v18) > fabs(v20))
          {

            v34 = self->_candidateGestureIncrements;
            self->_candidateGestureIncrements = 0;

            v7 = 1;
            goto LABEL_26;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v7 = 0;
LABEL_26:
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    v7 = 2;
  }

  [(AVScrubbingPanGestureRecognizer *)selfCopy2 setState:v7];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = MEMORY[0x1E695DF70];
  beganCopy = began;
  array = [v5 array];
  candidateGestureIncrements = self->_candidateGestureIncrements;
  self->_candidateGestureIncrements = array;

  v9 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:beganCopy];

  lastPanGestureIncrement = self->_lastPanGestureIncrement;
  self->_lastPanGestureIncrement = v9;
  v11 = v9;

  [(NSMutableArray *)self->_candidateGestureIncrements addObject:v11];
}

- (CGPoint)translation
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  if (self && ([(AVScrubbingPanGestureRecognizer *)self state]- 1) <= 1)
  {
    [(AVPanGestureIncrement *)self->_lastPanGestureIncrement translation];
    v2 = v5;
    v3 = v6;
  }

  v7 = v2;
  v8 = v3;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)velocity
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  if (self && ([(AVScrubbingPanGestureRecognizer *)self state]- 1) <= 1)
  {
    [(AVPanGestureIncrement *)self->_lastPanGestureIncrement velocity];
    v2 = v5;
    v3 = v6;
  }

  v7 = v2;
  v8 = v3;
  result.y = v8;
  result.x = v7;
  return result;
}

@end