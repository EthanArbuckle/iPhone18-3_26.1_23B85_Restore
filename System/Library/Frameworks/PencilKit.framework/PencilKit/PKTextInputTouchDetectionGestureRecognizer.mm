@interface PKTextInputTouchDetectionGestureRecognizer
- (PKTextInputTouchDetectionGestureRecognizer)init;
- (void)recognizeTouch;
- (void)recognizeTouch:(id)touch afterThreshold:(double)threshold;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKTextInputTouchDetectionGestureRecognizer

- (PKTextInputTouchDetectionGestureRecognizer)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputTouchDetectionGestureRecognizer;
  v2 = [(PKTextInputTouchDetectionGestureRecognizer *)&v6 init];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  touches = v2->__touches;
  v2->__touches = strongToStrongObjectsMapTable;

  [(PKTextInputTouchDetectionGestureRecognizer *)v2 setAllowedTouchTypes:&unk_1F47C19E8];
  return v2;
}

- (void)recognizeTouch
{
  delegate = [(PKTextInputTouchDetectionGestureRecognizer *)self delegate];
  [delegate touchesDetected];
}

- (void)recognizeTouch:(id)touch afterThreshold:(double)threshold
{
  touchCopy = touch;
  v7 = dispatch_time(0, (threshold * 1000000000.0));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKTextInputTouchDetectionGestureRecognizer_recognizeTouch_afterThreshold___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v9[4] = self;
  v10 = touchCopy;
  v8 = touchCopy;
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [beganCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(beganCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 locationInView:0];
        v12 = v11;
        v14 = v13;
        _touches = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
        [_touches setObject:v16 forKey:v10];

        [(PKTextInputTouchDetectionGestureRecognizer *)self recognizeTouch:v10 afterThreshold:0.1];
      }

      v7 = [beganCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [movedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(movedCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        _touches = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        v12 = [_touches objectForKey:v10];
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
      v7 = [movedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  cancelledCopy = cancelled;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [cancelledCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(cancelledCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        _touches = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        [_touches removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [cancelledCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  [(PKTextInputTouchDetectionGestureRecognizer *)self recognizeTouch];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = endedCopy;
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
        _touches = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
        [_touches removeObjectForKey:v11];

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
  _touches = [(PKTextInputTouchDetectionGestureRecognizer *)self _touches];
  [_touches removeAllObjects];
}

@end