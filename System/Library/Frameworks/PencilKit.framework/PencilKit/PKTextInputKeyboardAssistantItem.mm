@interface PKTextInputKeyboardAssistantItem
- (PKTextInputKeyboardAssistantItem)init;
- (PKTextInputKeyboardAssistantItemDelegate)delegate;
- (id)_currentInteraction;
- (void)_updateImageAndNotify;
- (void)dealloc;
- (void)didAction:(id)action;
- (void)didDisplayAssistantItem;
- (void)floatingKeyboardControllerWillHide:(id)hide;
- (void)floatingKeyboardControllerWillShow:(id)show;
@end

@implementation PKTextInputKeyboardAssistantItem

- (PKTextInputKeyboardAssistantItem)init
{
  v15.receiver = self;
  v15.super_class = PKTextInputKeyboardAssistantItem;
  v2 = [(PKTextInputKeyboardAssistantItem *)&v15 init];
  if (v2)
  {
    v3 = +[UIImage _pk_keyboardButtonImage];
    [v2 setImage:v3];

    [v2 setTarget:v2];
    [v2 setAction:sel_didAction_];
    v4 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    v5 = *(v2 + 64);
    *(v2 + 64) = v4;

    [(PKPaletteFloatingKeyboardController *)*(v2 + 64) setDelegate:v2];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__PKTextInputKeyboardAssistantItem_init__block_invoke;
    v12[3] = &unk_1E82DB9F0;
    objc_copyWeak(&v13, &location);
    [v2 _setSecondaryActionsProvider:v12];
    v6 = +[PKTextInputLanguageSelectionController sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__PKTextInputKeyboardAssistantItem_init__block_invoke_2;
    v10[3] = &unk_1E82D7FD8;
    objc_copyWeak(&v11, &location);
    v7 = [v6 registerObserver:v10];
    v8 = *(v2 + 62);
    *(v2 + 62) = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __40__PKTextInputKeyboardAssistantItem_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[PKTextInputLanguageSelectionController sharedInstance];
  v3 = [v2 languageSelectionMenu];

  v4 = [WeakRetained floatingKeyboardController];
  v5 = [(PKPaletteFloatingKeyboardController *)v4 keyboardSelectionMenu];

  v6 = [PKPaletteKeyboardUtilities combinedMenuFromKeyboardMenu:v5 withLanguageMenu:v3];

  return v6;
}

void __40__PKTextInputKeyboardAssistantItem_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained floatingKeyboardController];
  v9 = [(PKPaletteFloatingKeyboardController *)v8 keyboardSelectionMenu];

  v10 = [PKPaletteKeyboardUtilities combinedMenuFromKeyboardMenu:v9 withLanguageMenu:v6];

  [WeakRetained setMenu:v10];
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 61, a2);
    [WeakRetained _updateImageAndNotify];
  }
}

- (void)dealloc
{
  [(PKTextInputLanguageSelectionToken *)self->_observerToken invalidate];
  v3.receiver = self;
  v3.super_class = PKTextInputKeyboardAssistantItem;
  [(PKTextInputKeyboardAssistantItem *)&v3 dealloc];
}

- (void)didAction:(id)action
{
  floatingKeyboardController = [(PKTextInputKeyboardAssistantItem *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)floatingKeyboardController presentOrDismissIfPresented];
}

- (void)_updateImageAndNotify
{
  indicatorImage = self->_indicatorImage;
  if (indicatorImage)
  {
    v4 = indicatorImage;
  }

  else
  {
    if (self->_floatingKeyboardType == 1)
    {
      +[UIImage _pk_emojiButtonImage];
    }

    else
    {
      +[UIImage _pk_keyboardButtonImage];
    }
    v4 = ;
  }

  v12 = v4;
  [(PKTextInputKeyboardAssistantItem *)self setImage:v4];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled] && (-[PKTextInputKeyboardAssistantItem delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    v8 = v7;
    delegate = [(PKTextInputKeyboardAssistantItem *)self delegate];
    [delegate keyboardAssistantItemAnimateUpdateSymbolDisplay:self withDuration:v8];
  }

  else
  {
    delegate2 = [(PKTextInputKeyboardAssistantItem *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    delegate = [(PKTextInputKeyboardAssistantItem *)self delegate];
    [delegate keyboardAssistantItemUpdateSymbolDisplay:self];
  }

LABEL_13:
}

- (void)didDisplayAssistantItem
{
  v2 = +[PKTextInputLanguageSelectionController sharedInstance];
  [v2 notifyLanguageDidChange];
}

- (void)floatingKeyboardControllerWillShow:(id)show
{
  delegate = [(PKTextInputKeyboardAssistantItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKTextInputKeyboardAssistantItem *)self delegate];
    [delegate2 keyboardAssistantItemWillShowKeyboard:self];
  }

  _currentInteraction = [(PKTextInputKeyboardAssistantItem *)self _currentInteraction];
  if (objc_opt_respondsToSelector())
  {
    [_currentInteraction textInputPaletteControllerFloatingKeyboardWillShow:0];
  }
}

- (void)floatingKeyboardControllerWillHide:(id)hide
{
  delegate = [(PKTextInputKeyboardAssistantItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKTextInputKeyboardAssistantItem *)self delegate];
    [delegate2 keyboardAssistantItemWillHideKeyboard:self];
  }

  _currentInteraction = [(PKTextInputKeyboardAssistantItem *)self _currentInteraction];
  if (objc_opt_respondsToSelector())
  {
    [_currentInteraction textInputPaletteControllerFloatingKeyboardWillHide:0];
  }
}

- (id)_currentInteraction
{
  view = [(PKTextInputKeyboardAssistantItem *)self view];
  _responderWindow = [view _responderWindow];
  windowScene = [_responderWindow windowScene];

  v5 = [PKTextInputInteraction interactionForScene:windowScene];

  return v5;
}

- (PKTextInputKeyboardAssistantItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end