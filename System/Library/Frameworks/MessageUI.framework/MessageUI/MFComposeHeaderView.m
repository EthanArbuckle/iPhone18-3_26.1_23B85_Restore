@interface MFComposeHeaderView
+ (double)_labelTopPaddingSpecification;
+ (double)preferredHeight;
+ (double)separatorHeight;
+ (id)defaultFont;
- (CGRect)_contentRect;
- (CGRect)_exclusionRectForView:(id)a3 alongEdge:(unint64_t)a4;
- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)a3;
- (MFComposeHeaderView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_recipientViewEdgeInsets;
- (double)labelTopPadding;
- (id)_automationID;
- (id)_baseAttributes;
- (id)_highlightedBackgroundView;
- (void)handleTouchesEnded;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLabel:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MFComposeHeaderView

+ (id)defaultFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_6 forKey:@"MFComposeHeaderViewDefaultFont"];

  return v3;
}

id __34__MFComposeHeaderView_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (double)preferredHeight
{
  v3 = +[MFFontMetricCache sharedFontMetricCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MFComposeHeaderView_preferredHeight__block_invoke;
  v7[3] = &__block_descriptor_40_e5_d8__0l;
  v7[4] = a1;
  [v3 cachedFloat:v7 forKey:@"MFComposeHeaderViewPreferredHeight"];
  v5 = v4;

  return v5;
}

double __38__MFComposeHeaderView_preferredHeight__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultFont];
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [v2 capHeight];
    v4 = v3;
    [v2 lineHeight];
    v6 = v4 + v5;
  }

  else
  {
    [v2 ascender];
    [v2 capHeight];
    [*(a1 + 32) _labelTopPaddingSpecification];
    [v2 _bodyLeading];
    v7 = [*(a1 + 32) defaultFont];
    [v7 _bodyLeading];

    v8 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    UIRoundToViewScale();
    v6 = v9;
  }

  return v6;
}

+ (double)separatorHeight
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  return 1.0 / v4;
}

+ (double)_labelTopPaddingSpecification
{
  v3 = +[MFFontMetricCache sharedFontMetricCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MFComposeHeaderView__labelTopPaddingSpecification__block_invoke;
  v7[3] = &__block_descriptor_40_e5_d8__0l;
  v7[4] = a1;
  [v3 cachedFloat:v7 forKey:@"MFComposeHeaderViewLabelTopPaddingSpec"];
  v5 = v4;

  return v5;
}

double __52__MFComposeHeaderView__labelTopPaddingSpecification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultFont];
  [v1 _bodyLeading];
  v3 = v2 * 0.89;

  return v3;
}

- (double)labelTopPadding
{
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  }

  else
  {
    [objc_opt_class() _labelTopPaddingSpecification];
    v5 = v4;
    [(MFHeaderLabelView *)self->_labelView _capOffsetFromBoundsTop];
    return v5 - v6;
  }

  return result;
}

- (MFComposeHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v21.receiver = self;
  v21.super_class = MFComposeHeaderView;
  v5 = [(MFComposeHeaderView *)&v21 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] mailComposeHeaderBackgroundColor];
    [(MFComposeHeaderView *)v5 setBackgroundColor:v6];

    [(MFComposeHeaderView *)v5 setPreservesSuperviewLayoutMargins:1];
    [(MFComposeHeaderView *)v5 setInsetsLayoutMarginsFromSafeArea:0];
    +[MFComposeHeaderView separatorHeight];
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    v10 = MEMORY[0x1E695F058];
    v11 = *MEMORY[0x1E695F058];
    v12 = [v9 initWithFrame:{*MEMORY[0x1E695F058], height - v8, width, v8}];
    separator = v5->_separator;
    v5->_separator = v12;

    [(UIView *)v5->_separator setAutoresizingMask:2];
    v14 = v5->_separator;
    v15 = +[MFComposeHeaderView defaultSeparatorColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(MFComposeHeaderView *)v5 addSubview:v5->_separator];
    v16 = [[MFHeaderLabelView alloc] initWithFrame:v11, v10[1], v10[2], v10[3]];
    labelView = v5->_labelView;
    v5->_labelView = v16;

    [(MFHeaderLabelView *)v5->_labelView setAutoresizingMask:0];
    v18 = v5->_labelView;
    v19 = [objc_opt_class() defaultFont];
    [(MFHeaderLabelView *)v18 setFont:v19];

    [(MFHeaderLabelView *)v5->_labelView sizeToFit];
    [(MFComposeHeaderView *)v5 addSubview:v5->_labelView];
  }

  return v5;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MFComposeHeaderView *)self frame];
  if (width != v9 || height != v8)
  {
    [(MFComposeHeaderView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v11 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MFComposeHeaderView *)self bounds];
  if (width != v9 || height != v8)
  {
    [(MFComposeHeaderView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v11 setBounds:x, y, width, height];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(MFHeaderLabelView *)self->_labelView setText:v4];
    [(MFHeaderLabelView *)self->_labelView sizeToFit];
  }
}

