@interface PKTextInputCursorController
- (BOOL)canMakeCursorWeakForResponder:(id)a3;
- (BOOL)lastKnownTextInputResponderWindowIsKey;
- (BOOL)scribbleEnabled;
- (PKTextInputCursorController)initWithSettings:(id)a3;
- (PKTextInputCursorControllerDelegate)delegate;
- (PKTextInputSettings)_textInputSettings;
- (UITextInput)_lastKnownTextInputResponder;
- (id)_currentAssertionController;
- (id)_implicitAssertionControllerIfPossible;
- (id)_windowForResponder:(id)a3;
- (void)_delayedRevokeTemporaryStrongMode;
- (void)_handleDidPerformReturn:(id)a3;
- (void)_handleUndoRedo:(id)a3;
- (void)_setCursorStyle:(int64_t)a3;
- (void)_setLastKnownTextInputResponder:(id)a3;
- (void)_setMode:(int64_t)a3;
- (void)_setTrackedLastKnownTextInputResponderWindowIsKey:(BOOL)a3;
- (void)_textInputSourceDidChange:(id)a3;
- (void)_updateAssertionsForCurrentState;
- (void)_updateCursorStyle;
- (void)firstResponderDidChange:(id)a3;
- (void)flashCursor;
- (void)invalidateGhostAssertion;
- (void)invalidateNonBlinkingAssertion;
- (void)invalidateNonVisibleAssertion;
- (void)keyWindowDidChange:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)makeCursorStrong;
- (void)makeCursorTemporarilyStrongWhileWriting;
- (void)makeCursorTemporarilyStrongWithTimeout:(double)a3;
- (void)makeCursorWeak;
- (void)removeAllAssertions;
- (void)reportDebugStateDescription:(id)a3;
- (void)resetState;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setForceHidden:(BOOL)a3;
- (void)setForceStrong:(BOOL)a3;
- (void)setForceVisible:(BOOL)a3;
- (void)simulateFirstResponderChangeForTesting:(id)a3;
- (void)simulateResetCursorTimeout;
- (void)textInputSourceDidChange:(id)a3;
- (void)writingStateDidChange;
@end

@implementation PKTextInputCursorController

- (PKTextInputCursorController)initWithSettings:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PKTextInputCursorController;
  v6 = [(PKTextInputCursorController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v7->_cursorStyle = 0;
    v7->_mode = 0;
    v8 = [MEMORY[0x1E695DF00] distantPast];
    [v8 timeIntervalSinceReferenceDate];
    v7->__lastSwitchToIdleWritingStateTime = v9;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel_firstResponderDidChange_ name:*MEMORY[0x1E69DEB18] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v7 selector:sel_keyWindowDidChange_ name:*MEMORY[0x1E69DE7B0] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v7 selector:sel_textInputSourceDidChange_ name:*MEMORY[0x1E69DE710] object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v7 selector:sel_scrollViewWillBeginDragging_ name:*MEMORY[0x1E69DEA58] object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v7 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v7 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v7 selector:sel__handleUndoRedo_ name:*MEMORY[0x1E696AA30] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v7 selector:sel__handleUndoRedo_ name:*MEMORY[0x1E696AA28] object:0];
  }

  return v7;
}

- (PKTextInputSettings)_textInputSettings
{
  settings = self->_settings;
  if (settings)
  {
    v3 = settings;
  }

  else
  {
    v3 = +[PKTextInputSettings sharedSettings];
  }

  return v3;
}

- (void)_setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    +[PKTextInputDebugStateIntrospector debugStateDidChange];

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (BOOL)canMakeCursorWeakForResponder:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputCursorController *)self _textInputSettings];
  v6 = [v5 enableWeakCursor];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 _textInputSource] == 3 && +[PKTextInputElementsFinder isResponderEditableTextInput:](PKTextInputElementsFinder, v4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = objc_opt_class();
    v8 = [v4 selectedTextRange];
    v9 = PKDynamicCast(v7, v8);

    if (v9)
    {
      v10 = [v9 isEmpty];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setCursorStyle:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_cursorStyle != a3)
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      cursorStyle = self->_cursorStyle;
      if (cursorStyle > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E82D97F8[cursorStyle];
      }

      if (a3 > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E82D97F8[a3];
      }

      v14 = [(PKTextInputCursorController *)self mode];
      if (v14 > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E82D9818[v14];
      }

      *buf = 138412802;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Setting cursor style: %@ -> %@, mode: %@", buf, 0x20u);
    }

    v6 = self->_cursorStyle;
    self->_cursorStyle = a3;
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    if (v6 == 1 && self->_cursorStyle == 3)
    {
      v7 = self->_ghostAssertion;
      ghostAssertion = self->_ghostAssertion;
      self->_ghostAssertion = 0;

      [(PKTextInputCursorController *)self _updateAssertionsForCurrentState];
      if (v7)
      {
        v9 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47__PKTextInputCursorController__setCursorStyle___block_invoke;
        block[3] = &unk_1E82D7148;
        v17 = v7;
        v10 = v7;
        dispatch_after(v9, MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      [(PKTextInputCursorController *)self _updateAssertionsForCurrentState];
    }
  }
}

