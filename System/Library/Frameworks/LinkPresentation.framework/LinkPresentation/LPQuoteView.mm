@interface LPQuoteView
- (BOOL)_lp_isLTR;
- (BOOL)textIsTruncated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPQuoteView)initWithHost:(id)host text:(id)text style:(id)style;
- (UIEdgeInsets)effectiveInsets;
- (UIEdgeInsets)effectiveInsetsWithoutQuoteIndicator;
- (double)firstLineLeading;
- (double)lastLineDescent;
- (id)_createTextView;
- (id)effectiveAttributedString;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (int64_t)computedNumberOfLines;
- (int64_t)computedNumberOfLinesWithFont:(id)font forSize:(CGSize)size;
- (int64_t)effectiveMaximumNumberOfLines;
- (void)_buildSubviewsIfNeeded;
- (void)applyAttributedString:(id)string;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEmphasizedTextExpression:(id)expression;
- (void)setFont:(id)font;
- (void)setOverrideMaximumNumberOfLines:(int64_t)lines;
- (void)tintColorDidChange;
- (void)updateEffectiveFontForSize:(CGSize)size;
- (void)updateExclusionRects;
@end

@implementation LPQuoteView

- (LPQuoteView)initWithHost:(id)host text:(id)text style:(id)style
{
  hostCopy = host;
  textCopy = text;
  styleCopy = style;
  v22.receiver = self;
  v22.super_class = LPQuoteView;
  v11 = [(LPComponentView *)&v22 initWithHost:hostCopy];
  if (v11)
  {
    if ([styleCopy maximumCharacters])
    {
      v12 = [textCopy length];
      v13 = v12 >= [styleCopy maximumCharacters];
    }

    else
    {
      v13 = 0;
    }

    v11->_didLimitNumberOfCharacters = v13;
    if ([styleCopy maximumCharacters])
    {
      truncatedAttributedStringAtLength(textCopy, [styleCopy maximumCharacters]);
    }

    else
    {
      truncatedAttributedStringAtMaximumMetadataLength(textCopy);
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

    v18 = [styleCopy adjustedForString:v11->_attributedString];
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
    _createTextView = [(LPQuoteView *)self _createTextView];
    textView = self->_textView;
    self->_textView = _createTextView;

    v5 = self->_textView;
    effectiveAttributedString = [(LPQuoteView *)self effectiveAttributedString];
    [(UITextView *)v5 _lp_setAttributedString:?];

    compositingFilter = [(LPTextViewStyle *)self->_style compositingFilter];

    if (compositingFilter)
    {
      compositingFilter2 = [(LPTextViewStyle *)self->_style compositingFilter];
      layer = [(UITextView *)self->_textView layer];
      [layer setCompositingFilter:compositingFilter2];
    }

    if (+[LPSettings showDebugIndicators])
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      cGColor = [greenColor CGColor];
      layer2 = [(UITextView *)self->_textView layer];
      [layer2 setBorderColor:cGColor];

      layer3 = [(UITextView *)self->_textView layer];
      [layer3 setBorderWidth:0.5];
    }

    host = [(LPComponentView *)self host];
    v10 = [host allowsVibrancyForComponentView:self];

    if (v10)
    {
      color = [(LPTextViewStyle *)self->_style color];
      v44 = vibrancyEffectStyleForColor(color);

      if (v44)
      {
        v12 = objc_alloc(MEMORY[0x1E69DD298]);
        v13 = MEMORY[0x1E69DD248];
        v14 = MEMORY[0x1E69DC730];
        host2 = [(LPComponentView *)self host];
        v16 = [v14 effectWithStyle:{objc_msgSend(host2, "blurEffectStyleBehindComponentView:", self)}];
        v17 = [v13 effectForBlurEffect:v16 style:{objc_msgSend(v44, "integerValue")}];
        v18 = [v12 initWithEffect:v17];
        effectView = self->_effectView;
        self->_effectView = v18;

        contentView = [(UIVisualEffectView *)self->_effectView contentView];
        [contentView addSubview:self->_textView];

        [(LPQuoteView *)self addSubview:self->_effectView];
        if ([v44 integerValue])
        {
          _createTextView2 = [(LPQuoteView *)self _createTextView];
          coloredGlyphsView = self->_coloredGlyphsView;
          self->_coloredGlyphsView = _createTextView2;

          effectiveAttributedString2 = [(LPQuoteView *)self effectiveAttributedString];
          v24 = [LPTextView attributedStringHidingNonColoredRanges:effectiveAttributedString2];
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
      platformImage = [v27 platformImage];
      [(UIImageView *)self->_quoteIndicatorView setImage:platformImage];

      v29 = self->_quoteIndicatorView;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UIImageView *)v29 _lp_setTintColor:?];

      [(LPQuoteView *)self addSubview:self->_quoteIndicatorView];
    }

    if ([(LPQuotedTextViewStyle *)self->_style showCharacterLimitIndicator]&& self->_didLimitNumberOfCharacters)
    {
      v30 = [LPTextView alloc];
      host3 = [(LPComponentView *)self host];
      v31 = objc_alloc(MEMORY[0x1E696AAB0]);
      v32 = LPLocalizedString(@"Viewing Partial Selection");
      v33 = [v31 initWithString:v32];
      characterLimitIndicatorStyle = [(LPQuotedTextViewStyle *)self->_style characterLimitIndicatorStyle];
      v35 = [(LPTextView *)v30 initWithHost:host3 text:v33 style:characterLimitIndicatorStyle];
      characterLimitIndicatorView = self->_characterLimitIndicatorView;
      self->_characterLimitIndicatorView = v35;

      [(LPQuoteView *)self addSubview:self->_characterLimitIndicatorView];
    }

    font = [(LPTextViewStyle *)self->_style font];
    [font ascender];
    self->_ascender = v37;

    font2 = [(LPTextViewStyle *)self->_style font];
    [font2 descender];
    self->_descender = v38;
  }
}

