@interface LPQuoteView
- (BOOL)_lp_isLTR;
- (BOOL)textIsTruncated;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPQuoteView)initWithHost:(id)a3 text:(id)a4 style:(id)a5;
- (UIEdgeInsets)effectiveInsets;
- (UIEdgeInsets)effectiveInsetsWithoutQuoteIndicator;
- (double)firstLineLeading;
- (double)lastLineDescent;
- (id)_createTextView;
- (id)effectiveAttributedString;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (int64_t)computedNumberOfLines;
- (int64_t)computedNumberOfLinesWithFont:(id)a3 forSize:(CGSize)a4;
- (int64_t)effectiveMaximumNumberOfLines;
- (void)_buildSubviewsIfNeeded;
- (void)applyAttributedString:(id)a3;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setEmphasizedTextExpression:(id)a3;
- (void)setFont:(id)a3;
- (void)setOverrideMaximumNumberOfLines:(int64_t)a3;
- (void)tintColorDidChange;
- (void)updateEffectiveFontForSize:(CGSize)a3;
- (void)updateExclusionRects;
@end

@implementation LPQuoteView

- (LPQuoteView)initWithHost:(id)a3 text:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = LPQuoteView;
  v11 = [(LPComponentView *)&v22 initWithHost:v8];
  if (v11)
  {
    if ([v10 maximumCharacters])
    {
      v12 = [v9 length];
      v13 = v12 >= [v10 maximumCharacters];
    }

    else
    {
      v13 = 0;
    }

    v11->_didLimitNumberOfCharacters = v13;
    if ([v10 maximumCharacters])
    {
      truncatedAttributedStringAtLength(v9, [v10 maximumCharacters]);
    }

    else
    {
      truncatedAttributedStringAtMaximumMetadataLength(v9);
    }
    v14 = ;
    objc_storeStrong(&v11->_attributedString, v14);

    if (v11->_didLimitNumberOfCharacters)
    {
      v15 = [(NSAttributedString *)v11->_attributedString mutableCopy];
      v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…"];
      [(NSAttributedString *)v15 appendAttributedString:v16];

      attributedString = v11->_attributedString;
      v11->_attributedString = v15;
    }

    v18 = [v10 adjustedForString:v11->_attributedString];
    style = v11->_style;
    v11->_style = v18;

    v20 = v11;
  }

  return v11;
}