- (void)_updateAssertionsForCurrentState
{
  [(PKTextInputCursorController *)self removeAllAssertions];
  if (self->_cursorShouldFlash)
  {
    v3 = [(PKTextInputCursorController *)self _currentAssertionController];
    v4 = @"Non blinking for Scribble flash cursor";
LABEL_3:
    v9 = v3;
    v5 = [v3 nonBlinkingAssertionWithReason:v4];
    v6 = 8;
    goto LABEL_4;
  }

  cursorStyle = self->_cursorStyle;
  if (cursorStyle == 3)
  {
    v9 = [(PKTextInputCursorController *)self _currentAssertionController];
    v5 = [v9 nonVisibleAssertionWithReason:@"Hidden for Scribble"];
    v6 = 16;
    goto LABEL_4;
  }

  if (cursorStyle == 2)
  {
    v3 = [(PKTextInputCursorController *)self _currentAssertionController];
    v4 = @"Non blinking for Scribble";
    goto LABEL_3;
  }

  if (cursorStyle != 1)
  {
    return;
  }

  v9 = [(PKTextInputCursorController *)self _currentAssertionController];
  v5 = [v9 nonBlinkingGhostAssertionWithReason:@"Ghosted for Scribble"];
  v6 = 24;
LABEL_4:
  v7 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v5;
}

- (void)_updateCursorStyle
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    v3 = [(PKTextInputCursorController *)self delegate];
    if (v3)
    {
      v4 = [(PKTextInputCursorController *)self delegate];
      v5 = [v4 cursorControllerWritingState:self];
    }

    else
    {
      v5 = 0;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(PKTextInputCursorController *)self _lastSwitchToIdleWritingStateTime];
    v9 = v7 - v8;
    v10 = [(PKTextInputCursorController *)self _textInputSettings];
    [v10 weakCursorVisibilityTimeout];
    v12 = v11 - v9;

    v13 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];

    v14 = [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey];
    if (v5 == 1)
    {
      v16 = 0;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (v5)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12 > 0.0;
      }
    }

    v17 = [(PKTextInputCursorController *)self delegate];
    if ([v17 cursorControllerCustomHighlightFeedbackIsVisible:self])
    {
    }

    else
    {
      v18 = !v14;

      if (!v13 || !v18)
      {
        if ([(PKTextInputCursorController *)self mode]!= 2 || !v13 || [(PKTextInputCursorController *)self forceStrong])
        {
          goto LABEL_24;
        }

        v21 = [(PKTextInputCursorController *)self forceVisible];
        v22 = v15 ^ 1;
        if (v21)
        {
          v22 = v18;
        }

        if ((v22 & 1) == 0)
        {
LABEL_24:
          v19 = 0;
          v20 = (v13 == 0) | (v15 | v16) ^ 1;
LABEL_25:
          if ([(PKTextInputCursorController *)self forceVisible])
          {
            v23 = 0;
            v24 = 0;
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v25 = [(PKTextInputCursorController *)self forceHidden];
            v23 = v19 | v25;
            v24 = v25 | v20;
            if (!v16)
            {
LABEL_30:
              if (v23)
              {
                v26 = 3;
              }

              else
              {
                v26 = 0;
              }

              if (((v23 | v24) & 1) == 0)
              {
                if ([(PKTextInputCursorController *)self mode])
                {
                  v26 = 1;
                }

                else
                {
                  v26 = 2;
                }
              }

              [(PKTextInputCursorController *)self _setCursorStyle:v26];
              return;
            }
          }

          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__writingStateEvaluationTimerExpired object:0];
          [(PKTextInputCursorController *)self performSelector:sel__writingStateEvaluationTimerExpired withObject:0 afterDelay:v12];
          goto LABEL_30;
        }
      }
    }

    v19 = 1;
    v20 = 1;
    goto LABEL_25;
  }

  [(PKTextInputCursorController *)self resetState];
}

