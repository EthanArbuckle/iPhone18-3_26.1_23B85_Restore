@interface PKTextInputCursorController
- (BOOL)canMakeCursorWeakForResponder:(id)responder;
- (BOOL)lastKnownTextInputResponderWindowIsKey;
- (BOOL)scribbleEnabled;
- (PKTextInputCursorController)initWithSettings:(id)settings;
- (PKTextInputCursorControllerDelegate)delegate;
- (PKTextInputSettings)_textInputSettings;
- (UITextInput)_lastKnownTextInputResponder;
- (id)_currentAssertionController;
- (id)_implicitAssertionControllerIfPossible;
- (id)_windowForResponder:(id)responder;
- (void)_delayedRevokeTemporaryStrongMode;
- (void)_handleDidPerformReturn:(id)return;
- (void)_handleUndoRedo:(id)redo;
- (void)_setCursorStyle:(int64_t)style;
- (void)_setLastKnownTextInputResponder:(id)responder;
- (void)_setMode:(int64_t)mode;
- (void)_setTrackedLastKnownTextInputResponderWindowIsKey:(BOOL)key;
- (void)_textInputSourceDidChange:(id)change;
- (void)_updateAssertionsForCurrentState;
- (void)_updateCursorStyle;
- (void)firstResponderDidChange:(id)change;
- (void)flashCursor;
- (void)invalidateGhostAssertion;
- (void)invalidateNonBlinkingAssertion;
- (void)invalidateNonVisibleAssertion;
- (void)keyWindowDidChange:(id)change;
- (void)keyboardWillShow:(id)show;
- (void)makeCursorStrong;
- (void)makeCursorTemporarilyStrongWhileWriting;
- (void)makeCursorTemporarilyStrongWithTimeout:(double)timeout;
- (void)makeCursorWeak;
- (void)removeAllAssertions;
- (void)reportDebugStateDescription:(id)description;
- (void)resetState;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setForceHidden:(BOOL)hidden;
- (void)setForceStrong:(BOOL)strong;
- (void)setForceVisible:(BOOL)visible;
- (void)simulateFirstResponderChangeForTesting:(id)testing;
- (void)simulateResetCursorTimeout;
- (void)textInputSourceDidChange:(id)change;
- (void)writingStateDidChange;
@end

@implementation PKTextInputCursorController

