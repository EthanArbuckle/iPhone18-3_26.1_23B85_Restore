@interface PKDrawingReplayController
+ (BOOL)isDrawingInProgressForWindow:(id)a3;
- (BOOL)disablePencilInput;
- (BOOL)shouldEndDrawing;
- (CGAffineTransform)transform;
- (CGPoint)currentOffset;
- (CGPoint)originOffset;
- (CGPoint)startingTextFieldOrigin;
- (PKDrawingReplayController)initWithDrawing:(id)a3 transform:(CGAffineTransform *)a4 sourceTextField:(id)a5;
- (PKDrawingReplayController)initWithSourceTextField:(id)a3;
- (PKTextInputDrawingGestureRecognizer)drawingGestureRecognizer;
- (PKTextInputInteraction)textInputInteraction;
- (UITextField)textField;
- (id)pencilTextInputInteractionFromWindowScene:(id)a3;
- (void)_beginDrawing;
- (void)_beginStrokeWithPoint:(id)a3;
- (void)_endDrawing;
- (void)_loadPointArray;
- (void)_processNextPoint;
- (void)_setUpIfNecessary;
- (void)_strokeEndedWithReplayPoint:(id)a3;
- (void)_strokeMovedWithReplayPoint:(id)a3;
- (void)beginDrawingAnimationAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)beginDrawingAnimationAtRange:(_NSRange)a3 offset:(CGPoint)a4 completion:(id)a5;
- (void)beginInsertTextAnimationAtIndex:(unint64_t)a3 offset:(CGPoint)a4 completion:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)setDisablePencilInput:(BOOL)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation PKDrawingReplayController

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingGestureRecognizer);
  [WeakRetained setIsReplaying:0];

  v4.receiver = self;
  v4.super_class = PKDrawingReplayController;
  [(PKDrawingReplayController *)&v4 dealloc];
}

+ (BOOL)isDrawingInProgressForWindow:(id)a3
{
  v3 = [a3 windowScene];
  v4 = [PKTextInputInteraction interactionForScene:v3];

  v5 = [v4 canvasController];
  HasVisible = [(PKTextInputCanvasController *)v5 canvasHasVisibleStrokes];

  v7 = [v4 drawingGestureRecognizer];
  v8 = [v7 drawingTargetIsDrawing];

  v9 = [v4 drawingGestureRecognizer];
  v10 = [v9 isReplaying];

  return (v8 | HasVisible | v10) & 1;
}

- (PKDrawingReplayController)initWithSourceTextField:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKDrawingReplayController;
  v5 = [(PKDrawingReplayController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textField, v4);
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6->_transform.a = *MEMORY[0x1E695EFD0];
    *&v6->_transform.c = v8;
    *&v6->_transform.tx = *(v7 + 32);
    [(PKDrawingReplayController *)v6 _setUpIfNecessary];
  }

  return v6;
}

- (PKDrawingReplayController)initWithDrawing:(id)a3 transform:(CGAffineTransform *)a4 sourceTextField:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKDrawingReplayController;
  v11 = [(PKDrawingReplayController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_textField, v10);
    objc_storeStrong(&v12->_drawing, a3);
    v12->_originOffset = *MEMORY[0x1E695EFF8];
    v13 = *&a4->a;
    v14 = *&a4->c;
    *&v12->_transform.tx = *&a4->tx;
    *&v12->_transform.c = v14;
    *&v12->_transform.a = v13;
    v12->_speedRatio = 1.0;
    [(PKDrawingReplayController *)v12 _setUpIfNecessary];
  }

  return v12;
}

- (id)pencilTextInputInteractionFromWindowScene:(id)a3
{
  v3 = [MEMORY[0x1E69DD0A8] activeTextEffectsWindowForWindowScene:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 editingOverlayViewController];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 pencilTextInputInteraction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDisablePencilInput:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
  [v4 setEnabled:!v3];
}

- (BOOL)disablePencilInput
{
  v2 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (void)_setUpIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  if (![(PKDrawingReplayController *)self setupComplete])
  {
    v3 = [(PKDrawingReplayController *)self textField];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v6 = [(PKDrawingReplayController *)self pencilTextInputInteractionFromWindowScene:v5];

    if (v6)
    {
      [(PKDrawingReplayController *)self setTextInputInteraction:v6];
      v7 = [v6 drawingGestureRecognizer];
      [(PKDrawingReplayController *)self setDrawingGestureRecognizer:v7];

      [(PKDrawingReplayController *)self setSetupComplete:1];
      [(PKDrawingReplayController *)self _loadPointArray];
    }

    else
    {
      v8 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "textInputInteraction";
        _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v9, 0xCu);
      }
    }
  }
}