- (void)makeCursorStrong
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];

  [(PKTextInputCursorController *)self _setMode:0];
}

- (void)flashCursor
{
  if ([(PKTextInputCursorController *)self isCursorWeak])
  {
    restoreAfterFlashCursorBlock = self->_restoreAfterFlashCursorBlock;
    if (restoreAfterFlashCursorBlock)
    {
      dispatch_block_cancel(restoreAfterFlashCursorBlock);
    }

    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __42__PKTextInputCursorController_flashCursor__block_invoke;
    v10 = &unk_1E82D69B8;
    objc_copyWeak(&v11, &location);
    v4 = dispatch_block_create(0, &v7);
    v5 = self->_restoreAfterFlashCursorBlock;
    self->_restoreAfterFlashCursorBlock = v4;

    v6 = dispatch_time(0, 1000000000);
    dispatch_after(v6, MEMORY[0x1E69E96A0], self->_restoreAfterFlashCursorBlock);
    if (!self->_cursorShouldFlash)
    {
      self->_cursorShouldFlash = 1;
      [(PKTextInputCursorController *)self _updateAssertionsForCurrentState:v7];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __42__PKTextInputCursorController_flashCursor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[5];
    WeakRetained[5] = 0;
    v3 = WeakRetained;

    v3[32] = 0;
    [v3 _updateAssertionsForCurrentState];
    WeakRetained = v3;
  }
}

- (void)setForceStrong:(BOOL)a3
{
  if (self->_forceStrong != a3)
  {
    self->_forceStrong = a3;
    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)setForceVisible:(BOOL)a3
{
  if (self->_forceVisible != a3)
  {
    self->_forceVisible = a3;
    if (a3)
    {
      self->_forceHidden = 0;
    }

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)setForceHidden:(BOOL)a3
{
  if (self->_forceHidden != a3)
  {
    self->_forceHidden = a3;
    if (a3)
    {
      self->_forceVisible = 0;
    }

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)makeCursorWeak
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];

  [(PKTextInputCursorController *)self _setMode:2];
}

- (void)makeCursorTemporarilyStrongWhileWriting
{
  if ([(PKTextInputCursorController *)self mode]== 2)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];

    [(PKTextInputCursorController *)self _setMode:1];
  }
}

- (void)makeCursorTemporarilyStrongWithTimeout:(double)a3
{
  if ([(PKTextInputCursorController *)self mode]== 2)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];
    [(PKTextInputCursorController *)self _setMode:1];
    if (a3 > 0.0)
    {

      [(PKTextInputCursorController *)self performSelector:sel__delayedRevokeTemporaryStrongMode withObject:0 afterDelay:a3];
    }
  }
}

- (void)writingStateDidChange
{
  v3 = [(PKTextInputCursorController *)self delegate];
  v4 = [v3 cursorControllerWritingState:self];

  if (!v4)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PKTextInputCursorController *)self set_lastSwitchToIdleWritingStateTime:?];
    if ([(PKTextInputCursorController *)self mode]== 1)
    {
      v5 = [(PKTextInputCursorController *)self _textInputSettings];
      [v5 weakCursorVisibilityTimeout];
      v7 = v6;

      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];
      [(PKTextInputCursorController *)self performSelector:sel__delayedRevokeTemporaryStrongMode withObject:0 afterDelay:v7];
    }
  }

  [(PKTextInputCursorController *)self _updateCursorStyle];
}

- (void)_delayedRevokeTemporaryStrongMode
{
  if ([(PKTextInputCursorController *)self mode]== 1)
  {

    [(PKTextInputCursorController *)self makeCursorWeak];
  }
}

- (id)_currentAssertionController
{
  v3 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  v4 = [v3 _textInteraction];

  if (v4)
  {
    [v4 _assertionController];
  }

  else
  {
    [(PKTextInputCursorController *)self _implicitAssertionControllerIfPossible];
  }
  v5 = ;

  return v5;
}

