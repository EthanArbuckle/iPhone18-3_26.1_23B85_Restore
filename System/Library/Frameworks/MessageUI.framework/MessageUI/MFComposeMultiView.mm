@interface MFComposeMultiView
- (MFComposeMultiView)initWithFrame:(CGRect)a3;
- (MFComposeMultiViewDelegate)scribbleDelegate;
- (id)_accountDescriptionAttributedString;
- (id)accountLabel;
- (id)imageSizeHeaderLabelView;
- (id)imageSizeLabel;
- (id)labelColor;
- (id)placeholderImageSizeLabel;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setAccountAutoselected:(BOOL)a3;
- (void)setAccountDescription:(id)a3;
- (void)setAccountHasUnsafeDomain:(BOOL)a3;
- (void)setImageSizeDescription:(id)a3;
- (void)showLoadingState:(BOOL)a3;
@end

@implementation MFComposeMultiView

- (MFComposeMultiView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFComposeMultiView;
  v3 = [(MFComposeMultiView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeMultiView *)v3 setShowsHighlightWhenTouched:1];
    v5 = objc_alloc_init(MEMORY[0x1E69784C8]);
    [v5 setDelegate:v4];
    [v5 setElementSource:v4];
    [(MFComposeMultiView *)v4 addInteraction:v5];
  }

  return v4;
}

- (id)accountLabel
{
  v25[2] = *MEMORY[0x1E69E9840];
  accountLabel = self->_accountLabel;
  if (!accountLabel)
  {
    v4 = objc_alloc_init(MFActivityIndicatorLabel);
    v5 = self->_accountLabel;
    self->_accountLabel = v4;

    [(MFComposeMultiView *)self bounds];
    [(MFActivityIndicatorLabel *)self->_accountLabel setFrame:?];
    v6 = [objc_opt_class() defaultFont];
    v7 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    [v7 setFont:v6];

    v8 = [(MFComposeMultiView *)self labelColor];
    v9 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    [v9 setTextColor:v8];

    [(MFActivityIndicatorLabel *)self->_accountLabel sizeToFit];
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    if (v11 == 1)
    {
      v12 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
      [v12 setTextAlignment:2];
    }

    [(MFComposeMultiView *)self addSubview:self->_accountLabel];
    v13 = MEMORY[0x1E696ACD8];
    v24 = [(MFComposeMultiView *)self labelView];
    v23 = [v24 trailingAnchor];
    v22 = [(MFActivityIndicatorLabel *)self->_accountLabel leadingAnchor];
    v14 = [v23 constraintEqualToAnchor:6.0 constant:?];
    v25[0] = v14;
    v15 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    v16 = [v15 firstBaselineAnchor];
    v17 = [(MFComposeMultiView *)self labelView];
    v18 = [v17 firstBaselineAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v25[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v13 activateConstraints:v20];

    accountLabel = self->_accountLabel;
  }

  return accountLabel;
}

- (id)imageSizeLabel
{
  imageSizeLabel = self->_imageSizeLabel;
  if (!imageSizeLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_imageSizeLabel;
    self->_imageSizeLabel = v5;

    v7 = self->_imageSizeLabel;
    v8 = [objc_opt_class() defaultFont];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_imageSizeLabel;
    v10 = [(MFComposeMultiView *)self labelColor];
    [(UILabel *)v9 setTextColor:v10];

    [(UILabel *)self->_imageSizeLabel setAlpha:0.0];
    [(UILabel *)self->_imageSizeLabel sizeToFit];
    [(UILabel *)self->_imageSizeLabel setAccessibilityIdentifier:*MEMORY[0x1E69ADB48]];
    [(MFComposeMultiView *)self addSubview:self->_imageSizeLabel];
    imageSizeLabel = self->_imageSizeLabel;
  }

  return imageSizeLabel;
}

- (id)placeholderImageSizeLabel
{
  placeholderImageSizeLabel = self->_placeholderImageSizeLabel;
  if (!placeholderImageSizeLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_placeholderImageSizeLabel;
    self->_placeholderImageSizeLabel = v5;

    v7 = self->_placeholderImageSizeLabel;
    v8 = [objc_opt_class() defaultFont];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_placeholderImageSizeLabel;
    v10 = [(MFComposeMultiView *)self labelColor];
    [(UILabel *)v9 setTextColor:v10];

    v11 = self->_placeholderImageSizeLabel;
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"IMAGE_SIZE_PLACEHOLDER_DURING_COMPUTATION" value:&stru_1F3CF3758 table:@"Main"];
    [(UILabel *)v11 setText:v13];

    [(UILabel *)self->_placeholderImageSizeLabel setAlpha:0.0];
    [(UILabel *)self->_placeholderImageSizeLabel sizeToFit];
    [(MFComposeMultiView *)self addSubview:self->_placeholderImageSizeLabel];
    placeholderImageSizeLabel = self->_placeholderImageSizeLabel;
  }

  return placeholderImageSizeLabel;
}

