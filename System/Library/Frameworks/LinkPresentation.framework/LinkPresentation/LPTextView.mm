@interface LPTextView
+ (id)attributedString:(id)string resolvedAgainstStyle:(id)style withEmphasizedTextExpression:(id)expression tintColor:(id)color lineBreakMode:(int64_t)mode usesVibrancy:(BOOL)vibrancy forLTR:(BOOL)r withFont:(id)self0 userInterfaceStyle:(int64_t)self1;
+ (id)attributedStringHidingNonColoredRanges:(id)ranges;
- (BOOL)_lp_isLTR;
- (BOOL)_needsColoredGlyphsView;
- (BOOL)textIsTruncated;
- (CGRect)textRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPTextView)initWithHost:(id)host text:(id)text style:(id)style;
- (UIEdgeInsets)effectiveInsets;
- (double)firstLineLeading;
- (double)lastLineDescent;
- (id)_createLabel;
- (id)effectiveAttributedString;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (int64_t)computedNumberOfLines;
- (int64_t)effectiveMaximumNumberOfLines;
- (void)_buildSubviewsIfNeeded;
- (void)_createTextViewWithAttributedString:(id)string;
- (void)_updateAttributedString;
- (void)_updateEffectViewEffect;
- (void)_userInterfaceStyleDidChange;
- (void)applyAttributedString:(id)string;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEmphasizedTextExpression:(id)expression;
- (void)setFont:(id)font;
- (void)setOverrideMaximumNumberOfLines:(int64_t)lines;
@end

@implementation LPTextView

- (LPTextView)initWithHost:(id)host text:(id)text style:(id)style
{
  v24[1] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  textCopy = text;
  styleCopy = style;
  v23.receiver = self;
  v23.super_class = LPTextView;
  v11 = [(LPComponentView *)&v23 initWithHost:hostCopy];
  if (v11)
  {
    v12 = truncatedAttributedStringAtMaximumMetadataLength(textCopy);
    attributedString = v11->_attributedString;
    v11->_attributedString = v12;

    v14 = [styleCopy adjustedForString:v11->_attributedString];
    style = v11->_style;
    v11->_style = v14;

    font = [(LPTextViewStyle *)v11->_style font];
    font = v11->_font;
    v11->_font = font;

    v18 = objc_opt_self();
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [(LPTextView *)v11 registerForTraitChanges:v19 withHandler:&__block_literal_global_16];

    v21 = v11;
  }

  return v11;
}

- (void)_buildSubviewsIfNeeded
{
  if (!self->_textView)
  {
    effectiveAttributedString = [(LPTextView *)self effectiveAttributedString];
    [(LPTextView *)self _createTextViewWithAttributedString:effectiveAttributedString];

    compositingFilter = [(LPTextViewStyle *)self->_style compositingFilter];

    if (compositingFilter)
    {
      compositingFilter2 = [(LPTextViewStyle *)self->_style compositingFilter];
      layer = [(UILabel *)self->_textView layer];
      [layer setCompositingFilter:compositingFilter2];
    }

    if (+[LPSettings showDebugIndicators])
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      cGColor = [greenColor CGColor];
      layer2 = [(UILabel *)self->_textView layer];
      [layer2 setBorderColor:cGColor];

      layer3 = [(UILabel *)self->_textView layer];
      [layer3 setBorderWidth:0.5];
    }

    [(UIFont *)self->_font ascender];
    self->_ascender = v11;
    [(UIFont *)self->_font descender];
    self->_descender = v12;
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
  v9.super_class = LPTextView;
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
    v4 = v6 != 0;
  }

  _lp_prefersDarkInterface = [(UIView *)self _lp_prefersDarkInterface];
  attributedString = self->_attributedString;
  style = self->_style;
  emphasizedTextExpression = self->_emphasizedTextExpression;
  _lp_tintColor = [(UIView *)self _lp_tintColor];
  LOBYTE(v14) = [(LPTextView *)self _lp_isLTR];
  v12 = [LPTextView attributedString:attributedString resolvedAgainstStyle:style withEmphasizedTextExpression:emphasizedTextExpression tintColor:_lp_tintColor lineBreakMode:4 usesVibrancy:v4 forLTR:v14 withFont:self->_font userInterfaceStyle:_lp_prefersDarkInterface];

  return v12;
}