- (void)_buildSubviewsIfNeeded
{
  if (!self->_textView)
  {
    v3 = [(LPQuoteView *)self _createTextView];
    textView = self->_textView;
    self->_textView = v3;

    v5 = self->_textView;
    v39 = [(LPQuoteView *)self effectiveAttributedString];
    [(UITextView *)v5 _lp_setAttributedString:?];

    v6 = [(LPTextViewStyle *)self->_style compositingFilter];

    if (v6)
    {
      v40 = [(LPTextViewStyle *)self->_style compositingFilter];
      v7 = [(UITextView *)self->_textView layer];
      [v7 setCompositingFilter:v40];
    }

    if (+[LPSettings showDebugIndicators])
    {
      v41 = [MEMORY[0x1E69DC888] greenColor];
      v8 = [v41 CGColor];
      v9 = [(UITextView *)self->_textView layer];
      [v9 setBorderColor:v8];

      v42 = [(UITextView *)self->_textView layer];
      [v42 setBorderWidth:0.5];
    }

    v43 = [(LPComponentView *)self host];
    v10 = [v43 allowsVibrancyForComponentView:self];

    if (v10)
    {
      v11 = [(LPTextViewStyle *)self->_style color];
      v44 = vibrancyEffectStyleForColor(v11);

      if (v44)
      {
        v12 = objc_alloc(MEMORY[0x1E69DD298]);
        v13 = MEMORY[0x1E69DD248];
        v14 = MEMORY[0x1E69DC730];
        v15 = [(LPComponentView *)self host];
        v16 = [v14 effectWithStyle:{objc_msgSend(v15, "blurEffectStyleBehindComponentView:", self)}];
        v17 = [v13 effectForBlurEffect:v16 style:{objc_msgSend(v44, "integerValue")}];
        v18 = [v12 initWithEffect:v17];
        effectView = self->_effectView;
        self->_effectView = v18;

        v20 = [(UIVisualEffectView *)self->_effectView contentView];
        [v20 addSubview:self->_textView];

        [(LPQuoteView *)self addSubview:self->_effectView];
        if ([v44 integerValue])
        {
          v21 = [(LPQuoteView *)self _createTextView];
          coloredGlyphsView = self->_coloredGlyphsView;
          self->_coloredGlyphsView = v21;

          v23 = [(LPQuoteView *)self effectiveAttributedString];
          v24 = [LPTextView attributedStringHidingNonColoredRanges:v23];
          [(UITextView *)self->_coloredGlyphsView setAttributedText:v24];

          [(LPQuoteView *)self addSubview:self->_coloredGlyphsView];
        }
      }
    }

    if (!self->_effectView)
    {
      [(LPQuoteView *)self addSubview:self->_textView];
    }

    if ([(LPQuotedTextViewStyle *)self->_style showQuoteIndicator])
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      quoteIndicatorView = self->_quoteIndicatorView;
      self->_quoteIndicatorView = v25;

      if ([(LPQuoteView *)self _lp_isLTR])
      {
        +[LPResources openQuote];
      }

      else
      {
        +[LPResources closeQuote];
      }
      v27 = ;
      v28 = [v27 platformImage];
      [(UIImageView *)self->_quoteIndicatorView setImage:v28];

      v29 = self->_quoteIndicatorView;
      v45 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UIImageView *)v29 _lp_setTintColor:?];

      [(LPQuoteView *)self addSubview:self->_quoteIndicatorView];
    }

    if ([(LPQuotedTextViewStyle *)self->_style showCharacterLimitIndicator]&& self->_didLimitNumberOfCharacters)
    {
      v30 = [LPTextView alloc];
      v46 = [(LPComponentView *)self host];
      v31 = objc_alloc(MEMORY[0x1E696AAB0]);
      v32 = LPLocalizedString(@"Viewing Partial Selection");
      v33 = [v31 initWithString:v32];
      v34 = [(LPQuotedTextViewStyle *)self->_style characterLimitIndicatorStyle];
      v35 = [(LPTextView *)v30 initWithHost:v46 text:v33 style:v34];
      characterLimitIndicatorView = self->_characterLimitIndicatorView;
      self->_characterLimitIndicatorView = v35;

      [(LPQuoteView *)self addSubview:self->_characterLimitIndicatorView];
    }

    v47 = [(LPTextViewStyle *)self->_style font];
    [v47 ascender];
    self->_ascender = v37;

    v48 = [(LPTextViewStyle *)self->_style font];
    [v48 descender];
    self->_descender = v38;
  }
}

- (BOOL)_lp_isLTR
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 semanticContentAttribute];
      v6 = v5 == 3;
      if (v5 == 3 || [v4 semanticContentAttribute] == 4)
      {
        goto LABEL_10;
      }

      v7 = [v4 superview];

      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v4 = 0;
  }

  v9.receiver = v3;
  v9.super_class = LPQuoteView;
  v6 = [(UIView *)&v9 _lp_isLTR];
LABEL_10:

  return v6;
}

- (id)effectiveAttributedString
{
  v3 = [(LPComponentView *)self host];
  v4 = [v3 allowsVibrancyForComponentView:self];

  if (v4)
  {
    v5 = [(LPTextViewStyle *)self->_style color];
    v6 = vibrancyEffectStyleForColor(v5);
    v18 = v6 != 0;
  }

  else
  {
    v18 = 0;
  }

  v7 = [(UIView *)self _lp_prefersDarkInterface];
  attributedString = self->_attributedString;
  style = self->_style;
  emphasizedTextExpression = self->_emphasizedTextExpression;
  v11 = [(UIView *)self _lp_tintColor];
  v12 = [(LPQuoteView *)self _lp_isLTR];
  v13 = [(UITextView *)self->_textView font];
  v14 = v13;
  if (!v13)
  {
    v14 = [(LPTextViewStyle *)self->_style font];
  }

  LOBYTE(v17) = v12;
  v15 = [LPTextView attributedString:attributedString resolvedAgainstStyle:style withEmphasizedTextExpression:emphasizedTextExpression tintColor:v11 lineBreakMode:0 usesVibrancy:v18 forLTR:v17 withFont:v14 userInterfaceStyle:v7];
  if (!v13)
  {
  }

  return v15;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
  }
}