- (BOOL)_lp_isLTR
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      semanticContentAttribute = [v4 semanticContentAttribute];
      _lp_isLTR = semanticContentAttribute == 3;
      if (semanticContentAttribute == 3 || [v4 semanticContentAttribute] == 4)
      {
        goto LABEL_10;
      }

      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  else
  {
    v4 = 0;
  }

  v9.receiver = v3;
  v9.super_class = LPQuoteView;
  _lp_isLTR = [(UIView *)&v9 _lp_isLTR];
LABEL_10:

  return _lp_isLTR;
}

- (id)effectiveAttributedString
{
  host = [(LPComponentView *)self host];
  v4 = [host allowsVibrancyForComponentView:self];

  if (v4)
  {
    color = [(LPTextViewStyle *)self->_style color];
    v6 = vibrancyEffectStyleForColor(color);
    v18 = v6 != 0;
  }

  else
  {
    v18 = 0;
  }

  _lp_prefersDarkInterface = [(UIView *)self _lp_prefersDarkInterface];
  attributedString = self->_attributedString;
  style = self->_style;
  emphasizedTextExpression = self->_emphasizedTextExpression;
  _lp_tintColor = [(UIView *)self _lp_tintColor];
  _lp_isLTR = [(LPQuoteView *)self _lp_isLTR];
  font = [(UITextView *)self->_textView font];
  font2 = font;
  if (!font)
  {
    font2 = [(LPTextViewStyle *)self->_style font];
  }

  LOBYTE(v17) = _lp_isLTR;
  v15 = [LPTextView attributedString:attributedString resolvedAgainstStyle:style withEmphasizedTextExpression:emphasizedTextExpression tintColor:_lp_tintColor lineBreakMode:0 usesVibrancy:v18 forLTR:v17 withFont:font2 userInterfaceStyle:_lp_prefersDarkInterface];
  if (!font)
  {
  }

  return v15;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
  }
}

