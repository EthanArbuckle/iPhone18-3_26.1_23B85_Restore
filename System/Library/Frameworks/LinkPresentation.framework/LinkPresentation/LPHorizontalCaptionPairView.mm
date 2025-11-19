@interface LPHorizontalCaptionPairView
- (BOOL)textIsTruncated;
- (CGSize)_layoutCaptionPairForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPHorizontalCaptionPairView)initWithHost:(id)a3 leadingText:(id)a4 leadingStyle:(id)a5 trailingText:(id)a6 trailingStyle:(id)a7 button:(id)a8 balancingMode:(int64_t)a9;
- (double)ascender;
- (double)descender;
- (double)firstLineLeading;
- (double)lastLineDescent;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setEmphasizedTextExpression:(id)a3;
- (void)setOverrideMaximumNumberOfLines:(int64_t)a3;
@end

@implementation LPHorizontalCaptionPairView

- (LPHorizontalCaptionPairView)initWithHost:(id)a3 leadingText:(id)a4 leadingStyle:(id)a5 trailingText:(id)a6 trailingStyle:(id)a7 button:(id)a8 balancingMode:(int64_t)a9
{
  v61[3] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v59 = a4;
  v57 = a5;
  v58 = a6;
  v55 = a7;
  v56 = a8;
  v60.receiver = self;
  v60.super_class = LPHorizontalCaptionPairView;
  v54 = v15;
  v16 = [(LPComponentView *)&v60 initWithHost:v15];
  v17 = v16;
  if (v16)
  {
    v16->_balancingMode = a9;
    if (v59)
    {
      v18 = [LPTextView alloc];
      v19 = [(LPComponentView *)v17 host];
      v20 = [(LPTextView *)v18 initWithHost:v19 text:v59 style:v57];
    }

    else
    {
      v20 = 0;
    }

    if (v58)
    {
      v21 = [LPTextView alloc];
      v22 = [(LPComponentView *)v17 host];
      v23 = [(LPTextView *)v21 initWithHost:v22 text:v58 style:v55];
    }

    else
    {
      v23 = 0;
    }

    v24 = [(UIView *)v17 _lp_isLTR];
    if (v24)
    {
      v25 = v20;
    }

    else
    {
      v25 = v23;
    }

    if (v24)
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
    if (v56 && v28)
    {
      objc_storeStrong(&v17->_buttonProperties, a8);
      v30 = [LPSubtitleButtonView alloc];
      v31 = [(LPComponentView *)v17 host];
      v32 = [(LPSubtitleButtonView *)v30 initWithHost:v31 buttonProperties:v17->_buttonProperties style:v57];
      button = v17->_button;
      v17->_button = v32;

      [(LPSubtitleButtonView *)v17->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(LPHorizontalCaptionPairView *)v17 addSubview:v17->_button];
      [(LPSubtitleButtonView *)v17->_button sizeToFit];
      v34 = [(LPTextView *)v29 attributedString];
      v35 = [v34 string];
      LODWORD(v30) = [v35 isEqualToString:@"​"];

      v36 = [(LPSubtitleButtonView *)v17->_button leadingAnchor];
      v37 = [(LPTextView *)v29 trailingAnchor];
      if (v30)
      {
        [v36 constraintEqualToAnchor:v37];
      }

      else
      {
        [v36 constraintEqualToSystemSpacingAfterAnchor:v37 multiplier:1.0];
      }
      v38 = ;
      [v38 setActive:1];

      v39 = [(LPSubtitleButtonView *)v17->_button widthAnchor];
      [(LPSubtitleButtonView *)v17->_button frame];
      v41 = [v39 constraintEqualToConstant:v40];
      buttonWidthConstraint = v17->_buttonWidthConstraint;
      v17->_buttonWidthConstraint = v41;

      v43 = [(LPSubtitleButtonView *)v17->_button heightAnchor];
      [(LPSubtitleButtonView *)v17->_button frame];
      v45 = [v43 constraintEqualToConstant:v44];
      buttonHeightConstraint = v17->_buttonHeightConstraint;
      v17->_buttonHeightConstraint = v45;

      v47 = MEMORY[0x1E696ACD8];
      v48 = [(LPSubtitleButtonView *)v17->_button firstBaselineAnchor];
      v49 = [(LPTextView *)v29 lastBaselineAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];
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

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentInset.top), vceqq_f64(v5, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset.top = a3.top;
    self->_contentInset.left = a3.left;
    self->_contentInset.bottom = a3.bottom;
    self->_contentInset.right = right;
    bottom = a3.bottom;
    v10 = right;
    top = a3.top;
    [(LPTextView *)self->_leftView setContentInset:?];
    rightView = self->_rightView;

    [(LPTextView *)rightView setContentInset:top, 2.0, bottom, v10];
  }
}

- (double)firstLineLeading
{
  v3 = [(LPTextView *)self->_leftView style];
  v4 = [v3 firstLineLeading];
  [v4 value];
  v6 = v5;
  v7 = [(LPTextView *)self->_rightView style];
  v8 = [v7 firstLineLeading];
  [v8 value];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)lastLineDescent
{
  v3 = [(LPTextView *)self->_leftView style];
  v4 = [v3 lastLineDescent];
  [v4 value];
  v6 = v5;
  v7 = [(LPTextView *)self->_rightView style];
  v8 = [v7 lastLineDescent];
  [v8 value];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)ascender
{
  v3 = [(LPTextView *)self->_leftView style];
  v4 = [v3 font];
  [v4 ascender];
  v6 = v5;
  v7 = [(LPTextView *)self->_rightView style];
  v8 = [v7 font];
  [v8 ascender];
  v10 = fmax(v6, v9);

  return v10;
}

- (double)descender
{
  v3 = [(LPTextView *)self->_leftView style];
  v4 = [v3 font];
  [v4 descender];
  v6 = v5;
  v7 = [(LPTextView *)self->_rightView style];
  v8 = [v7 font];
  [v8 descender];
  v10 = fmin(v6, v9);

  return v10;
}

- (void)setOverrideMaximumNumberOfLines:(int64_t)a3
{
  self->_overrideMaximumNumberOfLines = a3;
  [(LPTextView *)self->_leftView setOverrideMaximumNumberOfLines:?];
  rightView = self->_rightView;

  [(LPTextView *)rightView setOverrideMaximumNumberOfLines:a3];
}

- (void)layoutComponentView
{
  [(LPHorizontalCaptionPairView *)self bounds];

  [(LPHorizontalCaptionPairView *)self _layoutCaptionPairForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPHorizontalCaptionPairView *)self _layoutCaptionPairForSize:0 applyingLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutCaptionPairForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
    v21 = [(UIView *)self _lp_isLTR];
    v22 = v15 - v17;
    v23 = v15 - (v15 - v17);
    v24 = v15 - v19;
    v25 = v15 - (v15 - v19);
    if (v21)
    {
      v19 = v15 - (v15 - v19);
    }

    else
    {
      v19 = v15 - v17;
    }

    if (v21)
    {
      v17 = v24;
    }

    else
    {
      v17 = v15 - (v15 - v17);
    }

    if (v21)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    if (v21)
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
  if (v4)
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
    v38 = [(LPTextView *)self->_leftView style];
    v39 = [v38 font];
    [v39 ascender];
    v41 = v40;

    v42 = [(LPTextView *)self->_rightView style];
    v43 = [v42 font];
    v51 = v37;
    [v43 ascender];
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

- (void)setEmphasizedTextExpression:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_emphasizedTextExpression, a3);
  [(LPTextView *)self->_leftView setEmphasizedTextExpression:v5];
  [(LPTextView *)self->_rightView setEmphasizedTextExpression:v5];
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