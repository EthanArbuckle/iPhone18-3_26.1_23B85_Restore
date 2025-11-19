@interface ORKSignatureGestureRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (DrawingGestureRecognizerDelegate)eventDelegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation ORKSignatureGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] <= 1 && -[ORKSignatureGestureRecognizer numberOfTouches](self, "numberOfTouches") < 2)
  {
    [(ORKSignatureGestureRecognizer *)self setState:1];
    v13 = [(ORKSignatureGestureRecognizer *)self eventDelegate];
    [v13 gestureTouchesBegan:v6 withEvent:v7];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ORKSignatureGestureRecognizer *)self ignoreTouch:*(*(&v14 + 1) + 8 * v12) forEvent:v7, v14];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ORKSignatureGestureRecognizer *)self eventDelegate];
  [v8 gestureTouchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ORKSignatureGestureRecognizer *)self setState:3];
  v8 = [(ORKSignatureGestureRecognizer *)self eventDelegate];
  [v8 gestureTouchesEnded:v7 withEvent:v6];
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (DrawingGestureRecognizerDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

@end