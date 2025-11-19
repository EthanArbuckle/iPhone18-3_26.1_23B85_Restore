@interface _SFNavigationBarURLButton
- (BOOL)_scribbleInteraction:(id)a3 focusWillTransformElement:(id)a4;
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (_SFNavigationBarURLButton)initWithFrame:(CGRect)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)_handleLongPress:(id)a3;
- (void)_hover:(id)a3;
- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)_updateBackgroundImageAnimated:(void *)result;
- (void)_updateEffectView;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)pasteAndGo:(id)a3;
- (void)pasteAndSearch:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOverlayConfiguration:;
- (void)setTheme:(id *)a1;
@end

@implementation _SFNavigationBarURLButton

- (_SFNavigationBarURLButton)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = _SFNavigationBarURLButton;
  v3 = [(_SFNavigationBarURLButton *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD298]);
    effectView = v3->_effectView;
    v3->_effectView = v4;

    [(_SFNavigationBarURLButton *)v3 bounds];
    [(UIVisualEffectView *)v3->_effectView setFrame:?];
    [(UIVisualEffectView *)v3->_effectView setAutoresizingMask:18];
    [(_SFNavigationBarURLButton *)v3 addSubview:v3->_effectView];
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIVisualEffectView *)v3->_effectView bounds];
    v7 = [v6 initWithFrame:?];
    effectMask = v3->_effectMask;
    v3->_effectMask = v7;

    [(UIView *)v3->_effectMask setAutoresizingMask:18];
    v9 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v3->_effectMask setBackgroundColor:v9];

    v10 = [(UIVisualEffectView *)v3->_effectView contentView];
    [v10 addSubview:v3->_effectMask];

    v3->_backgroundAlphaFactor = 1.0;
    v11 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v3];
    editMenuInteraction = v3->_editMenuInteraction;
    v3->_editMenuInteraction = v11;

    [(_SFNavigationBarURLButton *)v3 addInteraction:v3->_editMenuInteraction];
    v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__handleLongPress_];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v13;

    [(UIGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(_SFNavigationBarURLButton *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    v15 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v3 action:sel__hover_];
    [(_SFNavigationBarURLButton *)v3 addGestureRecognizer:v15];

    v16 = [objc_alloc(MEMORY[0x1E69DD448]) initWithTarget:v3 action:sel__handleLongPress_];
    [(_SFNavigationBarURLButton *)v3 addGestureRecognizer:v16];

    [(_SFNavigationBarURLButton *)v3 addTarget:v3 action:sel__dismissMenu_ forControlEvents:1];
    v17 = objc_alloc_init(MEMORY[0x1E69784C8]);
    pencilScribbleInteraction = v3->_pencilScribbleInteraction;
    v3->_pencilScribbleInteraction = v17;

    [(PKScribbleInteraction *)v3->_pencilScribbleInteraction setDelegate:v3];
    [(PKScribbleInteraction *)v3->_pencilScribbleInteraction setElementSource:v3];
    [(_SFNavigationBarURLButton *)v3 addInteraction:v3->_pencilScribbleInteraction];
    v19 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(UIGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
  [(UIGestureRecognizer *)self->_longPressGestureRecognizer removeTarget:self action:sel__handleLongPress_];
  v3.receiver = self;
  v3.super_class = _SFNavigationBarURLButton;
  [(_SFNavigationBarURLButton *)&v3 dealloc];
}

- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_SFNavigationBarURLButton *)self layer];
  v9 = [(_SFNavigationBarURLButton *)self layer];
  v10 = [v9 presentationLayer];
  [v8 convertPoint:v10 toLayer:{x, y}];
  v12.receiver = self;
  v12.super_class = _SFNavigationBarURLButton;
  LOBYTE(self) = [(_SFNavigationBarURLButton *)&v12 pointMostlyInside:v7 withEvent:?];

  return self;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(_SFNavigationBarURLButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _SFNavigationBarURLButton;
    [(_SFNavigationBarURLButton *)&v5 setHighlighted:v3];
    if ([(_SFNavigationBarURLButton *)self adjustsImageWhenHighlighted])
    {
      [_SFNavigationBarURLButton _updateBackgroundImageAnimated:?];
    }
  }
}

- (void)copy:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceiveCopyCommand:self];
}

- (void)pasteAndSearch:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceivePasteCommand:self];
}

- (void)pasteAndGo:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceivePasteCommand:self];
}

- (void)_handleLongPress:(id)a3
{
  v9 = a3;
  if ([v9 state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained navigationBarURLButton:self shouldShowMenuForGestureWithRecognizer:v9];

    if (v5)
    {
      v6 = MEMORY[0x1E69DC9D8];
      v7 = [(UIEditMenuInteraction *)self->_editMenuInteraction view];
      [v9 locationInView:v7];
      v8 = [v6 configurationWithIdentifier:0 sourcePoint:?];

      [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v8];
    }
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (sel_copy_ == a3)
  {
    v10 = [WeakRetained navigationBarURLButtonShouldCopy:self];
  }

  else if (sel_pasteAndSearch_ == a3 || sel_pasteAndGo_ == a3)
  {
    v10 = [WeakRetained navigationBarURLButtonShouldPaste:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SFNavigationBarURLButton;
    v10 = [(_SFNavigationBarURLButton *)&v13 canPerformAction:a3 withSender:v6];
  }

  v11 = v10;

  return v11;
}

- (BOOL)_scribbleInteraction:(id)a3 focusWillTransformElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:focusWillTransformElement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained navigationBarURLButtonIsUsingNarrowLayout:self];

  return v7;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:willBeginWritingInElement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonBeginSuppressingPlaceholder:self];
}

- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:didFinishWritingInElement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonEndSuppressingPlaceholder:self];
}

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:shouldBeginAtLocation:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained navigationBarURLButton:self canWriteAtLocation:{x, y}];

  return v9;
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:requestElementsInRect:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained textFieldIsEditableForNavigationBarURLButton:self])
  {
    v9 = [WeakRetained textFieldForNavigationBarURLButton:self];
    v10 = [v9 isFirstResponder];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v13[0] = @"pencilTextInputElementIdentifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v6[2](v6, v12, v11);
  }

  else
  {
    v6[2](v6, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:frameForElement:];
  }

  [(_SFNavigationBarURLButton *)self bounds];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:focusElement:initialFocusSelectionReferencePoint:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [v9 isEqual:@"pencilTextInputElementIdentifier"];

  if (v12 && WeakRetained)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v13[3] = &unk_1E84908B0;
    v16 = v8;
    v14 = WeakRetained;
    v15 = self;
    [v14 navigationBarURLButtonDidRequestFocusForPencilInput:self completionHandler:v13];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v5 locationInView:self];
  v8 = v7;
  v10 = v9;

  LODWORD(v5) = [WeakRetained navigationBarURLButton:self shouldAllowLongPressAtPoint:{v8, v10}];
  if (!v5)
  {
    return 0;
  }

  if ([(_SFNavigationBarURLButton *)self canPerformAction:sel_copy_ withSender:0]|| [(_SFNavigationBarURLButton *)self canPerformAction:sel_pasteAndSearch_ withSender:0])
  {
    return 1;
  }

  return [(_SFNavigationBarURLButton *)self canPerformAction:sel_pasteAndGo_ withSender:0];
}

- (void)_hover:(id)a3
{
  if (([a3 state] - 1) >= 2)
  {
    v4 = [(_SFNavigationBarURLButton *)self isTracking];
  }

  else
  {
    v4 = 1;
  }

  [(_SFNavigationBarURLButton *)self setHighlighted:v4];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a5;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v8 locationInView:self];
  v11 = v10;
  v13 = v12;

  if ([WeakRetained navigationBarURLButton:self shouldAllowLongPressAtPoint:{v11, v13}])
  {
    v14 = v7;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [MEMORY[0x1E69DCC60] menuWithChildren:v14];

  return v15;
}

- (void)setTheme:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[102];
    if (v5 != v4)
    {
      v10 = v4;
      v6 = [v5 isEqual:v4];
      v4 = v10;
      if ((v6 & 1) == 0)
      {
        objc_storeStrong(a1 + 102, a2);
        v7 = [v10 tintStyle];
        v8 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:0 forBarTintStyle:v7];
        OUTLINED_FUNCTION_35(v8, 752);
        v9 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:1 forBarTintStyle:v7];
        OUTLINED_FUNCTION_35(v9, 744);
        [a1 _setOverrideUserInterfaceStyle:{objc_msgSend(v10, "platterOverrideUserInterfaceStyle")}];
        [(_SFNavigationBarURLButton *)a1 _updateEffectView];
        v4 = v10;
      }
    }
  }
}

- (void)_updateEffectView
{
  if (a1)
  {
    v2 = [a1 isHighlighted];
    v3 = &OBJC_IVAR____SFNavigationBarURLButton__vibrancyEffect;
    if (v2)
    {
      v3 = &OBJC_IVAR____SFNavigationBarURLButton__highlightedVibrancyEffect;
    }

    [*(a1 + 760) setEffect:*(a1 + *v3)];
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v4 = [v5 colorWithAlphaComponent:*(a1 + 808)];
    [OUTLINED_FUNCTION_12(768) setBackgroundColor:?];
  }
}

- (void)_updateBackgroundImageAnimated:(void *)result
{
  if (result)
  {
    v1 = result;
    if ([result isHighlighted])
    {
      [v1 isTracking];
    }

    OUTLINED_FUNCTION_0_2();
    v4 = 3221225472;
    v5 = __60___SFNavigationBarURLButton__updateBackgroundImageAnimated___block_invoke;
    v6 = &unk_1E848F810;
    v7 = v1;
    return [v2 animateWithDuration:50659332 delay:v3 options:0 animations:? completion:?];
  }

  return result;
}

- (void)setOverlayConfiguration:
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v15 = v0;
  if (v3)
  {
    v4 = *(v3 + 840);
    objc_storeStrong((v3 + 840), v1);
    v5 = [v4 identifier];
    v6 = [v15 identifier];
    v7 = WBSIsEqual();

    v8 = OUTLINED_FUNCTION_39();
    if (v7)
    {
      [v8 setConfiguration:v15];
    }

    else
    {
      [v8 dismissAndRemove];
      if (v15)
      {
        v9 = objc_alloc(MEMORY[0x1E69B1BF0]);
        [v3 bounds];
        v10 = [v9 initWithFrame:v15 configuration:?];
        v11 = *(v3 + 800);
        *(v3 + 800) = v10;

        [OUTLINED_FUNCTION_39() setAutoresizingMask:18];
        [OUTLINED_FUNCTION_39() _setContinuousCornerRadius:?];
        [OUTLINED_FUNCTION_39() eraserView];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_19() addSubview:?];

        [v3 addSubview:*(v3 + 800)];
        [OUTLINED_FUNCTION_39() present];
      }

      else
      {
        v12 = *(v3 + 800);
        *(v3 + 800) = 0;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

@end