- (PKTextInputCursorController)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = PKTextInputCursorController;
  v6 = [(PKTextInputCursorController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v7->_cursorStyle = 0;
    v7->_mode = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v7->__lastSwitchToIdleWritingStateTime = v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_firstResponderDidChange_ name:*MEMORY[0x1E69DEB18] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_keyWindowDidChange_ name:*MEMORY[0x1E69DE7B0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel_textInputSourceDidChange_ name:*MEMORY[0x1E69DE710] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel_scrollViewWillBeginDragging_ name:*MEMORY[0x1E69DEA58] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v7 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v7 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v7 selector:sel__handleUndoRedo_ name:*MEMORY[0x1E696AA30] object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v7 selector:sel__handleUndoRedo_ name:*MEMORY[0x1E696AA28] object:0];
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

- (void)_setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    +[PKTextInputDebugStateIntrospector debugStateDidChange];

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (BOOL)canMakeCursorWeakForResponder:(id)responder
{
  responderCopy = responder;
  _textInputSettings = [(PKTextInputCursorController *)self _textInputSettings];
  enableWeakCursor = [_textInputSettings enableWeakCursor];

  if (enableWeakCursor && (objc_opt_respondsToSelector() & 1) != 0 && [responderCopy _textInputSource] == 3 && +[PKTextInputElementsFinder isResponderEditableTextInput:](PKTextInputElementsFinder, responderCopy) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = objc_opt_class();
    selectedTextRange = [responderCopy selectedTextRange];
    v9 = PKDynamicCast(v7, selectedTextRange);

    if (v9)
    {
      isEmpty = [v9 isEmpty];
    }

    else
    {
      isEmpty = 1;
    }
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

- (void)_setCursorStyle:(int64_t)style
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_cursorStyle != style)
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

      if (style > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E82D97F8[style];
      }

      mode = [(PKTextInputCursorController *)self mode];
      if (mode > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E82D9818[mode];
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
    self->_cursorStyle = style;
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
    _currentAssertionController = [(PKTextInputCursorController *)self _currentAssertionController];
    v4 = @"Non blinking for Scribble flash cursor";
LABEL_3:
    _currentAssertionController2 = _currentAssertionController;
    v5 = [_currentAssertionController nonBlinkingAssertionWithReason:v4];
    v6 = 8;
    goto LABEL_4;
  }

  cursorStyle = self->_cursorStyle;
  if (cursorStyle == 3)
  {
    _currentAssertionController2 = [(PKTextInputCursorController *)self _currentAssertionController];
    v5 = [_currentAssertionController2 nonVisibleAssertionWithReason:@"Hidden for Scribble"];
    v6 = 16;
    goto LABEL_4;
  }

  if (cursorStyle == 2)
  {
    _currentAssertionController = [(PKTextInputCursorController *)self _currentAssertionController];
    v4 = @"Non blinking for Scribble";
    goto LABEL_3;
  }

  if (cursorStyle != 1)
  {
    return;
  }

  _currentAssertionController2 = [(PKTextInputCursorController *)self _currentAssertionController];
  v5 = [_currentAssertionController2 nonBlinkingGhostAssertionWithReason:@"Ghosted for Scribble"];
  v6 = 24;
LABEL_4:
  v7 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v5;
}

- (void)_updateCursorStyle
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    delegate = [(PKTextInputCursorController *)self delegate];
    if (delegate)
    {
      delegate2 = [(PKTextInputCursorController *)self delegate];
      v5 = [delegate2 cursorControllerWritingState:self];
    }

    else
    {
      v5 = 0;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(PKTextInputCursorController *)self _lastSwitchToIdleWritingStateTime];
    v9 = v7 - v8;
    _textInputSettings = [(PKTextInputCursorController *)self _textInputSettings];
    [_textInputSettings weakCursorVisibilityTimeout];
    v12 = v11 - v9;

    _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];

    lastKnownTextInputResponderWindowIsKey = [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey];
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

    delegate3 = [(PKTextInputCursorController *)self delegate];
    if ([delegate3 cursorControllerCustomHighlightFeedbackIsVisible:self])
    {
    }

    else
    {
      v18 = !lastKnownTextInputResponderWindowIsKey;

      if (!_lastKnownTextInputResponder || !v18)
      {
        if ([(PKTextInputCursorController *)self mode]!= 2 || !_lastKnownTextInputResponder || [(PKTextInputCursorController *)self forceStrong])
        {
          goto LABEL_24;
        }

        forceVisible = [(PKTextInputCursorController *)self forceVisible];
        v22 = v15 ^ 1;
        if (forceVisible)
        {
          v22 = v18;
        }

        if ((v22 & 1) == 0)
        {
LABEL_24:
          v19 = 0;
          v20 = (_lastKnownTextInputResponder == 0) | (v15 | v16) ^ 1;
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
            forceHidden = [(PKTextInputCursorController *)self forceHidden];
            v23 = v19 | forceHidden;
            v24 = forceHidden | v20;
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

- (void)setForceStrong:(BOOL)strong
{
  if (self->_forceStrong != strong)
  {
    self->_forceStrong = strong;
    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)setForceVisible:(BOOL)visible
{
  if (self->_forceVisible != visible)
  {
    self->_forceVisible = visible;
    if (visible)
    {
      self->_forceHidden = 0;
    }

    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)setForceHidden:(BOOL)hidden
{
  if (self->_forceHidden != hidden)
  {
    self->_forceHidden = hidden;
    if (hidden)
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

- (void)makeCursorTemporarilyStrongWithTimeout:(double)timeout
{
  if ([(PKTextInputCursorController *)self mode]== 2)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedRevokeTemporaryStrongMode object:0];
    [(PKTextInputCursorController *)self _setMode:1];
    if (timeout > 0.0)
    {

      [(PKTextInputCursorController *)self performSelector:sel__delayedRevokeTemporaryStrongMode withObject:0 afterDelay:timeout];
    }
  }
}

- (void)writingStateDidChange
{
  delegate = [(PKTextInputCursorController *)self delegate];
  v4 = [delegate cursorControllerWritingState:self];

  if (!v4)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PKTextInputCursorController *)self set_lastSwitchToIdleWritingStateTime:?];
    if ([(PKTextInputCursorController *)self mode]== 1)
    {
      _textInputSettings = [(PKTextInputCursorController *)self _textInputSettings];
      [_textInputSettings weakCursorVisibilityTimeout];
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
  _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  _textInteraction = [_lastKnownTextInputResponder _textInteraction];

  if (_textInteraction)
  {
    [_textInteraction _assertionController];
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
  _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [_lastKnownTextInputResponder conformsToProtocol:&unk_1F485D540])
  {
    implicitAssertionController = [(PKTextInputCursorController *)self implicitAssertionController];

    if (!implicitAssertionController)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD090]);
      [(PKTextInputCursorController *)self setImplicitAssertionController:v5];
    }

    implicitAssertionController2 = [(PKTextInputCursorController *)self implicitAssertionController];
    [implicitAssertionController2 setSubject:_lastKnownTextInputResponder];

    implicitAssertionController3 = [(PKTextInputCursorController *)self implicitAssertionController];
  }

  else
  {
    implicitAssertionController3 = 0;
  }

  return implicitAssertionController3;
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
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
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
  _textInputSettings = [(PKTextInputCursorController *)self _textInputSettings];
  isScribbleActive = [_textInputSettings isScribbleActive];

  return isScribbleActive;
}

- (void)firstResponderDidChange:(id)change
{
  changeCopy = change;
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    object = [changeCopy object];
    firstResponder = [object firstResponder];
    if ([PKTextInputUtilities isResponderSupportedTextInput:firstResponder])
    {
      v6 = firstResponder;
    }

    else
    {
      v6 = 0;
    }

    delegate = [(PKTextInputCursorController *)self delegate];
    v8 = [delegate windowSceneForController:self];

    v9 = [(PKTextInputCursorController *)self _windowForResponder:v6];
    windowScene = [v9 windowScene];

    if (v8 == windowScene)
    {
      [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:v6];
    }
  }

  else
  {
    [(PKTextInputCursorController *)self resetState];
  }
}

- (void)keyWindowDidChange:(id)change
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];

    if (_lastKnownTextInputResponder)
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