- (void)layoutSubviews
{
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [(MFComposeHeaderView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFHeaderLabelView *)self->_labelView sizeToFit];
  [(MFHeaderLabelView *)self->_labelView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rect_8 = v5;
  v47.origin.x = v5;
  rect_24 = v7;
  v47.origin.y = v7;
  v20 = v9;
  v47.size.width = v9;
  v47.size.height = v11;
  Width = CGRectGetWidth(v47);
  rect = v13;
  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  rect_16 = v19;
  v48.size.height = v19;
  v22 = fmin(CGRectGetWidth(v48), Width);
  [(MFComposeHeaderView *)self labelTopPadding];
  v24 = v23;
  if ([(MFComposeHeaderView *)self _shouldEmbedLabelInTextView])
  {
    if (!v3)
    {
      MinX = 0.0;
      v26 = rect_24;
      v25 = rect_8;
      v29 = v19;
      goto LABEL_9;
    }

    v25 = rect_8;
    v49.origin.x = rect_8;
    v26 = rect_24;
    v49.origin.y = rect_24;
    v49.size.width = v9;
    v49.size.height = v11;
    MaxX = CGRectGetWidth(v49);
  }

  else
  {
    if (!v3)
    {
      v25 = rect_8;
      v52.origin.x = rect_8;
      v26 = rect_24;
      v52.origin.y = rect_24;
      v52.size.width = v9;
      v52.size.height = v11;
      MinX = CGRectGetMinX(v52);
      v29 = v19;
      goto LABEL_9;
    }

    v25 = rect_8;
    v50.origin.x = rect_8;
    v26 = rect_24;
    v50.origin.y = rect_24;
    v50.size.width = v9;
    v50.size.height = v11;
    MaxX = CGRectGetMaxX(v50);
  }

  v28 = MaxX;
  v51.origin.x = rect;
  v51.origin.y = v24;
  v51.size.width = v22;
  v29 = rect_16;
  v51.size.height = rect_16;
  MinX = v28 - CGRectGetWidth(v51);
LABEL_9:
  labelView = self->_labelView;
  v32 = v24;
  v33 = v22;
  v34 = v29;
  v53 = CGRectIntegral(*&MinX);
  [(MFHeaderLabelView *)labelView setFrame:v53.origin.x, v53.origin.y, v53.size.width, v53.size.height];
  [(MFComposeHeaderView *)self directionalLayoutMargins];
  LOBYTE(labelView) = MFMarginIsGenerous(v35);
  [(UIView *)self->_separator frame];
  v37 = v36;
  v54.origin.x = v25;
  v54.origin.y = v26;
  v54.size.width = v20;
  v54.size.height = v11;
  v38 = CGRectGetMinX(v54);
  [(MFComposeHeaderView *)self frame];
  Height = CGRectGetHeight(v55);
  v56.origin.x = v25;
  v56.origin.y = v26;
  v56.size.width = v20;
  v56.size.height = v11;
  v40 = CGRectGetWidth(v56);
  if ((labelView & 1) == 0)
  {
    [(MFComposeHeaderView *)self directionalLayoutMargins];
    v40 = v40 + v41;
    if ([(MFComposeHeaderView *)self _shouldReverseLayoutDirection])
    {
      v38 = 0.0;
    }
  }

  [(UIView *)self->_separator setFrame:v38, Height + -1.0, v40, v37, *&rect];
  v46.receiver = self;
  v46.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v46 layoutSubviews];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v3 layoutMarginsDidChange];
  [(MFComposeHeaderView *)self setNeedsLayout];
}

