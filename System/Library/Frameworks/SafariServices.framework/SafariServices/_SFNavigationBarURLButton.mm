@interface _SFNavigationBarURLButton
- (BOOL)_scribbleInteraction:(id)interaction focusWillTransformElement:(id)element;
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (_SFNavigationBarURLButton)initWithFrame:(CGRect)frame;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_handleLongPress:(id)press;
- (void)_hover:(id)_hover;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)_updateBackgroundImageAnimated:(void *)result;
- (void)_updateEffectView;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)pasteAndGo:(id)go;
- (void)pasteAndSearch:(id)search;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOverlayConfiguration:;
- (void)setTheme:(id *)theme;
@end

@implementation _SFNavigationBarURLButton

- (_SFNavigationBarURLButton)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = _SFNavigationBarURLButton;
  v3 = [(_SFNavigationBarURLButton *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v3->_effectMask setBackgroundColor:blackColor];

    contentView = [(UIVisualEffectView *)v3->_effectView contentView];
    [contentView addSubview:v3->_effectMask];

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

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  layer = [(_SFNavigationBarURLButton *)self layer];
  layer2 = [(_SFNavigationBarURLButton *)self layer];
  presentationLayer = [layer2 presentationLayer];
  [layer convertPoint:presentationLayer toLayer:{x, y}];
  v12.receiver = self;
  v12.super_class = _SFNavigationBarURLButton;
  LOBYTE(self) = [(_SFNavigationBarURLButton *)&v12 pointMostlyInside:eventCopy withEvent:?];

  return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(_SFNavigationBarURLButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = _SFNavigationBarURLButton;
    [(_SFNavigationBarURLButton *)&v5 setHighlighted:highlightedCopy];
    if ([(_SFNavigationBarURLButton *)self adjustsImageWhenHighlighted])
    {
      [_SFNavigationBarURLButton _updateBackgroundImageAnimated:?];
    }
  }
}

- (void)copy:(id)copy
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceiveCopyCommand:self];
}

- (void)pasteAndSearch:(id)search
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceivePasteCommand:self];
}

- (void)pasteAndGo:(id)go
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonDidReceivePasteCommand:self];
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained navigationBarURLButton:self shouldShowMenuForGestureWithRecognizer:pressCopy];

    if (v5)
    {
      v6 = MEMORY[0x1E69DC9D8];
      view = [(UIEditMenuInteraction *)self->_editMenuInteraction view];
      [pressCopy locationInView:view];
      v8 = [v6 configurationWithIdentifier:0 sourcePoint:?];

      [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v8];
    }
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (sel_copy_ == action)
  {
    v10 = [WeakRetained navigationBarURLButtonShouldCopy:self];
  }

  else if (sel_pasteAndSearch_ == action || sel_pasteAndGo_ == action)
  {
    v10 = [WeakRetained navigationBarURLButtonShouldPaste:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SFNavigationBarURLButton;
    v10 = [(_SFNavigationBarURLButton *)&v13 canPerformAction:action withSender:senderCopy];
  }

  v11 = v10;

  return v11;
}

- (BOOL)_scribbleInteraction:(id)interaction focusWillTransformElement:(id)element
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

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:willBeginWritingInElement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonBeginSuppressingPlaceholder:self];
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:didFinishWritingInElement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarURLButtonEndSuppressingPlaceholder:self];
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:shouldBeginAtLocation:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained navigationBarURLButton:self canWriteAtLocation:{x, y}];

  return v9;
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:requestElementsInRect:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained textFieldIsEditableForNavigationBarURLButton:self])
  {
    v9 = [WeakRetained textFieldForNavigationBarURLButton:self];
    isFirstResponder = [v9 isFirstResponder];

    if (isFirstResponder)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v13[0] = @"pencilTextInputElementIdentifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    completionCopy[2](completionCopy, v12, v11);
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
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

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  completionCopy = completion;
  elementCopy = element;
  v10 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_SFNavigationBarURLButton _scribbleInteraction:focusElement:initialFocusSelectionReferencePoint:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [elementCopy isEqual:@"pencilTextInputElementIdentifier"];

  if (v12 && WeakRetained)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v13[3] = &unk_1E84908B0;
    v16 = completionCopy;
    v14 = WeakRetained;
    selfCopy = self;
    [v14 navigationBarURLButtonDidRequestFocusForPencilInput:self completionHandler:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [touchCopy locationInView:self];
  v8 = v7;
  v10 = v9;

  LODWORD(touchCopy) = [WeakRetained navigationBarURLButton:self shouldAllowLongPressAtPoint:{v8, v10}];
  if (!touchCopy)
  {
    return 0;
  }

  if ([(_SFNavigationBarURLButton *)self canPerformAction:sel_copy_ withSender:0]|| [(_SFNavigationBarURLButton *)self canPerformAction:sel_pasteAndSearch_ withSender:0])
  {
    return 1;
  }

  return [(_SFNavigationBarURLButton *)self canPerformAction:sel_pasteAndGo_ withSender:0];
}

- (void)_hover:(id)_hover
{
  if (([_hover state] - 1) >= 2)
  {
    isTracking = [(_SFNavigationBarURLButton *)self isTracking];
  }

  else
  {
    isTracking = 1;
  }

  [(_SFNavigationBarURLButton *)self setHighlighted:isTracking];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  actionsCopy = actions;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [interactionCopy locationInView:self];
  v11 = v10;
  v13 = v12;

  if ([WeakRetained navigationBarURLButton:self shouldAllowLongPressAtPoint:{v11, v13}])
  {
    v14 = actionsCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [MEMORY[0x1E69DCC60] menuWithChildren:v14];

  return v15;
}

- (void)setTheme:(id *)theme
{
  v4 = a2;
  if (theme)
  {
    v5 = theme[102];
    if (v5 != v4)
    {
      v10 = v4;
      v6 = [v5 isEqual:v4];
      v4 = v10;
      if ((v6 & 1) == 0)
      {
        objc_storeStrong(theme + 102, a2);
        tintStyle = [v10 tintStyle];
        v8 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:0 forBarTintStyle:tintStyle];
        OUTLINED_FUNCTION_35(v8, 752);
        v9 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:1 forBarTintStyle:tintStyle];
        OUTLINED_FUNCTION_35(v9, 744);
        [theme _setOverrideUserInterfaceStyle:{objc_msgSend(v10, "platterOverrideUserInterfaceStyle")}];
        [(_SFNavigationBarURLButton *)theme _updateEffectView];
        v4 = v10;
      }
    }
  }
}

- (void)_updateEffectView
{
  if (self)
  {
    isHighlighted = [self isHighlighted];
    v3 = &OBJC_IVAR____SFNavigationBarURLButton__vibrancyEffect;
    if (isHighlighted)
    {
      v3 = &OBJC_IVAR____SFNavigationBarURLButton__highlightedVibrancyEffect;
    }

    [*(self + 760) setEffect:*(self + *v3)];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v4 = [blackColor colorWithAlphaComponent:*(self + 808)];
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
    identifier = [v4 identifier];
    identifier2 = [v15 identifier];
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