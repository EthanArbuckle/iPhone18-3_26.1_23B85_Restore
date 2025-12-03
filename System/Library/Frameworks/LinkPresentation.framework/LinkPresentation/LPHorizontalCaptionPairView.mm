@interface LPHorizontalCaptionPairView
- (BOOL)textIsTruncated;
- (CGSize)_layoutCaptionPairForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPHorizontalCaptionPairView)initWithHost:(id)host leadingText:(id)text leadingStyle:(id)style trailingText:(id)trailingText trailingStyle:(id)trailingStyle button:(id)button balancingMode:(int64_t)mode;
- (double)ascender;
- (double)descender;
- (double)firstLineLeading;
- (double)lastLineDescent;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEmphasizedTextExpression:(id)expression;
- (void)setOverrideMaximumNumberOfLines:(int64_t)lines;
@end

@implementation LPHorizontalCaptionPairView

- (LPHorizontalCaptionPairView)initWithHost:(id)host leadingText:(id)text leadingStyle:(id)style trailingText:(id)trailingText trailingStyle:(id)trailingStyle button:(id)button balancingMode:(int64_t)mode
{
  v61[3] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  textCopy = text;
  styleCopy = style;
  trailingTextCopy = trailingText;
  trailingStyleCopy = trailingStyle;
  buttonCopy = button;
  v60.receiver = self;
  v60.super_class = LPHorizontalCaptionPairView;
  v54 = hostCopy;
  v16 = [(LPComponentView *)&v60 initWithHost:hostCopy];
  v17 = v16;
  if (v16)
  {
    v16->_balancingMode = mode;
    if (textCopy)
    {
      v18 = [LPTextView alloc];
      host = [(LPComponentView *)v17 host];
      v20 = [(LPTextView *)v18 initWithHost:host text:textCopy style:styleCopy];
    }

    else
    {
      v20 = 0;
    }

    if (trailingTextCopy)
    {
      v21 = [LPTextView alloc];
      host2 = [(LPComponentView *)v17 host];
      v23 = [(LPTextView *)v21 initWithHost:host2 text:trailingTextCopy style:trailingStyleCopy];
    }

    else
    {
      v23 = 0;
    }

    _lp_isLTR = [(UIView *)v17 _lp_isLTR];
    if (_lp_isLTR)
    {
      v25 = v20;
    }

    else
    {
      v25 = v23;
    }

    if (_lp_isLTR)
    {
      v26 = v23;
    }

    else
    {
      v26 = v20;
    }

    objc_storeStrong(&v17->_leftView, v25);
    objc_storeStrong(&v17->_rightView, v26);
    if (v17->_leftView)
    {
      [(LPHorizontalCaptionPairView *)v17 addSubview:?];
    }

    if (v17->_rightView)
    {
      [(LPHorizontalCaptionPairView *)v17 addSubview:?];
    }

    if (v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v20;
    }

    v28 = v27;
    v29 = v28;
    if (buttonCopy && v28)
    {
      objc_storeStrong(&v17->_buttonProperties, button);
      v30 = [LPSubtitleButtonView alloc];
      host3 = [(LPComponentView *)v17 host];
      v32 = [(LPSubtitleButtonView *)v30 initWithHost:host3 buttonProperties:v17->_buttonProperties style:styleCopy];
      button = v17->_button;
      v17->_button = v32;

      [(LPSubtitleButtonView *)v17->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(LPHorizontalCaptionPairView *)v17 addSubview:v17->_button];
      [(LPSubtitleButtonView *)v17->_button sizeToFit];
      attributedString = [(LPTextView *)v29 attributedString];
      string = [attributedString string];
      LODWORD(v30) = [string isEqualToString:@"​"];

      leadingAnchor = [(LPSubtitleButtonView *)v17->_button leadingAnchor];
      trailingAnchor = [(LPTextView *)v29 trailingAnchor];
      if (v30)
      {
        [leadingAnchor constraintEqualToAnchor:trailingAnchor];
      }

      else
      {
        [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
      }
      v38 = ;
      [v38 setActive:1];

      widthAnchor = [(LPSubtitleButtonView *)v17->_button widthAnchor];
      [(LPSubtitleButtonView *)v17->_button frame];
      v41 = [widthAnchor constraintEqualToConstant:v40];
      buttonWidthConstraint = v17->_buttonWidthConstraint;
      v17->_buttonWidthConstraint = v41;

      heightAnchor = [(LPSubtitleButtonView *)v17->_button heightAnchor];
      [(LPSubtitleButtonView *)v17->_button frame];
      v45 = [heightAnchor constraintEqualToConstant:v44];
      buttonHeightConstraint = v17->_buttonHeightConstraint;
      v17->_buttonHeightConstraint = v45;

      v47 = MEMORY[0x1E696ACD8];
      firstBaselineAnchor = [(LPSubtitleButtonView *)v17->_button firstBaselineAnchor];
      lastBaselineAnchor = [(LPTextView *)v29 lastBaselineAnchor];
      v50 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
      v61[0] = v50;
      v61[1] = v17->_buttonWidthConstraint;
      v61[2] = v17->_buttonHeightConstraint;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
      [v47 activateConstraints:v51];
    }

    v52 = v17;
  }

  return v17;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  v4.f64[0] = inset.top;
  v4.f64[1] = inset.left;
  v5.f64[0] = inset.bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentInset.top), vceqq_f64(v5, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset.top = inset.top;
    self->_contentInset.left = inset.left;
    self->_contentInset.bottom = inset.bottom;
    self->_contentInset.right = right;
    bottom = inset.bottom;
    v10 = right;
    top = inset.top;
    [(LPTextView *)self->_leftView setContentInset:?];
    rightView = self->_rightView;

    [(LPTextView *)rightView setContentInset:top, 2.0, bottom, v10];
  }
}

