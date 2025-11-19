@interface ACUISDependencyGestureRecognizer
- (ACUISDependencyGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (BOOL)_didExceedHysteresisWithTouches:(id)a3;
- (BOOL)shouldRecognizeTouchForView:(id)a3;
- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (NSSet)observedControlClasses;
- (void)setObservedControlClasses:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)setObservedControlClasses:(id)a3
{
  v5 = a3;
  observedControlClasses = self->_observedControlClasses;
  v7 = v5;
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_observedControlClasses, a3);
    if ([(ACUISDependencyGestureRecognizer *)self isEnabled])
    {
      [(ACUISDependencyGestureRecognizer *)self setEnabled:0];
      [(ACUISDependencyGestureRecognizer *)self setEnabled:1];
    }
  }
}

- (ACUISDependencyGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = ACUISDependencyGestureRecognizer;
  v4 = [(ACUISDependencyGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = ACUISDependencyGestureRecognizer;
  v6 = a3;
  [(ACUISDependencyGestureRecognizer *)&v10 touchesBegan:v6 withEvent:a4];
  v7 = _CentroidOfTouches(v6);
  v9 = v8;

  self->_initialSceneReferenceLocation.x = v7;
  self->_initialSceneReferenceLocation.y = v9;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = ACUISDependencyGestureRecognizer;
  [(ACUISDependencyGestureRecognizer *)&v24 touchesMoved:v6 withEvent:v7];
  if (![(ACUISDependencyGestureRecognizer *)self state]&& [(ACUISDependencyGestureRecognizer *)self _didExceedHysteresisWithTouches:v6])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
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

          v13 = [*(*(&v20 + 1) + 8 * v12) view];
          if ([(ACUISDependencyGestureRecognizer *)self shouldRecognizeTouchForView:v13])
          {

            v18 = 3;
            goto LABEL_18;
          }

          v14 = objc_opt_class();
          v15 = v13;
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

          [v17 cancelTrackingWithEvent:v7];
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

- (BOOL)shouldRecognizeTouchForView:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(ACUISDependencyGestureRecognizer *)self observedControlClasses];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            isKindOfClass = objc_opt_isKindOfClass();
          }

          v14 = isKindOfClass;
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      v15 = [v6 superview];

      v6 = v15;
      if (!v15)
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

- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(ACUISDependencyGestureRecognizer *)self view];
    v9 = [v10 window];
  }

  v11 = [v9 _window];
  v12 = v11;
  if (v11)
  {
    [v11 _convertPointFromSceneReferenceSpace:{x, y}];
    x = v13;
    y = v14;
  }

  [v9 convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_didExceedHysteresisWithTouches:(id)a3
{
  v4 = a3;
  v5 = [(ACUISDependencyGestureRecognizer *)self view];
  [(ACUISDependencyGestureRecognizer *)self _convertPoint:v5 fromSceneReferenceCoordinatesToView:self->_initialSceneReferenceLocation.x, self->_initialSceneReferenceLocation.y];
  v7 = v6;
  v9 = v8;
  v10 = _CentroidOfTouches(v4);
  v12 = v11;

  [(ACUISDependencyGestureRecognizer *)self _convertPoint:v5 fromSceneReferenceCoordinatesToView:v10, v12];
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