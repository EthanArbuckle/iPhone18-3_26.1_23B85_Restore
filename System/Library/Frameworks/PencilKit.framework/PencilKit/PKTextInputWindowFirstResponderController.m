@interface PKTextInputWindowFirstResponderController
- (BOOL)_isResponderEditableTextInput:(id)a3;
- (PKTextInputWindowFirstResponderController)init;
- (PKTextInputWindowFirstResponderController)initWithNotificationCenter:(id)a3;
- (PKTextInputWindowFirstResponderControllerDelegate)delegate;
- (void)_forceControllerToReload:(id)a3;
- (void)_handleTextInputSourceDidChange:(id)a3;
- (void)_textInputResponderDidChangeNotificationHandler:(id)a3;
- (void)_updateFirstResponder:(id)a3 isVisible:(BOOL)a4 sendDelegateCallback:(BOOL)a5;
- (void)dealloc;
- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5;
- (void)textInputSourceDidChange:(id)a3;
- (void)updateFirstResponderFromWindowScene:(id)a3 sendDelegateCallback:(BOOL)a4;
@end

@implementation PKTextInputWindowFirstResponderController

- (PKTextInputWindowFirstResponderController)init
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(PKTextInputWindowFirstResponderController *)self initWithNotificationCenter:v3];

  return v4;
}

- (PKTextInputWindowFirstResponderController)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTextInputWindowFirstResponderController;
  v6 = [(PKTextInputWindowFirstResponderController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__notificationCenter, a3);
    [(NSNotificationCenter *)v7->__notificationCenter addObserver:v7 selector:sel__textInputResponderDidChangeNotificationHandler_ name:*MEMORY[0x1E69DE6E0] object:0];
    [(NSNotificationCenter *)v7->__notificationCenter addObserver:v7 selector:sel_textInputSourceDidChange_ name:*MEMORY[0x1E69DE710] object:0];
    [(NSNotificationCenter *)v7->__notificationCenter addObserver:v7 selector:sel__forceControllerToReload_ name:@"PKTextInputWindowFirstResponderControllerReloadNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->__notificationCenter removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKTextInputWindowFirstResponderController;
  [(PKTextInputWindowFirstResponderController *)&v3 dealloc];
}

- (void)_updateFirstResponder:(id)a3 isVisible:(BOOL)a4 sendDelegateCallback:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AF00] currentThread];
    *buf = 67109378;
    v38 = v6;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, "Notify first responder did change, isVisible: %d, thread: %@", buf, 0x12u);
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PKTextInputWindowFirstResponderController *)self _isResponderEditableTextInput:v8];
  v36 = v5;
  if (v12)
  {
    v13 = PKScribbleInteractionInTextInput(v8);
    v14 = v13 != 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = PKHasScribbleInteractionInView(v8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v8 view];
        v14 = PKHasScribbleInteractionInView(v15);
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v16 = objc_opt_class();
  v17 = PKDynamicCast(v16, v8);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 inputAssistantItem];
    v20 = [v18 _responderWindow];
    v21 = [v20 windowScene];

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (!v8)
    {
LABEL_18:
      [(PKTextInputWindowFirstResponderController *)self setFirstResponder:0];
      goto LABEL_19;
    }
  }

  v22 = [(PKTextInputWindowFirstResponderController *)self delegate];
  v23 = [v22 windowScene];

  if (v21 != v23)
  {
    goto LABEL_18;
  }

  if ([(PKTextInputWindowFirstResponderController *)self paletteFloatingMode])
  {
    v25 = 3;
  }

  else
  {
    v25 = [PKTextInputUtilities responderTextInputSource:v8];
  }

  v26 = [[PKTextInputWindowFirstResponder alloc] initWithIsVisible:v11 isEditableTextInput:v12 hasScribbleInteraction:v14 textInputSource:v25 inputAssistantItem:v19];
  [(PKTextInputWindowFirstResponderController *)self setFirstResponder:v26];

  v27 = [PKTextInputElementsFinder shouldDisableInputAssistantForTextInput:v8];
  v28 = [(PKTextInputWindowFirstResponderController *)self firstResponder];
  [v28 setDisableInputAssistant:v27];

  v29 = [MEMORY[0x1E696AAE8] mainBundle];
  v30 = [v29 bundleIdentifier];
  v31 = [v30 isEqual:@"com.apple.mobilenotes"];

  if (v31)
  {
    NSClassFromString(&cfstr_Ictextview.isa);
    v32 = v8;
    do
    {
      if (objc_opt_isKindOfClass())
      {

        goto LABEL_32;
      }

      v33 = [v32 nextResponder];

      v32 = v33;
    }

    while (v33);
    NSClassFromString(&cfstr_Icinktoolpicke.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    v34 = [(PKTextInputWindowFirstResponderController *)self firstResponder];
    [v34 setDisableInputAssistant:1];

    v35 = [(PKTextInputWindowFirstResponderController *)self firstResponder];
    [v35 setNotesHandwritingResponder:1];
  }

LABEL_19:
  if (v36)
  {
    v24 = [(PKTextInputWindowFirstResponderController *)self delegate];
    [v24 windowFirstResponderController:self didChangeFirstResponder:v8];
  }
}

