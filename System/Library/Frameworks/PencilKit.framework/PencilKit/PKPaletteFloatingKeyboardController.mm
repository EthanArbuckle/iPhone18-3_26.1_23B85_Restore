@interface PKPaletteFloatingKeyboardController
- (BOOL)isPresentingKeyboard;
- (PKPaletteFloatingKeyboardController)init;
- (id)keyboardSelectionMenu;
- (uint64_t)_currentSystemFloatingKeyboardType;
- (void)_clearMenuStateIfNecessary;
- (void)_presentOrDismissWithKeyboardType:(uint64_t)type;
- (void)_setTraitsForActiveKeyboard:(void *)keyboard forResponder:;
- (void)_updateKeyboardInputModeToFloatingKeyboardType:(uint64_t)type;
- (void)_updateKeyboardMenuIfNecessary;
- (void)dealloc;
- (void)didChangeInputMode;
- (void)dismissWithReason:(uint64_t)reason;
- (void)notifyDelegateDidChangeKeyboardType;
- (void)presentOrDismissIfPresented;
- (void)setDelegate:(uint64_t)delegate;
@end

@implementation PKPaletteFloatingKeyboardController

- (PKPaletteFloatingKeyboardController)init
{
  v7.receiver = self;
  v7.super_class = PKPaletteFloatingKeyboardController;
  v2 = [(PKPaletteFloatingKeyboardController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCBE8] keyboardInputModeWithIdentifier:@"emoji@sw=Emoji"];
    emojiInputMode = v2->_emojiInputMode;
    v2->_emojiInputMode = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didChangeInputMode name:*MEMORY[0x1E69DE6B8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];

  v4.receiver = self;
  v4.super_class = PKPaletteFloatingKeyboardController;
  [(PKPaletteFloatingKeyboardController *)&v4 dealloc];
}

- (void)setDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((delegate + 24));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 24), obj);
      [(PKPaletteFloatingKeyboardController *)delegate notifyDelegateDidChangeKeyboardType];
      v3 = obj;
    }
  }
}

- (void)notifyDelegateDidChangeKeyboardType
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((self + 24));
      [v4 floatingKeyboardController:self didChangeKeyboardType:__PKFloatingKeyboardType];
    }
  }
}

- (void)didChangeInputMode
{
  if (![(PKPaletteFloatingKeyboardController *)self isPresentingKeyboard])
  {
    return;
  }

  if (self && __PKFloatingKeyboardType == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;

    if (v5 - self->_latestUserInitiatedInputModeChangeTimestamp < 1.0)
    {
      v6 = __PKFloatingKeyboardType;
      if (__PKFloatingKeyboardType == 1)
      {
        mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
        [mEMORY[0x1E69DCBF0] updateCurrentInputMode:self->_emojiInputMode];

        v6 = __PKFloatingKeyboardType;
      }

      [(PKPaletteFloatingKeyboardController *)self _updateKeyboardInputModeToFloatingKeyboardType:v6];
      return;
    }

    goto LABEL_12;
  }

  if (self)
  {
LABEL_12:
    __PKFloatingKeyboardType = [(PKPaletteFloatingKeyboardController *)self _currentSystemFloatingKeyboardType];
  }

  [(PKPaletteFloatingKeyboardController *)self notifyDelegateDidChangeKeyboardType];
}

- (BOOL)isPresentingKeyboard
{
  if (!self)
  {
    return 0;
  }

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  _overrideTextInputTraits = [activeKeyboard _overrideTextInputTraits];
  v3 = _overrideTextInputTraits != 0;

  return v3;
}

- (void)_updateKeyboardInputModeToFloatingKeyboardType:(uint64_t)type
{
  if (type)
  {
    if (a2 == 1)
    {
      mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
      identifier = [*(type + 32) identifier];
      [mEMORY[0x1E69DCBE0] setInputMode:identifier userInitiated:1];
    }

    else
    {
      if (a2)
      {
        return;
      }

      mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
      identifier = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      currentInputModeInPreference = [identifier currentInputModeInPreference];
      identifier2 = [currentInputModeInPreference identifier];
      [mEMORY[0x1E69DCBE0] setInputMode:identifier2 userInitiated:1];
    }
  }
}