- (id)_implicitAssertionControllerIfPossible
{
  v3 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 conformsToProtocol:&unk_1F485D540])
  {
    v4 = [(PKTextInputCursorController *)self implicitAssertionController];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD090]);
      [(PKTextInputCursorController *)self setImplicitAssertionController:v5];
    }

    v6 = [(PKTextInputCursorController *)self implicitAssertionController];
    [v6 setSubject:v3];

    v7 = [(PKTextInputCursorController *)self implicitAssertionController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeAllAssertions
{
  [(PKTextInputCursorController *)self invalidateGhostAssertion];
  [(PKTextInputCursorController *)self invalidateNonVisibleAssertion];

  [(PKTextInputCursorController *)self invalidateNonBlinkingAssertion];
}

- (void)resetState
{
  self->_cursorShouldFlash = 0;
  self->_cursorStyle = 0;
  self->_mode = 0;
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [v3 timeIntervalSinceReferenceDate];
  self->__lastSwitchToIdleWritingStateTime = v4;

  objc_storeWeak(&self->__lastKnownTextInputResponder, 0);

  [(PKTextInputCursorController *)self removeAllAssertions];
}

- (void)invalidateNonBlinkingAssertion
{
  [(UITextCursorAssertion *)self->_nonBlinkingAssertion invalidate];
  nonBlinkingAssertion = self->_nonBlinkingAssertion;
  self->_nonBlinkingAssertion = 0;
}

- (void)invalidateNonVisibleAssertion
{
  [(UITextCursorAssertion *)self->_nonVisibleAssertion invalidate];
  nonVisibleAssertion = self->_nonVisibleAssertion;
  self->_nonVisibleAssertion = 0;
}

- (void)invalidateGhostAssertion
{
  [(UITextCursorAssertion *)self->_ghostAssertion invalidate];
  ghostAssertion = self->_ghostAssertion;
  self->_ghostAssertion = 0;
}

- (BOOL)scribbleEnabled
{
  v2 = [(PKTextInputCursorController *)self _textInputSettings];
  v3 = [v2 isScribbleActive];

  return v3;
}

- (void)firstResponderDidChange:(id)a3
{
  v11 = a3;
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    v4 = [v11 object];
    v5 = [v4 firstResponder];
    if ([PKTextInputUtilities isResponderSupportedTextInput:v5])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(PKTextInputCursorController *)self delegate];
    v8 = [v7 windowSceneForController:self];

    v9 = [(PKTextInputCursorController *)self _windowForResponder:v6];
    v10 = [v9 windowScene];

    if (v8 == v10)
    {
      [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:v6];
    }
  }

  else
  {
    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)keyWindowDidChange:(id)a3
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    v4 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];

    if (v4)
    {
      [(PKTextInputCursorController *)self _setTrackedLastKnownTextInputResponderWindowIsKey:[(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey]];
    }

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }

  else
  {

    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)textInputSourceDidChange:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PKTextInputCursorController *)self _textInputSourceDidChange:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PKTextInputCursorController_textInputSourceDidChange___block_invoke;
    v5[3] = &unk_1E82D6E70;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_textInputSourceDidChange:(id)a3
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    if ([(PKTextInputCursorController *)self mode])
    {
      v4 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
      v5 = [(PKTextInputCursorController *)self canMakeCursorWeakForResponder:v4];

      if (!v5)
      {

        [(PKTextInputCursorController *)self makeCursorStrong];
      }
    }
  }

  else
  {

    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)_setTrackedLastKnownTextInputResponderWindowIsKey:(BOOL)a3
{
  if (self->__trackedLastKnownTextInputResponderWindowIsKey != a3)
  {
    self->__trackedLastKnownTextInputResponderWindowIsKey = a3;
    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)_setLastKnownTextInputResponder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__lastKnownTextInputResponder);

  if (WeakRetained == v4)
  {
    v6 = [(PKTextInputCursorController *)self _trackedLastKnownTextInputResponderWindowIsKey];
    if (v6 == [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey])
    {
      goto LABEL_13;
    }

    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "Last knows text input responder key window tracking out of sync", v13, 2u);
    }
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self name:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:0];

  [(PKTextInputCursorController *)self _setCursorStyle:0];
  objc_storeWeak(&self->__lastKnownTextInputResponder, v4);
  self->__trackedLastKnownTextInputResponderWindowIsKey = [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey];
  if (v4)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:self selector:sel__handleDidPerformReturn_ name:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:v4];
  }

  if (-[PKTextInputCursorController canMakeCursorWeakForResponder:](self, "canMakeCursorWeakForResponder:", v4) && ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v11 = v10, -[PKTextInputCursorController lastElementTapToFocusTimestamp](self, "lastElementTapToFocusTimestamp"), v11 - v12 > 0.5))
  {
    [(PKTextInputCursorController *)self makeCursorWeak];
  }

  else
  {
    [(PKTextInputCursorController *)self makeCursorStrong];
  }

  [(PKTextInputCursorController *)self _updateCursorStyle];