- (id)imageSizeHeaderLabelView
{
  imageSizeHeaderLabelView = self->_imageSizeHeaderLabelView;
  if (!imageSizeHeaderLabelView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69963F0]);
    v5 = self->_imageSizeHeaderLabelView;
    self->_imageSizeHeaderLabelView = v4;

    v6 = self->_imageSizeHeaderLabelView;
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"IMAGE_RESIZING_BAR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [(CNComposeHeaderLabelView *)v6 setText:v8];

    [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView setAlpha:0.0];
    [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView sizeToFit];
    [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(MFComposeMultiView *)self frame];
    [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView setFrame:v15, v10, v12, v14];
    [(MFComposeMultiView *)self addSubview:self->_imageSizeHeaderLabelView];
    imageSizeHeaderLabelView = self->_imageSizeHeaderLabelView;
  }

  return imageSizeHeaderLabelView;
}

- (id)_accountDescriptionAttributedString
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_accountDescription length])
  {
    v7 = *MEMORY[0x1E69DB650];
    if (self->_accountHasUnsafeDomain)
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [(MFComposeMultiView *)self labelColor];
    }
    v4 = ;
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_accountDescription attributes:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccountHasUnsafeDomain:(BOOL)a3
{
  if (self->_accountHasUnsafeDomain != a3)
  {
    self->_accountHasUnsafeDomain = a3;
    v6 = [(MFComposeMultiView *)self accountLabel];
    v4 = [v6 textLabel];
    v5 = [(MFComposeMultiView *)self _accountDescriptionAttributedString];
    [v4 setAttributedText:v5];
  }
}

- (void)setAccountDescription:(id)a3
{
  v5 = a3;
  if (self->_accountDescription != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_accountDescription, a3);
    v6 = [(MFComposeMultiView *)self accountLabel];
    v7 = [v6 textLabel];
    v8 = [(MFComposeMultiView *)self _accountDescriptionAttributedString];
    [v7 setAttributedText:v8];

    v5 = v9;
  }
}

- (void)setImageSizeDescription:(id)a3
{
  v5 = a3;
  v4 = [(MFComposeMultiView *)self imageSizeLabel];
  [v4 setText:v5];
}

