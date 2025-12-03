@interface ACUISDependencyGestureRecognizer
- (ACUISDependencyGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (BOOL)_didExceedHysteresisWithTouches:(id)touches;
- (BOOL)shouldRecognizeTouchForView:(id)view;
- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view;
- (NSSet)observedControlClasses;
- (void)setObservedControlClasses:(id)classes;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ACUISDependencyGestureRecognizer

- (NSSet)observedControlClasses
{
  observedControlClasses = self->_observedControlClasses;
  if (!observedControlClasses)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v5 = self->_observedControlClasses;
    self->_observedControlClasses = v4;

    observedControlClasses = self->_observedControlClasses;
  }

  return observedControlClasses;
}

- (void)setObservedControlClasses:(id)classes
{
  classesCopy = classes;
  observedControlClasses = self->_observedControlClasses;
  v7 = classesCopy;
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_observedControlClasses, classes);
    if ([(ACUISDependencyGestureRecognizer *)self isEnabled])
    {
      [(ACUISDependencyGestureRecognizer *)self setEnabled:0];
      [(ACUISDependencyGestureRecognizer *)self setEnabled:1];
    }
  }
}

- (ACUISDependencyGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = ACUISDependencyGestureRecognizer;
  v4 = [(ACUISDependencyGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(ACUISDependencyGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(ACUISDependencyGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(ACUISDependencyGestureRecognizer *)v5 setDelegate:v5];
    v5->_hysteresis = 9.0;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = ACUISDependencyGestureRecognizer;
  beganCopy = began;
  [(ACUISDependencyGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:event];
  v7 = _CentroidOfTouches(beganCopy);
  v9 = v8;

  self->_initialSceneReferenceLocation.x = v7;
  self->_initialSceneReferenceLocation.y = v9;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = ACUISDependencyGestureRecognizer;
  [(ACUISDependencyGestureRecognizer *)&v24 touchesMoved:movedCopy withEvent:eventCopy];
  if (![(ACUISDependencyGestureRecognizer *)self state]&& [(ACUISDependencyGestureRecognizer *)self _didExceedHysteresisWithTouches:movedCopy])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = movedCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          view = [*(*(&v20 + 1) + 8 * v12) view];
          if ([(ACUISDependencyGestureRecognizer *)self shouldRecognizeTouchForView:view])
          {

            v18 = 3;
            goto LABEL_18;
          }

          v14 = objc_opt_class();
          v15 = view;
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          [v17 cancelTrackingWithEvent:eventCopy];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = 5;
LABEL_18:

    [(ACUISDependencyGestureRecognizer *)self setState:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldRecognizeTouchForView:(id)view
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v6 = viewCopy;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      observedControlClasses = [(ACUISDependencyGestureRecognizer *)self observedControlClasses];
      v8 = [observedControlClasses countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(observedControlClasses);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            isKindOfClass = objc_opt_isKindOfClass();
          }

          v14 = isKindOfClass;
          v9 = [observedControlClasses countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);

        if (v14)
        {
          v16 = 1;
          goto LABEL_18;
        }
      }

      else
      {
      }

      superview = [v6 superview];

      v6 = superview;
      if (!superview)
      {
        v16 = 0;
        goto LABEL_18;
      }
    }

    v16 = [v6 acuis_wantsPriorityOverTargetOfGestureRecognizer:self];
LABEL_18:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = viewCopy;
  if (viewCopy)
  {
    window = viewCopy;
  }

  else
  {
    view = [(ACUISDependencyGestureRecognizer *)self view];
    window = [view window];
  }

  _window = [window _window];
  v12 = _window;
  if (_window)
  {
    [_window _convertPointFromSceneReferenceSpace:{x, y}];
    x = v13;
    y = v14;
  }

  [window convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_didExceedHysteresisWithTouches:(id)touches
{
  touchesCopy = touches;
  view = [(ACUISDependencyGestureRecognizer *)self view];
  [(ACUISDependencyGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:self->_initialSceneReferenceLocation.x, self->_initialSceneReferenceLocation.y];
  v7 = v6;
  v9 = v8;
  v10 = _CentroidOfTouches(touchesCopy);
  v12 = v11;

  [(ACUISDependencyGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v10, v12];
  v14 = v13 - v7;
  v16 = v15 - v9;
  if (v14 < 0.0)
  {
    v14 = -v14;
  }

  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  v17 = fmax(v14, v16) > self->_hysteresis;

  return v17;
}

@end