- (void)updateFirstResponderFromWindowScene:(id)a3 sendDelegateCallback:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69DD2E8];
  v7 = a3;
  v10 = [v6 keyWindow];
  v8 = [v10 windowScene];

  if (v8 == v7)
  {
    v9 = [v10 firstResponder];
    [(PKTextInputWindowFirstResponderController *)self _updateFirstResponder:v9 isVisible:1 sendDelegateCallback:v4];
  }
}

- (void)_textInputResponderDidChangeNotificationHandler:(id)a3
{
  v4 = a3;
  if ([(PKTextInputWindowFirstResponderController *)self paletteFloatingMode])
  {
    v5 = [(PKTextInputWindowFirstResponderController *)self _delayedNotification];

    [(PKTextInputWindowFirstResponderController *)self set_delayedNotification:v4];
    if (!v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__PKTextInputWindowFirstResponderController__textInputResponderDidChangeNotificationHandler___block_invoke;
      block[3] = &unk_1E82D7148;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DE6D0]];

    [(PKTextInputWindowFirstResponderController *)self _updateFirstResponder:v7 isVisible:v7 != 0 sendDelegateCallback:1];
  }
}

void __93__PKTextInputWindowFirstResponderController__textInputResponderDidChangeNotificationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _delayedNotification];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DE6D0]];

  [*(a1 + 32) _updateFirstResponder:? isVisible:? sendDelegateCallback:?];
  [*(a1 + 32) set_delayedNotification:0];
}

- (void)textInputSourceDidChange:(id)a3
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__handleTextInputSourceDidChange_ object:v5];
  [(PKTextInputWindowFirstResponderController *)self performSelector:sel__handleTextInputSourceDidChange_ withObject:v5 afterDelay:0.1];
}

- (void)_handleTextInputSourceDidChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AF00] currentThread];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Received textInputSourceDidChange, thread: %@", buf, 0xCu);
  }

  v7 = [(PKTextInputWindowFirstResponderController *)self firstResponder];

  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DE6D0]];

    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DE708]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == 2)
    {
      v12 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_INFO, "Skip textInputSourceDidChange notification.", buf, 2u);
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __77__PKTextInputWindowFirstResponderController__handleTextInputSourceDidChange___block_invoke;
      v17 = &unk_1E82D6E70;
      v18 = self;
      v19 = v9;
      v13 = _Block_copy(&v14);
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v13[2](v13);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v13);
      }
    }
  }
}

- (void)_forceControllerToReload:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PKTextInputWindowFirstResponderControllerReloadResponderKey"];

  [PKTextInputWindowFirstResponderController _updateFirstResponder:"_updateFirstResponder:isVisible:sendDelegateCallback:" isVisible:? sendDelegateCallback:?];
}

- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5
{
  v5 = a4;
  v7 = [a3 responder];
  [(PKTextInputWindowFirstResponderController *)self _updateFirstResponder:v7 isVisible:v5 sendDelegateCallback:1];
}

- (BOOL)_isResponderEditableTextInput:(id)a3
{
  if (a3)
  {
    return [PKTextInputElementsFinder isResponderEditableTextInput:a3];
  }

  else
  {
    return 0;
  }
}

- (PKTextInputWindowFirstResponderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end