+ (id)attributedString:(id)string resolvedAgainstStyle:(id)style withEmphasizedTextExpression:(id)expression tintColor:(id)color lineBreakMode:(int64_t)mode usesVibrancy:(BOOL)vibrancy forLTR:(BOOL)r withFont:(id)self0 userInterfaceStyle:(int64_t)self1
{
  v105[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  styleCopy = style;
  expressionCopy = expression;
  colorCopy = color;
  fontCopy = font;
  textAlignment = [styleCopy textAlignment];
  v18 = 2;
  if (r)
  {
    v18 = 0;
  }

  v19 = 2;
  if (!r)
  {
    v19 = 0;
  }

  if (textAlignment != 1)
  {
    v19 = textAlignment == 2;
  }

  if (textAlignment)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
  v22 = [defaultParagraphStyle mutableCopy];

  v74 = v22;
  [v22 setAlignment:v20];
  [v22 setLineBreakMode:mode];
  [styleCopy hyphenationFactor];
  [v22 setHyphenationFactor:?];
  paragraphSpacing = [styleCopy paragraphSpacing];
  [paragraphSpacing value];
  [v22 setParagraphSpacing:?];

  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke;
  v97[3] = &unk_1E7A36B80;
  v24 = styleCopy;
  v98 = v24;
  vibrancyCopy = vibrancy;
  v25 = __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke(v97);
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__4;
  v95 = __Block_byref_object_dispose__4;
  v26 = MEMORY[0x1E695DF90];
  v27 = *MEMORY[0x1E69DB650];
  v104[0] = *MEMORY[0x1E69DB648];
  v104[1] = v27;
  v70 = v27;
  v105[0] = fontCopy;
  v105[1] = v25;
  v72 = v25;
  v104[2] = *MEMORY[0x1E69DB688];
  v105[2] = v22;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
  v96 = [v26 dictionaryWithDictionary:v28];

  v29 = [stringCopy length];
  v30 = [stringCopy attribute:@"LPOverrideThemeAttribute" atIndex:0 longestEffectiveRange:0 inRange:{0, v29}];
  LODWORD(v28) = [v30 BOOLValue];

  if (v28)
  {
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x2020000000;
    v90 = 0;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_13;
    v85[3] = &unk_1E7A36BA8;
    v87 = v89;
    v86 = stringCopy;
    v88 = &v91;
    [v86 enumerateAttributesInRange:0 options:v29 usingBlock:{0, v85}];

    _Block_object_dispose(v89, 8);
  }

  v71 = [stringCopy mutableCopy];
  shadow = [v24 shadow];

  if (shadow)
  {
    if (interfaceStyle == 1)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v33 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v32];
    shadow2 = [v24 shadow];
    v35 = [shadow2 valueForAppearance:v33];

    if (v35)
    {
      v36 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
      offset = [v35 offset];
      [offset asSize];
      [v36 setShadowOffset:?];

      [v35 radius];
      [v36 setShadowBlurRadius:?];
      color = [v35 color];
      [v36 setShadowColor:color];

      [v71 addAttribute:*MEMORY[0x1E69DB6A8] value:v36 range:{0, v29}];
    }
  }

  v39 = *MEMORY[0x1E69DB5F8];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_17;
  v82[3] = &unk_1E7A36BD0;
  v40 = fontCopy;
  v83 = v40;
  v41 = v71;
  v84 = v41;
  [stringCopy enumerateAttribute:v39 inRange:0 options:v29 usingBlock:{0, v82}];
  [v41 addAttributes:v92[5] range:{0, v29}];
  if (expressionCopy)
  {
    string = [stringCopy string];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_2;
    v79[3] = &unk_1E7A36BF8;
    v80 = v41;
    v81 = colorCopy;
    [expressionCopy enumerateMatchesInString:string options:0 range:0 usingBlock:{v29, v79}];
  }

  leadingGlyph = [v24 leadingGlyph];
  image = [leadingGlyph image];

  if (image)
  {
    platformImage = [image platformImage];
    v45 = MEMORY[0x1E69DCAD8];
    [v40 pointSize];
    v47 = [v45 configurationWithPointSize:objc_msgSend(v40 weight:{"_lp_symbolWeight"), v46}];
    v48 = [platformImage imageWithConfiguration:v47];
    v49 = [v48 imageWithRenderingMode:2];

    v50 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v50 setImage:v49];
    v51 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v50];
    v52 = [v51 mutableCopy];

    v53 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v52 appendAttributedString:v53];

    v102 = v70;
    leadingGlyph2 = [v24 leadingGlyph];
    [leadingGlyph2 opacity];
    v55 = [v72 colorWithAlphaComponent:?];
    v103 = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    [v52 addAttributes:v56 range:{0, 2}];

    [v41 insertAttributedString:v52 atIndex:0];
  }

  trailingGlyph = [v24 trailingGlyph];
  image2 = [trailingGlyph image];

  if (image2)
  {
    platformImage2 = [image2 platformImage];
    v60 = [platformImage2 imageWithRenderingMode:2];

    v61 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v61 setImage:v60];
    v62 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v63 = [v62 mutableCopy];

    v64 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v61];
    [v63 appendAttributedString:v64];

    v100 = v70;
    trailingGlyph2 = [v24 trailingGlyph];
    color2 = [trailingGlyph2 color];
    v101 = color2;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    [v63 addAttributes:v67 range:{0, 2}];

    [v41 appendAttributedString:v63];
  }

  v68 = v41;

  _Block_object_dispose(&v91, 8);

  return v68;
}

