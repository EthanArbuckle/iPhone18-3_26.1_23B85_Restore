@interface SFDefaultBrowserListFooterView
+ (CGSize)sizeForBounds:(CGSize)a3 state:(unint64_t)a4 traitCollection:(id)a5;
+ (id)_confirmButtonConfigurationWithState:(unint64_t)a3 traitCollection:(id)a4;
- (SFDefaultBrowserListFooterView)initWithFrame:(CGRect)a3;
- (SFDefaultBrowserListFooterViewDelegate)delegate;
- (void)_didTapConfirmButton;
- (void)updateButtonState:(unint64_t)a3;
@end

@implementation SFDefaultBrowserListFooterView

- (SFDefaultBrowserListFooterView)initWithFrame:(CGRect)a3
{
  v36[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = SFDefaultBrowserListFooterView;
  v3 = [(SFDefaultBrowserListFooterView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v29 = [MEMORY[0x1E69DC628] safari_actionWithTarget:v3 selector:sel__didTapConfirmButton];
    v4 = MEMORY[0x1E69DC738];
    v5 = [(SFDefaultBrowserListFooterView *)v3 traitCollection];
    v6 = [SFDefaultBrowserListFooterView _confirmButtonConfigurationWithState:0 traitCollection:v5];
    v7 = [v4 buttonWithConfiguration:v6 primaryAction:v29];
    confirmButton = v3->_confirmButton;
    v3->_confirmButton = v7;

    v9 = [(UIButton *)v3->_confirmButton titleLabel];
    [v9 setAdjustsFontSizeToFitWidth:1];

    v10 = [(UIButton *)v3->_confirmButton titleLabel];
    [v10 setMinimumScaleFactor:0.7];

    [(UIButton *)v3->_confirmButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFDefaultBrowserListFooterView *)v3 addSubview:v3->_confirmButton];
    v30 = [(SFDefaultBrowserListFooterView *)v3 layoutMarginsGuide];
    v24 = MEMORY[0x1E696ACD8];
    v28 = [(UIButton *)v3->_confirmButton topAnchor];
    v27 = [v30 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:24.0];
    v36[0] = v26;
    v25 = [(UIButton *)v3->_confirmButton centerYAnchor];
    v11 = [(SFDefaultBrowserListFooterView *)v3 centerYAnchor];
    v12 = [v25 constraintEqualToAnchor:v11];
    v36[1] = v12;
    v13 = [(UIButton *)v3->_confirmButton leadingAnchor];
    v14 = [v30 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v36[2] = v15;
    v16 = [(UIButton *)v3->_confirmButton trailingAnchor];
    v17 = [v30 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v36[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v24 activateConstraints:v19];

    objc_initWeak(&location, v3);
    v35 = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __48__SFDefaultBrowserListFooterView_initWithFrame___block_invoke;
    v31[3] = &unk_1E84938C8;
    objc_copyWeak(&v32, &location);
    v21 = [(SFDefaultBrowserListFooterView *)v3 registerForTraitChanges:v20 withHandler:v31];

    v22 = v3;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __48__SFDefaultBrowserListFooterView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateButtonState:WeakRetained[63]];
    WeakRetained = v2;
  }
}

+ (CGSize)sizeForBounds:(CGSize)a3 state:(unint64_t)a4 traitCollection:(id)a5
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x1E69DC738];
  v8 = [SFDefaultBrowserListFooterView _confirmButtonConfigurationWithState:a4 traitCollection:a5];
  v9 = [v7 buttonWithConfiguration:v8 primaryAction:0];

  [v9 sizeThatFits:{width, height}];
  v11 = v10;
  v13 = v12 + 24.0 + 15.0;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)updateButtonState:(unint64_t)a3
{
  self->_state = a3;
  v5 = [(SFDefaultBrowserListFooterView *)self traitCollection];
  v7 = [SFDefaultBrowserListFooterView _confirmButtonConfigurationWithState:a3 traitCollection:v5];

  v6 = a3 < 4;
  [v7 setShowsActivityIndicator:v6 & (6u >> (a3 & 0xF))];
  [(UIButton *)self->_confirmButton setEnabled:v6 & (8u >> (a3 & 0xF))];
  [(UIButton *)self->_confirmButton setConfiguration:v7];
  [(UIButton *)self->_confirmButton setNeedsUpdateConfiguration];
}

+ (id)_confirmButtonConfigurationWithState:(unint64_t)a3 traitCollection:(id)a4
{
  v4 = MEMORY[0x1E69DC740];
  v5 = a4;
  v6 = [v4 filledButtonConfiguration];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [v6 setCornerStyle:4];
  }

  else
  {
    v7 = [v6 background];
    [v7 setCornerRadius:14.0];
  }

  [v6 setButtonSize:3];
  [v6 setImagePadding:8.0];
  v8 = _WBSLocalizedString();
  v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] design:0 variant:0 weight:*MEMORY[0x1E69DDC28] maximumContentSizeCategory:0 compatibleWithTraitCollection:*MEMORY[0x1E69DB980]];
  v10 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v11 = [v10 mutableCopy];

  [v11 setAlignment:1];
  [v6 setTitle:v8];
  v12 = [v5 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  [v6 setTitleLineBreakMode:v13];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__SFDefaultBrowserListFooterView__confirmButtonConfigurationWithState_traitCollection___block_invoke;
  v17[3] = &unk_1E84938F0;
  v18 = v9;
  v19 = v11;
  v14 = v11;
  v15 = v9;
  [v6 setTitleTextAttributesTransformer:v17];

  return v6;
}

id __87__SFDefaultBrowserListFooterView__confirmButtonConfigurationWithState_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E69DB688]];

  return v3;
}

- (void)_didTapConfirmButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained footerViewDidTapConfirmationAction:self];
  }
}

- (SFDefaultBrowserListFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end