@interface MFComposeMultiView
- (MFComposeMultiView)initWithFrame:(CGRect)frame;
- (MFComposeMultiViewDelegate)scribbleDelegate;
- (id)_accountDescriptionAttributedString;
- (id)accountLabel;
- (id)imageSizeHeaderLabelView;
- (id)imageSizeLabel;
- (id)labelColor;
- (id)placeholderImageSizeLabel;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setAccountAutoselected:(BOOL)autoselected;
- (void)setAccountDescription:(id)description;
- (void)setAccountHasUnsafeDomain:(BOOL)domain;
- (void)setImageSizeDescription:(id)description;
- (void)showLoadingState:(BOOL)state;
@end

@implementation MFComposeMultiView

- (MFComposeMultiView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFComposeMultiView;
  v3 = [(MFComposeMultiView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    defaultFont = [objc_opt_class() defaultFont];
    textLabel = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    [textLabel setFont:defaultFont];

    labelColor = [(MFComposeMultiView *)self labelColor];
    textLabel2 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    [textLabel2 setTextColor:labelColor];

    [(MFActivityIndicatorLabel *)self->_accountLabel sizeToFit];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      textLabel3 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
      [textLabel3 setTextAlignment:2];
    }

    [(MFComposeMultiView *)self addSubview:self->_accountLabel];
    v13 = MEMORY[0x1E696ACD8];
    labelView = [(MFComposeMultiView *)self labelView];
    trailingAnchor = [labelView trailingAnchor];
    leadingAnchor = [(MFActivityIndicatorLabel *)self->_accountLabel leadingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:6.0 constant:?];
    v25[0] = v14;
    textLabel4 = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    firstBaselineAnchor = [textLabel4 firstBaselineAnchor];
    labelView2 = [(MFComposeMultiView *)self labelView];
    firstBaselineAnchor2 = [labelView2 firstBaselineAnchor];
    v19 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
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
    defaultFont = [objc_opt_class() defaultFont];
    [(UILabel *)v7 setFont:defaultFont];

    v9 = self->_imageSizeLabel;
    labelColor = [(MFComposeMultiView *)self labelColor];
    [(UILabel *)v9 setTextColor:labelColor];

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
    defaultFont = [objc_opt_class() defaultFont];
    [(UILabel *)v7 setFont:defaultFont];

    v9 = self->_placeholderImageSizeLabel;
    labelColor = [(MFComposeMultiView *)self labelColor];
    [(UILabel *)v9 setTextColor:labelColor];

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

- (void)setAccountHasUnsafeDomain:(BOOL)domain
{
  if (self->_accountHasUnsafeDomain != domain)
  {
    self->_accountHasUnsafeDomain = domain;
    accountLabel = [(MFComposeMultiView *)self accountLabel];
    textLabel = [accountLabel textLabel];
    _accountDescriptionAttributedString = [(MFComposeMultiView *)self _accountDescriptionAttributedString];
    [textLabel setAttributedText:_accountDescriptionAttributedString];
  }
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  if (self->_accountDescription != descriptionCopy)
  {
    v9 = descriptionCopy;
    objc_storeStrong(&self->_accountDescription, description);
    accountLabel = [(MFComposeMultiView *)self accountLabel];
    textLabel = [accountLabel textLabel];
    _accountDescriptionAttributedString = [(MFComposeMultiView *)self _accountDescriptionAttributedString];
    [textLabel setAttributedText:_accountDescriptionAttributedString];

    descriptionCopy = v9;
  }
}

- (void)setImageSizeDescription:(id)description
{
  descriptionCopy = description;
  imageSizeLabel = [(MFComposeMultiView *)self imageSizeLabel];
  [imageSizeLabel setText:descriptionCopy];
}

- (void)showLoadingState:(BOOL)state
{
  stateCopy = state;
  accountLabel = [(MFComposeMultiView *)self accountLabel];
  v5 = accountLabel;
  if (stateCopy)
  {
    [accountLabel startAnimating];
  }

  else
  {
    [accountLabel stopAnimating];
  }
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = MFComposeMultiView;
  [(MFComposeMultiView *)&v61 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(MFComposeMultiView *)self effectiveUserInterfaceLayoutDirection];
  [(MFActivityIndicatorLabel *)self->_accountLabel sizeToFit];
  [(MFActivityIndicatorLabel *)self->_accountLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  labelView = [(MFComposeMultiView *)self labelView];
  [labelView frame];
  v14 = v13;
  v16 = v15;

  v17 = v16 + v14 + 6.0;
  if (effectiveUserInterfaceLayoutDirection == 1)
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
      text = [(UILabel *)self->_imageSizeLabel text];

      imageSizeHeaderLabelView = [(MFComposeMultiView *)self imageSizeHeaderLabelView];
      [imageSizeHeaderLabelView setAlpha:1.0];

      imageSizeLabel = [(MFComposeMultiView *)self imageSizeLabel];
      v22 = imageSizeLabel;
      if (text)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      [imageSizeLabel setAlpha:v23];

      placeholderImageSizeLabel = [(MFComposeMultiView *)self placeholderImageSizeLabel];
      v25 = placeholderImageSizeLabel;
      v26 = 1.0;
      if (text)
      {
        v26 = 0.0;
      }

      [placeholderImageSizeLabel setAlpha:v26];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __36__MFComposeMultiView_layoutSubviews__block_invoke;
      aBlock[3] = &unk_1E806CE18;
      v60 = effectiveUserInterfaceLayoutDirection == 1;
      aBlock[4] = self;
      v27 = _Block_copy(aBlock);
      [(UILabel *)self->_imageSizeLabel sizeToFit];
      labelView2 = [(MFComposeMultiView *)self labelView];
      [labelView2 frame];
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
      if (text)
      {
        v51 = v37;
      }

      else
      {
        v32 = v41;
        v51 = v46;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        if (text)
        {
          v52 = v58;
        }

        else
        {
          v52 = v43;
        }

        if (text)
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
  defaultFont = [objc_opt_class() defaultFont];
  accountLabel = self->_accountLabel;
  if (accountLabel)
  {
    textLabel = [(MFActivityIndicatorLabel *)accountLabel textLabel];
    [textLabel setFont:defaultFont];
  }

  imageSizeLabel = self->_imageSizeLabel;
  if (imageSizeLabel)
  {
    [(UILabel *)imageSizeLabel setFont:defaultFont];
  }

  placeholderImageSizeLabel = self->_placeholderImageSizeLabel;
  if (placeholderImageSizeLabel)
  {
    [(UILabel *)placeholderImageSizeLabel setFont:defaultFont];
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
      mailSenderAddressPickerColorNormalTextColor = [MEMORY[0x1E69DC888] mailSenderAddressPickerColorNormalTextColor];
      v4 = labelColor_autoselectedColor;
      labelColor_autoselectedColor = mailSenderAddressPickerColorNormalTextColor;

      v2 = labelColor_autoselectedColor;
    }

    labelColor = v2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFComposeMultiView;
    labelColor = [(MFComposeMultiView *)&v7 labelColor];
  }

  return labelColor;
}

- (void)setAccountAutoselected:(BOOL)autoselected
{
  if (self->_accountAutoselected != autoselected)
  {
    self->_accountAutoselected = autoselected;
    textLabel = [(MFActivityIndicatorLabel *)self->_accountLabel textLabel];
    labelColor = [(MFComposeMultiView *)self labelColor];
    [textLabel setTextColor:labelColor];
  }
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v9[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  label = [(MFComposeMultiView *)self label];
  v9[0] = label;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  completionCopy[2](completionCopy, v8, 0x7FFFFFFFFFFFFFFFLL);
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  completionCopy = completion;
  scribbleDelegate = [(MFComposeMultiView *)self scribbleDelegate];
  v8 = [scribbleDelegate recipientTextViewForComposeMultiView:self];

  [v8 becomeFirstResponder];
  textView = [v8 textView];
  completionCopy[2](completionCopy, textView);
}

- (MFComposeMultiViewDelegate)scribbleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleDelegate);

  return WeakRetained;
}

@end