id __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shadow];

  if (v2 || *(a1 + 40) != 1)
  {
    v3 = [*(a1 + 32) color];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

void __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_13(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = LPLogChannelUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_13_cold_1(a1, v11);
    }

    abort();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(*(*(a1 + 48) + 8) + 40) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v8];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v10 forKeyedSubscript:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_17(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v19 = v7;
    v8 = [v7 image];
    if ([v8 _lp_isSymbolImage])
    {
      v9 = [v8 symbolConfiguration];
      v10 = MEMORY[0x1E69DCAD8];
      [*(a1 + 32) pointSize];
      v12 = [v10 configurationWithPointSize:objc_msgSend(*(a1 + 32) weight:"_lp_symbolWeight") scale:{1, v11}];
      if (!v9 || ([v9 configurationByApplyingConfiguration:v12], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "configurationByApplyingConfiguration:", v9), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToConfiguration:", v14), v14, v13, (v15 & 1) != 0))
      {
        v16 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v17 = [v8 _lp_imageByApplyingSymbolConfiguration:v12];
        [v16 setImage:v17];

        v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
        [*(a1 + 40) replaceCharactersInRange:a3 withAttributedString:{a4, v18}];
      }
    }

    v7 = v19;
  }
}

void __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = *MEMORY[0x1E69DB650];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 range];
  [v5 addAttributes:v6 range:{v7, v8}];
}

+ (id)attributedStringHidingNonColoredRanges:(id)ranges
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [ranges mutableCopy];
  v4 = [v3 length];
  v5 = [MEMORY[0x1E695DFA8] set];
  [v3 fixAttributesInRange:{0, v4}];
  v6 = *MEMORY[0x1E69DB648];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__LPTextView_attributedStringHidingNonColoredRanges___block_invoke;
  v22[3] = &unk_1E7A36C20;
  v7 = v5;
  v23 = v7;
  [v3 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v22}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = *v19;
    v11 = *MEMORY[0x1E69DB650];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        rangeValue = [v13 rangeValue];
        [v3 addAttribute:v11 value:clearColor range:{rangeValue, v16}];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  return v3;
}

