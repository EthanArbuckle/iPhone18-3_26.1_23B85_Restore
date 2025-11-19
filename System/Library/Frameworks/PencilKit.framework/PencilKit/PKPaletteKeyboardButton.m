@interface PKPaletteKeyboardButton
- (PKPaletteKeyboardButton)initWithImage:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_updateButtonImage;
- (void)_updateKeyboardToggleState;
- (void)dealloc;
- (void)setKeyboardSelectionMenu:(id)a3;
@end

@implementation PKPaletteKeyboardButton

- (PKPaletteKeyboardButton)initWithImage:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPaletteKeyboardButton;
  v5 = [(PKPaletteButton *)&v19 initWithImage:v4];
  v6 = v5;
  if (v5)
  {
    [(PKPaletteKeyboardButton *)v5 setContextMenuInteractionEnabled:1];
    objc_initWeak(&location, v6);
    v7 = +[PKTextInputLanguageSelectionController sharedInstance];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __41__PKPaletteKeyboardButton_initWithImage___block_invoke;
    v16 = &unk_1E82D7FD8;
    objc_copyWeak(&v17, &location);
    v8 = [v7 registerObserver:&v13];
    observerToken = v6->_observerToken;
    v6->_observerToken = v8;

    v6->_enableKeyboardToggle = 1;
    [(PKPaletteKeyboardButton *)v6 _updateKeyboardToggleState:v13];
    v10 = [(PKPaletteButton *)v6 _uiButtonInstance];
    v11 = [v10 imageView];
    [v11 _setAnimatesContents:1];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __41__PKPaletteKeyboardButton_initWithImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained[64];
  WeakRetained[64] = v5;

  [WeakRetained _updateButtonImage];
  [WeakRetained setShowsMenuAsPrimaryAction:a3 != 0];
}

- (void)dealloc
{
  [(PKTextInputLanguageSelectionToken *)self->_observerToken invalidate];
  v3.receiver = self;
  v3.super_class = PKPaletteKeyboardButton;
  [(PKPaletteKeyboardButton *)&v3 dealloc];
}

- (void)_updateButtonImage
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

  v6 = v4;
  v5 = [(PKPaletteButton *)self _uiButtonInstance];
  [v5 setImage:v6 forState:0];
  [v5 setNeedsLayout];
}

- (void)setKeyboardSelectionMenu:(id)a3
{
  objc_storeStrong(&self->_keyboardSelectionMenu, a3);

  [(PKPaletteKeyboardButton *)self _updateKeyboardToggleState];
}

- (void)_updateKeyboardToggleState
{
  v3 = [(PKPaletteKeyboardButton *)self keyboardSelectionMenu];
  v7 = v3 && (v4 = v3, +[PKTextInputLanguageSelectionController sharedInstance](PKTextInputLanguageSelectionController, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), [v5 languageSelectionMenu], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6) || -[PKPaletteKeyboardButton enableKeyboardToggle](self, "enableKeyboardToggle");

  [(PKPaletteButton *)self setEnabled:v7];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC8D8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKPaletteKeyboardButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v9[3] = &unk_1E82DBD38;
  objc_copyWeak(&v10, &location);
  v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

id __81__PKPaletteKeyboardButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained keyboardSelectionMenu];
  v3 = +[PKTextInputLanguageSelectionController sharedInstance];
  v4 = [v3 languageSelectionMenu];

  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v2 children];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * i) setAttributes:{objc_msgSend(WeakRetained, "enableKeyboardToggle") ^ 1}];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v12 = MEMORY[0x1E69DCC60];
    v19[0] = v2;
    v19[1] = v4;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v6 = [v12 menuWithChildren:v13];
  }

  return v6;
}

@end