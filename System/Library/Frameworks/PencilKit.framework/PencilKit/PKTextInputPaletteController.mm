@interface PKTextInputPaletteController
- (BOOL)_canShowPaletteUI;
- (BOOL)_isFirstResponderEditableTextInputWithPencilTextInputSource;
- (BOOL)_isFirstResponderInputAssistantEnabled;
- (BOOL)_isFirstResponderVisible;
- (BOOL)_shouldPaletteBeVisible;
- (BOOL)isPaletteVisible;
- (CGRect)editingOverlayContainerSceneBounds;
- (PKTextInputPaletteController)init;
- (PKTextInputPaletteController)initWithTextInputSettings:(id)settings;
- (PKTextInputPaletteControllerDelegate)delegate;
- (UIWindowScene)windowScene;
- (id)_paletteControllerContainerView;
- (id)paletteTapToRadarCommandConfiguration:(id)configuration;
- (void)_peformPaletteVisibilityUpdate;
- (void)_setWritingStateActive:(BOOL)active;
- (void)_setupPaletteControllerIfNeededWithView:(id)view wantsPaletteVisible:(BOOL)visible;
- (void)dealloc;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds;
- (void)floatingKeyboardControllerWillHide:(id)hide;
- (void)floatingKeyboardControllerWillShow:(id)show;
- (void)paletteControllerFloatingKeyboardWillHide:(id)hide;
- (void)paletteControllerFloatingKeyboardWillShow:(id)show;
- (void)setEditingOverlayContainerSceneBounds:(CGRect)bounds;
- (void)updateFirstResponderVisibility;
@end

@implementation PKTextInputPaletteController

- (PKTextInputPaletteController)init
{
  v3 = +[PKTextInputSettings sharedSettings];
  v4 = [(PKTextInputPaletteController *)self initWithTextInputSettings:v3];

  return v4;
}

- (PKTextInputPaletteController)initWithTextInputSettings:(id)settings
{
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = PKTextInputPaletteController;
  v6 = [(PKTextInputPaletteController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__textInputSettings, settings);
    v8 = objc_alloc_init(PKTextInputWindowFirstResponderController);
    windowFirstResponderController = v7->__windowFirstResponderController;
    v7->__windowFirstResponderController = v8;

    [(PKTextInputWindowFirstResponderController *)v7->__windowFirstResponderController setDelegate:v7];
    v10 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    floatingKeyboardController = v7->__floatingKeyboardController;
    v7->__floatingKeyboardController = v10;

    [(PKPaletteFloatingKeyboardController *)v7->__floatingKeyboardController setDelegate:v7];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v7->_editingOverlayContainerSceneBounds.origin.x = v13;
    v7->_editingOverlayContainerSceneBounds.origin.y = v14;
    v7->_editingOverlayContainerSceneBounds.size.width = v15;
    v7->_editingOverlayContainerSceneBounds.size.height = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = PKTextInputPaletteController;
  [(PKTextInputPaletteController *)&v4 dealloc];
}

- (void)setEditingOverlayContainerSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(self->_editingOverlayContainerSceneBounds, bounds))
  {
    self->_editingOverlayContainerSceneBounds.origin.x = x;
    self->_editingOverlayContainerSceneBounds.origin.y = y;
    self->_editingOverlayContainerSceneBounds.size.width = width;
    self->_editingOverlayContainerSceneBounds.size.height = height;

    [(PKTextInputPaletteController *)self _updatePaletteVisibility];
  }
}

- (void)_setWritingStateActive:(BOOL)active
{
  writingStateActive = self->__writingStateActive;
  if (writingStateActive != active)
  {
    self->__writingStateActive = active;
    if (writingStateActive || !active)
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
  delegate = [(PKTextInputPaletteController *)self delegate];
  v4 = [delegate paletteControllerContainerView:self];
  window = [v4 window];
  windowScene = [window windowScene];

  return windowScene;
}

- (id)_paletteControllerContainerView
{
  delegate = [(PKTextInputPaletteController *)self delegate];
  v4 = [delegate paletteControllerContainerView:self];

  return v4;
}

- (BOOL)_canShowPaletteUI
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  _textInputSettings = [(PKTextInputPaletteController *)self _textInputSettings];
  isScribbleActive = [_textInputSettings isScribbleActive];

  _textInputSettings2 = [(PKTextInputPaletteController *)self _textInputSettings];
  LOBYTE(_textInputSettings) = [_textInputSettings2 UCBPaletteEnabled];

  return isScribbleActive & _textInputSettings;
}

- (void)updateFirstResponderVisibility
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  windowScene = [(PKTextInputPaletteController *)self windowScene];
  [_windowFirstResponderController updateFirstResponderFromWindowScene:windowScene sendDelegateCallback:1];
}

- (BOOL)isPaletteVisible
{
  _paletteController = [(PKTextInputPaletteController *)self _paletteController];
  isPaletteVisible = [_paletteController isPaletteVisible];

  return isPaletteVisible;
}

- (BOOL)_isFirstResponderEditableTextInputWithPencilTextInputSource
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  firstResponder = [_windowFirstResponderController firstResponder];
  isEditableTextInputWithPencilTextInputSource = [firstResponder isEditableTextInputWithPencilTextInputSource];

  return isEditableTextInputWithPencilTextInputSource;
}

- (BOOL)_isFirstResponderVisible
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  firstResponder = [_windowFirstResponderController firstResponder];
  isVisible = [firstResponder isVisible];

  return isVisible;
}