void __53__LPTextView_attributedStringHidingNonColoredRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v7 = [v11 fontDescriptor];
  v8 = [v7 symbolicTraits];

  if ((v8 & 0x2000) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v9 addObject:v10];
  }
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

- (BOOL)textIsTruncated
{
  selfCopy = self;
  v13[1] = *MEMORY[0x1E69E9840];
  _lp_getAttributedString = [(UILabel *)self->_textView _lp_getAttributedString];
  v4 = [_lp_getAttributedString mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v5 setLineBreakMode:0xFFFFLL];
  v12 = *MEMORY[0x1E69DB688];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v4 addAttributes:v6 range:{0, objc_msgSend(v4, "length") - 1}];

  [(LPTextView *)selfCopy textRect];
  [v4 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  v9 = v8;
  [(LPTextView *)selfCopy textRect];
  LOBYTE(selfCopy) = v9 > v10;

  return selfCopy;
}

- (int64_t)computedNumberOfLines
{
  [(LPTextView *)self _buildSubviewsIfNeeded];
  textView = self->_textView;

  return [(UILabel *)textView _measuredNumberOfLines];
}

- (void)setOverrideMaximumNumberOfLines:(int64_t)lines
{
  self->_overrideMaximumNumberOfLines = lines;
  [(UILabel *)self->_textView setNumberOfLines:[(LPTextView *)self effectiveMaximumNumberOfLines]];
  effectiveMaximumNumberOfLines = [(LPTextView *)self effectiveMaximumNumberOfLines];
  coloredGlyphsView = self->_coloredGlyphsView;

  [(UILabel *)coloredGlyphsView setNumberOfLines:effectiveMaximumNumberOfLines];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(UIFont *)self->_font ascender];
    self->_ascender = v5;
    [(UIFont *)self->_font descender];
    self->_descender = v6;
    [(LPTextView *)self _updateAttributedString];
  }
}

