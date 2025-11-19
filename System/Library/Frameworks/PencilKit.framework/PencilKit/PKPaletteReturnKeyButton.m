@interface PKPaletteReturnKeyButton
- (BOOL)_shouldUseBlueReturnKeyColor;
- (BOOL)_useCompactLayout;
- (CGSize)_contentViewSize;
- (CGSize)intrinsicContentSize;
- (PKPaletteReturnKeyButton)initWithFrame:(CGRect)a3;
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
- (void)setAxis:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)setScalingFactor:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteReturnKeyButton

- (PKPaletteReturnKeyButton)initWithFrame:(CGRect)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKPaletteReturnKeyButton;
  v3 = [(PKPaletteButton *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(PKPaletteReturnKeyButtonContentView *)v4->_contentView centerXAnchor];
    v9 = [(PKPaletteReturnKeyButton *)v4 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v23[0] = v10;
    v11 = [(PKPaletteReturnKeyButtonContentView *)v4->_contentView centerYAnchor];
    v12 = [(PKPaletteReturnKeyButton *)v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
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
  v3 = [(PKPaletteReturnKeyButton *)self axis];
  [(PKPaletteReturnKeyButton *)self bounds];
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 * 0.5;
  v8 = [(PKPaletteReturnKeyButton *)self layer];
  [v8 setCornerRadius:v7];
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
    v5 = [(PKPaletteReturnKeyButton *)self contentView];
    [v5 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteReturnKeyButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteReturnKeyButton;
    [(PKPaletteButton *)&v5 setHighlighted:v3];
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteReturnKeyButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteReturnKeyButton;
    [(PKPaletteButton *)&v5 setEnabled:v3];
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setReturnKeyType:(int64_t)a3
{
  if (self->_returnKeyType != a3)
  {
    self->_returnKeyType = a3;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)setAxis:(int64_t)a3
{
  if (self->_axis != a3)
  {
    self->_axis = a3;
    [(PKPaletteReturnKeyButton *)self _updateUI];
  }
}

- (void)_updateUI
{
  [(PKPaletteReturnKeyButton *)self _updateLabelText];
  [(PKPaletteReturnKeyButton *)self _updateImageView];
  [(PKPaletteReturnKeyButton *)self _updateContentViewOrientation];
  v3 = [(PKPaletteReturnKeyButton *)self _useCompactLayout];
  v4 = [(PKPaletteReturnKeyButton *)self contentView];
  [v4 setUseCompactLayout:v3];

  v5 = [(PKPaletteReturnKeyButton *)self _backgroundColor];
  [(PKPaletteReturnKeyButton *)self setBackgroundColor:v5];

  [(PKPaletteReturnKeyButton *)self invalidateIntrinsicContentSize];
}

- (BOOL)_useCompactLayout
{
  v3 = [(PKPaletteReturnKeyButton *)self traitCollection];
  v4 = [(PKPaletteReturnKeyButton *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  return v6;
}

- (void)_updateImageView
{
  v3 = [(PKPaletteReturnKeyButton *)self _returnKeyImage];
  v4 = [(PKPaletteReturnKeyButton *)self contentView];
  v5 = [v4 imageView];
  [v5 setImage:v3];

  v8 = [(PKPaletteReturnKeyButton *)self _returnKeyTintColor];
  v6 = [(PKPaletteReturnKeyButton *)self contentView];
  v7 = [v6 imageView];
  [v7 setTintColor:v8];
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
  v3 = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  if ([(PKPaletteReturnKeyButton *)self isEnabled])
  {
    if ([(PKPaletteReturnKeyButton *)self _shouldUseBlueReturnKeyColor])
    {
      v4 = [MEMORY[0x1E69DC888] systemBlueColor];

      v3 = v4;
    }

    if ([(PKPaletteReturnKeyButton *)self isHighlighted])
    {
      v5 = [v3 colorWithAlphaComponent:0.5];

      v3 = v5;
    }
  }

  return v3;
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
  v4 = [(PKPaletteReturnKeyButton *)self contentView];
  [v4 setLayoutOrientation:v3];

  [(PKPaletteReturnKeyButton *)self scalingFactor];
  v6 = v5;
  [(PKPaletteReturnKeyButton *)self scalingFactor];
  CGAffineTransformMakeScale(&v10, v6, v7);
  v8 = [(PKPaletteReturnKeyButton *)self contentView];
  v9 = v10;
  [v8 setTransform:&v9];
}

- (void)_updateLabelText
{
  v3 = [(PKPaletteReturnKeyButton *)self _returnKeyLabelText];
  v4 = [(PKPaletteReturnKeyButton *)self contentView];
  [v4 setText:v3];

  v6 = [(PKPaletteReturnKeyButton *)self _textColor];
  v5 = [(PKPaletteReturnKeyButton *)self contentView];
  [v5 setTextColor:v6];
}

- (id)_returnKeyLabelText
{
  v3 = +[PKTextInputLanguageSelectionController sharedInstance];
  v4 = [v3 currentLanguageIdentifiers];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
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
  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(PKPaletteReturnKeyButton *)self _shouldUseBlueReturnKeyColor])
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];

    v3 = v4;
  }

  if (([(PKPaletteReturnKeyButton *)self isEnabled]& 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC888] quaternaryLabelColor];

    v3 = v5;
  }

  return v3;
}

- (BOOL)_shouldUseBlueReturnKeyColor
{
  v3 = [(PKPaletteReturnKeyButton *)self returnKeyType];
  if (v3)
  {
    LOBYTE(v3) = [(PKPaletteReturnKeyButton *)self returnKeyType]!= 4 && [(PKPaletteReturnKeyButton *)self returnKeyType]!= 11;
  }

  return v3;
}

- (id)_returnKeyImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [(PKPaletteReturnKeyButton *)self _returnKeyImageSymbolConfiguration];
  v4 = [v2 systemImageNamed:@"arrow.forward.circle" withConfiguration:v3];
  v5 = [v4 imageFlippedForRightToLeftLayoutDirection];

  return v5;
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteReturnKeyButton;
  [(PKPaletteButton *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteReturnKeyButton *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteReturnKeyButton *)self traitCollection];
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

  [(PKPaletteReturnKeyButton *)self _updateUI];
LABEL_6:
}

@end