- (double)firstLineLeading
{
  v2 = [(LPTextViewStyle *)self->_style firstLineLeading];
  [v2 value];
  v4 = v3;

  return v4;
}

- (double)lastLineDescent
{
  v2 = [(LPTextViewStyle *)self->_style lastLineDescent];
  [v2 value];
  v4 = v3;

  return v4;
}

- (int64_t)computedNumberOfLinesWithFont:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if (v7)
  {
    v8 = [(UITextView *)self->_textView font];
    [(LPQuoteView *)self setFont:v7];
  }

  else
  {
    v8 = 0;
  }

  [(LPQuoteView *)self frame];
  if (width == v10 && height == v9)
  {
    v13 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UITextView *)self->_textView frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UITextView *)self->_textView setFrame:?];
  }

  v20 = [(UITextView *)self->_textView layoutManager];
  v21 = 0;
  v22 = [v20 numberOfGlyphs];
  if (v22)
  {
    v23 = 0;
    do
    {
      v27 = 0;
      v28 = 0;
      [v20 lineFragmentRectForGlyphAtIndex:v23 effectiveRange:&v27];
      v23 = v28 + v27;
      ++v21;
    }

    while (v28 + v27 < v22);
  }

  if (v7)
  {
    [(LPQuoteView *)self setFont:v8];
  }

  [(LPQuoteView *)self frame];
  if (width != v25 || height != v24)
  {
    [(UITextView *)self->_textView setFrame:v13, v15, v17, v19];
  }

  return v21;
}

- (int64_t)computedNumberOfLines
{
  [(LPQuoteView *)self frame];

  return [(LPQuoteView *)self computedNumberOfLinesWithFont:0 forSize:v3, v4];
}

- (void)setOverrideMaximumNumberOfLines:(int64_t)a3
{
  self->_overrideMaximumNumberOfLines = a3;
  v4 = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  v6 = [(UITextView *)self->_textView textContainer];
  [v6 setMaximumNumberOfLines:v4];

  v5 = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  v7 = [(UITextView *)self->_coloredGlyphsView textContainer];
  [v7 setMaximumNumberOfLines:v5];
}

