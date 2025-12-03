@interface BKSwipeGestureRecognizer
- (BKSwipeGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (BOOL)_checkForSwipeWithDelta:(CGPoint)delta time:(double)time;
- (CGPoint)centroidOfTouches:(id)touches excludingEnded:(BOOL)ended;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view;
- (CGPoint)startPoint;
- (void)_appendSubclassDescription:(id)description;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation BKSwipeGestureRecognizer

- (CGPoint)centroidOfTouches:(id)touches excludingEnded:(BOOL)ended
{
  endedCopy = ended;
  touchesCopy = touches;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [touchesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(touchesCopy);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (!endedCopy || [*(*(&v23 + 1) + 8 * i) phase] <= 2)
        {
          window = [v13 window];
          [v13 locationInView:0];
          [window convertPoint:0 toWindow:?];
          v16 = v15;
          v18 = v17;

          v9 = v9 + v16;
          v10 = v10 + v18;
          v11 = v11 + 1.0;
        }
      }

      v7 = [touchesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
    v19 = 0.0;
    v20 = 0.0;
    if (v11 > 0.0)
    {
      v19 = v9 / v11;
      v20 = v10 / v11;
    }
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
  }

  v21 = v19;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (BKSwipeGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = BKSwipeGestureRecognizer;
  v4 = [(BKSwipeGestureRecognizer *)&v9 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_maximumDuration = 0.5;
    v4->_minimumPrimaryMovement = 50.0;
    v4->_maximumPrimaryMovement = 3.40282347e38;
    v4->_minimumSecondaryMovement = 0.0;
    v4->_maximumSecondaryMovement = 200.0;
    v4->_rateOfMinimumMovementDecay = 0.06;
    v4->_rateOfMaximumMovementDecay = 0.02;
    v4->_direction = 1;
    v6 = objc_alloc_init(NSMutableArray);
    touches = v5->_touches;
    v5->_touches = v6;

    [(BKSwipeGestureRecognizer *)v5 setNumberOfTouchesRequired:1];
  }

  return v5;
}

- (CGPoint)startPoint
{
  view = [(BKSwipeGestureRecognizer *)self view];
  view2 = [(BKSwipeGestureRecognizer *)self view];
  window = [view2 window];
  [window convertPoint:0 fromWindow:{self->_startLocation.x, self->_startLocation.y}];
  [view convertPoint:0 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)reset
{
  self->_startLocation = CGPointZero;
  *(self + 120) &= ~1u;
  [(NSMutableArray *)self->_touches removeAllObjects];
  v3.receiver = self;
  v3.super_class = BKSwipeGestureRecognizer;
  [(BKSwipeGestureRecognizer *)&v3 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v6 = beganCopy;
  if ((*(self + 120) & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [beganCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = objc_getAssociatedObject(v11, &unk_295B10);

          if (!v12)
          {
            window = [v11 window];
            [v11 locationInView:0];
            [window convertPoint:0 toWindow:?];
            v15 = v14;
            v17 = v16;

            v18 = [NSValue valueWithCGPoint:v15, v17];
            objc_setAssociatedObject(v11, &unk_295B10, v18, &dword_0 + 1);
          }

          v19 = objc_getAssociatedObject(v11, &unk_295B11);

          if (!v19)
          {
            v20 = [NSNumber numberWithDouble:CACurrentMediaTime()];
            objc_setAssociatedObject(v11, &unk_295B11, v20, &dword_0 + 1);
          }

          [(NSMutableArray *)self->_touches addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    [(BKSwipeGestureRecognizer *)self centroidOfTouches:self->_touches excludingEnded:1];
    self->_startLocation.x = v21;
    self->_startLocation.y = v22;
  }
}

- (BOOL)_checkForSwipeWithDelta:(CGPoint)delta time:(double)time
{
  minimumPrimaryMovement = self->_minimumPrimaryMovement;
  v5 = -time;
  if (time >= 0.5)
  {
    v5 = -0.5;
  }

  v6 = v5 * (1.0 - self->_rateOfMinimumMovementDecay) + 1.0;
  v7 = minimumPrimaryMovement * v6;
  v8 = minimumPrimaryMovement == 3.40282347e38;
  maximumPrimaryMovement = self->_maximumPrimaryMovement;
  if (v8)
  {
    v7 = 3.40282347e38;
  }

  v10 = v5 * (1.0 - self->_rateOfMaximumMovementDecay) + 1.0;
  v11 = maximumPrimaryMovement * v10;
  if (maximumPrimaryMovement == 3.40282347e38)
  {
    v11 = 3.40282347e38;
  }

  minimumSecondaryMovement = self->_minimumSecondaryMovement;
  if (minimumSecondaryMovement == 3.40282347e38)
  {
    v13 = 3.40282347e38;
  }

  else
  {
    v13 = v6 * minimumSecondaryMovement;
  }

  maximumSecondaryMovement = self->_maximumSecondaryMovement;
  v15 = v10 * maximumSecondaryMovement;
  if (maximumSecondaryMovement == 3.40282347e38)
  {
    v15 = 3.40282347e38;
  }

  direction = self->_direction;
  v17 = direction & 3;
  if (v17 == 1 && delta.x < 0.0)
  {
    goto LABEL_23;
  }

  if (v17 == 2 && delta.x > 0.0)
  {
    goto LABEL_23;
  }

  v18 = direction & 0xC;
  if (v18 == 4 && delta.y > 0.0)
  {
    goto LABEL_23;
  }

  if (v18 == 8 && delta.y < 0.0)
  {
    goto LABEL_23;
  }

  if (v17)
  {
    v19 = fabs(delta.x);
    if (v19 > v11 || (v20 = fabs(delta.y), v20 > v15))
    {
LABEL_23:
      LOBYTE(v17) = 0;
LABEL_24:
      *(self + 120) |= 1u;
      return v17 & 1;
    }

    LOBYTE(v17) = v19 >= v7;
    if (v20 < v13)
    {
      LOBYTE(v17) = 0;
    }
  }

  if (!v18)
  {
    return v17 & 1;
  }

  v22 = fabs(delta.y);
  v23 = fabs(delta.x);
  if (v22 > v11 || v23 > v15)
  {
    goto LABEL_24;
  }

  v25 = v22 >= v7;
  if (v23 < v13)
  {
    v25 = 0;
  }

  LOBYTE(v17) = v25 | v17;
  return v17 & 1;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5 = CACurrentMediaTime();
  if ([(NSMutableArray *)self->_touches count]>= self->_numberOfTouchesRequired)
  {
    if (*(self + 120))
    {
      return;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = self->_touches;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v42;
      y = CGPointZero.y;
      do
      {
        v12 = v6;
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v12);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          window = [v14 window];
          [v14 locationInView:0];
          [window convertPoint:0 toWindow:?];
          v17 = v16;
          v19 = v18;

          v20 = objc_getAssociatedObject(v14, &unk_295B10);
          [v20 CGPointValue];
          v22 = v17 - v21;
          v24 = v19 - v23;
          view = [(BKSwipeGestureRecognizer *)self view];
          window2 = [view window];

          if (window2)
          {
            view2 = [(BKSwipeGestureRecognizer *)self view];
            [window2 convertPoint:0 fromWindow:{v22, v24}];
            [view2 convertPoint:0 fromView:?];
            v29 = v28;
            v31 = v30;

            view3 = [(BKSwipeGestureRecognizer *)self view];
            [window2 convertPoint:0 fromWindow:{CGPointZero.x, y}];
            [view3 convertPoint:0 fromView:?];
            v34 = v33;
            v36 = v35;

            v22 = v29 - v34;
            v24 = v31 - v36;
          }

          if (sqrt(v24 * v24 + v22 * v22) > 10.0)
          {
            v37 = objc_getAssociatedObject(v14, &unk_295B11);
            [v37 doubleValue];
            v9 |= [(BKSwipeGestureRecognizer *)self _checkForSwipeWithDelta:v22 time:v24, v5 - v38];
          }
        }

        v6 = v12;
        v8 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);

      if (v9)
      {
        selfCopy2 = self;
        v40 = 3;
LABEL_22:
        [(BKSwipeGestureRecognizer *)selfCopy2 setState:v40];
        return;
      }
    }

    else
    {
    }

    if ((*(self + 120) & 1) == 0)
    {
      return;
    }

    selfCopy2 = self;
    v40 = 5;
    goto LABEL_22;
  }

  [(BKSwipeGestureRecognizer *)self setState:5];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [endedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(endedCopy);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        objc_setAssociatedObject(v10, &unk_295B10, 0, &dword_0 + 1);
        objc_setAssociatedObject(v10, &unk_295B11, 0, &dword_0 + 1);
        [(NSMutableArray *)self->_touches removeObject:v10];
      }

      v7 = [endedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    *(self + 120) |= 1u;
  }

  else
  {
    [(BKSwipeGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [cancelledCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(cancelledCopy);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        objc_setAssociatedObject(v10, &unk_295B10, 0, &dword_0 + 1);
        objc_setAssociatedObject(v10, &unk_295B11, 0, &dword_0 + 1);
        [(NSMutableArray *)self->_touches removeObject:v10];
      }

      v7 = [cancelledCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    *(self + 120) |= 1u;
  }

  else
  {
    [(BKSwipeGestureRecognizer *)self setState:5];
  }
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  [window convertPoint:0 fromWindow:{self->_startLocation.x, self->_startLocation.y}];
  [viewCopy convertPoint:0 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view
{
  touches = self->_touches;
  viewCopy = view;
  v7 = [(NSMutableArray *)touches objectAtIndex:touch];
  v8 = objc_getAssociatedObject(v7, &unk_295B10);

  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;
  window = [viewCopy window];
  [window convertPoint:0 fromWindow:{v10, v12}];
  [viewCopy convertPoint:0 fromView:?];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)_appendSubclassDescription:(id)description
{
  descriptionCopy = description;
  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  v8 = descriptionCopy;
  if (numberOfTouchesRequired != 1)
  {
    [descriptionCopy appendFormat:@"; numberOfTouchesRequired = %lu", numberOfTouchesRequired];
    descriptionCopy = v8;
  }

  if (self->_direction)
  {
    [descriptionCopy appendString:@"; direction = "];
    direction = self->_direction;
    if (direction)
    {
      [v8 appendString:@"right"];
      v7 = self->_direction;
      if ((v7 & 2) == 0)
      {
LABEL_12:
        if ((v7 & 4) == 0)
        {
LABEL_15:
          descriptionCopy = v8;
          if ((v7 & 8) == 0)
          {
            goto LABEL_18;
          }

          [v8 appendString:{@", "}];
          goto LABEL_17;
        }

        [v8 appendString:{@", "}];
        descriptionCopy = v8;
LABEL_14:
        [descriptionCopy appendString:@"up"];
        v7 = self->_direction;
        goto LABEL_15;
      }

      [v8 appendString:{@", "}];
    }

    else if ((direction & 2) == 0)
    {
      descriptionCopy = v8;
      if ((direction & 4) == 0)
      {
        if ((direction & 8) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        [v8 appendString:@"down"];
        descriptionCopy = v8;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    [v8 appendString:@"left"];
    v7 = self->_direction;
    goto LABEL_12;
  }

LABEL_18:
}

@end