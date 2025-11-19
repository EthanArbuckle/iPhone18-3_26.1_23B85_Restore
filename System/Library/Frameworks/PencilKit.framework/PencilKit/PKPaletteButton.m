@interface PKPaletteButton
+ (id)UCBButton;
+ (id)closeButton;
+ (id)ellipsisButton;
+ (id)emojiKeyboardButton;
+ (id)keyboardButton;
+ (id)plusButton;
+ (id)redoButton;
+ (id)returnKeyButton;
+ (id)shapeButton;
+ (id)textButton;
+ (id)undoButton;
- (BOOL)_wantsCustomBackgroundColor;
- (BOOL)_wantsCustomTintColor;
- (BOOL)hasContextMenuVisible;
- (CGAffineTransform)_buttonTransform;
- (CGSize)intrinsicContentSize;
- (PKPaletteButton)initWithFrame:(CGRect)a3;
- (PKPaletteButton)initWithImage:(id)a3;
- (PKPaletteButtonDelegate)delegate;
- (UIColor)_backgroundColor;
- (UIColor)_tintColorForCurrentState;
- (id)_uiButtonInstance;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_notifyIntrinsicContentSizeDidChange;
- (void)_updateUI;
- (void)addIntrinsicContentSizeObserver:(id)a3;
- (void)layoutSubviews;
- (void)removeIntrinsicContentSizeObserver:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenu:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setUseCompactLayout:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteButton

+ (id)undoButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_undoButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Undo-Button"];

  return v4;
}

+ (id)redoButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_redoButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Redo-Button"];

  return v4;
}

+ (id)ellipsisButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_ellipsisButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"More-Button"];

  return v4;
}

+ (id)plusButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_plusButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Plus-Button"];

  return v4;
}

+ (id)UCBButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_UCBButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Scribble-Compact-Button"];

  return v4;
}

+ (id)keyboardButton
{
  v2 = [PKPaletteKeyboardButton alloc];
  v3 = +[UIImage _pk_keyboardButtonImage];
  v4 = [(PKPaletteKeyboardButton *)v2 initWithImage:v3];

  [(PKPaletteKeyboardButton *)v4 setAccessibilityIdentifier:@"Scribble-Keyboard-Button"];

  return v4;
}

+ (id)emojiKeyboardButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_emojiButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Scribble-Emoji-Button"];

  return v4;
}

+ (id)returnKeyButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_returnKeyButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  [(PKPaletteButton *)v4 setAccessibilityIdentifier:@"Scribble-Small-Return-Button"];

  return v4;
}

+ (id)textButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_textButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  return v4;
}

+ (id)shapeButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_shapeButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  return v4;
}

+ (id)closeButton
{
  v2 = [PKPaletteButton alloc];
  v3 = +[UIImage _pk_closeButtonImage];
  v4 = [(PKPaletteButton *)v2 initWithImage:v3];

  return v4;
}

- (PKPaletteButton)initWithFrame:(CGRect)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  v5 = [(PKPaletteButton *)self initWithImage:v4];

  return v5;
}

- (PKPaletteButton)initWithImage:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPaletteButton;
  v5 = [(PKPaletteButton *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_scalingFactor = 1.0;
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    if (!PKIsVisionDevice())
    {
      v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
      button = v6->_button;
      v6->_button = v9;

      [(UIButton *)v6->_button setUserInteractionEnabled:0];
      [(UIButton *)v6->_button setImage:v4 forState:0];
      [(PKPaletteButton *)v6 addSubview:v6->_button];
    }

    v11 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    pointerInteraction = v6->_pointerInteraction;
    v6->_pointerInteraction = v11;

    [(PKPaletteButton *)v6 addInteraction:v6->_pointerInteraction];
    v13 = [(PKPaletteButton *)v6 _uiButtonInstance];
    [v13 setShowsLargeContentViewer:1];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteButton *)v6 addInteraction:v14];

    [(PKPaletteButton *)v6 setHitTestInsets:-8.0, -8.0, -8.0, -8.0];
    [(PKPaletteButton *)v6 _updateUI];
  }

  return v6;
}

- (void)setMenu:(id)a3
{
  v6 = a3;
  v5 = [(PKPaletteButton *)self menu];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_menu, a3);
    [(PKPaletteButton *)self setContextMenuInteractionEnabled:v6 != 0];
    [(PKPaletteButton *)self setShowsMenuAsPrimaryAction:v6 != 0];
  }
}

- (BOOL)hasContextMenuVisible
{
  v2 = [(PKPaletteButton *)self _uiButtonInstance];
  if ([v2 isHeld])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isHighlighted];
  }

  return v3;
}

- (void)setUseCompactLayout:(BOOL)a3
{
  if (self->_useCompactLayout != a3)
  {
    self->_useCompactLayout = a3;
    [(PKPaletteButton *)self _updateUI];
  }
}

- (id)_uiButtonInstance
{
  if (PKIsVisionDevice())
  {
    v3 = self;
  }

  else
  {
    v3 = [(PKPaletteButton *)self button];
  }

  return v3;
}

- (void)addIntrinsicContentSizeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteButton *)self observers];
  [v5 addObject:v4];
}

- (void)removeIntrinsicContentSizeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteButton *)self observers];
  [v5 removeObject:v4];
}

- (void)_notifyIntrinsicContentSizeDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PKPaletteButton *)self observers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) buttonDidChangeIntrinsicContentSize:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKPaletteButton *)self traitCollection];
  v4 = [(PKPaletteButton *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);
  v7 = PKPaletteButtonSize(v6);
  v9 = v8;

  [(PKPaletteButton *)self scalingFactor];
  v11 = v9 * v10;
  v12 = v7 * v10;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKPaletteButton;
  [(PKPaletteButton *)&v14 layoutSubviews];
  if (!PKIsVisionDevice())
  {
    [(PKPaletteButton *)self bounds];
    MidX = CGRectGetMidX(v15);
    v4 = [(PKPaletteButton *)self layer];
    [v4 setCornerRadius:MidX];

    [(PKPaletteButton *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PKPaletteButton *)self button];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (UIColor)_tintColorForCurrentState
{
  if ([(PKPaletteButton *)self _wantsCustomTintColor])
  {
    v3 = [(PKPaletteButton *)self delegate];
    v4 = [v3 paletteButton:self tintColorForState:{-[PKPaletteButton state](self, "state")}];
LABEL_5:
    v5 = v4;

    goto LABEL_13;
  }

  if ([(PKPaletteButton *)self isHighlighted])
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
    v4 = [v3 colorWithAlphaComponent:0.5];
    goto LABEL_5;
  }

  if ([(PKPaletteButton *)self isEnabled])
  {
    if (([(PKPaletteButton *)self isSelected]& 1) != 0)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v6 = ;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  v5 = v6;
LABEL_13:

  return v5;
}

- (BOOL)_wantsCustomTintColor
{
  v3 = [(PKPaletteButton *)self delegate];
  if (v3)
  {
    v4 = [(PKPaletteButton *)self delegate];
    v5 = [v4 paletteButton:self wantsCustomTintColorForState:{-[PKPaletteButton state](self, "state")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIColor)_backgroundColor
{
  if ([(PKPaletteButton *)self _wantsCustomBackgroundColor])
  {
    v3 = [(PKPaletteButton *)self delegate];
    v4 = [v3 paletteButton:self backgroundColorForState:{-[PKPaletteButton state](self, "state")}];
LABEL_3:
    v5 = v4;

    goto LABEL_13;
  }

  if ([(PKPaletteButton *)self useCompactLayout])
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    if ([(PKPaletteButton *)self isHighlighted])
    {
      v3 = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
      v4 = [v3 colorWithAlphaComponent:0.5];
      goto LABEL_3;
    }

    if (![(PKPaletteButton *)self isEnabled]&& ([(PKPaletteButton *)self isEnabled]& 1) != 0)
    {
      v5 = 0;
      goto LABEL_13;
    }

    v6 = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  }

  v5 = v6;
LABEL_13:

  return v5;
}

- (BOOL)_wantsCustomBackgroundColor
{
  v3 = [(PKPaletteButton *)self delegate];
  if (v3)
  {
    v4 = [(PKPaletteButton *)self delegate];
    v5 = [v4 paletteButton:self wantsCustomBackgroundColorForState:{-[PKPaletteButton state](self, "state")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteButton *)self isHidden]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setHidden:v3];
    [(PKPaletteButton *)self _notifyIntrinsicContentSizeDidChange];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setEnabled:v3];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setHighlighted:v3];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setSelected:v3];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)_updateUI
{
  if (!PKIsVisionDevice())
  {
    v3 = [(PKPaletteButton *)self isEnabled];
    v4 = [(PKPaletteButton *)self button];
    [v4 setEnabled:v3];

    v5 = [(PKPaletteButton *)self isSelected];
    v6 = [(PKPaletteButton *)self button];
    [v6 setSelected:v5];

    v7 = [(PKPaletteButton *)self isHighlighted];
    v8 = [(PKPaletteButton *)self button];
    [v8 setHighlighted:v7];

    [(PKPaletteButton *)self _buttonTransform];
    v9 = [(PKPaletteButton *)self button];
    v12[0] = v12[3];
    v12[1] = v12[4];
    v12[2] = v12[5];
    [v9 setTransform:v12];

    v10 = [(PKPaletteButton *)self _backgroundColor];
    [(PKPaletteButton *)self setBackgroundColor:v10];

    v11 = [(PKPaletteButton *)self _tintColorForCurrentState];
    [(PKPaletteButton *)self setTintColor:v11];
  }
}

- (CGAffineTransform)_buttonTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  v7 = [(PKPaletteButton *)self useCompactLayout];
  [(PKPaletteButton *)self scalingFactor];
  v9 = v8;
  if (v7)
  {
    v9 = v8 * 0.75;
    [(PKPaletteButton *)self scalingFactor];
    v11 = v10 * 0.75;
  }

  else
  {
    [(PKPaletteButton *)self scalingFactor];
    v11 = v12;
  }

  return CGAffineTransformMakeScale(retstr, v9, v11);
}

- (void)setScalingFactor:(double)a3
{
  if (self->_scalingFactor != a3)
  {
    self->_scalingFactor = a3;
    [(PKPaletteButton *)self _updateUI];
    [(PKPaletteButton *)self invalidateIntrinsicContentSize];

    [(PKPaletteButton *)self _notifyIntrinsicContentSizeDidChange];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteButton;
  [(PKPaletteButton *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteButton *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteButton *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKPaletteButton *)self _updateUI];
  [(PKPaletteButton *)self invalidateIntrinsicContentSize];
  [(PKPaletteButton *)self _notifyIntrinsicContentSizeDidChange];
LABEL_6:
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC8D8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PKPaletteButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v9[3] = &unk_1E82DBD38;
  objc_copyWeak(&v10, &location);
  v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

id __73__PKPaletteButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained menu];

  return v2;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [a5 rect];
  v9 = CGRectInset(v8, -8.0, -8.0);
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x1E69DD070];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 view];

  v8 = [v6 initWithView:v7];
  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];

  return v10;
}

- (PKPaletteButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end