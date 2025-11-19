@interface ACUISGestureRecognizer
- (ACUISGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (BOOL)_shouldRecognizeTouchForView:(id)a3;
- (BOOL)_shouldRecognizeTouches:(id)a3;
- (NSSet)observedControlClasses;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (ACUISGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v4 = [(ACUISGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(ACUISGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(ACUISGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(ACUISGestureRecognizer *)v5 setDelegate:v5];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v6 = a3;
  [(ACUISGestureRecognizer *)&v7 touchesBegan:v6 withEvent:a4];
  LODWORD(a4) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:v6, v7.receiver, v7.super_class];

  if (a4)
  {
    [(ACUISGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v6 = a3;
  [(ACUISGestureRecognizer *)&v7 touchesMoved:v6 withEvent:a4];
  LODWORD(a4) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:v6, v7.receiver, v7.super_class];

  if (a4)
  {
    [(ACUISGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v6 = a3;
  [(ACUISGestureRecognizer *)&v7 touchesEnded:v6 withEvent:a4];
  LODWORD(a4) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:v6, v7.receiver, v7.super_class];

  if (a4)
  {
    [(ACUISGestureRecognizer *)self setState:3];
  }
}

- (BOOL)_shouldRecognizeTouches:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v23 + 1) + 8 * i) view];
        if ([(ACUISGestureRecognizer *)self _shouldRecognizeTouchForView:v9])
        {
LABEL_19:

          v16 = 1;
          goto LABEL_21;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [(ACUISGestureRecognizer *)self observedControlClasses];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

- (BOOL)_shouldRecognizeTouchForView:(id)a3
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
      v7 = [(ACUISGestureRecognizer *)self observedControlClasses];
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

@end