- (double)firstLineLeading
{
  style = [(LPTextView *)self->_leftView style];
  firstLineLeading = [style firstLineLeading];
  [firstLineLeading value];
  v6 = v5;
  style2 = [(LPTextView *)self->_rightView style];
  firstLineLeading2 = [style2 firstLineLeading];
  [firstLineLeading2 value];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)lastLineDescent
{
  style = [(LPTextView *)self->_leftView style];
  lastLineDescent = [style lastLineDescent];
  [lastLineDescent value];
  v6 = v5;
  style2 = [(LPTextView *)self->_rightView style];
  lastLineDescent2 = [style2 lastLineDescent];
  [lastLineDescent2 value];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)ascender
{
  style = [(LPTextView *)self->_leftView style];
  font = [style font];
  [font ascender];
  v6 = v5;
  style2 = [(LPTextView *)self->_rightView style];
  font2 = [style2 font];
  [font2 ascender];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)descender
{
  style = [(LPTextView *)self->_leftView style];
  font = [style font];
  [font descender];
  v6 = v5;
  style2 = [(LPTextView *)self->_rightView style];
  font2 = [style2 font];
  [font2 descender];
  v10 = fmin(v6, v9);

  return v10;
}

- (void)setOverrideMaximumNumberOfLines:(int64_t)lines
{
  self->_overrideMaximumNumberOfLines = lines;
  [(LPTextView *)self->_leftView setOverrideMaximumNumberOfLines:?];
  rightView = self->_rightView;

  [(LPTextView *)rightView setOverrideMaximumNumberOfLines:lines];
}