- (void)textInputSourceDidChange:(id)change
{
  changeCopy = change;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PKTextInputCursorController *)self _textInputSourceDidChange:changeCopy];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PKTextInputCursorController_textInputSourceDidChange___block_invoke;
    v5[3] = &unk_1E82D6E70;
    v5[4] = self;
    v6 = changeCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_textInputSourceDidChange:(id)change
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    if ([(PKTextInputCursorController *)self mode])
    {
      _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
      v5 = [(PKTextInputCursorController *)self canMakeCursorWeakForResponder:_lastKnownTextInputResponder];

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

- (void)_setTrackedLastKnownTextInputResponderWindowIsKey:(BOOL)key
{
  if (self->__trackedLastKnownTextInputResponderWindowIsKey != key)
  {
    self->__trackedLastKnownTextInputResponderWindowIsKey = key;
    [(PKTextInputCursorController *)self _updateCursorStyle];
  }
}

- (void)_setLastKnownTextInputResponder:(id)responder
{
  responderCopy = responder;
  WeakRetained = objc_loadWeakRetained(&self->__lastKnownTextInputResponder);

  if (WeakRetained == responderCopy)
  {
    _trackedLastKnownTextInputResponderWindowIsKey = [(PKTextInputCursorController *)self _trackedLastKnownTextInputResponderWindowIsKey];
    if (_trackedLastKnownTextInputResponderWindowIsKey == [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey])
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:0];

  [(PKTextInputCursorController *)self _setCursorStyle:0];
  objc_storeWeak(&self->__lastKnownTextInputResponder, responderCopy);
  self->__trackedLastKnownTextInputResponderWindowIsKey = [(PKTextInputCursorController *)self lastKnownTextInputResponderWindowIsKey];
  if (responderCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleDidPerformReturn_ name:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:responderCopy];
  }

  if (-[PKTextInputCursorController canMakeCursorWeakForResponder:](self, "canMakeCursorWeakForResponder:", responderCopy) && ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v11 = v10, -[PKTextInputCursorController lastElementTapToFocusTimestamp](self, "lastElementTapToFocusTimestamp"), v11 - v12 > 0.5))
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
  _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
  v4 = [(PKTextInputCursorController *)self _windowForResponder:_lastKnownTextInputResponder];
  isKeyWindow = [v4 isKeyWindow];

  return isKeyWindow;
}