- (CGRect)_contentRect
{
  [(MFComposeHeaderView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(MFComposeHeaderView *)self bounds];
  v9 = v4 + v8;
  v11 = v10 + 0.0;
  v13 = v12 - (v4 + v6);
  result.size.height = v7;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)a3
{
  v4 = a3;
  [(MFHeaderLabelView *)self->_labelView layoutSubviews];
  [(MFHeaderLabelView *)self->_labelView frame];
  rect = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [(MFComposeHeaderView *)self _contentRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v4 frame];
  v43 = v21;
  [v4 frame];
  v23 = v22;
  v45.origin.x = v14;
  v45.origin.y = v16;
  v45.size.width = v18;
  v45.size.height = v20;
  v24 = fmax(fmin(v23, CGRectGetWidth(v45) + -6.0 - v9), 0.0);
  v25 = rect;
  v26 = v7;
  v27 = v9;
  v28 = v11;
  if (v12 == 1)
  {
    v29 = CGRectGetMinX(*&v25) + -6.0 - v24;
  }

  else
  {
    v29 = CGRectGetMaxX(*&v25) + 6.0;
  }

  v46.origin.x = rect;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  MaxY = CGRectGetMaxY(v46);
  [v4 frame];
  Height = CGRectGetHeight(v47);
  [(MFHeaderLabelView *)self->_labelView _baselineOffsetFromBottom];
  v33 = v32;
  [v4 _baselineOffsetFromBottom];
  v48.origin.y = MaxY - v33 - (Height - v34);
  v48.origin.x = v29;
  v48.size.width = v24;
  v48.size.height = v43;
  v49 = CGRectIntegral(v48);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  v38 = v49.size.height;

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (void)handleTouchesEnded
{
  if ([(MFComposeHeaderView *)self _canBecomeFirstResponder])
  {

    [(MFComposeHeaderView *)self becomeFirstResponder];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained composeHeaderViewClicked:self];
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v8 touchesBegan:v6 withEvent:v7];
  if ([(MFComposeHeaderView *)self showsHighlightWhenTouched])
  {
    [(MFComposeHeaderView *)self setHighlighted:1 animated:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(MFComposeHeaderView *)self handleTouchesEnded:a3];
  if ([(MFComposeHeaderView *)self showsHighlightWhenTouched])
  {

    [(MFComposeHeaderView *)self setHighlighted:0 animated:1];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = MFComposeHeaderView;
  [(MFComposeHeaderView *)&v8 touchesCancelled:v6 withEvent:v7];
  if ([(MFComposeHeaderView *)self showsHighlightWhenTouched])
  {
    [(MFComposeHeaderView *)self setHighlighted:0 animated:1];
  }
}

- (id)_highlightedBackgroundView
{
  highlightBackgroundView = self->_highlightBackgroundView;
  if (!highlightBackgroundView)
  {
    [(MFComposeHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10 + -1.0;
    [objc_opt_class() separatorHeight];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v11, v7, v9 + v12}];
    v14 = self->_highlightBackgroundView;
    self->_highlightBackgroundView = v13;

    [(UIView *)self->_highlightBackgroundView setAutoresizingMask:18];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)self->_highlightBackgroundView setBackgroundColor:v15];

    highlightBackgroundView = self->_highlightBackgroundView;
  }

  return highlightBackgroundView;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MFComposeHeaderView_setHighlighted_animated___block_invoke;
  aBlock[3] = &unk_1E806CDA8;
  v12 = a3;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__MFComposeHeaderView_setHighlighted_animated___block_invoke_2;
  v9[3] = &unk_1E806CDD0;
  v10 = a3;
  v9[4] = self;
  v8 = _Block_copy(v9);
  if (v4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v8 completion:0.3];
  }

  else
  {
    v7[2](v7);
    v8[2](v8, 1);
  }
}