- (void)beginInsertTextAnimationAtIndex:(unint64_t)a3 offset:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  if ([(PKDrawingReplayController *)self isAnimating])
  {
    v10 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Trying to begin replay animation, but an animation is currently running, skipping.", buf, 2u);
    }
  }

  else
  {
    v10 = [(PKDrawingReplayController *)self textField];
    v11 = [v10 beginningOfDocument];
    v12 = [v10 positionFromPosition:v11 offset:a3];

    if (v12)
    {
      [v10 caretRectForPosition:v12];
      v14 = x + v13;
      [v10 bounds];
      [v10 textRectForBounds:?];
      v15 = v14 + v32.origin.x;
      v16 = y + CGRectGetMidY(v32);
      v28 = unk_1C801F458;
      v29 = unk_1C801F468;
      v30 = *&qword_1C801F478;
      v31 = unk_1C801F488;
      v25 = unk_1C801F428;
      v26 = unk_1C801F438;
      v27 = unk_1C801F448;
      [(PKDrawingReplayController *)self _beginDrawing];
      v17 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
      *buf = v15;
      v23 = v16;
      v24 = 0x3FE0000000000000;
      [v17 _replayDrawingBegan:buf coordinateSpace:v10 activeInputProperties:23 inputType:1];

      v18 = [(PKDrawingReplayController *)self textInputInteraction];
      v19 = [(PKDrawingReplayController *)self textField];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __79__PKDrawingReplayController_beginInsertTextAnimationAtIndex_offset_completion___block_invoke;
      v20[3] = &unk_1E82D77F0;
      v20[4] = self;
      v21 = v9;
      [v18 simulateReserveSpaceForTextInputView:v19 location:v20 completion:{v15, v16}];
    }
  }
}

uint64_t __79__PKDrawingReplayController_beginInsertTextAnimationAtIndex_offset_completion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) drawingGestureRecognizer];
    [v2 _replayDrawingEnded];
  }

  [*(a1 + 32) _endDrawing];
  v3 = [*(a1 + 32) drawingGestureRecognizer];
  [v3 reset];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)beginDrawingAnimationAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PKDrawingReplayController *)self setOriginOffset:x, y];
  if ([(PKDrawingReplayController *)self isAnimating])
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v9 = "Trying to begin replay drawing, but isAnimating is already YES.";
      v10 = &v18;
LABEL_10:
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    }
  }

  else
  {
    v11 = [(PKDrawingReplayController *)self textInputInteraction];
    v12 = [v11 drawingGestureRecognizer];
    v13 = [v12 isReplaying];

    if (!v13)
    {
      [(PKDrawingReplayController *)self setCompletionHandler:v7];
      v14 = [(PKDrawingReplayController *)self textField];
      v15 = [(PKDrawingReplayController *)self textField];
      v16 = [v15 window];
      [v14 PK_convertPoint:v16 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [(PKDrawingReplayController *)self setStartingTextFieldOrigin:?];

      [(PKDrawingReplayController *)self setCurrentPointIndex:0];
      [(PKDrawingReplayController *)self _processNextPoint];
      goto LABEL_8;
    }

    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v9 = "Trying to begin replay drawing, but the gesture recognizer is already replaying";
      v10 = &v17;
      goto LABEL_10;
    }
  }

LABEL_8:
}

- (void)beginDrawingAnimationAtRange:(_NSRange)a3 offset:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  location = a3.location;
  v9 = a5;
  v10 = v9;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9)
    {
      v11 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "NSNotFound is not valid range for replay", v21, 2u);
      }

      v10[2](v10, 0);
    }
  }

  else
  {
    [(PKDrawingReplayController *)self setCompletionHandler:v9];
    v12 = [(PKDrawingReplayController *)self textField];
    v13 = [v12 beginningOfDocument];
    v14 = [v12 positionFromPosition:v13 offset:location];

    if (v14)
    {
      [v12 caretRectForPosition:v14];
      v16 = x + v15;
      v18 = y + v17;
      [v12 bounds];
      [v12 textRectForBounds:?];
      [(PKDrawingReplayController *)self beginDrawingAnimationAtPoint:v10 completion:v16 + v19, v18 + v20];
    }
  }
}