- (id)_windowForResponder:(id)responder
{
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    _responderWindow = [responderCopy _responderWindow];
  }

  else
  {
    v5 = objc_opt_class();
    v6 = PKDynamicCast(v5, responderCopy);
    _responderWindow = [v6 window];
  }

  return _responderWindow;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (![(PKTextInputCursorController *)self scribbleEnabled])
  {
    [(PKTextInputCursorController *)self resetState];
    goto LABEL_13;
  }

  if (![(PKTextInputCursorController *)self mode])
  {
    _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
    if ([(PKTextInputCursorController *)self canMakeCursorWeakForResponder:_lastKnownTextInputResponder])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        object = [draggingCopy object];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          _lastKnownTextInputResponder = _lastKnownTextInputResponder;
          object2 = [draggingCopy object];
          if ([_lastKnownTextInputResponder isDescendantOfView:object2])
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

- (void)keyboardWillShow:(id)show
{
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
    if (_lastKnownTextInputResponder)
    {
      v5 = _lastKnownTextInputResponder;
      mode = [(PKTextInputCursorController *)self mode];

      if (mode)
      {
        activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
        if (([activeInstance isMinimized] & 1) == 0 && (objc_msgSend(activeInstance, "_suppressSoftwareKeyboard") & 1) == 0)
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

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  cursorStyle = [(PKTextInputCursorController *)self cursorStyle];
  if (cursorStyle > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E82D97F8[cursorStyle];
  }

  descriptionCopy[2](descriptionCopy, @"Cursor style", v5);
  mode = [(PKTextInputCursorController *)self mode];
  if (mode > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E82D9818[mode];
  }

  descriptionCopy[2](descriptionCopy, @"Cursor mode", v7);
  array = [MEMORY[0x1E695DF70] array];
  v9 = array;
  if (self->_nonVisibleAssertion)
  {
    [array addObject:@"hidden"];
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

  descriptionCopy[2](descriptionCopy, @"Cursor assertions", v10);
}

- (void)_handleUndoRedo:(id)redo
{
  redoCopy = redo;
  if ([(PKTextInputCursorController *)self scribbleEnabled])
  {
    if ([(PKTextInputCursorController *)self isCursorWeak])
    {
      object = [redoCopy object];
      _lastKnownTextInputResponder = [(PKTextInputCursorController *)self _lastKnownTextInputResponder];
      undoManager = [_lastKnownTextInputResponder undoManager];

      if (object == undoManager)
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

- (void)_handleDidPerformReturn:(id)return
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

- (void)simulateFirstResponderChangeForTesting:(id)testing
{
  testingCopy = testing;
  [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:0];
  [(PKTextInputCursorController *)self _setLastKnownTextInputResponder:testingCopy];
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