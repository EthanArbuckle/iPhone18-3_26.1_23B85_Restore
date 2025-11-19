@interface PKTextInputPaletteController
- (BOOL)_canShowPaletteUI;
- (BOOL)_isFirstResponderEditableTextInputWithPencilTextInputSource;
- (BOOL)_isFirstResponderInputAssistantEnabled;
- (BOOL)_isFirstResponderVisible;
- (BOOL)_shouldPaletteBeVisible;
- (BOOL)isPaletteVisible;
- (CGRect)editingOverlayContainerSceneBounds;
- (PKTextInputPaletteController)init;
- (PKTextInputPaletteController)initWithTextInputSettings:(id)a3;
- (PKTextInputPaletteControllerDelegate)delegate;
- (UIWindowScene)windowScene;
- (id)_paletteControllerContainerView;
- (id)paletteTapToRadarCommandConfiguration:(id)a3;
- (void)_peformPaletteVisibilityUpdate;
- (void)_setWritingStateActive:(BOOL)a3;
- (void)_setupPaletteControllerIfNeededWithView:(id)a3 wantsPaletteVisible:(BOOL)a4;
- (void)dealloc;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)a3;
- (void)floatingKeyboardControllerWillHide:(id)a3;
- (void)floatingKeyboardControllerWillShow:(id)a3;
- (void)paletteControllerFloatingKeyboardWillHide:(id)a3;
- (void)paletteControllerFloatingKeyboardWillShow:(id)a3;
- (void)setEditingOverlayContainerSceneBounds:(CGRect)a3;
- (void)updateFirstResponderVisibility;
@end

@implementation PKTextInputPaletteController

- (PKTextInputPaletteController)init
{
  v3 = +[PKTextInputSettings sharedSettings];
  v4 = [(PKTextInputPaletteController *)self initWithTextInputSettings:v3];

  return v4;
}

- (PKTextInputPaletteController)initWithTextInputSettings:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PKTextInputPaletteController;
  v6 = [(PKTextInputPaletteController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__textInputSettings, a3);
    v8 = objc_alloc_init(PKTextInputWindowFirstResponderController);
    windowFirstResponderController = v7->__windowFirstResponderController;
    v7->__windowFirstResponderController = v8;

    [(PKTextInputWindowFirstResponderController *)v7->__windowFirstResponderController setDelegate:v7];
    v10 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    floatingKeyboardController = v7->__floatingKeyboardController;
    v7->__floatingKeyboardController = v10;

    [(PKPaletteFloatingKeyboardController *)v7->__floatingKeyboardController setDelegate:v7];
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 bounds];
    v7->_editingOverlayContainerSceneBounds.origin.x = v13;
    v7->_editingOverlayContainerSceneBounds.origin.y = v14;
    v7->_editingOverlayContainerSceneBounds.size.width = v15;
    v7->_editingOverlayContainerSceneBounds.size.height = v16;

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v7 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = PKTextInputPaletteController;
  [(PKTextInputPaletteController *)&v4 dealloc];
}

- (void)setEditingOverlayContainerSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_editingOverlayContainerSceneBounds, a3))
  {
    self->_editingOverlayContainerSceneBounds.origin.x = x;
    self->_editingOverlayContainerSceneBounds.origin.y = y;
    self->_editingOverlayContainerSceneBounds.size.width = width;
    self->_editingOverlayContainerSceneBounds.size.height = height;

    [(PKTextInputPaletteController *)self _updatePaletteVisibility];
  }
}

- (void)_setWritingStateActive:(BOOL)a3
{
  writingStateActive = self->__writingStateActive;
  if (writingStateActive != a3)
  {
    self->__writingStateActive = a3;
    if (writingStateActive || !a3)
    {
      [(PKTextInputPaletteController *)self _updatePaletteVisibility];
    }

    else
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatePaletteVisibility object:0];
    }
  }
}

- (UIWindowScene)windowScene
{
  v3 = [(PKTextInputPaletteController *)self delegate];
  v4 = [v3 paletteControllerContainerView:self];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  return v6;
}

- (id)_paletteControllerContainerView
{
  v3 = [(PKTextInputPaletteController *)self delegate];
  v4 = [v3 paletteControllerContainerView:self];

  return v4;
}

