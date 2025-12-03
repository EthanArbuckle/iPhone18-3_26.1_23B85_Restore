@interface PKTextInputWindowFirstResponderController
- (BOOL)_isResponderEditableTextInput:(id)input;
- (PKTextInputWindowFirstResponderController)init;
- (PKTextInputWindowFirstResponderController)initWithNotificationCenter:(id)center;
- (PKTextInputWindowFirstResponderControllerDelegate)delegate;
- (void)_forceControllerToReload:(id)reload;
- (void)_handleTextInputSourceDidChange:(id)change;
- (void)_textInputResponderDidChangeNotificationHandler:(id)handler;
- (void)_updateFirstResponder:(id)responder isVisible:(BOOL)visible sendDelegateCallback:(BOOL)callback;
- (void)dealloc;
- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset;
- (void)textInputSourceDidChange:(id)change;
- (void)updateFirstResponderFromWindowScene:(id)scene sendDelegateCallback:(BOOL)callback;
@end

@implementation PKTextInputWindowFirstResponderController

- (PKTextInputWindowFirstResponderController)init
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(PKTextInputWindowFirstResponderController *)self initWithNotificationCenter:defaultCenter];

  return v4;
}

- (PKTextInputWindowFirstResponderController)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = PKTextInputWindowFirstResponderController;
  v6 = [(PKTextInputWindowFirstResponderController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__notificationCenter, center);
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

- (void)_updateFirstResponder:(id)responder isVisible:(BOOL)visible sendDelegateCallback:(BOOL)callback
{
  callbackCopy = callback;
  visibleCopy = visible;
  v41 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    *buf = 67109378;
    v38 = visibleCopy;
    v39 = 2112;
    v40 = currentThread;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, "Notify first responder did change, isVisible: %d, thread: %@", buf, 0x12u);
  }

  if (responderCopy)
  {
    v11 = visibleCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PKTextInputWindowFirstResponderController *)self _isResponderEditableTextInput:responderCopy];
  v36 = callbackCopy;
  if (v12)
  {
    v13 = PKScribbleInteractionInTextInput(responderCopy);
    v14 = v13 != 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = PKHasScribbleInteractionInView(responderCopy);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view = [responderCopy view];
        v14 = PKHasScribbleInteractionInView(view);
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v16 = objc_opt_class();
  v17 = PKDynamicCast(v16, responderCopy);
  v18 = v17;
  if (v17)
  {
    inputAssistantItem = [v17 inputAssistantItem];
    _responderWindow = [v18 _responderWindow];
    windowScene = [_responderWindow windowScene];

    if (!responderCopy)
    {
      goto LABEL_18;
    }
  }

  else
  {
    windowScene = 0;
    inputAssistantItem = 0;
    if (!responderCopy)
    {
LABEL_18:
      [(PKTextInputWindowFirstResponderController *)self setFirstResponder:0];
      goto LABEL_19;
    }
  }

  delegate = [(PKTextInputWindowFirstResponderController *)self delegate];
  windowScene2 = [delegate windowScene];

  if (windowScene != windowScene2)
  {
    goto LABEL_18;
  }

  if ([(PKTextInputWindowFirstResponderController *)self paletteFloatingMode])
  {
    v25 = 3;
  }

  else
  {
    v25 = [PKTextInputUtilities responderTextInputSource:responderCopy];
  }

  v26 = [[PKTextInputWindowFirstResponder alloc] initWithIsVisible:v11 isEditableTextInput:v12 hasScribbleInteraction:v14 textInputSource:v25 inputAssistantItem:inputAssistantItem];
  [(PKTextInputWindowFirstResponderController *)self setFirstResponder:v26];

  v27 = [PKTextInputElementsFinder shouldDisableInputAssistantForTextInput:responderCopy];
  firstResponder = [(PKTextInputWindowFirstResponderController *)self firstResponder];
  [firstResponder setDisableInputAssistant:v27];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v31 = [bundleIdentifier isEqual:@"com.apple.mobilenotes"];

  if (v31)
  {
    NSClassFromString(&cfstr_Ictextview.isa);
    v32 = responderCopy;
    do
    {
      if (objc_opt_isKindOfClass())
      {

        goto LABEL_32;
      }

      nextResponder = [v32 nextResponder];

      v32 = nextResponder;
    }

    while (nextResponder);
    NSClassFromString(&cfstr_Icinktoolpicke.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    firstResponder2 = [(PKTextInputWindowFirstResponderController *)self firstResponder];
    [firstResponder2 setDisableInputAssistant:1];

    firstResponder3 = [(PKTextInputWindowFirstResponderController *)self firstResponder];
    [firstResponder3 setNotesHandwritingResponder:1];
  }

LABEL_19:
  if (v36)
  {
    delegate2 = [(PKTextInputWindowFirstResponderController *)self delegate];
    [delegate2 windowFirstResponderController:self didChangeFirstResponder:responderCopy];
  }
}

- (void)updateFirstResponderFromWindowScene:(id)scene sendDelegateCallback:(BOOL)callback
{
  callbackCopy = callback;
  v6 = MEMORY[0x1E69DD2E8];
  sceneCopy = scene;
  keyWindow = [v6 keyWindow];
  windowScene = [keyWindow windowScene];

  if (windowScene == sceneCopy)
  {
    firstResponder = [keyWindow firstResponder];
    [(PKTextInputWindowFirstResponderController *)self _updateFirstResponder:firstResponder isVisible:1 sendDelegateCallback:callbackCopy];
  }
}

- (void)_textInputResponderDidChangeNotificationHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKTextInputWindowFirstResponderController *)self paletteFloatingMode])
  {
    _delayedNotification = [(PKTextInputWindowFirstResponderController *)self _delayedNotification];

    [(PKTextInputWindowFirstResponderController *)self set_delayedNotification:handlerCopy];
    if (!_delayedNotification)
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
    userInfo = [handlerCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE6D0]];

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

- (void)textInputSourceDidChange:(id)change
{
  v4 = MEMORY[0x1E69E58C0];
  changeCopy = change;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__handleTextInputSourceDidChange_ object:changeCopy];
  [(PKTextInputWindowFirstResponderController *)self performSelector:sel__handleTextInputSourceDidChange_ withObject:changeCopy afterDelay:0.1];
}

- (void)_handleTextInputSourceDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    *buf = 138412290;
    v21 = currentThread;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Received textInputSourceDidChange, thread: %@", buf, 0xCu);
  }

  firstResponder = [(PKTextInputWindowFirstResponderController *)self firstResponder];

  if (firstResponder)
  {
    userInfo = [changeCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE6D0]];

    userInfo2 = [changeCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69DE708]];

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
      selfCopy = self;
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

- (void)_forceControllerToReload:(id)reload
{
  userInfo = [reload userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PKTextInputWindowFirstResponderControllerReloadResponderKey"];

  [PKTextInputWindowFirstResponderController _updateFirstResponder:"_updateFirstResponder:isVisible:sendDelegateCallback:" isVisible:? sendDelegateCallback:?];
}

- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset
{
  changeCopy = change;
  responder = [delegate responder];
  [(PKTextInputWindowFirstResponderController *)self _updateFirstResponder:responder isVisible:changeCopy sendDelegateCallback:1];
}

- (BOOL)_isResponderEditableTextInput:(id)input
{
  if (input)
  {
    return [PKTextInputElementsFinder isResponderEditableTextInput:input];
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