- (UIEdgeInsets)effectiveInsets
{
  padding = [(LPTextViewStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[LPTextView _lp_isLTR](self, "_lp_isLTR")}];
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

- (CGRect)textRect
{
  [(LPTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(LPTextView *)self effectiveInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (int64_t)effectiveMaximumNumberOfLines
{
  overrideMaximumNumberOfLines = self->_overrideMaximumNumberOfLines;
  if (!overrideMaximumNumberOfLines)
  {
    return [(LPTextViewStyle *)self->_style maximumLines];
  }

  return overrideMaximumNumberOfLines;
}

- (void)layoutComponentView
{
  [(LPTextView *)self _buildSubviewsIfNeeded];
  [(LPTextView *)self textRect];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  effectView = self->_effectView;
  if (effectView)
  {
    [(UIVisualEffectView *)effectView setFrame:v3, v4, v5, v6];
    [(UILabel *)self->_coloredGlyphsView setFrame:v7, v8, v9, v10];
    v7 = 0.0;
    v8 = 0.0;
  }

  textView = self->_textView;

  [(UILabel *)textView setFrame:v7, v8, v9, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(LPTextView *)self _buildSubviewsIfNeeded];
  [(LPTextView *)self effectiveInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UILabel *)self->_textView sizeThatFits:width - (v8 + v12), height - (v6 + v10)];
  v16 = ceil(v14) - (-v13 - v9);
  v17 = ceil(v15) - (-v11 - v7);
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_updateAttributedString
{
  effectiveAttributedString = [(LPTextView *)self effectiveAttributedString];
  [(LPTextView *)self applyAttributedString:?];
}

- (void)setEmphasizedTextExpression:(id)expression
{
  objc_storeStrong(&self->_emphasizedTextExpression, expression);

  [(LPTextView *)self _updateAttributedString];
}

- (void)_userInterfaceStyleDidChange
{
  if (self->_effectView)
  {
    [(LPTextView *)self _updateEffectViewEffect];
  }

  [(LPTextView *)self _updateAttributedString];
}

- (id)_createLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setNumberOfLines:{-[LPTextView effectiveMaximumNumberOfLines](self, "effectiveMaximumNumberOfLines")}];
  [v3 setBaselineAdjustment:2];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  [v3 setPreferredVibrancy:0];

  return v3;
}

- (BOOL)_needsColoredGlyphsView
{
  host = [(LPComponentView *)self host];
  v4 = [host allowsVibrancyForComponentView:self];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  color = [(LPTextViewStyle *)self->_style color];
  v6 = vibrancyEffectStyleForColor(color);

  if (v6)
  {
    v7 = [v6 integerValue] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateEffectViewEffect
{
  host = [(LPComponentView *)self host];
  v3 = [host allowsVibrancyForComponentView:self];

  if (v3)
  {
    color = [(LPTextViewStyle *)self->_style color];
    v11 = vibrancyEffectStyleForColor(color);

    v5 = v11;
    if (v11)
    {
      v6 = MEMORY[0x1E69DC730];
      host2 = [(LPComponentView *)self host];
      v8 = [v6 effectWithStyle:{objc_msgSend(host2, "blurEffectStyleBehindComponentView:", self)}];

      v9 = [MEMORY[0x1E69DD248] effectForBlurEffect:v8 style:{objc_msgSend(v11, "integerValue")}];
      [(UIVisualEffectView *)self->_effectView setEffect:v9];

      v5 = v11;
    }
  }
}

- (void)_createTextViewWithAttributedString:(id)string
{
  stringCopy = string;
  _createLabel = [(LPTextView *)self _createLabel];
  textView = self->_textView;
  self->_textView = _createLabel;

  host = [(LPComponentView *)self host];
  v7 = [host allowsVibrancyForComponentView:self];

  if (v7)
  {
    color = [(LPTextViewStyle *)self->_style color];
    v9 = vibrancyEffectStyleForColor(color);

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DD298]);
      effectView = self->_effectView;
      self->_effectView = v10;

      [(LPTextView *)self _updateEffectViewEffect];
      contentView = [(UIVisualEffectView *)self->_effectView contentView];
      [contentView addSubview:self->_textView];

      [(LPTextView *)self addSubview:self->_effectView];
      if ([(LPTextView *)self _needsColoredGlyphsView])
      {
        _createLabel2 = [(LPTextView *)self _createLabel];
        coloredGlyphsView = self->_coloredGlyphsView;
        self->_coloredGlyphsView = _createLabel2;

        [(LPTextView *)self addSubview:self->_coloredGlyphsView];
      }
    }
  }

  if (!self->_effectView)
  {
    [(LPTextView *)self addSubview:self->_textView];
  }

  [(LPTextView *)self applyAttributedString:stringCopy];
}

- (void)applyAttributedString:(id)string
{
  stringCopy = string;
  [(UILabel *)self->_textView setAttributedText:?];
  if (self->_coloredGlyphsView)
  {
    v4 = [LPTextView attributedStringHidingNonColoredRanges:stringCopy];
    [(UILabel *)self->_coloredGlyphsView setAttributedText:v4];
  }
}

- (id)firstBaselineAnchor
{
  [(LPTextView *)self _buildSubviewsIfNeeded];
  textView = self->_textView;

  return [(UILabel *)textView firstBaselineAnchor];
}

- (id)lastBaselineAnchor
{
  [(LPTextView *)self _buildSubviewsIfNeeded];
  textView = self->_textView;

  return [(UILabel *)textView lastBaselineAnchor];
}

void __153__LPTextView_attributedString_resolvedAgainstStyle_withEmphasizedTextExpression_tintColor_lineBreakMode_usesVibrancy_forLTR_withFont_userInterfaceStyle___block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "All the attributes in the attributed string must span the entire string range: %@", &v3, 0xCu);
}

@end