- (UIEdgeInsets)effectiveInsetsWithoutQuoteIndicator
{
  v3 = [(LPTextViewStyle *)self->_style padding];
  [v3 asInsetsForLTR:{-[LPQuoteView _lp_isLTR](self, "_lp_isLTR")}];
  v5 = v4 + self->_contentInset.top;
  v7 = v6 + self->_contentInset.left;
  v9 = v8 + self->_contentInset.bottom;
  v11 = v10 + self->_contentInset.right;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)effectiveInsets
{
  [(LPQuoteView *)self effectiveInsetsWithoutQuoteIndicator];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(LPQuotedTextViewStyle *)self->_style showQuoteIndicator])
  {
    v11 = [(UIImageView *)self->_quoteIndicatorView image];
    [v11 size];
    v4 = v4 + v12 + 12.0;
    v6 = v6 + 0.0;
    v8 = v8 + 0.0;
    v10 = v10 + 0.0;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (int64_t)effectiveMaximumNumberOfLines
{
  result = self->_overrideMaximumNumberOfLines;
  if (!result)
  {
    v4 = [(LPComponentView *)self host];
    v5 = [v4 linkHasMediaForComponentView:self];

    style = self->_style;
    if (v5)
    {
      LODWORD(result) = [(LPTextViewStyle *)style maximumLinesWithMedia];
    }

    else
    {
      LODWORD(result) = [(LPTextViewStyle *)style maximumLines];
    }

    return result;
  }

  return result;
}

- (void)layoutComponentView
{
  [(LPQuoteView *)self _buildSubviewsIfNeeded];
  [(LPQuoteView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(LPQuoteView *)self effectiveInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  characterLimitIndicatorView = self->_characterLimitIndicatorView;
  if (characterLimitIndicatorView)
  {
    [(LPTextView *)characterLimitIndicatorView sizeThatFits:v16, v18];
    v21 = v20;
    v18 = v18 - v20;
    v46.origin.x = v12;
    v46.origin.y = v14;
    v46.size.width = v16;
    v46.size.height = v18;
    [(LPTextView *)self->_characterLimitIndicatorView setFrame:v12, CGRectGetMaxY(v46), v16, v21];
  }

  effectView = self->_effectView;
  if (effectView)
  {
    [(UIVisualEffectView *)effectView setFrame:v12, v14, v16, v18];
    [(UITextView *)self->_coloredGlyphsView setFrame:v12, v14, v16, v18];
    v23 = 0.0;
    v24 = 0.0;
  }

  else
  {
    v23 = v12;
    v24 = v14;
  }

  [(UITextView *)self->_textView setFrame:v23, v24, v16, v18];
  if ([(LPQuotedTextViewStyle *)self->_style showQuoteIndicator])
  {
    [(LPQuoteView *)self bounds];
    v26 = v25;
    v28 = v27;
    [(LPQuoteView *)self effectiveInsetsWithoutQuoteIndicator];
    v30 = v29;
    v32 = v31;
    if ([(LPQuoteView *)self _lp_isLTR])
    {
      v33 = v26 + v32;
    }

    else
    {
      v47.origin.x = v12;
      v47.origin.y = v14;
      v47.size.width = v16;
      v47.size.height = v18;
      MaxX = CGRectGetMaxX(v47);
      v35 = [(UIImageView *)self->_quoteIndicatorView image];
      [v35 size];
      v33 = MaxX - v36;
    }

    v37 = [(UIImageView *)self->_quoteIndicatorView image];
    [v37 size];
    v39 = v38;

    v40 = [(UIImageView *)self->_quoteIndicatorView image];
    [v40 size];
    v42 = v41;

    [(UIImageView *)self->_quoteIndicatorView setFrame:v33, v28 + v30, v39, v42];
  }

  [(LPQuoteView *)self updateExclusionRects];
  [(UITextView *)self->_textView bounds];

  [(LPQuoteView *)self updateEffectiveFontForSize:v43, v44];
}

- (void)updateExclusionRects
{
  v7 = [(LPComponentView *)self host];
  v3 = [v7 layoutExclusionsForView:self->_textView];
  v4 = [(UITextView *)self->_textView textContainer];
  [v4 setExclusionPaths:v3];

  if (self->_coloredGlyphsView)
  {
    v8 = [(LPComponentView *)self host];
    v5 = [v8 layoutExclusionsForView:self->_coloredGlyphsView];
    v6 = [(UITextView *)self->_coloredGlyphsView textContainer];
    [v6 setExclusionPaths:v5];
  }
}

- (void)setFont:(id)a3
{
  v8 = a3;
  textView = self->_textView;
  if (textView)
  {
    v5 = [(UITextView *)textView font];
    v6 = [v8 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      [(UITextView *)self->_textView setFont:v8];
      v7 = [(LPQuoteView *)self effectiveAttributedString];
      [(LPQuoteView *)self applyAttributedString:v7];
    }
  }
}

- (void)updateEffectiveFontForSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(LPQuotedTextViewStyle *)self->_style maximumLinesToConsiderShort:a3.width];
  v6 = [(LPTextViewStyle *)self->_style font];
  v10 = v6;
  if (v5)
  {
    v7 = [(LPQuoteView *)self computedNumberOfLinesWithFont:v6 forSize:width, 10000.0];
    v8 = [(LPQuotedTextViewStyle *)self->_style maximumLinesToConsiderShort];

    style = self->_style;
    if (v7 <= v8)
    {
      [(LPTextViewStyle *)style font];
    }

    else
    {
      [(LPQuotedTextViewStyle *)style longPullQuoteFont];
    }
    v10 = ;
    [(LPQuoteView *)self setFont:v10];
  }

  else
  {
    [(LPQuoteView *)self setFont:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(LPQuoteView *)self _buildSubviewsIfNeeded];
  [(LPQuoteView *)self effectiveInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = width - (v8 + v12);
  v15 = height - (v6 + v10);
  characterLimitIndicatorView = self->_characterLimitIndicatorView;
  if (characterLimitIndicatorView)
  {
    [(LPTextView *)characterLimitIndicatorView sizeThatFits:v14, v15];
    v18 = v17;
    v15 = v15 - v17;
  }

  else
  {
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = [(UITextView *)self->_textView font];
  [(LPQuoteView *)self updateEffectiveFontForSize:v14, v15];
  [(UITextView *)self->_textView sizeThatFits:v14, v15];
  v21 = v20;
  v23 = v22;
  [(LPQuoteView *)self setFont:v19];

  v24 = ceil(v21) - (-v13 - v9);
  v25 = ceil(v18 + v23) - (-v11 - v7);
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)setEmphasizedTextExpression:(id)a3
{
  objc_storeStrong(&self->_emphasizedTextExpression, a3);
  if (self->_textView)
  {
    v4 = [(LPQuoteView *)self effectiveAttributedString];
    [(LPQuoteView *)self applyAttributedString:?];
  }
}

- (void)tintColorDidChange
{
  if (self->_textView)
  {
    v3 = [(LPQuoteView *)self effectiveAttributedString];
    [(LPQuoteView *)self applyAttributedString:?];
  }
}

- (id)_createTextView
{
  v3 = [MEMORY[0x1E69DD168] _lp_createInertTextView];
  [v3 setEditable:0];
  [v3 setSelectable:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setScrollEnabled:0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setBounces:0];
  v5 = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  v6 = [v3 textContainer];
  [v6 setMaximumNumberOfLines:v5];

  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v7 = [v3 textContainer];
  [v7 setHeightTracksTextView:1];

  v8 = [v3 textContainer];
  [v8 setLineFragmentPadding:0.0];

  v9 = [v3 textContainer];
  [v9 setLineBreakMode:4];

  return v3;
}

- (void)applyAttributedString:(id)a3
{
  v5 = a3;
  [(UITextView *)self->_textView _lp_setAttributedString:?];
  if (self->_coloredGlyphsView)
  {
    v4 = [LPTextView attributedStringHidingNonColoredRanges:v5];
    [(UITextView *)self->_coloredGlyphsView setAttributedText:v4];
  }
}

- (id)firstBaselineAnchor
{
  [(LPQuoteView *)self _buildSubviewsIfNeeded];
  textView = self->_textView;

  return [(UITextView *)textView firstBaselineAnchor];
}

- (id)lastBaselineAnchor
{
  [(LPQuoteView *)self _buildSubviewsIfNeeded];
  textView = self->_textView;

  return [(UITextView *)textView lastBaselineAnchor];
}

- (BOOL)textIsTruncated
{
  v2 = self;
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(UITextView *)self->_textView _lp_getAttributedString];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v5 setLineBreakMode:0xFFFFLL];
  v14 = *MEMORY[0x1E69DB688];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v4 addAttributes:v6 range:{0, objc_msgSend(v4, "length") - 1}];

  v7 = [(LPQuoteView *)v2 textView];
  [v7 bounds];
  [v4 boundingRectWithSize:1 options:0 context:{v8, 1.79769313e308}];
  v10 = v9;

  v11 = [(LPQuoteView *)v2 textView];
  [v11 bounds];
  LOBYTE(v2) = v10 > v12;

  return v2;
}

@end