- (void)_updateKeyboardMenuIfNecessary
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (val && !val[1])
  {
    objc_initWeak(&location, val);
    v2 = _PKUIKitBundle_kitBundle;
    if (!_PKUIKitBundle_kitBundle)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v4 = _PKUIKitBundle_kitBundle;
      _PKUIKitBundle_kitBundle = v3;

      v2 = _PKUIKitBundle_kitBundle;
    }

    v5 = v2;
    v20 = [v5 localizedStringForKey:@"Keyboard" value:@"Keyboard" table:@"Localizable"];

    v6 = MEMORY[0x1E69DC628];
    v7 = +[UIImage _pk_keyboardButtonImage];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__PKPaletteFloatingKeyboardController__updateKeyboardMenuIfNecessary__block_invoke;
    v23[3] = &unk_1E82D9BF0;
    objc_copyWeak(&v24, &location);
    v8 = [v6 actionWithTitle:v20 image:v7 identifier:@"Keyboard" handler:v23];

    v9 = MEMORY[0x1E69DC628];
    v10 = val[4];
    extendedDisplayName = [v10 extendedDisplayName];
    v12 = +[UIImage _pk_emojiButtonImage];
    v13 = val[4];
    primaryLanguage = [v13 primaryLanguage];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__PKPaletteFloatingKeyboardController__updateKeyboardMenuIfNecessary__block_invoke_2;
    v21[3] = &unk_1E82D9BF0;
    objc_copyWeak(&v22, &location);
    v15 = [v9 actionWithTitle:extendedDisplayName image:v12 identifier:primaryLanguage handler:v21];

    v16 = MEMORY[0x1E69DCC60];
    v26[0] = v8;
    v26[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v18 = [v16 menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v17];

    v19 = val[1];
    val[1] = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }
}

void __69__PKPaletteFloatingKeyboardController__updateKeyboardMenuIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKPaletteFloatingKeyboardController *)WeakRetained _presentOrDismissWithKeyboardType:?];
}

- (void)_presentOrDismissWithKeyboardType:(uint64_t)type
{
  if (type)
  {
    if (![(PKPaletteFloatingKeyboardController *)type isPresentingKeyboard]|| __PKFloatingKeyboardType == a2)
    {
      if ([(PKPaletteFloatingKeyboardController *)type isPresentingKeyboard])
      {

        [(PKPaletteFloatingKeyboardController *)type presentOrDismissIfPresented];
      }

      else
      {
        __PKFloatingKeyboardType = a2;
        [(PKPaletteFloatingKeyboardController *)type presentOrDismissIfPresented];
        [(PKPaletteFloatingKeyboardController *)type _updateKeyboardInputModeToFloatingKeyboardType:a2];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
        *(type + 40) = v4;
      }
    }

    else
    {
      [(PKPaletteFloatingKeyboardController *)type _updateKeyboardInputModeToFloatingKeyboardType:a2];
      __PKFloatingKeyboardType = [(PKPaletteFloatingKeyboardController *)type _currentSystemFloatingKeyboardType];

      [(PKPaletteFloatingKeyboardController *)type notifyDelegateDidChangeKeyboardType];
    }
  }
}

void __69__PKPaletteFloatingKeyboardController__updateKeyboardMenuIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKPaletteFloatingKeyboardController *)WeakRetained _presentOrDismissWithKeyboardType:?];
}

- (void)_clearMenuStateIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    children = [*(self + 8) children];
    v2 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(children);
          }

          [*(*(&v6 + 1) + 8 * v5++) setAttributes:0];
        }

        while (v3 != v5);
        v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

- (id)keyboardSelectionMenu
{
  if (self)
  {
    selfCopy = self;
    [(PKPaletteFloatingKeyboardController *)self _updateKeyboardMenuIfNecessary];
    [(PKPaletteFloatingKeyboardController *)selfCopy _clearMenuStateIfNecessary];
    self = *(selfCopy + 8);
    v1 = vars8;
  }

  return self;
}

