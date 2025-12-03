@interface MKMultiPartLabel
+ (id)_formattedStringsCache;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MKMultiPartLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)textInset;
- (id)_addDefaultAttributesToAttributedString:(id)string;
- (id)_attributedAdjustedMultiPartStringFromString:(id)string;
- (id)_textAttributes;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)lineBreakMode;
- (unint64_t)numberOfLines;
- (void)_eliminateUnnecessarySeparators;
- (void)_setupTextView;
- (void)_updateColorsForCurrentState;
- (void)_updateStrings;
- (void)_updateTextViewTextAndInvalidateLayout:(id)layout;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis;
- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis;
- (void)setFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedTextColor:(id)color;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMultiPartString:(id)string;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation MKMultiPartLabel

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UITextView *)self->_textView sizeThatFits:fits.width, fits.height];
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

- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  [MKMultiPartLabel setContentHuggingPriority:sel_setContentHuggingPriority_forAxis_ forAxis:?];
  *&v7 = priority;
  [(UITextView *)self->_textView setContentHuggingPriority:axis forAxis:v7];
}

- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  [MKMultiPartLabel setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  *&v7 = priority;
  [(UITextView *)self->_textView setContentCompressionResistancePriority:axis forAxis:v7];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = MKMultiPartLabel;
  v5 = [(MKMultiPartLabel *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self->_textView)
  {
    selfCopy = self;

    v5 = selfCopy;
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
  selfCopy = self;
  v61 = *MEMORY[0x1E69E9840];
  textLayoutManager = [(UITextView *)self->_textView textLayoutManager];
  _mk_layoutFragments = [(UITextView *)selfCopy->_textView _mk_layoutFragments];
  data = [(MKMultiPartLabel *)selfCopy data];
  currentSeparatorIndex = [data currentSeparatorIndex];

  data2 = [(MKMultiPartLabel *)selfCopy data];
  separators = [data2 separators];
  v8 = [separators count];

  if (currentSeparatorIndex < v8)
  {
    v49 = _mk_layoutFragments;
    v50 = selfCopy;
    do
    {
      data3 = [(MKMultiPartLabel *)selfCopy data];
      separators2 = [data3 separators];
      v11 = [separators2 objectAtIndexedSubscript:currentSeparatorIndex];

      [v11 range];
      if (!v12 || [v11 range] == 0x7FFFFFFFFFFFFFFFLL)
      {

        goto LABEL_27;
      }

      documentRange = [textLayoutManager documentRange];
      location = [documentRange location];
      v15 = [textLayoutManager locationFromLocation:location withOffset:{objc_msgSend(v11, "range")}];

      documentRange2 = [textLayoutManager documentRange];
      location2 = [documentRange2 location];
      range = [v11 range];
      v20 = [textLayoutManager locationFromLocation:location2 withOffset:v19 + range - 1];

      v55 = v15;
      v21 = _mk_layoutFragmentForLocationInFragments(v15, _mk_layoutFragments);
      v51 = _mk_layoutFragmentForLocationInFragments(v20, _mk_layoutFragments);
      v52 = v21;
      if (v21 != v51)
      {
        data4 = [(MKMultiPartLabel *)selfCopy data];
        v23 = [data4 replaceSeparatorAtIndex:currentSeparatorIndex withString:@"\n"];

        if (v23)
        {
          data5 = [(MKMultiPartLabel *)selfCopy data];
          attributedString = [data5 attributedString];
          [(MKMultiPartLabel *)selfCopy _updateTextViewTextAndInvalidateLayout:attributedString];
        }

        ++currentSeparatorIndex;
        v26 = 1;
        goto LABEL_26;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = _mk_layoutFragments;
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
          rangeInElement = [v31 rangeInElement];
          location3 = [rangeInElement location];
          v34 = [location3 compare:v55];

          rangeInElement2 = [v31 rangeInElement];
          endLocation = [rangeInElement2 endLocation];
          v37 = [textLayoutManager locationFromLocation:endLocation withOffset:-1];

          v38 = [v37 compare:v20];
          if (!v34)
          {
            selfCopy = v50;
            data6 = [(MKMultiPartLabel *)v50 data];
            v40 = [data6 replaceSeparatorAtIndex:currentSeparatorIndex withString:&stru_1F15B23C0];

            if (v40)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (!v38)
          {
            selfCopy = v50;
            data7 = [(MKMultiPartLabel *)v50 data];
            v47 = [data7 replaceSeparatorAtIndex:currentSeparatorIndex withString:@"\n"];

            if (v47)
            {
LABEL_22:
              data8 = [(MKMultiPartLabel *)selfCopy data];
              attributedString2 = [data8 attributedString];
              [(MKMultiPartLabel *)selfCopy _updateTextViewTextAndInvalidateLayout:attributedString2];
            }

LABEL_23:
            ++currentSeparatorIndex;

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
      selfCopy = v50;
LABEL_24:
      _mk_layoutFragments = v49;
LABEL_25:

LABEL_26:
      if (v26)
      {
        break;
      }

LABEL_27:
      ++currentSeparatorIndex;
      data9 = [(MKMultiPartLabel *)selfCopy data];
      separators3 = [data9 separators];
      v45 = [separators3 count];
    }

    while (currentSeparatorIndex < v45);
  }

  data10 = [(MKMultiPartLabel *)selfCopy data];
  [data10 setCurrentSeparatorIndex:currentSeparatorIndex];
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
    data = [(MKMultiPartLabel *)self data];
    [data reset];

    data2 = [(MKMultiPartLabel *)self data];
    attributedString = [data2 attributedString];
    [(MKMultiPartLabel *)self _updateTextViewTextAndInvalidateLayout:attributedString];
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
      data3 = [(MKMultiPartLabel *)self data];
      components = [(_MKMultiPartLabelCacheKey *)data3 components];
      if ([components count] == 1)
      {
LABEL_14:

        return;
      }

      data4 = [(MKMultiPartLabel *)self data];
      attributedString2 = [data4 attributedString];
      v21 = [attributedString2 length];

      if (!v21)
      {
        return;
      }

      v22 = [_MKMultiPartLabelCacheKey alloc];
      originalAttributedString = [(_MKMultiPartLabelMetrics *)self->_data originalAttributedString];
      [(MKMultiPartLabel *)self bounds];
      data3 = [(_MKMultiPartLabelCacheKey *)v22 initWithAttributedString:originalAttributedString size:v24, v25];

      components = [objc_opt_class() _formattedStringsCache];
      v26 = [components objectForKey:data3];
      if (v26)
      {
        [(UITextView *)self->_textView setAttributedText:v26];
        data5 = [(MKMultiPartLabel *)self data];
        separators = [data5 separators];
        v29 = [separators count];
        data6 = [(MKMultiPartLabel *)self data];
        [data6 setCurrentSeparatorIndex:v29];
      }

      else
      {
        [(MKMultiPartLabel *)self _eliminateUnnecessarySeparators];
        data7 = [(MKMultiPartLabel *)self data];
        currentSeparatorIndex = [data7 currentSeparatorIndex];
        data8 = [(MKMultiPartLabel *)self data];
        separators2 = [data8 separators];
        v35 = [separators2 count];

        if (currentSeparatorIndex < v35)
        {
LABEL_13:

          goto LABEL_14;
        }

        data5 = [(MKMultiPartLabel *)self data];
        separators = [data5 attributedString];
        [components setObject:separators forKey:data3];
      }

      goto LABEL_13;
    }
  }
}

- (id)_addDefaultAttributesToAttributedString:(id)string
{
  v4 = MEMORY[0x1E696AD40];
  stringCopy = string;
  v6 = [v4 alloc];
  string = [stringCopy string];
  _textAttributes = [(MKMultiPartLabel *)self _textAttributes];
  v9 = [v6 initWithString:string attributes:_textAttributes];

  v10 = [stringCopy length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MKMultiPartLabel__addDefaultAttributesToAttributedString___block_invoke;
  v13[3] = &unk_1E76C9A78;
  v11 = v9;
  v14 = v11;
  [stringCopy enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];

  return v11;
}

- (id)_attributedAdjustedMultiPartStringFromString:(id)string
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = MEMORY[0x1E695DF70];
    components = [stringCopy components];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(components, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    components2 = [v5 components];
    v10 = [components2 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(components2);
          }

          v14 = [(MKMultiPartLabel *)self _addDefaultAttributesToAttributedString:*(*(&v30 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [components2 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v15 = MEMORY[0x1E695DF70];
    separators = [v5 separators];
    v17 = [v15 arrayWithCapacity:{objc_msgSend(separators, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    separators2 = [v5 separators];
    v19 = [separators2 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(separators2);
          }

          v23 = [(MKMultiPartLabel *)self _addDefaultAttributesToAttributedString:*(*(&v26 + 1) + 8 * j)];
          [v17 addObject:v23];
        }

        v20 = [separators2 countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (void)_updateTextViewTextAndInvalidateLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    attributedText = [(UITextView *)self->_textView attributedText];
    if ([layoutCopy isEqual:attributedText])
    {
LABEL_16:

      goto LABEL_17;
    }

    if ([layoutCopy length])
    {

      goto LABEL_9;
    }
  }

  else if ([0 length])
  {
    goto LABEL_9;
  }

  attributedText2 = [(UITextView *)self->_textView attributedText];
  v6 = [attributedText2 length];

  if (layoutCopy)
  {
  }

  if (v6)
  {
LABEL_9:
    attributedText3 = [(UITextView *)self->_textView attributedText];
    string = [attributedText3 string];

    [(UITextView *)self->_textView setAttributedText:layoutCopy];
    v9 = [(NSDictionary *)self->_cachedTextAttributes mutableCopy];
    [v9 removeObjectForKey:*MEMORY[0x1E69DB650]];
    string2 = [layoutCopy string];
    attributedText = string;
    v11 = string2;
    if (attributedText | v11 && (v12 = [attributedText isEqual:v11], v11, attributedText, !v12))
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

  data = [(MKMultiPartLabel *)self data];
  attributedString = [data attributedString];
  [(MKMultiPartLabel *)self _updateTextViewTextAndInvalidateLayout:attributedString];
}

- (void)setMultiPartString:(id)string
{
  stringCopy = string;
  multiPartString = self->_multiPartString;
  v11 = stringCopy;
  v7 = multiPartString;
  v8 = v11;
  if (v11 | v7)
  {
    v9 = [v11 isEqual:v7];

    v8 = v11;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_multiPartString, string);
      data = self->_data;
      self->_data = 0;

      [(MKMultiPartLabel *)self _updateStrings];
      v8 = v11;
    }
  }
}

- (void)setText:(id)text
{
  if (text)
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
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = [defaultParagraphStyle mutableCopy];

    [v5 setAlignment:{-[MKMultiPartLabel textAlignment](self, "textAlignment")}];
    [v5 setLineBreakMode:{-[MKMultiPartLabel lineBreakMode](self, "lineBreakMode")}];
    v6 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:*MEMORY[0x1E69DB688]];
    textColor = [(UITextView *)self->_textView textColor];

    if (textColor)
    {
      textColor2 = [(UITextView *)self->_textView textColor];
      [v6 setObject:textColor2 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    font = [(MKMultiPartLabel *)self font];

    if (font)
    {
      font2 = [(MKMultiPartLabel *)self font];
      [v6 setObject:font2 forKeyedSubscript:*MEMORY[0x1E69DB648]];
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
  textContainer = [(UITextView *)self->_textView textContainer];
  lineBreakMode = [textContainer lineBreakMode];

  return lineBreakMode;
}

- (void)setLineBreakMode:(int64_t)mode
{
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineBreakMode:mode];

  cachedTextAttributes = self->_cachedTextAttributes;
  self->_cachedTextAttributes = 0;

  [(MKMultiPartLabel *)self _updateStrings];
}

- (unint64_t)numberOfLines
{
  textContainer = [(UITextView *)self->_textView textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

- (void)setNumberOfLines:(unint64_t)lines
{
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setMaximumNumberOfLines:lines];
}

- (void)_updateColorsForCurrentState
{
  highlightedTextColor = [(MKMultiPartLabel *)self highlightedTextColor];
  if (highlightedTextColor)
  {
    v4 = highlightedTextColor;
    if ([(MKMultiPartLabel *)self isHighlighted])
    {

LABEL_5:
      highlightedTextColor2 = [(MKMultiPartLabel *)self highlightedTextColor];
      goto LABEL_7;
    }

    isFocused = [(MKMultiPartLabel *)self isFocused];

    if (isFocused)
    {
      goto LABEL_5;
    }
  }

  highlightedTextColor2 = [(MKMultiPartLabel *)self textColor];
LABEL_7:
  v7 = highlightedTextColor2;
  [(UITextView *)self->_textView setTextColor:highlightedTextColor2];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MKMultiPartLabel;
  [(MKMultiPartLabel *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  if (previouslyFocusedView == self || ([contextCopy nextFocusedView], v9 = objc_claimAutoreleasedReturnValue(), v4 = v9, v9 == self))
  {
    previouslyFocusedView2 = [contextCopy previouslyFocusedView];
    nextFocusedView = [contextCopy nextFocusedView];

    if (previouslyFocusedView != self)
    {
    }

    if (previouslyFocusedView2 != nextFocusedView)
    {
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
    }
  }

  else
  {
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(MKMultiPartLabel *)self _updateColorsForCurrentState];
    cachedTextAttributes = self->_cachedTextAttributes;
    self->_cachedTextAttributes = 0;

    [(MKMultiPartLabel *)self _updateStrings];
  }
}

- (void)setHighlightedTextColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_highlightedTextColor != colorCopy)
  {
    v9 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_highlightedTextColor, color);
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
      v6 = v9;
    }
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    obj = colorCopy;
    if (([(UIColor *)colorCopy isEqual:?]& 1) == 0)
    {
      v5 = obj;
      if (!obj)
      {
        _defaultAttributes = [MEMORY[0x1E69DCC10] _defaultAttributes];
        obja = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

        v5 = obja;
      }

      obj = v5;
      objc_storeStrong(&self->_textColor, v5);
      [(MKMultiPartLabel *)self _updateColorsForCurrentState];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
    }

    colorCopy = obj;
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    obj = fontCopy;
    if (([(UIFont *)fontCopy isEqual:?]& 1) == 0)
    {
      v5 = obj;
      if (!obj)
      {
        _defaultAttributes = [MEMORY[0x1E69DCC10] _defaultAttributes];
        obja = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

        v5 = obja;
      }

      obj = v5;
      objc_storeStrong(&self->_font, v5);
      [(UITextView *)self->_textView setFont:obj];
      cachedTextAttributes = self->_cachedTextAttributes;
      self->_cachedTextAttributes = 0;

      [(MKMultiPartLabel *)self _updateStrings];
    }

    fontCopy = obj;
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
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textContainer2 = [(UITextView *)self->_textView textContainer];
  [textContainer2 setWidthTracksTextView:1];

  textContainer3 = [(UITextView *)self->_textView textContainer];
  [textContainer3 setHeightTracksTextView:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:clearColor];

  [(MKMultiPartLabel *)self addSubview:self->_textView];
  [(MKMultiPartLabel *)self setTextAlignment:4];
  [(MKMultiPartLabel *)self setLineBreakMode:0];
  v10 = objc_alloc(MEMORY[0x1E69DCA40]);
  v11 = [v10 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  _defaultAttributes = [MEMORY[0x1E69DCC10] _defaultAttributes];
  v13 = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

  v14 = [v11 scaledFontForFont:v13];
  [(MKMultiPartLabel *)self setFont:v14];

  _defaultAttributes2 = [MEMORY[0x1E69DCC10] _defaultAttributes];
  v16 = [_defaultAttributes2 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  [(MKMultiPartLabel *)self setTextColor:v16];
  textColor = [(MKMultiPartLabel *)self textColor];
  [(UITextView *)self->_textView setTextColor:textColor];

  v27 = MEMORY[0x1E696ACD8];
  topAnchor = [(UITextView *)self->_textView topAnchor];
  topAnchor2 = [(MKMultiPartLabel *)self topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v29;
  bottomAnchor = [(UITextView *)self->_textView bottomAnchor];
  bottomAnchor2 = [(MKMultiPartLabel *)self bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[1] = v19;
  leadingAnchor = [(UITextView *)self->_textView leadingAnchor];
  leadingAnchor2 = [(MKMultiPartLabel *)self leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[2] = v22;
  trailingAnchor = [(UITextView *)self->_textView trailingAnchor];
  trailingAnchor2 = [(MKMultiPartLabel *)self trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v27 activateConstraints:v26];
}

- (MKMultiPartLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKMultiPartLabel;
  v3 = [(MKMultiPartLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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