- (void)_processNextPoint
{
  v3 = [(PKDrawingReplayController *)self textField];
  v4 = [(PKDrawingReplayController *)self textField];
  v5 = [v4 window];
  [v3 PK_convertPoint:v5 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v7 = v6;
  v9 = v8;

  [(PKDrawingReplayController *)self startingTextFieldOrigin];
  if (vabdd_f64(v7, v11) >= 0.01 || vabdd_f64(v9, v10) >= 0.01)
  {
    [(PKDrawingReplayController *)self cancel];
  }

  v12 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
  v13 = [v12 drawingTouch];

  if (!v13 && ![(PKDrawingReplayController *)self cancelled])
  {
    v14 = [(PKDrawingReplayController *)self pointArray];
    v15 = [(PKDrawingReplayController *)self currentPointIndex];
    [(PKDrawingReplayController *)self setCurrentPointIndex:v15 + 1];
    if (v15 >= [v14 count])
    {
      v18 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "End Drawing is being called from _processNextPoint, but should have been called _endDrawing instead of calling this method.  Ending drawing.", v19, 2u);
      }

      [(PKDrawingReplayController *)self _endDrawing];
    }

    else
    {
      v16 = [v14 objectAtIndexedSubscript:v15];
      if (!v15)
      {
        [(PKDrawingReplayController *)self _beginDrawing];
      }

      v17 = [v16 type];
      switch(v17)
      {
        case 3:
          [(PKDrawingReplayController *)self _strokeEndedWithReplayPoint:v16];
          break;
        case 2:
          [(PKDrawingReplayController *)self _strokeMovedWithReplayPoint:v16];
          break;
        case 1:
          [(PKDrawingReplayController *)self _beginStrokeWithPoint:v16];
          break;
      }
    }
  }
}

- (void)_beginDrawing
{
  [(PKDrawingReplayController *)self setIsAnimating:1];
  v3 = [(PKDrawingReplayController *)self textInputInteraction];
  v4 = [v3 drawingGestureRecognizer];
  [v4 setIsReplaying:1];

  v5 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Beginning replay drawing", v6, 2u);
  }
}

- (void)_endDrawing
{
  [(PKDrawingReplayController *)self setIsAnimating:0];
  v3 = [(PKDrawingReplayController *)self textInputInteraction];
  v4 = [v3 drawingGestureRecognizer];
  v5 = [v4 isReplaying];

  if (v5)
  {
    v6 = [(PKDrawingReplayController *)self textInputInteraction];
    v7 = [v6 drawingGestureRecognizer];
    [v7 _replayDrawingEnded];
  }

  v8 = [(PKDrawingReplayController *)self textInputInteraction];
  v9 = [v8 drawingGestureRecognizer];
  [v9 setState:3];

  v10 = [(PKDrawingReplayController *)self completionHandler];

  if (v10)
  {
    v11 = [(PKDrawingReplayController *)self completionHandler];
    v11[2](v11, [(PKDrawingReplayController *)self cancelled]^ 1);
  }

  [(PKDrawingReplayController *)self setCompletionHandler:0];
  v12 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_INFO, "Ending replay drawing", v13, 2u);
  }
}

- (CGPoint)currentOffset
{
  v3 = [(PKDrawingReplayController *)self textField];
  v4 = [(PKDrawingReplayController *)self textInputInteraction];
  v5 = [v4 view];
  [v3 PK_convertPoint:v5 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v7 = v6;
  v9 = v8;

  [(PKDrawingReplayController *)self originOffset];
  v11 = v7 + v10;
  v13 = v9 + v12;
  result.y = v13;
  result.x = v11;
  return result;
}

- (void)_beginStrokeWithPoint:(id)a3
{
  v4 = a3;
  if (![(PKDrawingReplayController *)self cancelled])
  {
    [(PKDrawingReplayController *)self currentOffset];
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (v4)
    {
      [v4 pkInputPointWithOffset:?];
    }

    v5 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
    v6 = [(PKDrawingReplayController *)self canvasView];
    v7 = [v6 window];
    v8[6] = v16;
    v8[7] = v17;
    v9 = v18;
    v8[2] = v12;
    v8[3] = v13;
    v8[4] = v14;
    v8[5] = v15;
    v8[0] = v10;
    v8[1] = v11;
    [v5 _replayDrawingBegan:v8 coordinateSpace:v7 activeInputProperties:23 inputType:1];

    [(PKDrawingReplayController *)self _processNextPoint];
  }
}

- (void)_strokeMovedWithReplayPoint:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [v4 delay];
  v6 = v5;
  [(PKDrawingReplayController *)self speedRatio];
  if (v7 > 0.0)
  {
    [(PKDrawingReplayController *)self speedRatio];
    v6 = v6 * (1.0 / v8);
  }

  if ([(PKDrawingReplayController *)self shouldEndDrawing])
  {
    [(PKDrawingReplayController *)self _endDrawing];
  }

  else
  {
    v9 = dispatch_time(0, (v6 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKDrawingReplayController__strokeMovedWithReplayPoint___block_invoke;
    block[3] = &unk_1E82D7690;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __57__PKDrawingReplayController__strokeMovedWithReplayPoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained cancelled] & 1) == 0)
  {
    [v3 currentOffset];
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(a1 + 32);
    if (v4)
    {
      [v4 pkInputPointWithOffset:?];
    }

    v5 = [v3 drawingGestureRecognizer];
    v6[6] = v14;
    v6[7] = v15;
    v7 = v16;
    v6[2] = v10;
    v6[3] = v11;
    v6[4] = v12;
    v6[5] = v13;
    v6[0] = v8;
    v6[1] = v9;
    [v5 _replayDrawingMoved:v6];

    [v3 _processNextPoint];
  }
}