- (void)layoutComponentView
{
  [(LPHorizontalCaptionPairView *)self bounds];

  [(LPHorizontalCaptionPairView *)self _layoutCaptionPairForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LPHorizontalCaptionPairView *)self _layoutCaptionPairForSize:0 applyingLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutCaptionPairForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E695F058];
  button = self->_button;
  v9 = *MEMORY[0x1E695F060];
  if (button)
  {
    [(LPSubtitleButtonView *)button sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v9 = v10;
    v12 = v11;
  }

  else
  {
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  v56 = *v7;
  rect = v7[1];
  v13 = v7[3];
  [(NSLayoutConstraint *)self->_buttonWidthConstraint setConstant:v9];
  [(NSLayoutConstraint *)self->_buttonHeightConstraint setConstant:v12];
  v14 = width;
  v15 = width - v9;
  [(LPTextView *)self->_leftView sizeThatFits:width - v9, height];
  v17 = v16;
  [(LPTextView *)self->_rightView sizeThatFits:width - v9, height];
  v19 = v18;
  v20 = v17 + v18;
  if (v20 <= width - v9)
  {
    if ([(UIView *)self _lp_isLTR])
    {
      v62.origin.x = v56;
      v62.origin.y = rect;
      v62.size.width = v17;
      v62.size.height = v13;
      v63.size.width = v15 - CGRectGetWidth(v62);
      v63.origin.x = v56;
      v63.origin.y = rect;
      v54 = v63.size.width;
      v63.size.height = v13;
      v19 = fmin(v19, CGRectGetWidth(v63));
      v55 = v17;
    }

    else
    {
      v64.origin.x = v56;
      v64.origin.y = rect;
      v64.size.width = v19;
      v64.size.height = v13;
      v65.size.width = v15 - CGRectGetWidth(v64);
      v65.origin.x = v56;
      v65.origin.y = rect;
      v55 = v65.size.width;
      v65.size.height = v13;
      v17 = fmin(v17, CGRectGetWidth(v65));
      v54 = v19;
    }
  }

  else if (self->_balancingMode)
  {
    _lp_isLTR = [(UIView *)self _lp_isLTR];
    v22 = v15 - v17;
    v23 = v15 - (v15 - v17);
    v24 = v15 - v19;
    v25 = v15 - (v15 - v19);
    if (_lp_isLTR)
    {
      v19 = v15 - (v15 - v19);
    }

    else
    {
      v19 = v15 - v17;
    }

    if (_lp_isLTR)
    {
      v17 = v24;
    }

    else
    {
      v17 = v15 - (v15 - v17);
    }

    if (_lp_isLTR)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    if (_lp_isLTR)
    {
      v27 = v24;
    }

    else
    {
      v27 = v23;
    }

    v54 = v26;
    v55 = v27;
  }

  else
  {
    v28 = fmax(v17 / v20, 0.5);
    v17 = v15 * v28;
    v19 = v15 - v15 * v28;
    v54 = v19;
    v55 = v15 * v28;
  }

  [(LPTextView *)self->_leftView sizeThatFits:v17, height];
  v57 = v29;
  [(LPTextView *)self->_rightView sizeThatFits:v19, height];
  v31 = v30;
  if (layoutCopy)
  {
    v53 = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__LPHorizontalCaptionPairView__layoutCaptionPairForSize_applyingLayout___block_invoke;
    aBlock[3] = &__block_descriptor_48_e41_d40__0__LPComponentView_8d16_CGSize_dd_24l;
    *&aBlock[4] = width;
    *&aBlock[5] = height;
    v32 = _Block_copy(aBlock);
    leftView = self->_leftView;
    v66.size.width = v55;
    v66.origin.x = v56;
    v66.origin.y = rect;
    v66.size.height = v13;
    v34 = CGRectGetWidth(v66);
    v52 = v32[2](v32, leftView, v34, v17, v57);
    rightView = self->_rightView;
    v67.origin.x = v56;
    v67.origin.y = rect;
    v67.size.width = v54;
    v67.size.height = v13;
    v36 = CGRectGetWidth(v67);
    v37 = v32[2](v32, rightView, v36, v19, v53);
    style = [(LPTextView *)self->_leftView style];
    font = [style font];
    [font ascender];
    v41 = v40;

    style2 = [(LPTextView *)self->_rightView style];
    font2 = [style2 font];
    v51 = v37;
    [font2 ascender];
    v45 = v44;

    v68.origin.x = v56;
    v68.origin.y = rect;
    v68.size.width = v55;
    v68.size.height = v52;
    v46 = CGRectGetWidth(v68);
    v47 = v41 - v45;
    v48 = -v47;
    if (v47 >= 0.0)
    {
      v48 = 0.0;
    }

    [(LPTextView *)self->_leftView setFrame:0.0, floor(v48), v55, v52];
    [(LPTextView *)self->_rightView setFrame:width - (v15 - v46), floor(fmax(v47, 0.0)), v54, v51];

    v14 = width;
    v31 = v53;
  }

  v49 = fmin(v9 + v19 + v17, v14);
  v50 = fmin(fmax(v57, v31), height);
  result.height = v50;
  result.width = v49;
  return result;
}

double __72__LPHorizontalCaptionPairView__layoutCaptionPairForSize_applyingLayout___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = v9;
  if (a4 != a3)
  {
    [v9 sizeThatFits:{a3, *(a1 + 40)}];
    a5 = v11;
  }

  return a5;
}

- (void)setEmphasizedTextExpression:(id)expression
{
  expressionCopy = expression;
  objc_storeStrong(&self->_emphasizedTextExpression, expression);
  [(LPTextView *)self->_leftView setEmphasizedTextExpression:expressionCopy];
  [(LPTextView *)self->_rightView setEmphasizedTextExpression:expressionCopy];
}

- (BOOL)textIsTruncated
{
  if ([(LPTextView *)self->_leftView textIsTruncated])
  {
    return 1;
  }

  rightView = self->_rightView;

  return [(LPTextView *)rightView textIsTruncated];
}

@end