@interface PKPaletteReturnKeyButton
- (BOOL)_shouldUseBlueReturnKeyColor;
- (BOOL)_useCompactLayout;
- (CGSize)_contentViewSize;
- (CGSize)intrinsicContentSize;
- (PKPaletteReturnKeyButton)initWithFrame:(CGRect)frame;
- (id)_backgroundColor;
- (id)_regularLayoutBackgroundColor;
- (id)_returnKeyImage;
- (id)_returnKeyImageSymbolConfiguration;
- (id)_returnKeyLabelText;
- (id)_returnKeyTintColor;
- (id)_textColor;
- (void)_updateContentViewOrientation;
- (void)_updateImageView;
- (void)_updateLabelText;
- (void)_updateUI;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAxis:(int64_t)axis;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setReturnKeyType:(int64_t)type;
- (void)setScalingFactor:(double)factor;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPaletteReturnKeyButton

- (PKPaletteReturnKeyButton)initWithFrame:(CGRect)frame
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKPaletteReturnKeyButton;
  v3 = [(PKPaletteButton *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaletteReturnKeyButton *)v3 setAccessibilityIdentifier:@"Scribble-Large-Return-Button"];
    v5 = objc_alloc_init(PKPaletteReturnKeyButtonContentView);
    contentView = v4->_contentView;
    v4->_contentView = v5;

    [(PKPaletteReturnKeyButtonContentView *)v4->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteReturnKeyButtonContentView *)v4->_contentView setUserInteractionEnabled:0];
    [(PKPaletteReturnKeyButton *)v4 addSubview:v4->_contentView];
    v7 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(PKPaletteReturnKeyButtonContentView *)v4->_contentView centerXAnchor];
    centerXAnchor2 = [(PKPaletteReturnKeyButton *)v4 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v23[0] = v10;
    centerYAnchor = [(PKPaletteReturnKeyButtonContentView *)v4->_contentView centerYAnchor];
    centerYAnchor2 = [(PKPaletteReturnKeyButton *)v4 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v23[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [v7 activateConstraints:v14];

    [(PKPaletteReturnKeyButton *)v4 _updateUI];
    objc_initWeak(&location, v4);
    v15 = +[PKTextInputLanguageSelectionController sharedInstance];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__PKPaletteReturnKeyButton_initWithFrame___block_invoke;
    v19[3] = &unk_1E82D7FD8;
    objc_copyWeak(&v20, &location);
    v16 = [v15 registerObserver:v19];
    observerToken = v4->_observerToken;
    v4->_observerToken = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__PKPaletteReturnKeyButton_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateUI];
}

- (void)dealloc
{
  [(PKTextInputLanguageSelectionToken *)self->_observerToken invalidate];
  v3.receiver = self;
  v3.super_class = PKPaletteReturnKeyButton;
  [(PKPaletteReturnKeyButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPaletteReturnKeyButton;
  [(PKPaletteButton *)&v9 layoutSubviews];
  axis = [(PKPaletteReturnKeyButton *)self axis];
  [(PKPaletteReturnKeyButton *)self bounds];
  if (axis)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 * 0.5;
  layer = [(PKPaletteReturnKeyButton *)self layer];
  [layer setCornerRadius:v7];
}

- (CGSize)intrinsicContentSize
{
  [(PKPaletteReturnKeyButton *)self _contentViewSize];
  v4 = v3;
  v6 = v5;
  [(PKPaletteReturnKeyButton *)self scalingFactor];
  v8 = v6 * v7;
  v9 = v4 * v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)_contentViewSize
{
  v3 = 28.0;
  v4 = 28.0;
  if (![(PKPaletteReturnKeyButton *)self _useCompactLayout])
  {
    contentView = [(PKPaletteReturnKeyButton *)self contentView];
    [contentView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v4 = v6;
    v3 = v7;

    if ([(PKPaletteReturnKeyButton *)self axis])
    {
      v3 = v3 + 40.0;
    }

    else
    {
      v4 = v4 + 40.0;
    }
  }

  v8 = v4;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PKPaletteReturnKeyButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteReturnKeyButton;
    [(PKPaletteButton *)&v5 setHighlighted:highlightedCopy];
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PKPaletteReturnKeyButton *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteReturnKeyButton;
    [(PKPaletteButton *)&v5 setEnabled:enabledCopy];
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setReturnKeyType:(int64_t)type
{
  if (self->_returnKeyType != type)
  {
    self->_returnKeyType = type;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setAxis:(int64_t)axis
{
  if (self->_axis != axis)
  {
    self->_axis = axis;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)_updateUI
{
  [(PKPaletteReturnKeyButton *)self _updateLabelText];
  [(PKPaletteReturnKeyButton *)self _updateImageView];
  [(PKPaletteReturnKeyButton *)self _updateContentViewOrientation];
  _useCompactLayout = [(PKPaletteReturnKeyButton *)self _useCompactLayout];
  contentView = [(PKPaletteReturnKeyButton *)self contentView];
  [contentView setUseCompactLayout:_useCompactLayout];

  _backgroundColor = [(PKPaletteReturnKeyButton *)self _backgroundColor];
  [(PKPaletteReturnKeyButton *)self setBackgroundColor:_backgroundColor];

  [(PKPaletteReturnKeyButton *)self invalidateIntrinsicContentSize];
}

- (BOOL)_useCompactLayout
{
  traitCollection = [(PKPaletteReturnKeyButton *)self traitCollection];
  window = [(PKPaletteReturnKeyButton *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  return v6;
}

- (void)_updateImageView
{
  _returnKeyImage = [(PKPaletteReturnKeyButton *)self _returnKeyImage];
  contentView = [(PKPaletteReturnKeyButton *)self contentView];
  imageView = [contentView imageView];
  [imageView setImage:_returnKeyImage];

  _returnKeyTintColor = [(PKPaletteReturnKeyButton *)self _returnKeyTintColor];
  contentView2 = [(PKPaletteReturnKeyButton *)self contentView];
  imageView2 = [contentView2 imageView];
  [imageView2 setTintColor:_returnKeyTintColor];
}

- (id)_backgroundColor
{
  if ([(PKPaletteReturnKeyButton *)self _useCompactLayout])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [(PKPaletteReturnKeyButton *)self _regularLayoutBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (id)_regularLayoutBackgroundColor
{
  pk_paletteButtonBackgroundColor = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  if ([(PKPaletteReturnKeyButton *)self isEnabled])
  {
    if ([(PKPaletteReturnKeyButton *)self _shouldUseBlueReturnKeyColor])
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];

      pk_paletteButtonBackgroundColor = systemBlueColor;
    }

    if ([(PKPaletteReturnKeyButton *)self isHighlighted])
    {
      v5 = [pk_paletteButtonBackgroundColor colorWithAlphaComponent:0.5];

      pk_paletteButtonBackgroundColor = v5;
    }
  }

  return pk_paletteButtonBackgroundColor;
}

- (id)_returnKeyTintColor
{
  if ([(PKPaletteReturnKeyButton *)self _useCompactLayout])
  {
    [(PKPaletteReturnKeyButton *)self _regularLayoutBackgroundColor];
  }

  else
  {
    [(PKPaletteReturnKeyButton *)self _textColor];
  }
  v3 = ;

  return v3;
}

- (void)_updateContentViewOrientation
{
  v3 = [(PKPaletteReturnKeyButton *)self axis]== 1;
  contentView = [(PKPaletteReturnKeyButton *)self contentView];
  [contentView setLayoutOrientation:v3];

  [(PKPaletteReturnKeyButton *)self scalingFactor];
  v6 = v5;
  [(PKPaletteReturnKeyButton *)self scalingFactor];
  CGAffineTransformMakeScale(&v10, v6, v7);
  contentView2 = [(PKPaletteReturnKeyButton *)self contentView];
  v9 = v10;
  [contentView2 setTransform:&v9];
}

- (void)_updateLabelText
{
  _returnKeyLabelText = [(PKPaletteReturnKeyButton *)self _returnKeyLabelText];
  contentView = [(PKPaletteReturnKeyButton *)self contentView];
  [contentView setText:_returnKeyLabelText];

  _textColor = [(PKPaletteReturnKeyButton *)self _textColor];
  contentView2 = [(PKPaletteReturnKeyButton *)self contentView];
  [contentView2 setTextColor:_textColor];
}

- (id)_returnKeyLabelText
{
  v3 = +[PKTextInputLanguageSelectionController sharedInstance];
  currentLanguageIdentifiers = [v3 currentLanguageIdentifiers];
  firstObject = [currentLanguageIdentifiers firstObject];

  if (firstObject)
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject];
  }

  else
  {
    v6 = 0;
  }

  [(PKPaletteReturnKeyButton *)self returnKeyType];
  v7 = UIKeyboardLocalizedReturnKeyNameForLocale();
  v8 = [v7 capitalizedStringWithLocale:v6];

  return v8;
}

- (id)_textColor
{
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(PKPaletteReturnKeyButton *)self _shouldUseBlueReturnKeyColor])
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];

    secondaryLabelColor = whiteColor;
  }

  if (([(PKPaletteReturnKeyButton *)self isEnabled]& 1) == 0)
  {
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];

    secondaryLabelColor = quaternaryLabelColor;
  }

  return secondaryLabelColor;
}

- (BOOL)_shouldUseBlueReturnKeyColor
{
  returnKeyType = [(PKPaletteReturnKeyButton *)self returnKeyType];
  if (returnKeyType)
  {
    LOBYTE(returnKeyType) = [(PKPaletteReturnKeyButton *)self returnKeyType]!= 4 && [(PKPaletteReturnKeyButton *)self returnKeyType]!= 11;
  }

  return returnKeyType;
}

- (id)_returnKeyImage
{
  v2 = MEMORY[0x1E69DCAB8];
  _returnKeyImageSymbolConfiguration = [(PKPaletteReturnKeyButton *)self _returnKeyImageSymbolConfiguration];
  v4 = [v2 systemImageNamed:@"arrow.forward.circle" withConfiguration:_returnKeyImageSymbolConfiguration];
  imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_returnKeyImageSymbolConfiguration
{
  if ([(PKPaletteReturnKeyButton *)self _useCompactLayout])
  {
    [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:17.0];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:14.0];
  }
  v2 = ;

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteReturnKeyButton;
  [(PKPaletteButton *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteReturnKeyButton *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteReturnKeyButton *)self traitCollection];
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

  [(PKPaletteReturnKeyButton *)self _updateUI];
LABEL_6:
}

@end