- (void)_strokeEndedWithReplayPoint:(id)a3
{
  v4 = a3;
  if ([(PKDrawingReplayController *)self shouldEndDrawing])
  {
    [(PKDrawingReplayController *)self _endDrawing];
  }

  else
  {
    objc_initWeak(&location, self);
    [v4 delay];
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PKDrawingReplayController__strokeEndedWithReplayPoint___block_invoke;
    v7[3] = &unk_1E82D69B8;
    objc_copyWeak(&v8, &location);
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__PKDrawingReplayController__strokeEndedWithReplayPoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained cancelled];
    v2 = v5;
    if ((v3 & 1) == 0)
    {
      v4 = [v5 drawingGestureRecognizer];
      [v4 _replayDrawingEnded];

      [v5 _processNextPoint];
      v2 = v5;
    }
  }
}

- (BOOL)shouldEndDrawing
{
  v3 = [(PKDrawingReplayController *)self currentPointIndex]+ 1;
  v4 = [(PKDrawingReplayController *)self pointArray];
  LOBYTE(v3) = v3 >= [v4 count];

  return v3;
}

- (void)cancel
{
  if (![(PKDrawingReplayController *)self cancelled])
  {
    [(PKDrawingReplayController *)self setCancelled:1];
    [(PKDrawingReplayController *)self _endDrawing];
    v3 = [(PKDrawingReplayController *)self drawingGestureRecognizer];
    [v3 _replayDrawingCancelled];

    v4 = [(PKDrawingReplayController *)self textInputInteraction];
    [v4 cancelReplay];
  }
}

- (void)_loadPointArray
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(PKDrawingReplayController *)self drawing];
  v4 = [v3 strokes];

  v5 = [(PKDrawingReplayController *)self drawing];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  [(PKDrawingReplayController *)self transform];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = *v29;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [*(*(&v28 + 1) + 8 * i) _strokeData];
        v16 = [v15 _pointsCount];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = v13;
          do
          {
            if (v18)
            {
              v20 = 2;
            }

            else
            {
              v20 = 1;
            }

            v21 = objc_alloc_init(PKDrawingReplayPoint);
            [(PKDrawingReplayPoint *)v21 setType:v20];
            [v15 timestampAtIndex:v18];
            v13 = v22;
            [(PKDrawingReplayPoint *)v21 setDelay:v22 - v19];
            [v15 locationAtIndex:v18];
            [(PKDrawingReplayPoint *)v21 setPoint:vaddq_f64(v34, vmlaq_n_f64(vmulq_n_f64(v33, v24 - v9), v32, v23 - v7))];
            [v10 addObject:v21];
            if (v17 == 1)
            {
              v25 = objc_alloc_init(PKDrawingReplayPoint);
              [(PKDrawingReplayPoint *)v25 setType:3];
              [v10 addObject:v25];
            }

            ++v18;
            v19 = v13;
            --v17;
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v12);
  }

  [(PKDrawingReplayController *)self setPointArray:v10];
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (PKTextInputInteraction)textInputInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_textInputInteraction);

  return WeakRetained;
}

- (PKTextInputDrawingGestureRecognizer)drawingGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingGestureRecognizer);

  return WeakRetained;
}

- (CGPoint)startingTextFieldOrigin
{
  x = self->_startingTextFieldOrigin.x;
  y = self->_startingTextFieldOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originOffset
{
  x = self->_originOffset.x;
  y = self->_originOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[3].b;
  *&retstr->a = *&self[2].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end