- (BOOL)_isFirstResponderInputAssistantEnabled
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  firstResponder = [_windowFirstResponderController firstResponder];
  disableInputAssistant = [firstResponder disableInputAssistant];

  return disableInputAssistant ^ 1;
}

- (BOOL)_shouldPaletteBeVisible
{
  if (![(PKTextInputPaletteController *)self _canShowPaletteUI]|| ![(PKTextInputPaletteController *)self _isFirstResponderVisible]|| ![(PKTextInputPaletteController *)self _isFirstResponderEditableTextInputWithPencilTextInputSource]|| ![(PKTextInputPaletteController *)self isPaletteVisible]&& [(PKTextInputPaletteController *)self _isWritingStateActive]|| ![(PKTextInputPaletteController *)self _isFirstResponderInputAssistantEnabled])
  {
    return 0;
  }

  windowScene = [(PKTextInputPaletteController *)self windowScene];
  _isKeyWindowScene = [windowScene _isKeyWindowScene];

  return _isKeyWindowScene;
}

- (void)_peformPaletteVisibilityUpdate
{
  _shouldPaletteBeVisible = [(PKTextInputPaletteController *)self _shouldPaletteBeVisible];
  _paletteController = [(PKTextInputPaletteController *)self _paletteController];
  v5 = _shouldPaletteBeVisible ^ [_paletteController isPaletteVisible];

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

  _paletteControllerContainerView = [(PKTextInputPaletteController *)self _paletteControllerContainerView];
  [(PKTextInputPaletteController *)self _setupPaletteControllerIfNeededWithView:_paletteControllerContainerView wantsPaletteVisible:_shouldPaletteBeVisible];
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  firstResponder = [_windowFirstResponderController firstResponder];
  _paletteController2 = [(PKTextInputPaletteController *)self _paletteController];
  [_paletteController2 setFirstResponder:firstResponder];

  [(PKTextInputPaletteController *)self editingOverlayContainerSceneBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  _paletteController3 = [(PKTextInputPaletteController *)self _paletteController];
  [_paletteController3 setAdjustedWindowSceneBounds:{v13, v15, v17, v19}];

  _paletteController4 = [(PKTextInputPaletteController *)self _paletteController];
  [_paletteController4 setPaletteVisible:_shouldPaletteBeVisible animated:1 completion:0];

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

- (void)_setupPaletteControllerIfNeededWithView:(id)view wantsPaletteVisible:(BOOL)visible
{
  visibleCopy = visible;
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!viewCopy && visibleCopy)
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

  _paletteController = [(PKTextInputPaletteController *)self _paletteController];
  if (!viewCopy || _paletteController)
  {
  }

  else if (visibleCopy)
  {
    v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = viewCopy;
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

    _paletteController2 = [(PKTextInputPaletteController *)self _paletteController];
    [_paletteController2 setDelegate:self];

    _paletteController3 = [(PKTextInputPaletteController *)self _paletteController];
    [_paletteController3 installInView:viewCopy];

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
    _paletteController4 = [(PKTextInputPaletteController *)self _paletteController];
    [_paletteController4 setTapToRadarCommand:v7];

    goto LABEL_32;
  }

  _paletteController5 = [(PKTextInputPaletteController *)self _paletteController];

  if (!viewCopy && _paletteController5)
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

    _paletteController6 = [(PKTextInputPaletteController *)self _paletteController];
    [_paletteController6 tearDown];

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

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _paletteController = [(PKTextInputPaletteController *)self _paletteController];
  tapToRadarCommand = [_paletteController tapToRadarCommand];
  [tapToRadarCommand editingOverlayContainerDidChangeToSceneBounds:{x, y, width, height}];
}

- (id)paletteTapToRadarCommandConfiguration:(id)configuration
{
  v4 = objc_alloc_init(PKPaletteTapToRadarConfiguration);
  delegate = [(PKTextInputPaletteController *)self delegate];
  v6 = [delegate paletteControllerDebugSharpenerLog:self];

  if ([v6 hasContent])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(PKPaletteTapToRadarConfiguration *)v4 setDebugSharpenerLog:v7];
  _paletteControllerContainerView = [(PKTextInputPaletteController *)self _paletteControllerContainerView];
  window = [_paletteControllerContainerView window];
  rootViewController = [window rootViewController];
  childViewControllers = [rootViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  [(PKPaletteTapToRadarConfiguration *)v4 setPresentationViewController:firstObject];

  return v4;
}

- (void)paletteControllerFloatingKeyboardWillHide:(id)hide
{
  delegate = [(PKTextInputPaletteController *)self delegate];
  [delegate textInputPaletteControllerFloatingKeyboardWillHide:self];

  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [_windowFirstResponderController setPaletteFloatingMode:0];
}

- (void)paletteControllerFloatingKeyboardWillShow:(id)show
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [_windowFirstResponderController setPaletteFloatingMode:1];

  delegate = [(PKTextInputPaletteController *)self delegate];
  [delegate textInputPaletteControllerFloatingKeyboardWillShow:self];
}

- (void)floatingKeyboardControllerWillShow:(id)show
{
  delegate = [(PKTextInputPaletteController *)self delegate];
  [delegate textInputPaletteControllerFloatingKeyboardWillHide:self];

  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [_windowFirstResponderController setPaletteFloatingMode:0];
}

- (void)floatingKeyboardControllerWillHide:(id)hide
{
  _windowFirstResponderController = [(PKTextInputPaletteController *)self _windowFirstResponderController];
  [_windowFirstResponderController setPaletteFloatingMode:1];

  delegate = [(PKTextInputPaletteController *)self delegate];
  [delegate textInputPaletteControllerFloatingKeyboardWillShow:self];
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