@interface MKMultiPartLabel
+ (id)_formattedStringsCache;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MKMultiPartLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)textInset;
- (id)_addDefaultAttributesToAttributedString:(id)a3;
- (id)_attributedAdjustedMultiPartStringFromString:(id)a3;
- (id)_textAttributes;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)lineBreakMode;
- (unint64_t)numberOfLines;
- (void)_eliminateUnnecessarySeparators;
- (void)_setupTextView;
- (void)_updateColorsForCurrentState;
- (void)_updateStrings;
- (void)_updateTextViewTextAndInvalidateLayout:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4;
- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4;
- (void)setFont:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedTextColor:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setMultiPartString:(id)a3;
- (void)setNumberOfLines:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation MKMultiPartLabel

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UITextView *)self->_textView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  if (self->_multiPartString && self->_data)
  {
    v4.receiver = self;
    v4.super_class = MKMultiPartLabel;
    [(MKMultiPartLabel *)&v4 intrinsicContentSize];
  }

  else
  {
    v2 = *MEMORY[0x1E695F060];
    v3 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  [MKMultiPartLabel setContentHuggingPriority:sel_setContentHuggingPriority_forAxis_ forAxis:?];
  *&v7 = a3;
  [(UITextView *)self->_textView setContentHuggingPriority:a4 forAxis:v7];
}

- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  [MKMultiPartLabel setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  *&v7 = a3;
  [(UITextView *)self->_textView setContentCompressionResistancePriority:a4 forAxis:v7];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  v5 = [(MKMultiPartLabel *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self->_textView)
  {
    v6 = self;

    v5 = v6;
  }

  return v5;
}

- (UIEdgeInsets)textInset
{
  [(UITextView *)self->_textView textContainerInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_eliminateUnnecessarySeparators
{
  v2 = self;
  v61 = *MEMORY[0x1E69E9840];
  v54 = [(UITextView *)self->_textView textLayoutManager];
  v3 = [(UITextView *)v2->_textView _mk_layoutFragments];
  v4 = [(MKMultiPartLabel *)v2 data];
  v5 = [v4 currentSeparatorIndex];

  v6 = [(MKMultiPartLabel *)v2 data];
  v7 = [v6 separators];
  v8 = [v7 count];

  if (v5 < v8)
  {
    v49 = v3;
    v50 = v2;
    do
    {
      v9 = [(MKMultiPartLabel *)v2 data];
      v10 = [v9 separators];
      v11 = [v10 objectAtIndexedSubscript:v5];

      [v11 range];
      if (!v12 || [v11 range] == 0x7FFFFFFFFFFFFFFFLL)
      {

        goto LABEL_27;
      }

      v13 = [v54 documentRange];
      v14 = [v13 location];
      v15 = [v54 locationFromLocation:v14 withOffset:{objc_msgSend(v11, "range")}];

      v16 = [v54 documentRange];
      v17 = [v16 location];
      v18 = [v11 range];
      v20 = [v54 locationFromLocation:v17 withOffset:v19 + v18 - 1];

      v55 = v15;
      v21 = _mk_layoutFragmentForLocationInFragments(v15, v3);
      v51 = _mk_layoutFragmentForLocationInFragments(v20, v3);
      v52 = v21;
      if (v21 != v51)
      {
        v22 = [(MKMultiPartLabel *)v2 data];
        v23 = [v22 replaceSeparatorAtIndex:v5 withString:@"\n"];

        if (v23)
        {
          v24 = [(MKMultiPartLabel *)v2 data];
          v25 = [v24 attributedString];
          [(MKMultiPartLabel *)v2 _updateTextViewTextAndInvalidateLayout:v25];
        }

        ++v5;
        v26 = 1;
        goto LABEL_26;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v3;
      v27 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v27)
      {
        v26 = 0;
        goto LABEL_25;
      }

      v28 = v27;
      v29 = *v57;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v56 + 1) + 8 * i);
          v32 = [v31 rangeInElement];
          v33 = [v32 location];
          v34 = [v33 compare:v55];

          v35 = [v31 rangeInElement];
          v36 = [v35 endLocation];
          v37 = [v54 locationFromLocation:v36 withOffset:-1];

          v38 = [v37 compare:v20];
          if (!v34)
          {
            v2 = v50;
            v39 = [(MKMultiPartLabel *)v50 data];
            v40 = [v39 replaceSeparatorAtIndex:v5 withString:&stru_1F15B23C0];

            if (v40)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (!v38)
          {
            v2 = v50;
            v46 = [(MKMultiPartLabel *)v50 data];
            v47 = [v46 replaceSeparatorAtIndex:v5 withString:@"\n"];

            if (v47)
            {
LABEL_22:
              v41 = [(MKMultiPartLabel *)v2 data];
              v42 = [v41 attributedString];
              [(MKMultiPartLabel *)v2 _updateTextViewTextAndInvalidateLayout:v42];
            }

LABEL_23:
            ++v5;

            v26 = 1;
            goto LABEL_24;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      v2 = v50;
LABEL_24:
      v3 = v49;
LABEL_25:

LABEL_26:
      if (v26)
      {
        break;
      }

LABEL_27:
      ++v5;
      v43 = [(MKMultiPartLabel *)v2 data];
      v44 = [v43 separators];
      v45 = [v44 count];
    }

    while (v5 < v45);
  }

  v48 = [(MKMultiPartLabel *)v2 data];
  [v48 setCurrentSeparatorIndex:v5];
}

- (void)layoutSubviews
{
  p_previousBounds = &self->_previousBounds;
  [(MKMultiPartLabel *)self bounds];
  v37.origin.x = v4;
  v37.origin.y = v5;
  v37.size.width = v6;
  v37.size.height = v7;
  if (!CGRectEqualToRect(*p_previousBounds, v37))
  {
    [(MKMultiPartLabel *)self bounds];
    p_previousBounds->origin.x = v8;
    p_previousBounds->origin.y = v9;
    p_previousBounds->size.width = v10;
    p_previousBounds->size.height = v11;
    [(UITextView *)self->_textView setAttributedText:0];
    v12 = [(MKMultiPartLabel *)self data];
    [v12 reset];

    v13 = [(MKMultiPartLabel *)self data];
    v14 = [v13 attributedString];
    [(MKMultiPartLabel *)self _updateTextViewTextAndInvalidateLayout:v14];
  }

  v36.receiver = self;
  v36.super_class = MKMultiPartLabel;
  [(MKMultiPartLabel *)&v36 layoutSubviews];
  [(MKMultiPartLabel *)self bounds];
  if (v15 != 0.0)
  {
    [(MKMultiPartLabel *)self bounds];
    if (v16 != 0.0 && [(MKMultiPartLabel *)self numberOfLines]!= 1)
    {
      v17 = [(MKMultiPartLabel *)self data];
      v18 = [(_MKMultiPartLabelCacheKey *)v17 components];
      if ([v18 count] == 1)
      {
LABEL_14:

        return;
      }

      v19 = [(MKMultiPartLabel *)self data];
      v20 = [v19 attributedString];
      v21 = [v20 length];

      if (!v21)
      {
        return;
      }

      v22 = [_MKMultiPartLabelCacheKey alloc];
      v23 = [(_MKMultiPartLabelMetrics *)self->_data originalAttributedString];
      [(MKMultiPartLabel *)self bounds];
      v17 = [(_MKMultiPartLabelCacheKey *)v22 initWithAttributedString:v23 size:v24, v25];

      v18 = [objc_opt_class() _formattedStringsCache];
      v26 = [v18 objectForKey:v17];
      if (v26)
      {
        [(UITextView *)self->_textView setAttributedText:v26];
        v27 = [(MKMultiPartLabel *)self data];
        v28 = [v27 separators];
        v29 = [v28 count];
        v30 = [(MKMultiPartLabel *)self data];
        [v30 setCurrentSeparatorIndex:v29];
      }

      else
      {
        [(MKMultiPartLabel *)self _eliminateUnnecessarySeparators];
        v31 = [(MKMultiPartLabel *)self data];
        v32 = [v31 currentSeparatorIndex];
        v33 = [(MKMultiPartLabel *)self data];
        v34 = [v33 separators];
        v35 = [v34 count];

        if (v32 < v35)
        {
LABEL_13:

          goto LABEL_14;
        }

        v27 = [(MKMultiPartLabel *)self data];
        v28 = [v27 attributedString];
        [v18 setObject:v28 forKey:v17];
      }

      goto LABEL_13;
    }
  }
}

- (id)_addDefaultAttributesToAttributedString:(id)a3
{
  v4 = MEMORY[0x1E696AD40];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 string];
  v8 = [(MKMultiPartLabel *)self _textAttributes];
  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = [v5 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MKMultiPartLabel__addDefaultAttributesToAttributedString___block_invoke;
  v13[3] = &unk_1E76C9A78;
  v11 = v9;
  v14 = v11;
  [v5 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];

  return v11;
}

- (id)_attributedAdjustedMultiPartStringFromString:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = [v4 components];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v5 components];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(MKMultiPartLabel *)self _addDefaultAttributesToAttributedString:*(*(&v30 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v15 = MEMORY[0x1E695DF70];
    v16 = [v5 separators];
    v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [v5 separators];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(MKMultiPartLabel *)self _addDefaultAttributesToAttributedString:*(*(&v26 + 1) + 8 * j)];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    v24 = [[MKMultiPartAttributedString alloc] initWithComponents:v8 separators:v17];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_updateTextViewTextAndInvalidateLayout:(id)a3
{
  v16 = a3;
  if (v16)
  {
    v3 = [(UITextView *)self->_textView attributedText];
    if ([v16 isEqual:v3])
    {
LABEL_16:

      goto LABEL_17;
    }

    if ([v16 length])
    {

      goto LABEL_9;
    }
  }

  else if ([0 length])
  {
    goto LABEL_9;
  }

  v5 = [(UITextView *)self->_textView attributedText];
  v6 = [v5 length];

  if (v16)
  {
  }

  if (v6)
  {
LABEL_9:
    v7 = [(UITextView *)self->_textView attributedText];
    v8 = [v7 string];

    [(UITextView *)self->_textView setAttributedText:v16];
    v9 = [(NSDictionary *)self->_cachedTextAttributes mutableCopy];
    [v9 removeObjectForKey:*MEMORY[0x1E69DB650]];
    v10 = [v16 string];
    v3 = v8;
    v11 = v10;
    if (v3 | v11 && (v12 = [v3 isEqual:v11], v11, v3, !v12))
    {
    }

    else
    {
      v13 = [(NSDictionary *)self->_lastAppliedNonColorAttributes isEqualToDictionary:v9];

      if (v13)
      {
        goto LABEL_15;
      }
    }

    v14 = [v9 copy];
    lastAppliedNonColorAttributes = self->_lastAppliedNonColorAttributes;
    self->_lastAppliedNonColorAttributes = v14;

    [(UIView *)self _mapkit_setNeedsLayout];
    [(MKMultiPartLabel *)self invalidateIntrinsicContentSize];
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_updateStrings
{
  v6 = [(MKMultiPartLabel *)self _attributedAdjustedMultiPartStringFromString:self->_multiPartString];
  if (v6)
  {
    v3 = [[_MKMultiPartLabelMetrics alloc] initWithMultiPartString:v6];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong(&self->_data, v3);
  if (v6)
  {
  }

  v4 = [(MKMultiPartLabel *)self data];
  v5 = [v4 attributedString];
  [(MKMultiPartLabel *)self _updateTextViewTextAndInvalidateLayout:v5];
}

- (void)setMultiPartString:(id)a3
{
  v5 = a3;
  multiPartString = self->_multiPartString;
  v11 = v5;
  v7 = multiPartString;
  v8 = v11;
  if (v11 | v7)
  {
    v9 = [v11 isEqual:v7];

    v8 = v11;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_multiPartString, a3);
      data = self->_data;
      self->_data = 0;

      [(MKMultiPartLabel *)self _updateStrings];
      v8 = v11;
    }
  }
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = [MKMultiPartAttributedString multiPartAttributedStringWithString:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(MKMultiPartLabel *)self setMultiPartString:v4];
}

- (id)_textAttributes
{
  cachedTextAttributes = self->_cachedTextAttributes;
  if (!cachedTextAttributes)
  {
    v4 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = [v4 mutableCopy];

    [v5 setAlignment:{-[MKMultiPartLabel textAlignment](self, "textAlignment")}];
    [v5 setLineBreakMode:{-[MKMultiPartLabel lineBreakMode](self, "lineBreakMode")}];
    v6 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:*MEMORY[0x1E69DB688]];
    v7 = [(UITextView *)self->_textView textColor];

    if (v7)
    {
      v8 = [(UITextView *)self->_textView textColor];
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v9 = [(MKMultiPartLabel *)self font];

    if (v9)
    {
      v10 = [(MKMultiPartLabel *)self font];
      [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    v11 = [v6 copy];
    v12 = self->_cachedTextAttributes;
    self->_cachedTextAttributes = v11;

    cachedTextAttributes = self->_cachedTextAttributes;
  }

  return cachedTextAttributes;
}

- (int64_t)lineBreakMode
{
  v2 = [(UITextView *)self->_textView textContainer];
  v3 = [v2 lineBreakMode];

  return v3;
}

- (void)setLineBreakMode:(int64_t)a3
{
  v5 = [(UITextView *)self->_textView textContainer];
  [v5 setLineBreakMode:a3];

  cachedTextAttributes = self->_cachedTextAttributes;
  self->_cachedTextAttributes = 0;

  [(MKMultiPartLabel *)self _updateStrings];
}

- (unint64_t)numberOfLines
{
  v2 = [(UITextView *)self->_textView textContainer];
  v3 = [v2 maximumNumberOfLines];

  return v3;
}

- (void)setNumberOfLines:(unint64_t)a3
{
  v4 = [(UITextView *)self->_textView textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (void)_updateColorsForCurrentState
{
  v3 = [(MKMultiPartLabel *)self highlightedTextColor];
  if (v3)
  {
    v4 = v3;
    if ([(MKMultiPartLabel *)self isHighlighted])
    {

LABEL_5:
      v6 = [(MKMultiPartLabel *)self highlightedTextColor];
      goto LABEL_7;
    }

    v5 = [(MKMultiPartLabel *)self isFocused];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [(MKMultiPartLabel *)self textColor];
LABEL_7:
  v7 = v6;
  [(UITextView *)self->_textView setTextColor:v6];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MKMultiPartLabel;
  [(MKMultiPartLabel *)&v12 didUpdateFocusInContext:v7 withAnimationCoordinator:a4];
  v8 = [v7 previouslyFocusedView];
  if (v8 == self || ([v7 nextFocusedView], v9 = objc_claimAutoreleasedReturnValue(), v4 = v9, v9 == self))
  {
    v10 = [v7 previouslyFocusedView];
    v11 = [v7 nextFocusedView];

    if (v8 != self)
    {
    }

    if (v10 != v11)
    {
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
    }
  }

  else
  {
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(MKMultiPartLabel *)self _updateColorsForCurrentState];
    cachedTextAttributes = self->_cachedTextAttributes;
    self->_cachedTextAttributes = 0;

    [(MKMultiPartLabel *)self _updateStrings];
  }
}

- (void)setHighlightedTextColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_highlightedTextColor != v5)
  {
    v9 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_highlightedTextColor, a3);
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
      v6 = v9;
    }
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (self->_textColor != v4)
  {
    obj = v4;
    if (([(UIColor *)v4 isEqual:?]& 1) == 0)
    {
      v5 = obj;
      if (!obj)
      {
        v6 = [MEMORY[0x1E69DCC10] _defaultAttributes];
        obja = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

        v5 = obja;
      }

      obj = v5;
      objc_storeStrong(&self->_textColor, v5);
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
    }

    v4 = obj;
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  if (self->_font != v4)
  {
    obj = v4;
    if (([(UIFont *)v4 isEqual:?]& 1) == 0)
    {
      v5 = obj;
      if (!obj)
      {
        v6 = [MEMORY[0x1E69DCC10] _defaultAttributes];
        obja = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

        v5 = obja;
      }

      obj = v5;
      objc_storeStrong(&self->_font, v5);
      [(UITextView *)self->_textView setFont:obj];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
    }

    v4 = obj;
  }
}

- (void)_setupTextView
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  textView = self->_textView;
  self->_textView = v4;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setScrollEnabled:0];
  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setSelectable:0];
  v6 = [(UITextView *)self->_textView textContainer];
  [v6 setLineFragmentPadding:0.0];

  v7 = [(UITextView *)self->_textView textContainer];
  [v7 setWidthTracksTextView:1];

  v8 = [(UITextView *)self->_textView textContainer];
  [v8 setHeightTracksTextView:1];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v9];

  [(MKMultiPartLabel *)self addSubview:self->_textView];
  [(MKMultiPartLabel *)self setTextAlignment:4];
  [(MKMultiPartLabel *)self setLineBreakMode:0];
  v10 = objc_alloc(MEMORY[0x1E69DCA40]);
  v11 = [v10 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  v12 = [MEMORY[0x1E69DCC10] _defaultAttributes];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

  v14 = [v11 scaledFontForFont:v13];
  [(MKMultiPartLabel *)self setFont:v14];

  v15 = [MEMORY[0x1E69DCC10] _defaultAttributes];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  [(MKMultiPartLabel *)self setTextColor:v16];
  v17 = [(MKMultiPartLabel *)self textColor];
  [(UITextView *)self->_textView setTextColor:v17];

  v27 = MEMORY[0x1E696ACD8];
  v31 = [(UITextView *)self->_textView topAnchor];
  v30 = [(MKMultiPartLabel *)self topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v32[0] = v29;
  v28 = [(UITextView *)self->_textView bottomAnchor];
  v18 = [(MKMultiPartLabel *)self bottomAnchor];
  v19 = [v28 constraintEqualToAnchor:v18];
  v32[1] = v19;
  v20 = [(UITextView *)self->_textView leadingAnchor];
  v21 = [(MKMultiPartLabel *)self leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v32[2] = v22;
  v23 = [(UITextView *)self->_textView trailingAnchor];
  v24 = [(MKMultiPartLabel *)self trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v32[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v27 activateConstraints:v26];
}

- (MKMultiPartLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKMultiPartLabel;
  v3 = [(MKMultiPartLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKMultiPartLabel *)v3 _setupTextView];
  }

  return v4;
}

+ (id)_formattedStringsCache
{
  if (_formattedStringsCache_onceToken != -1)
  {
    dispatch_once(&_formattedStringsCache_onceToken, &__block_literal_global_23987);
  }

  v3 = _formattedStringsCache__cache;

  return v3;
}

void __42__MKMultiPartLabel__formattedStringsCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _formattedStringsCache__cache;
  _formattedStringsCache__cache = v0;
}

@end