- (BOOL)_canShowPaletteUI
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  v4 = [(PKTextInputPaletteController *)self _textInputSettings];
  v5 = [v4 isScribbleActive];

  v6 = [(PKTextInputPaletteController *)self _textInputSettings];
  LOBYTE(v4) = [v6 UCBPaletteEnabled];

  return v5 & v4;
}

- (void)updateFirstResponderVisibility
{
  v4 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  v3 = [(PKTextInputPaletteController *)self windowScene];
  [v4 updateFirstResponderFromWindowScene:v3 sendDelegateCallback:1];
}

- (BOOL)isPaletteVisible
{
  v2 = [(PKTextInputPaletteController *)self _paletteController];
  v3 = [v2 isPaletteVisible];

  return v3;
}

- (BOOL)_isFirstResponderEditableTextInputWithPencilTextInputSource
{
  v2 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  v3 = [v2 firstResponder];
  v4 = [v3 isEditableTextInputWithPencilTextInputSource];

  return v4;
}

- (BOOL)_isFirstResponderVisible
{
  v2 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  v3 = [v2 firstResponder];
  v4 = [v3 isVisible];

  return v4;
}

- (BOOL)_isFirstResponderInputAssistantEnabled
{
  v2 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  v3 = [v2 firstResponder];
  v4 = [v3 disableInputAssistant];

  return v4 ^ 1;
}

- (BOOL)_shouldPaletteBeVisible
{
  if (![(PKTextInputPaletteController *)self _canShowPaletteUI]|| ![(PKTextInputPaletteController *)self _isFirstResponderVisible]|| ![(PKTextInputPaletteController *)self _isFirstResponderEditableTextInputWithPencilTextInputSource]|| ![(PKTextInputPaletteController *)self isPaletteVisible]&& [(PKTextInputPaletteController *)self _isWritingStateActive]|| ![(PKTextInputPaletteController *)self _isFirstResponderInputAssistantEnabled])
  {
    return 0;
  }

  v3 = [(PKTextInputPaletteController *)self windowScene];
  v4 = [v3 _isKeyWindowScene];

  return v4;
}

- (void)_peformPaletteVisibilityUpdate
{
  v3 = [(PKTextInputPaletteController *)self _shouldPaletteBeVisible];
  v4 = [(PKTextInputPaletteController *)self _paletteController];
  v5 = v3 ^ [v4 isPaletteVisible];

  if (v5 == 1)
  {
    v6 = _PKSignpostLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteVisibilityChanged", "", buf, 2u);
    }

    v7 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "BEGIN TextInputPaletteVisibilityChanged", v26, 2u);
    }
  }

  v8 = [(PKTextInputPaletteController *)self _paletteControllerContainerView];
  [(PKTextInputPaletteController *)self _setupPaletteControllerIfNeededWithView:v8 wantsPaletteVisible:v3];
  v9 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  v10 = [v9 firstResponder];
  v11 = [(PKTextInputPaletteController *)self _paletteController];
  [v11 setFirstResponder:v10];

  [(PKTextInputPaletteController *)self editingOverlayContainerSceneBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PKTextInputPaletteController *)self _paletteController];
  [v20 setAdjustedWindowSceneBounds:{v13, v15, v17, v19}];

  v21 = [(PKTextInputPaletteController *)self _paletteController];
  [v21 setPaletteVisible:v3 animated:1 completion:0];

  if (v5)
  {
    v22 = _PKSignpostLog();
    if (os_signpost_enabled(v22))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteVisibilityChanged", "", v25, 2u);
    }

    v23 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_INFO, "END TextInputPaletteVisibilityChanged", v24, 2u);
    }
  }
}

- (void)_setupPaletteControllerIfNeededWithView:(id)a3 wantsPaletteVisible:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && v4)
  {
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_1C7CCA000, &v7->super, OS_LOG_TYPE_ERROR, "Wants palette visible but the provided view is nil", &v24, 2u);
    }