- (void)showLoadingState:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFComposeMultiView *)self accountLabel];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = MFComposeMultiView;
  [(MFComposeMultiView *)&v61 layoutSubviews];
  v3 = [(MFComposeMultiView *)self effectiveUserInterfaceLayoutDirection];
  [(MFActivityIndicatorLabel *)self->_accountLabel sizeToFit];
  [(MFActivityIndicatorLabel *)self->_accountLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MFComposeMultiView *)self labelView];
  [v12 frame];
  v14 = v13;
  v16 = v15;

  v17 = v16 + v14 + 6.0;
  if (v3 == 1)
  {
    v17 = v5;
    v18 = v14 + -6.0;
  }

  else
  {
    v18 = v9;
  }

  [(MFActivityIndicatorLabel *)self->_accountLabel setFrame:v17, v7, v18, v11];
  if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    if (self->_imageSizeShown)
    {
      v19 = [(UILabel *)self->_imageSizeLabel text];

      v20 = [(MFComposeMultiView *)self imageSizeHeaderLabelView];
      [v20 setAlpha:1.0];

      v21 = [(MFComposeMultiView *)self imageSizeLabel];
      v22 = v21;
      if (v19)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      [v21 setAlpha:v23];

      v24 = [(MFComposeMultiView *)self placeholderImageSizeLabel];
      v25 = v24;
      v26 = 1.0;
      if (v19)
      {
        v26 = 0.0;
      }

      [v24 setAlpha:v26];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __36__MFComposeMultiView_layoutSubviews__block_invoke;
      aBlock[3] = &unk_1E806CE18;
      v60 = v3 == 1;
      aBlock[4] = self;
      v27 = _Block_copy(aBlock);
      [(UILabel *)self->_imageSizeLabel sizeToFit];
      v28 = [(MFComposeMultiView *)self labelView];
      [v28 frame];
      v30 = v29;
      v32 = v31;

      [(UILabel *)self->_imageSizeLabel frame];
      v34 = v33;
      v36 = v35;
      v37 = v27[2](v27, v30, v32);
      [(UILabel *)self->_imageSizeLabel setFrame:v37, v32, v34, v36];
      [(UILabel *)self->_placeholderImageSizeLabel sizeToFit];
      v57 = v36;
      v58 = v34;
      [(UILabel *)self->_imageSizeLabel frame];
      v39 = v38;
      v41 = v40;
      [(UILabel *)self->_placeholderImageSizeLabel frame];
      v43 = v42;
      v45 = v44;
      v46 = v27[2](v27, v39, v41);
      [(UILabel *)self->_placeholderImageSizeLabel setFrame:v46, v41, v43, v45];
      [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView frame];
      v48 = v47;
      v50 = v49;
      if (v19)
      {
        v51 = v37;
      }

      else
      {
        v32 = v41;
        v51 = v46;
      }

      if (v3 == 1)
      {
        if (v19)
        {
          v52 = v58;
        }

        else
        {
          v52 = v43;
        }

        if (v19)
        {
          v53 = v57;
        }

        else
        {
          v53 = v45;
        }

        v54 = v32;
        v55 = CGRectGetMaxX(*&v51) + 6.0;
      }

      else
      {
        v55 = v51 + -6.0 - v47;
      }

      [(CNComposeHeaderLabelView *)self->_imageSizeHeaderLabelView setFrame:v55, v32, v48, v50];
    }

    else
    {
      imageSizeHeaderLabelView = self->_imageSizeHeaderLabelView;
      if (imageSizeHeaderLabelView)
      {
        [(CNComposeHeaderLabelView *)imageSizeHeaderLabelView setAlpha:0.0];
        [(UILabel *)self->_imageSizeLabel setAlpha:0.0];
        [(UILabel *)self->_placeholderImageSizeLabel setAlpha:0.0];
      }
    }
  }
}

double __36__MFComposeMultiView_layoutSubviews__block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _contentRect];

    return CGRectGetMinX(*&v4);
  }

  else
  {
    [*(a1 + 32) _contentRect];
    return CGRectGetMaxX(v11) - a4;
  }
}

- (void)refreshPreferredContentSize
{
  v8.receiver = self;
  v8.super_class = MFComposeMultiView;
  [(MFComposeMultiView *)&v8 refreshPreferredContentSize];
  v3 = [objc_opt_class() defaultFont];
  accountLabel = self->_accountLabel;
  if (accountLabel)
  {
    v5 = [(MFActivityIndicatorLabel *)accountLabel textLabel];
    [v5 setFont:v3];
  }

  imageSizeLabel = self->_imageSizeLabel;
  if (imageSizeLabel)
  {
    [(UILabel *)imageSizeLabel setFont:v3];
  }

  placeholderImageSizeLabel = self->_placeholderImageSizeLabel;
  if (placeholderImageSizeLabel)
  {
    [(UILabel *)placeholderImageSizeLabel setFont:v3];
  }

  [(MFComposeMultiView *)self setNeedsLayout];
}

- (id)labelColor
{
  if (self->_accountAutoselected)
  {
    v2 = labelColor_autoselectedColor;
    if (!labelColor_autoselectedColor)
    {
      v3 = [MEMORY[0x1E69DC888] mailSenderAddressPickerColorNormalTextColor];
      v4 = labelColor_autoselectedColor;
      labelColor_autoselectedColor = v3;

      v2 = labelColor_autoselectedColor;
    }

    v5 = v2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFComposeMultiView;
    v5 = [(MFComposeMultiView *)&v7 labelColor];
  }

  return v5;
}

- (void)setAccountAutoselected:(BOOL)a3
{
  if (self->_accountAutoselected != a3)
  {
    self->_accountAutoselected = a3;
    v5 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    v4 = [(MFComposeMultiView *)self labelColor];
    [v5 setTextColor:v4];
  }
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(MFComposeMultiView *)self label];
  v9[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6[2](v6, v8, 0x7FFFFFFFFFFFFFFFLL);
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v10 = a6;
  v7 = [(MFComposeMultiView *)self scribbleDelegate];
  v8 = [v7 recipientTextViewForComposeMultiView:self];

  [v8 becomeFirstResponder];
  v9 = [v8 textView];
  v10[2](v10, v9);
}

- (MFComposeMultiViewDelegate)scribbleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleDelegate);

  return WeakRetained;
}

@end