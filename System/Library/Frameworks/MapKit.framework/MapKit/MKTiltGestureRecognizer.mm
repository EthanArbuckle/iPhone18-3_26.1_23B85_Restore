@interface MKTiltGestureRecognizer
- (MKTiltGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)_activeTouchesForEvent:(id)event;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation MKTiltGestureRecognizer

- (void)reset
{
  touch1 = self->_touch1;
  self->_touch1 = 0;

  touch2 = self->_touch2;
  self->_touch2 = 0;

  v5.receiver = self;
  v5.super_class = MKTiltGestureRecognizer;
  [(MKTiltGestureRecognizer *)&v5 reset];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = MKTiltGestureRecognizer;
  eventCopy = event;
  [(MKTiltGestureRecognizer *)&v10 touchesEnded:ended withEvent:eventCopy];
  v7 = [(MKTiltGestureRecognizer *)self _activeTouchesForEvent:eventCopy, v10.receiver, v10.super_class];

  v8 = [v7 count];
  if (v8 < [(MKTiltGestureRecognizer *)self minimumNumberOfTouches])
  {
    if ([(MKTiltGestureRecognizer *)self state]== 1)
    {
      v9 = 3;
    }

    else if ([(MKTiltGestureRecognizer *)self state]== 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 5;
    }

    [(MKTiltGestureRecognizer *)self setState:v9];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([(MKTiltGestureRecognizer *)self state])
  {
    goto LABEL_2;
  }

  v8 = [(MKTiltGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  v9 = [v8 count];
  if (v9 < [(MKTiltGestureRecognizer *)self minimumNumberOfTouches])
  {
LABEL_18:

    goto LABEL_19;
  }

  if (![v8 containsObject:self->_touch1] || !objc_msgSend(v8, "containsObject:", self->_touch2))
  {
    goto LABEL_17;
  }

  if ((touch1 = self->_touch1, [(MKTiltGestureRecognizer *)self view], v11 = objc_claimAutoreleasedReturnValue(), [(UITouch *)touch1 locationInView:v11], v13 = v12, v15 = v14, v11, touch2 = self->_touch2, [(MKTiltGestureRecognizer *)self view], v17 = objc_claimAutoreleasedReturnValue(), [(UITouch *)touch2 locationInView:v17], v19 = v18, v21 = v20, v17, v22 = v15 - self->_initialTouch1Point.y, v23 = v21 - self->_initialTouch2Point.y, v22 >= 0.0) && v23 <= 0.0 || v22 <= 0.0 && v23 >= 0.0)
  {
    v24 = v22 - v23;
    if (v24 < 0.0)
    {
      v24 = -v24;
    }

    if (v24 > 18.0)
    {
      goto LABEL_17;
    }
  }

  [(MKTiltGestureRecognizer *)self _distanceFromPoint:v13 toPoint:v15, v19, v21];
  v26 = v25 - self->_initialDistance;
  if (v26 < 0.0)
  {
    v26 = -v26;
  }

  if (v26 > 15.0)
  {
LABEL_17:
    [(MKTiltGestureRecognizer *)self setState:5];
    goto LABEL_18;
  }

LABEL_2:
  v27.receiver = self;
  v27.super_class = MKTiltGestureRecognizer;
  [(MKTiltGestureRecognizer *)&v27 touchesMoved:movedCopy withEvent:eventCopy];
LABEL_19:
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v40 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  if (![(MKTiltGestureRecognizer *)self state])
  {
    v8 = [(MKTiltGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
    allObjects = [v8 allObjects];
    if ([v8 count])
    {
      if (!self->_touch1)
      {
        v10 = [allObjects objectAtIndex:0];
        touch1 = self->_touch1;
        self->_touch1 = v10;

        v12 = v8;
        v13 = self->_touch1;
        [(MKTiltGestureRecognizer *)self view];
        v15 = v14 = allObjects;
        v16 = v13;
        v8 = v12;
        [(UITouch *)v16 locationInView:v15];
        self->_initialTouch1Point.x = v17;
        self->_initialTouch1Point.y = v18;

        allObjects = v14;
      }

      if (!self->_touch2)
      {
        v30 = allObjects;
        v31 = v8;
        v32 = eventCopy;
        v33 = beganCopy;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v19 = v8;
        v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v36;
          do
          {
            v23 = 0;
            do
            {
              if (*v36 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v35 + 1) + 8 * v23);
              if (v24 != self->_touch1)
              {
                objc_storeStrong(&self->_touch2, v24);
                touch2 = self->_touch2;
                view = [(MKTiltGestureRecognizer *)self view];
                [(UITouch *)touch2 locationInView:view];
                self->_initialTouch2Point.x = v27;
                self->_initialTouch2Point.y = v28;
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v21);
        }

        eventCopy = v32;
        beganCopy = v33;
        allObjects = v30;
        v8 = v31;
      }

      if (self->_touch1 && self->_touch2)
      {
        [(MKTiltGestureRecognizer *)self _distanceFromPoint:self->_initialTouch1Point.x toPoint:self->_initialTouch1Point.y, self->_initialTouch2Point.x, self->_initialTouch2Point.y];
        self->_initialDistance = v29;
      }
    }
  }

  v34.receiver = self;
  v34.super_class = MKTiltGestureRecognizer;
  [(MKTiltGestureRecognizer *)&v34 touchesBegan:beganCopy withEvent:eventCopy, v30, v31, v32, v33];
}

- (id)_activeTouchesForEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [eventCopy touchesForGestureRecognizer:{self, 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 phase] <= 2)
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DFA8] set];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MKTiltGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = MKTiltGestureRecognizer;
  v4 = [(MKTiltGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(MKTiltGestureRecognizer *)v4 setMinimumNumberOfTouches:2];
    [(MKTiltGestureRecognizer *)v5 setMaximumNumberOfTouches:2];
    [(MKTiltGestureRecognizer *)v5 _setCanPanHorizontally:0];
    v6 = v5;
  }

  return v5;
}

@end