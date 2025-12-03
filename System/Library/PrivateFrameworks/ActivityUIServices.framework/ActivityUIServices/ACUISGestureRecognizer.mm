@interface ACUISGestureRecognizer
- (ACUISGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (BOOL)_shouldRecognizeTouchForView:(id)view;
- (BOOL)_shouldRecognizeTouches:(id)touches;
- (NSSet)observedControlClasses;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ACUISGestureRecognizer

- (NSSet)observedControlClasses
{
  observedControlClasses = self->_observedControlClasses;
  if (!observedControlClasses)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    v7 = self->_observedControlClasses;
    self->_observedControlClasses = v6;

    observedControlClasses = self->_observedControlClasses;
  }

  return observedControlClasses;
}

- (ACUISGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v4 = [(ACUISGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(ACUISGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(ACUISGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(ACUISGestureRecognizer *)v5 setDelegate:v5];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  beganCopy = began;
  [(ACUISGestureRecognizer *)&v7 touchesBegan:beganCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:beganCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  movedCopy = moved;
  [(ACUISGestureRecognizer *)&v7 touchesMoved:movedCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:movedCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  endedCopy = ended;
  [(ACUISGestureRecognizer *)&v7 touchesEnded:endedCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:endedCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:3];
  }
}

- (BOOL)_shouldRecognizeTouches:(id)touches
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  touchesCopy = touches;
  v5 = [touchesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(touchesCopy);
        }

        view = [*(*(&v23 + 1) + 8 * i) view];
        if ([(ACUISGestureRecognizer *)self _shouldRecognizeTouchForView:view])
        {
LABEL_19:

          v16 = 1;
          goto LABEL_21;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        observedControlClasses = [(ACUISGestureRecognizer *)self observedControlClasses];
        v11 = [observedControlClasses countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(observedControlClasses);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {

                goto LABEL_19;
              }
            }

            v12 = [observedControlClasses countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [touchesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_shouldRecognizeTouchForView:(id)view
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
      observedControlClasses = [(ACUISGestureRecognizer *)self observedControlClasses];
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

@end