LABEL_32:

    goto LABEL_33;
  }

  v8 = [(PKTextInputPaletteController *)self _paletteController];
  if (!v6 || v8)
  {
  }

  else if (v4)
  {
    v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "Creating new palette controller to install in view: %@", &v24, 0xCu);
    }

    v10 = _PKSignpostLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteInstall", "", &v24, 2u);
    }

    v11 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "BEGIN TextInputPaletteInstall", &v24, 2u);
    }

    v12 = objc_alloc_init(PKPaletteController);
    [(PKTextInputPaletteController *)self set_paletteController:v12];

    v13 = [(PKTextInputPaletteController *)self _paletteController];
    [v13 setDelegate:self];

    v14 = [(PKTextInputPaletteController *)self _paletteController];
    [v14 installInView:v6];

    v15 = _PKSignpostLog();
    if (os_signpost_enabled(v15))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteInstall", "", &v24, 2u);
    }

    v16 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_INFO, "END TextInputPaletteInstall", &v24, 2u);
    }

    v7 = [[PKPaletteTapToRadarCommand alloc] initWithDelegate:self];
    v17 = [(PKTextInputPaletteController *)self _paletteController];
    [v17 setTapToRadarCommand:v7];

    goto LABEL_32;
  }

  v18 = [(PKTextInputPaletteController *)self _paletteController];

  if (!v6 && v18)
  {
    v19 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEBUG, "Tearing down palette controller", &v24, 2u);
    }

    v20 = _PKSignpostLog();
    if (os_signpost_enabled(v20))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteTearDown", "", &v24, 2u);
    }

    v21 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_INFO, "BEGIN TextInputPaletteTearDown", &v24, 2u);
    }

    v22 = [(PKTextInputPaletteController *)self _paletteController];
    [v22 tearDown];

    [(PKTextInputPaletteController *)self set_paletteController:0];
    v23 = _PKSignpostLog();
    if (os_signpost_enabled(v23))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TextInputPaletteTearDown", "", &v24, 2u);
    }

    v7 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C7CCA000, &v7->super, OS_LOG_TYPE_INFO, "END TextInputPaletteTearDown", &v24, 2u);
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PKTextInputPaletteController *)self _paletteController];
  v7 = [v8 tapToRadarCommand];
  [v7 editingOverlayContainerDidChangeToSceneBounds:{x, y, width, height}];
}

- (id)paletteTapToRadarCommandConfiguration:(id)a3
{
  v4 = objc_alloc_init(PKPaletteTapToRadarConfiguration);
  v5 = [(PKTextInputPaletteController *)self delegate];
  v6 = [v5 paletteControllerDebugSharpenerLog:self];

  if ([v6 hasContent])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(PKPaletteTapToRadarConfiguration *)v4 setDebugSharpenerLog:v7];
  v8 = [(PKTextInputPaletteController *)self _paletteControllerContainerView];
  v9 = [v8 window];
  v10 = [v9 rootViewController];
  v11 = [v10 childViewControllers];
  v12 = [v11 firstObject];
  [(PKPaletteTapToRadarConfiguration *)v4 setPresentationViewController:v12];

  return v4;
}

- (void)paletteControllerFloatingKeyboardWillHide:(id)a3
{
  v4 = [(PKTextInputPaletteController *)self delegate];
  [v4 textInputPaletteControllerFloatingKeyboardWillHide:self];

  v5 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [v5 setPaletteFloatingMode:0];
}

- (void)paletteControllerFloatingKeyboardWillShow:(id)a3
{
  v4 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [v4 setPaletteFloatingMode:1];

  v5 = [(PKTextInputPaletteController *)self delegate];
  [v5 textInputPaletteControllerFloatingKeyboardWillShow:self];
}

- (void)floatingKeyboardControllerWillShow:(id)a3
{
  v4 = [(PKTextInputPaletteController *)self delegate];
  [v4 textInputPaletteControllerFloatingKeyboardWillHide:self];

  v5 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [v5 setPaletteFloatingMode:0];
}

- (void)floatingKeyboardControllerWillHide:(id)a3
{
  v4 = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [v4 setPaletteFloatingMode:1];

  v5 = [(PKTextInputPaletteController *)self delegate];
  [v5 textInputPaletteControllerFloatingKeyboardWillShow:self];
}

- (PKTextInputPaletteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)editingOverlayContainerSceneBounds
{
  x = self->_editingOverlayContainerSceneBounds.origin.x;
  y = self->_editingOverlayContainerSceneBounds.origin.y;
  width = self->_editingOverlayContainerSceneBounds.size.width;
  height = self->_editingOverlayContainerSceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end