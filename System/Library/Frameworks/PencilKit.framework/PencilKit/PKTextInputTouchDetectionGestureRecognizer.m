@interface PKTextInputTouchDetectionGestureRecognizer
- (PKTextInputTouchDetectionGestureRecognizer)init;
- (void)recognizeTouch;
- (void)recognizeTouch:(id)a3 afterThreshold:(double)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PKTextInputTouchDetectionGestureRecognizer

- (PKTextInputTouchDetectionGestureRecognizer)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputTouchDetectionGestureRecognizer;
  v2 = [(PKTextInputTouchDetectionGestureRecognizer *)&v6 init];
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  touches = v2->__touches;
  v2->__touches = v3;

  [(PKTextInputTouchDetectionGestureRecognizer *)v2 setAllowedTouchTypes:&unk_1F47C19E8];
  return v2;
}

- (void)recognizeTouch
{
  v2 = [(PKTextInputTouchDetectionGestureRecognizer *)self delegate];
  [v2 touchesDetected];
}

- (void)recognizeTouch:(id)a3 afterThreshold:(double)a4
{
  v6 = a3;
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKTextInputTouchDetectionGestureRecognizer_recognizeTouch_afterThreshold___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

void __76__PKTextInputTouchDetectionGestureRecognizer_recognizeTouch_afterThreshold___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _touches];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 recognizeTouch];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 locationInView:0];
        v12 = v11;
        v14 = v13;
        v15 = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
        [v15 setObject:v16 forKey:v10];

        [(PKTextInputTouchDetectionGestureRecognizer *)self recognizeTouch:v10 afterThreshold:0.1];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        v12 = [v11 objectForKey:v10];
        [v12 CGPointValue];
        v14 = v13;
        v16 = v15;

        [v10 locationInView:0];
        if ((v16 - v18) * (v16 - v18) + (v14 - v17) * (v14 - v17) > 100.0)
        {
          [(PKTextInputTouchDetectionGestureRecognizer *)self recognizeTouch:v10 afterThreshold:0.02];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        [v11 removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PKTextInputTouchDetectionGestureRecognizer *)self recognizeTouch];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        [v12 removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)reset
{
  v2 = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
  [v2 removeAllObjects];
}

@end