- (void)presentOrDismissIfPresented
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 17) == 1)
    {
      v2 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315138;
        v16 = "[PKPaletteFloatingKeyboardController presentOrDismissIfPresented]";
        _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Ignoring %s as we are processing an internally requested reloadInputViews", &v15, 0xCu);
      }
    }

    else if ([(PKPaletteFloatingKeyboardController *)self isPresentingKeyboard])
    {

      [(PKPaletteFloatingKeyboardController *)self dismissWithReason:?];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((self + 24));
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = objc_loadWeakRetained((self + 24));
        v6 = [v5 responderForFloatingKeyboardController:self];
      }

      else
      {
        v6 = 0;
      }

      v7 = os_log_create("com.apple.pencilkit", "PKPalette");
      v8 = v7;
      if (v6)
      {
        v9 = v7;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInteger:__PKFloatingKeyboardType];
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Presenting keyboard for type: %@", &v15, 0xCu);
        }

        v11 = __PKFloatingKeyboardType;
        v12 = v6;
        v8 = objc_loadWeakRetained((self + 24));
        if (![(PKPaletteFloatingKeyboardController *)self isPresentingKeyboard]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v8 floatingKeyboardControllerWillShow:self];
        }

        if (v11 == 1)
        {
          mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
          [mEMORY[0x1E69DCBF0] updateCurrentInputMode:*(self + 32)];
        }

        defaultTextInputTraits = [MEMORY[0x1E69DD108] defaultTextInputTraits];
        [defaultTextInputTraits setForceFloatingKeyboard:1];
        [defaultTextInputTraits setAcceptsInitialEmojiKeyboard:1];
        [(PKPaletteFloatingKeyboardController *)self _setTraitsForActiveKeyboard:defaultTextInputTraits forResponder:v12];
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Attempted presenting a UCB-Keyboard but could not get a responder", &v15, 2u);
      }
    }
  }
}

- (void)dismissWithReason:(uint64_t)reason
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    if (*(reason + 17) == 1)
    {
      WeakRetained = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315138;
        v12 = "[PKPaletteFloatingKeyboardController dismissWithReason:]";
        _os_log_debug_impl(&dword_1C7CCA000, WeakRetained, OS_LOG_TYPE_DEBUG, "Ignoring %s as we are processing an internally requested reloadInputViews", &v11, 0xCu);
      }
    }

    else if ([(PKPaletteFloatingKeyboardController *)reason isPresentingKeyboard])
    {
      __PKFloatingKeyboardType = [(PKPaletteFloatingKeyboardController *)reason _currentSystemFloatingKeyboardType];
      WeakRetained = objc_loadWeakRetained((reason + 24));
      if ([(PKPaletteFloatingKeyboardController *)reason isPresentingKeyboard]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained floatingKeyboardControllerWillHide:reason];
      }

      v5 = objc_loadWeakRetained((reason + 24));
      v6 = [v5 responderForFloatingKeyboardController:reason];

      if (objc_opt_respondsToSelector())
      {
        [v6 set_textInputSource:3];
      }

      [(PKPaletteFloatingKeyboardController *)reason _setTraitsForActiveKeyboard:v6 forResponder:?];
      v7 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Dismissing UCB-Keyboard with reason: '%@'", &v11, 0xCu);
      }

      v8 = objc_loadWeakRetained((reason + 24));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained((reason + 24));
        [v10 floatingKeyboardController:reason didDismissWithReason:v3];
      }
    }

    else
    {
      WeakRetained = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1C7CCA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Attempted dismissal, but UCB-Keyboard is not presented. Reason: '%@'", &v11, 0xCu);
      }
    }
  }
}

- (void)_setTraitsForActiveKeyboard:(void *)keyboard forResponder:
{
  v5 = MEMORY[0x1E69DCBB8];
  keyboardCopy = keyboard;
  v7 = a2;
  activeKeyboard = [v5 activeKeyboard];
  [activeKeyboard set_overrideTextInputTraits:v7];

  *(self + 17) = 1;
  [keyboardCopy reloadInputViews];

  *(self + 17) = 0;
}

- (uint64_t)_currentSystemFloatingKeyboardType
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];

  LODWORD(self) = [currentInputMode isEqual:*(self + 32)];
  return self;
}

@end