LABEL_13:
}

- (BOOL)lastKnownTextInputResponderWindowIsKey
{
  v3 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  v4 = [(PKTextInputCursorController *)self _windowForResponder:v3];
  v5 = [v4 isKeyWindow];

  return v5;
}

- (id)_windowForResponder:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _responderWindow];
  }

  else
  {
    v5 = objc_opt_class();
    v6 = PKDynamicCast(v5, v3);
    v4 = [v6 window];
  }

  return v4;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  if (![(PKTextInputCursorController *)self scribbleEnabled])
  {
    [(PKTextInputCursorController *)self resetState];
    goto LABEL_13;
  }

  if (![(PKTextInputCursorController *)self mode])
  {
    v5 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
    if ([(PKTextInputCursorController *)self canMakeCursorWeakForResponder:v5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 object];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v5 = v5;
          v8 = [v4 object];
          if ([v5 isDescendantOfView:v8])
          {
            v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *v10 = 0;
              _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "Making cursor weak after scrollWillBeginDragging", v10, 2u);
            }

            [(PKTextInputCursorController *)self makeCursorWeak];
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_13:
}

- (void)keyboardWillShow:(id)a3
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    v4 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
    if (v4)
    {
      v5 = v4;
      v6 = [(PKTextInputCursorController *)self mode];

      if (v6)
      {
        v7 = [MEMORY[0x1E69DCBE0] activeInstance];
        if (([v7 isMinimized] & 1) == 0 && (objc_msgSend(v7, "_suppressSoftwareKeyboard") & 1) == 0)
        {
          v8 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *v9 = 0;
            _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Making cursor strong after keyboardWillShow", v9, 2u);
          }

          [(PKTextInputCursorController *)self makeCursorStrong];
        }
      }
    }
  }

  else
  {

    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)reportDebugStateDescription:(id)a3
{
  v11 = a3;
  v4 = [(PKTextInputCursorController *)self cursorStyle];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E82D97F8[v4];
  }

  v11[2](v11, @"Cursor style", v5);
  v6 = [(PKTextInputCursorController *)self mode];
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E82D9818[v6];
  }

  v11[2](v11, @"Cursor mode", v7);
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v8;
  if (self->_nonVisibleAssertion)
  {
    [v8 addObject:@"hidden"];
  }

  if (self->_nonBlinkingAssertion)
  {
    [v9 addObject:@"non-blinking"];
  }

  if (self->_ghostAssertion)
  {
    [v9 addObject:@"ghosted"];
  }

  if ([v9 count])
  {
    v10 = [v9 componentsJoinedByString:{@", "}];
  }

  else
  {
    v10 = @"none";
  }

  v11[2](v11, @"Cursor assertions", v10);
}

- (void)_handleUndoRedo:(id)a3
{
  v7 = a3;
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    if ([(PKTextInputCursorController *)self isCursorWeak])
    {
      v4 = [v7 object];
      v5 = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
      v6 = [v5 undoManager];

      if (v4 == v6)
      {
        [(PKTextInputCursorController *)self flashCursor];
      }
    }
  }

  else
  {
    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)_handleDidPerformReturn:(id)a3
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    if ([(PKTextInputCursorController *)self isCursorWeak])
    {

      [(PKTextInputCursorController *)self flashCursor];
    }
  }

  else
  {

    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)simulateFirstResponderChangeForTesting:(id)a3
{
  v4 = a3;
  [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:0];
  [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:v4];
}

- (void)simulateResetCursorTimeout
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];

  [(PKTextInputCursorController *)self _delayedRevokeTemporaryStrongMode];
}

- (PKTextInputCursorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UITextInput)_lastKnownTextInputResponder
{
  WeakRetained = objc_loadWeakRetained(&self->__lastKnownTextInputResponder);

  return WeakRetained;
}

@end