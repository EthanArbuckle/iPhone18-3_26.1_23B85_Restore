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
- (PKPaletteButton)initWithFrame:(CGRect)frame;
- (PKPaletteButton)initWithImage:(id)image;
- (PKPaletteButtonDelegate)delegate;
- (UIColor)_backgroundColor;
- (UIColor)_tintColorForCurrentState;
- (id)_uiButtonInstance;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_notifyIntrinsicContentSizeDidChange;
- (void)_updateUI;
- (void)addIntrinsicContentSizeObserver:(id)observer;
- (void)layoutSubviews;
- (void)removeIntrinsicContentSizeObserver:(id)observer;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMenu:(id)menu;
- (void)setScalingFactor:(double)factor;
- (void)setSelected:(BOOL)selected;
- (void)setUseCompactLayout:(BOOL)layout;
- (void)traitCollectionDidChange:(id)change;
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

- (PKPaletteButton)initWithFrame:(CGRect)frame
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  v5 = [(PKPaletteButton *)self initWithImage:v4];

  return v5;
}

- (PKPaletteButton)initWithImage:(id)image
{
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = PKPaletteButton;
  v5 = [(PKPaletteButton *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_scalingFactor = 1.0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    if (!PKIsVisionDevice())
    {
      v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
      button = v6->_button;
      v6->_button = v9;

      [(UIButton *)v6->_button setUserInteractionEnabled:0];
      [(UIButton *)v6->_button setImage:imageCopy forState:0];
      [(PKPaletteButton *)v6 addSubview:v6->_button];
    }

    v11 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    pointerInteraction = v6->_pointerInteraction;
    v6->_pointerInteraction = v11;

    [(PKPaletteButton *)v6 addInteraction:v6->_pointerInteraction];
    _uiButtonInstance = [(PKPaletteButton *)v6 _uiButtonInstance];
    [_uiButtonInstance setShowsLargeContentViewer:1];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteButton *)v6 addInteraction:v14];

    [(PKPaletteButton *)v6 setHitTestInsets:-8.0, -8.0, -8.0, -8.0];
    [(PKPaletteButton *)v6 _updateUI];
  }

  return v6;
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  menu = [(PKPaletteButton *)self menu];

  if (menu != menuCopy)
  {
    objc_storeStrong(&self->_menu, menu);
    [(PKPaletteButton *)self setContextMenuInteractionEnabled:menuCopy != 0];
    [(PKPaletteButton *)self setShowsMenuAsPrimaryAction:menuCopy != 0];
  }
}

- (BOOL)hasContextMenuVisible
{
  _uiButtonInstance = [(PKPaletteButton *)self _uiButtonInstance];
  if ([_uiButtonInstance isHeld])
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [_uiButtonInstance isHighlighted];
  }

  return isHighlighted;
}

- (void)setUseCompactLayout:(BOOL)layout
{
  if (self->_useCompactLayout != layout)
  {
    self->_useCompactLayout = layout;
    [(PKPaletteButton *)self _updateUI];
  }
}

- (id)_uiButtonInstance
{
  if (PKIsVisionDevice())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PKPaletteButton *)self button];
  }

  return selfCopy;
}

- (void)addIntrinsicContentSizeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(PKPaletteButton *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeIntrinsicContentSizeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(PKPaletteButton *)self observers];
  [observers removeObject:observerCopy];
}

- (void)_notifyIntrinsicContentSizeDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(PKPaletteButton *)self observers];
  v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(observers);
        }

        [*(*(&v8 + 1) + 8 * v7++) buttonDidChangeIntrinsicContentSize:self];
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(PKPaletteButton *)self traitCollection];
  window = [(PKPaletteButton *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);
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
    layer = [(PKPaletteButton *)self layer];
    [layer setCornerRadius:MidX];

    [(PKPaletteButton *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    button = [(PKPaletteButton *)self button];
    [button setFrame:{v6, v8, v10, v12}];
  }
}

- (UIColor)_tintColorForCurrentState
{
  if ([(PKPaletteButton *)self _wantsCustomTintColor])
  {
    delegate = [(PKPaletteButton *)self delegate];
    v4 = [delegate paletteButton:self tintColorForState:{-[PKPaletteButton state](self, "state")}];
LABEL_5:
    v5 = v4;

    goto LABEL_13;
  }

  if ([(PKPaletteButton *)self isHighlighted])
  {
    delegate = [MEMORY[0x1E69DC888] labelColor];
    v4 = [delegate colorWithAlphaComponent:0.5];
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
    tertiaryLabelColor = ;
  }

  else
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  v5 = tertiaryLabelColor;
LABEL_13:

  return v5;
}

- (BOOL)_wantsCustomTintColor
{
  delegate = [(PKPaletteButton *)self delegate];
  if (delegate)
  {
    delegate2 = [(PKPaletteButton *)self delegate];
    v5 = [delegate2 paletteButton:self wantsCustomTintColorForState:{-[PKPaletteButton state](self, "state")}];
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
    delegate = [(PKPaletteButton *)self delegate];
    v4 = [delegate paletteButton:self backgroundColorForState:{-[PKPaletteButton state](self, "state")}];
LABEL_3:
    v5 = v4;

    goto LABEL_13;
  }

  if ([(PKPaletteButton *)self useCompactLayout])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    if ([(PKPaletteButton *)self isHighlighted])
    {
      delegate = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
      v4 = [delegate colorWithAlphaComponent:0.5];
      goto LABEL_3;
    }

    if (![(PKPaletteButton *)self isEnabled]&& ([(PKPaletteButton *)self isEnabled]& 1) != 0)
    {
      v5 = 0;
      goto LABEL_13;
    }

    clearColor = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  }

  v5 = clearColor;
LABEL_13:

  return v5;
}

- (BOOL)_wantsCustomBackgroundColor
{
  delegate = [(PKPaletteButton *)self delegate];
  if (delegate)
  {
    delegate2 = [(PKPaletteButton *)self delegate];
    v5 = [delegate2 paletteButton:self wantsCustomBackgroundColorForState:{-[PKPaletteButton state](self, "state")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(PKPaletteButton *)self isHidden]!= hidden)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setHidden:hiddenCopy];
    [(PKPaletteButton *)self _notifyIntrinsicContentSizeDidChange];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PKPaletteButton *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setEnabled:enabledCopy];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PKPaletteButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setHighlighted:highlightedCopy];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(PKPaletteButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteButton;
    [(PKPaletteButton *)&v5 setSelected:selectedCopy];
    [(PKPaletteButton *)self _updateUI];
  }
}

- (void)_updateUI
{
  if (!PKIsVisionDevice())
  {
    isEnabled = [(PKPaletteButton *)self isEnabled];
    button = [(PKPaletteButton *)self button];
    [button setEnabled:isEnabled];

    isSelected = [(PKPaletteButton *)self isSelected];
    button2 = [(PKPaletteButton *)self button];
    [button2 setSelected:isSelected];

    isHighlighted = [(PKPaletteButton *)self isHighlighted];
    button3 = [(PKPaletteButton *)self button];
    [button3 setHighlighted:isHighlighted];

    [(PKPaletteButton *)self _buttonTransform];
    button4 = [(PKPaletteButton *)self button];
    v12[0] = v12[3];
    v12[1] = v12[4];
    v12[2] = v12[5];
    [button4 setTransform:v12];

    _backgroundColor = [(PKPaletteButton *)self _backgroundColor];
    [(PKPaletteButton *)self setBackgroundColor:_backgroundColor];

    _tintColorForCurrentState = [(PKPaletteButton *)self _tintColorForCurrentState];
    [(PKPaletteButton *)self setTintColor:_tintColorForCurrentState];
  }
}

- (CGAffineTransform)_buttonTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  useCompactLayout = [(PKPaletteButton *)self useCompactLayout];
  [(PKPaletteButton *)self scalingFactor];
  v9 = v8;
  if (useCompactLayout)
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

- (void)setScalingFactor:(double)factor
{
  if (self->_scalingFactor != factor)
  {
    self->_scalingFactor = factor;
    [(PKPaletteButton *)self _updateUI];
    [(PKPaletteButton *)self invalidateIntrinsicContentSize];

    [(PKPaletteButton *)self _notifyIntrinsicContentSizeDidChange];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteButton;
  [(PKPaletteButton *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteButton *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteButton *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [region rect];
  v9 = CGRectInset(v8, -8.0, -8.0);
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = MEMORY[0x1E69DD070];
  interactionCopy = interaction;
  v6 = [v4 alloc];
  view = [interactionCopy view];

  v8 = [v6 initWithView:view];
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