- (double)firstLineLeading
{
  firstLineLeading = [(LPTextViewStyle *)self->_style firstLineLeading];
  [firstLineLeading value];
  v4 = v3;

  return v4;
}

- (double)lastLineDescent
{
  lastLineDescent = [(LPTextViewStyle *)self->_style lastLineDescent];
  [lastLineDescent value];
  v4 = v3;

  return v4;
}

- (int64_t)computedNumberOfLinesWithFont:(id)font forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  fontCopy = font;
  if (fontCopy)
  {
    font = [(UITextView *)self->_textView font];
    [(LPQuoteView *)self setFont:fontCopy];
  }

  else
  {
    font = 0;
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

  layoutManager = [(UITextView *)self->_textView layoutManager];
  v21 = 0;
  numberOfGlyphs = [layoutManager numberOfGlyphs];
  if (numberOfGlyphs)
  {
    v23 = 0;
    do
    {
      v27 = 0;
      v28 = 0;
      [layoutManager lineFragmentRectForGlyphAtIndex:v23 effectiveRange:&v27];
      v23 = v28 + v27;
      ++v21;
    }

    while (v28 + v27 < numberOfGlyphs);
  }

  if (fontCopy)
  {
    [(LPQuoteView *)self setFont:font];
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

- (void)setOverrideMaximumNumberOfLines:(int64_t)lines
{
  self->_overrideMaximumNumberOfLines = lines;
  effectiveMaximumNumberOfLines = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setMaximumNumberOfLines:effectiveMaximumNumberOfLines];

  effectiveMaximumNumberOfLines2 = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  textContainer2 = [(UITextView *)self->_coloredGlyphsView textContainer];
  [textContainer2 setMaximumNumberOfLines:effectiveMaximumNumberOfLines2];
}

- (UIEdgeInsets)effectiveInsetsWithoutQuoteIndicator
{
  padding = [(LPTextViewStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[LPQuoteView _lp_isLTR](self, "_lp_isLTR")}];
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
    image = [(UIImageView *)self->_quoteIndicatorView image];
    [image size];
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
    host = [(LPComponentView *)self host];
    v5 = [host linkHasMediaForComponentView:self];

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
      image = [(UIImageView *)self->_quoteIndicatorView image];
      [image size];
      v33 = MaxX - v36;
    }

    image2 = [(UIImageView *)self->_quoteIndicatorView image];
    [image2 size];
    v39 = v38;

    image3 = [(UIImageView *)self->_quoteIndicatorView image];
    [image3 size];
    v42 = v41;

    [(UIImageView *)self->_quoteIndicatorView setFrame:v33, v28 + v30, v39, v42];
  }

  [(LPQuoteView *)self updateExclusionRects];
  [(UITextView *)self->_textView bounds];

  [(LPQuoteView *)self updateEffectiveFontForSize:v43, v44];
}

- (void)updateExclusionRects
{
  host = [(LPComponentView *)self host];
  v3 = [host layoutExclusionsForView:self->_textView];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setExclusionPaths:v3];

  if (self->_coloredGlyphsView)
  {
    host2 = [(LPComponentView *)self host];
    v5 = [host2 layoutExclusionsForView:self->_coloredGlyphsView];
    textContainer2 = [(UITextView *)self->_coloredGlyphsView textContainer];
    [textContainer2 setExclusionPaths:v5];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  textView = self->_textView;
  if (textView)
  {
    font = [(UITextView *)textView font];
    v6 = [fontCopy isEqual:font];

    if ((v6 & 1) == 0)
    {
      [(UITextView *)self->_textView setFont:fontCopy];
      effectiveAttributedString = [(LPQuoteView *)self effectiveAttributedString];
      [(LPQuoteView *)self applyAttributedString:effectiveAttributedString];
    }
  }
}