void __47__MFComposeHeaderView_setHighlighted_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _highlightedBackgroundView];
    [v3 insertSubview:? above:?];

    if (*(a1 + 40))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v5 = [*(a1 + 32) _highlightedBackgroundView];
  [v5 setAlpha:v2];
}

void __47__MFComposeHeaderView_setHighlighted_animated___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = [*(a1 + 32) _highlightedBackgroundView];
    [v1 removeFromSuperview];
  }
}

- (void)refreshPreferredContentSize
{
  v3 = +[MFFontMetricCache sharedFontMetricCache];
  [v3 ensureCacheIsValid];

  labelView = self->_labelView;
  v5 = [objc_opt_class() defaultFont];
  [(MFHeaderLabelView *)labelView setFont:v5];

  [(MFComposeHeaderView *)self setNeedsLayout];
}

- (id)_baseAttributes
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() defaultFont];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v3 _bodyLeading];
  [v4 setLineSpacing:v5 * 0.55];
  [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  [v4 setHeadIndent:v6];
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  if (v8 == 1)
  {
    [v4 setBaseWritingDirection:1];
  }

  v12[0] = *MEMORY[0x1E69DB648];
  v9 = [objc_opt_class() defaultFont];
  v12[1] = *MEMORY[0x1E69DB688];
  v13[0] = v9;
  v13[1] = v4;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (UIEdgeInsets)_recipientViewEdgeInsets
{
  v3 = [objc_opt_class() defaultFont];
  [v3 capHeight];
  v5 = v4;
  [v3 descender];
  v7 = v6;
  [(MFHeaderLabelView *)self->_labelView frame];
  MaxY = CGRectGetMaxY(v25);
  [(MFHeaderLabelView *)self->_labelView _baselineOffsetFromBottom];
  v10 = v9;
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [v3 capHeight];
    v12 = round(v11 * 0.5);
  }

  else
  {
    v12 = floor(MaxY - v10 - (v5 - v7));
  }

  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [v3 capHeight];
    v14 = v13 * 0.5;
  }

  else
  {
    [objc_opt_class() preferredHeight];
    v16 = v15;
    [v3 _bodyLeading];
    v14 = v16 - v12 - v17;
  }

  v18 = *(MEMORY[0x1E69DDCE0] + 8);
  v19 = *(MEMORY[0x1E69DDCE0] + 24);
  v20 = round(v14);

  v21 = v12;
  v22 = v18;
  v23 = v20;
  v24 = v19;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (CGRect)_exclusionRectForView:(id)a3 alongEdge:(unint64_t)a4
{
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 superview];

  if (v15 != self)
  {
    v16 = [v6 superview];
    [v16 convertRect:self toView:{v8, v10, v12, v14}];
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
  }

  v21 = MEMORY[0x1E695F058];
  v22 = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  if (a4 == 8)
  {
    v37.origin.x = v8;
    v37.origin.y = v10;
    v37.size.width = v12;
    v37.size.height = v14;
    MinX = CGRectGetMinX(v37);
    [(MFComposeHeaderView *)self bounds];
    Width = CGRectGetWidth(v38);
    v39.size.height = *(v21 + 24);
    v24 = MinX + -5.0;
    v39.origin.x = v24;
    v39.origin.y = v22;
    v39.size.width = v23;
    v23 = Width - CGRectGetMinX(v39);
  }

  else
  {
    v24 = *MEMORY[0x1E695F058];
    if (a4 == 2)
    {
      v36.origin.x = v8;
      v36.origin.y = v10;
      v36.size.width = v12;
      v36.size.height = v14;
      v23 = CGRectGetMaxX(v36) + 5.0;
    }
  }

  [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  v28 = v27;
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  MaxY = CGRectGetMaxY(v40);
  [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  v31 = MaxY - v30;

  v32 = v24;
  v33 = v22 - v28;
  v34 = v23;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)_automationID
{
  v3 = [(MFComposeHeaderView *)self label];
  v4 = [v3 length];
  if (v4)
  {
    v5 = [(MFComposeHeaderView *)self label];
  }

  else
  {
    v5 = @"NoLabel";
  }

  v6 = [@"BTN " stringByAppendingString:v5];
  if (v4)
  {
  }

  return v6;
}

@end