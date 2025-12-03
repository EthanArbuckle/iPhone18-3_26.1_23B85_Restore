@interface PKPaletteDictationBarButton
- (PKPaletteDictationBarButton)initWithBarButtonItem:(id)item;
- (id)_backgroundColor;
- (id)_tintColorForCurrentState;
- (void)willMoveToWindow:(id)window;
@end

@implementation PKPaletteDictationBarButton

- (PKPaletteDictationBarButton)initWithBarButtonItem:(id)item
{
  v6.receiver = self;
  v6.super_class = PKPaletteDictationBarButton;
  v3 = [(PKPaletteBarButton *)&v6 initWithBarButtonItem:item];
  v4 = v3;
  if (v3)
  {
    [(PKPaletteDictationBarButton *)v3 setAccessibilityIdentifier:@"Scribble-Dictation-Button"];
  }

  return v4;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v11.receiver = self;
  v11.super_class = PKPaletteDictationBarButton;
  [(PKPaletteDictationBarButton *)&v11 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    windowScene = [windowCopy windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    if (objc_opt_respondsToSelector())
    {
      hasActiveKeyboardResponder = [keyboardSceneDelegate hasActiveKeyboardResponder];
    }

    else
    {
      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      inputDelegate = [activeInstance inputDelegate];
      hasActiveKeyboardResponder = inputDelegate != 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [keyboardSceneDelegate hasNullInputView] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    [(PKPaletteButton *)self setEnabled:hasActiveKeyboardResponder & v10];
    if (qword_1ED6A5040 != -1)
    {
      dispatch_once(&qword_1ED6A5040, &__block_literal_global_24);
    }

    -[PKPaletteButton setSelected:](self, "setSelected:", [_MergedGlobals_128 isRunning]);
  }
}

- (id)_tintColorForCurrentState
{
  if (([(PKPaletteDictationBarButton *)self isSelected]& 1) != 0)
  {
    pk_paletteBackgroundColor = [MEMORY[0x1E69DC888] pk_paletteBackgroundColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKPaletteDictationBarButton;
    pk_paletteBackgroundColor = [(PKPaletteButton *)&v5 _tintColorForCurrentState];
  }

  return pk_paletteBackgroundColor;
}

- (id)_backgroundColor
{
  if ([(PKPaletteButton *)self useCompactLayout]|| ([(PKPaletteDictationBarButton *)self isSelected]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteDictationBarButton;
    _backgroundColor = [(PKPaletteButton *)&v5 _backgroundColor];
  }

  else
  {
    _backgroundColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return _backgroundColor;
}

@end