- (void)updateEffectiveFontForSize:(CGSize)size
{
  width = size.width;
  v5 = [(LPQuotedTextViewStyle *)self->_style maximumLinesToConsiderShort:size.width];
  font = [(LPTextViewStyle *)self->_style font];
  v10 = font;
  if (v5)
  {
    v7 = [(LPQuoteView *)self computedNumberOfLinesWithFont:font forSize:width, 10000.0];
    maximumLinesToConsiderShort = [(LPQuotedTextViewStyle *)self->_style maximumLinesToConsiderShort];

    style = self->_style;
    if (v7 <= maximumLinesToConsiderShort)
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
    [(LPQuoteView *)self setFont:font];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

  font = [(UITextView *)self->_textView font];
  [(LPQuoteView *)self updateEffectiveFontForSize:v14, v15];
  [(UITextView *)self->_textView sizeThatFits:v14, v15];
  v21 = v20;
  v23 = v22;
  [(LPQuoteView *)self setFont:font];

  v24 = ceil(v21) - (-v13 - v9);
  v25 = ceil(v18 + v23) - (-v11 - v7);
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)setEmphasizedTextExpression:(id)expression
{
  objc_storeStrong(&self->_emphasizedTextExpression, expression);
  if (self->_textView)
  {
    effectiveAttributedString = [(LPQuoteView *)self effectiveAttributedString];
    [(LPQuoteView *)self applyAttributedString:?];
  }
}

- (void)tintColorDidChange
{
  if (self->_textView)
  {
    effectiveAttributedString = [(LPQuoteView *)self effectiveAttributedString];
    [(LPQuoteView *)self applyAttributedString:?];
  }
}

- (id)_createTextView
{
  _lp_createInertTextView = [MEMORY[0x1E69DD168] _lp_createInertTextView];
  [_lp_createInertTextView setEditable:0];
  [_lp_createInertTextView setSelectable:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [_lp_createInertTextView setBackgroundColor:clearColor];

  [_lp_createInertTextView setScrollEnabled:0];
  [_lp_createInertTextView setShowsVerticalScrollIndicator:0];
  [_lp_createInertTextView setShowsHorizontalScrollIndicator:0];
  [_lp_createInertTextView setBounces:0];
  effectiveMaximumNumberOfLines = [(LPQuoteView *)self effectiveMaximumNumberOfLines];
  textContainer = [_lp_createInertTextView textContainer];
  [textContainer setMaximumNumberOfLines:effectiveMaximumNumberOfLines];

  [_lp_createInertTextView setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  textContainer2 = [_lp_createInertTextView textContainer];
  [textContainer2 setHeightTracksTextView:1];

  textContainer3 = [_lp_createInertTextView textContainer];
  [textContainer3 setLineFragmentPadding:0.0];

  textContainer4 = [_lp_createInertTextView textContainer];
  [textContainer4 setLineBreakMode:4];

  return _lp_createInertTextView;
}

- (void)applyAttributedString:(id)string
{
  stringCopy = string;
  [(UITextView *)self->_textView _lp_setAttributedString:?];
  if (self->_coloredGlyphsView)
  {
    v4 = [LPTextView attributedStringHidingNonColoredRanges:stringCopy];
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
  selfCopy = self;
  v15[1] = *MEMORY[0x1E69E9840];
  _lp_getAttributedString = [(UITextView *)self->_textView _lp_getAttributedString];
  v4 = [_lp_getAttributedString mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v5 setLineBreakMode:0xFFFFLL];
  v14 = *MEMORY[0x1E69DB688];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v4 addAttributes:v6 range:{0, objc_msgSend(v4, "length") - 1}];

  textView = [(LPQuoteView *)selfCopy textView];
  [textView bounds];
  [v4 boundingRectWithSize:1 options:0 context:{v8, 1.79769313e308}];
  v10 = v9;

  textView2 = [(LPQuoteView *)selfCopy textView];
  [textView2 bounds];
  LOBYTE(selfCopy) = v10 > v12;

  return selfCopy;
}

@end