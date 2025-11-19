@interface AVScrubbingPanGestureRecognizer
- (CGPoint)translation;
- (CGPoint)velocity;
- (id)_getPanGestureIncrementForTouches:(id *)a1;
- (void)_debugLogGestureIncrements:(id)a3 withPrefix:(id)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation AVScrubbingPanGestureRecognizer

- (void)_debugLogGestureIncrements:(id)a3 withPrefix:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ {\n", a4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [*(*(&v18 + 1) + 8 * v12) debugDescription];
        v16 = [v14 stringWithFormat:@"%ld %@\n", v10, v15, v18];
        v6 = [v13 stringByAppendingString:v16];

        ++v10;
        ++v12;
        v13 = v6;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = [v6 stringByAppendingString:@"}"];

  NSLog(&stru_1EFED6778.isa, v17);
}

- (void)reset
{
  candidateGestureIncrements = self->_candidateGestureIncrements;
  self->_candidateGestureIncrements = 0;

  lastPanGestureIncrement = self->_lastPanGestureIncrement;
  self->_lastPanGestureIncrement = 0;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:a3];
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

- (id)_getPanGestureIncrementForTouches:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 anyObject];
    v5 = [v2 view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;
    [v4 timestamp];
    v11 = v10;
    v12 = [v3 count];

    v13 = v12 > 1 || [v2 numberOfTouches] > 1;
    v14 = v2[36];
    if (v14)
    {
      [v14 translation];
      v16 = v15;
      v18 = v17;
      [v2[36] timestamp];
      v20 = v11 - v19;
      v21 = (v7 - v16) / v20;
      v22 = (v9 - v18) / v20;
    }

    else
    {
      v21 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v2 = [AVPanGestureIncrement gestureIncrementWithTranslation:v13 velocity:v7 timestamp:v9 hasMultipleTouches:v21, v22, v11];
  }

  return v2;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:a3];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:a3];
  objc_storeStrong(&self->_lastPanGestureIncrement, v5);
  if (([(AVScrubbingPanGestureRecognizer *)self state]- 1) > 1)
  {
    [(NSMutableArray *)self->_candidateGestureIncrements addObject:v5];
    candidateGestureIncrements = self->_candidateGestureIncrements;
    v9 = [(AVScrubbingPanGestureRecognizer *)self view];
    v10 = candidateGestureIncrements;
    objc_opt_self();
    if ([(NSMutableArray *)v10 count]> 1)
    {
      v11 = [(NSMutableArray *)v10 lastObject];
      v12 = [(NSMutableArray *)v10 firstObject];
      [v12 translation];
      v14 = v13;
      v16 = v15;
      [v11 translation];
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
        v36 = v11;
        v37 = v9;
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

              v11 = v36;
              v9 = v37;
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
        v11 = v36;
        v9 = v37;
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
    v6 = self;
  }

  else
  {
    v6 = self;
    v7 = 2;
  }

  [(AVScrubbingPanGestureRecognizer *)v6 setState:v7];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  candidateGestureIncrements = self->_candidateGestureIncrements;
  self->_candidateGestureIncrements = v7;

  v9 = [(AVScrubbingPanGestureRecognizer *)&self->super.super.isa _getPanGestureIncrementForTouches:v6];

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