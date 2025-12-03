@interface NavSignLabel
- (BOOL)_fitsMaxNumberOfLines:(int64_t)lines bounds:(CGRect)bounds;
- (BOOL)shouldUseAlternateFont;
- (NavSignLabel)initWithCoder:(id)coder;
- (NavSignLabel)initWithFrame:(CGRect)frame;
- (NavSignLabelDelegate)delegate;
- (UILayoutGuide)textTrailingLayoutGuide;
- (double)inlineShieldBaselineOffset:(unint64_t)offset fromTop:(BOOL)top;
- (id)_attributedStringFromServerString:(id)string;
- (id)_attributedStringKeyForString:(id)string font:(id)font;
- (unint64_t)lineCount;
- (void)_maps_commonInit;
- (void)_setNeedsUpdateLabel;
- (void)_updateLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlternateFont:(id)font;
- (void)setAlternateFontLineSpacing:(double)spacing;
- (void)setInlineShieldAlpha:(double)alpha;
- (void)setInlineShieldSize:(int64_t)size;
- (void)setMaxNumberOfLinesWithLongestAlternative:(int64_t)alternative;
- (void)setMaxNumberOfLinesWithPreferredFont:(int64_t)font;
- (void)setMaxNumberOfTotalLines:(int64_t)lines;
- (void)setParagraphLineBreakMode:(int64_t)mode;
- (void)setPerferredFontAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setPreferredFont:(id)font;
- (void)setPreferredFontMinimumScaleFactor:(double)factor;
- (void)setTextAlternatives:(id)alternatives;
- (void)updateLabelIfNeeded;
@end

@implementation NavSignLabel

- (void)_setNeedsUpdateLabel
{
  if (!self->_needsUpdateLabel)
  {
    self->_needsUpdateLabel = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007EEAC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateLabel
{
  if (self->_needsUpdateLabel)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(self->_activity, &state);
    textAlternatives = [(NavSignLabel *)self textAlternatives];
    v4 = [textAlternatives count] == 0;

    if (v4)
    {
      [(NavSignLabel *)self setAttributedText:0];
      self->_needsUpdateLabel = 0;
    }

    else
    {
      [(NavSignLabel *)self bounds];
      v6 = v5;
      [(NavSignLabel *)self invalidateIntrinsicContentSize];
      [(NavSignLabel *)self setNumberOfLines:[(NavSignLabel *)self maxNumberOfTotalLines]];
      [(NavSignLabel *)self setAdjustsFontSizeToFitWidth:0];
      v7 = sub_100BEBEB0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v61.size.height = 1.79769313e308;
        v61.origin.x = 0.0;
        v61.origin.y = 0.0;
        v61.size.width = v6;
        v8 = NSStringFromCGRect(v61);
        maxNumberOfLinesWithLongestAlternative = [(NavSignLabel *)self maxNumberOfLinesWithLongestAlternative];
        textAlternatives2 = [(NavSignLabel *)self textAlternatives];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100BEC450;
        v49[3] = &unk_10164D580;
        v49[4] = self;
        v11 = sub_100021DB0(textAlternatives2, v49);
        *buf = 134349826;
        selfCopy6 = self;
        v55 = 2112;
        v56 = v8;
        v57 = 2048;
        v58 = maxNumberOfLinesWithLongestAlternative;
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Begin updating label with bounds: %@, max number of lines: %ld text alternatives: %@", buf, 0x2Au);
      }

      textAlternatives3 = [(NavSignLabel *)self textAlternatives];
      v13 = [textAlternatives3 count] == 0;

      if (v13)
      {
        v25 = sub_100BEBEB0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] No text alternatives available", buf, 0xCu);
        }

        v15 = 0;
      }

      else
      {
        v15 = 0;
        *&v14 = 134349314;
        v48 = v14;
        while (1)
        {
          textAlternatives4 = [(NavSignLabel *)self textAlternatives];
          v17 = v15 < [textAlternatives4 count];

          if (!v17)
          {
            break;
          }

          v18 = sub_100BEBEB0();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            textAlternatives5 = [(NavSignLabel *)self textAlternatives];
            v20 = [textAlternatives5 objectAtIndexedSubscript:v15];
            v21 = [(NavSignLabel *)self _attributedStringFromServerString:v20];
            *buf = v48;
            selfCopy6 = self;
            v55 = 2112;
            v56 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Checking text alternative %@", buf, 0x16u);
          }

          textAlternatives6 = [(NavSignLabel *)self textAlternatives];
          v23 = [textAlternatives6 objectAtIndexedSubscript:v15];
          v24 = [(NavSignLabel *)self _attributedStringFromServerString:v23];
          [(NavSignLabel *)self setAttributedText:v24];

          if ([(NavSignLabel *)self _fitsMaxNumberOfLines:[(NavSignLabel *)self maxNumberOfLinesWithLongestAlternative] bounds:0.0, 0.0, v6, 1.79769313e308])
          {
            v26 = sub_100BEBEB0();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349056;
              selfCopy6 = self;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[%{public}p] Text alternative fits", buf, 0xCu);
            }

            break;
          }

          ++v15;
        }

        v25 = sub_100BEBEB0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          attributedText = [(NavSignLabel *)self attributedText];
          *buf = 134349570;
          selfCopy6 = self;
          v55 = 2048;
          v56 = v15;
          v57 = 2112;
          v58 = attributedText;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Found text alternative %lu: %@", buf, 0x20u);
        }
      }

      delegate = [(NavSignLabel *)self delegate];
      [delegate navSignLabel:self didSelectAlternate:v15];

      alternateFont = [(NavSignLabel *)self alternateFont];
      if (alternateFont && (v30 = [(NavSignLabel *)self _fitsMaxNumberOfLines:[(NavSignLabel *)self maxNumberOfLinesWithPreferredFont] bounds:0.0, 0.0, v6, 1.79769313e308], alternateFont, (v30 & 1) == 0))
      {
        v32 = objc_alloc_init(NSMutableParagraphStyle);
        [(NavSignLabel *)self alternateFontLineSpacing];
        v34 = v33;
        alternateFont2 = [(NavSignLabel *)self alternateFont];
        [alternateFont2 lineHeight];
        v37 = v36;
        alternateFont3 = [(NavSignLabel *)self alternateFont];
        [alternateFont3 leading];
        v40 = v39;

        if (v40 + v34 - v37 >= 0.0)
        {
          [v32 setLineSpacing:?];
        }

        [v32 setLineBreakMode:{-[NavSignLabel paragraphLineBreakMode](self, "paragraphLineBreakMode")}];
        LODWORD(v41) = 1036831949;
        [v32 setHyphenationFactor:v41];
        attributedText2 = [(NavSignLabel *)self attributedText];
        v43 = [attributedText2 mutableCopy];

        v51[0] = NSFontAttributeName;
        alternateFont4 = [(NavSignLabel *)self alternateFont];
        v51[1] = NSParagraphStyleAttributeName;
        v52[0] = alternateFont4;
        v52[1] = v32;
        v45 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        attributedText3 = [(NavSignLabel *)self attributedText];
        [v43 addAttributes:v45 range:{0, objc_msgSend(attributedText3, "length")}];

        [(NavSignLabel *)self setAttributedText:v43];
      }

      else
      {
        preferredFont = [(NavSignLabel *)self preferredFont];

        if (preferredFont)
        {
          [(NavSignLabel *)self preferredFontMinimumScaleFactor];
          [(NavSignLabel *)self setMinimumScaleFactor:?];
          [(NavSignLabel *)self setAdjustsFontSizeToFitWidth:[(NavSignLabel *)self perferredFontAdjustsFontSizeToFitWidth]];
        }
      }

      self->_needsUpdateLabel = 0;
      v47 = sub_100BEBEB0();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "[%{public}p] Done updating label", buf, 0xCu);
      }
    }

    os_activity_scope_leave(&state);
  }
}

- (NavSignLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)lineCount
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  attributedText = [(NavSignLabel *)self attributedText];
  attributedText2 = [(NavSignLabel *)self attributedText];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009E3A4;
  v14[3] = &unk_101653058;
  v14[4] = &v15;
  [attributedText enumerateAttribute:NSAttachmentAttributeName inRange:0 options:objc_msgSend(attributedText2 usingBlock:{"length"), 0, v14}];

  if (*(v16 + 24) != 1)
  {
    [(NavSignLabel *)self bounds];
    [(NavSignLabel *)self textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0];
    v9 = v8;
    font = [(NavSignLabel *)self font];
    [font lineHeight];
    if (!(v9 / v10))
    {
      maxNumberOfTotalLines2 = 0;
      goto LABEL_9;
    }

    font2 = [(NavSignLabel *)self font];
    [font2 lineHeight];
    maxNumberOfTotalLines2 = (v9 / v12);
    goto LABEL_7;
  }

  maxNumberOfTotalLines = [(NavSignLabel *)self maxNumberOfTotalLines];
  font = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  if (maxNumberOfTotalLines >= [font count])
  {
    font2 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
    maxNumberOfTotalLines2 = [font2 count];
LABEL_7:

    goto LABEL_9;
  }

  maxNumberOfTotalLines2 = [(NavSignLabel *)self maxNumberOfTotalLines];
LABEL_9:

  _Block_object_dispose(&v15, 8);
  return maxNumberOfTotalLines2;
}

- (void)updateLabelIfNeeded
{
  if (self->_needsUpdateLabel)
  {
    [(NavSignLabel *)self _updateLabel];
  }
}

- (UILayoutGuide)textTrailingLayoutGuide
{
  textTrailingLayoutGuide = self->_textTrailingLayoutGuide;
  if (!textTrailingLayoutGuide)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    v5 = self->_textTrailingLayoutGuide;
    self->_textTrailingLayoutGuide = v4;

    [(NavSignLabel *)self addLayoutGuide:self->_textTrailingLayoutGuide];
    widthAnchor = [(UILayoutGuide *)self->_textTrailingLayoutGuide widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:0.0];
    textTrailingLayoutGuideWidthConstraint = self->_textTrailingLayoutGuideWidthConstraint;
    self->_textTrailingLayoutGuideWidthConstraint = v7;

    v20[0] = self->_textTrailingLayoutGuideWidthConstraint;
    leadingAnchor = [(UILayoutGuide *)self->_textTrailingLayoutGuide leadingAnchor];
    leadingAnchor2 = [(NavSignLabel *)self leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v20[1] = v9;
    topAnchor = [(UILayoutGuide *)self->_textTrailingLayoutGuide topAnchor];
    topAnchor2 = [(NavSignLabel *)self topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v20[2] = v12;
    bottomAnchor = [(UILayoutGuide *)self->_textTrailingLayoutGuide bottomAnchor];
    bottomAnchor2 = [(NavSignLabel *)self bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v20[3] = v15;
    v16 = [NSArray arrayWithObjects:v20 count:4];
    [NSLayoutConstraint activateConstraints:v16];

    textTrailingLayoutGuide = self->_textTrailingLayoutGuide;
  }

  return textTrailingLayoutGuide;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NavSignLabel;
  [(NavSignLabel *)&v8 layoutSubviews];
  width = self->_width;
  [(NavSignLabel *)self bounds];
  if (vabdd_f64(width, v4) > 2.22044605e-16)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Width changed; re-laying out", buf, 0xCu);
    }

    [(NavSignLabel *)self bounds];
    self->_width = v6;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }

  [(NavSignLabel *)self updateLabelIfNeeded];
  if ([(NSLayoutConstraint *)self->_textTrailingLayoutGuideWidthConstraint isActive])
  {
    [(NavSignLabel *)self textRectForBounds:[(NavSignLabel *)self maxNumberOfLinesWithLongestAlternative] limitedToNumberOfLines:0.0, 0.0, self->_width, 1.79769313e308];
    [(NSLayoutConstraint *)self->_textTrailingLayoutGuideWidthConstraint setConstant:v7];
  }
}

- (id)_attributedStringFromServerString:(id)string
{
  stringCopy = string;
  preferredFont = [(NavSignLabel *)self preferredFont];
  v6 = preferredFont;
  if (preferredFont)
  {
    font = preferredFont;
  }

  else
  {
    font = [(NavSignLabel *)self font];
  }

  v8 = font;

  v9 = [(NavSignLabel *)self _attributedStringKeyForString:stringCopy font:v8];
  stringCache = [(NavSignLabel *)self stringCache];
  v11 = [stringCache objectForKey:v9];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
  }

  else
  {
    [(NavSignLabel *)self inlineShieldAlpha];
    v15 = v14;
    inlineShieldSize = [(NavSignLabel *)self inlineShieldSize];
    [(NavSignLabel *)self _car_dynamicPointScaleValue];
    v18 = v17;
    v45[0] = v8;
    v44[0] = NSFontAttributeName;
    v44[1] = MKServerFormattedStringArtworkAlphaAttributeKey;
    v19 = v8;
    v20 = stringCopy;
    v21 = [NSNumber numberWithDouble:v15];
    v45[1] = v21;
    v44[2] = MKServerFormattedStringArtworkSizeAttributeKey;
    v22 = [NSNumber numberWithInteger:inlineShieldSize];
    v45[2] = v22;
    v45[3] = &off_1016E9428;
    v44[3] = MKServerFormattedStringArtworkFeatureTypeAttributeKey;
    v44[4] = MKServerFormattedStringArtworkScaleAttributeKey;
    v23 = [NSNumber numberWithDouble:v18];
    v44[5] = MKServerFormattedStringArtworkLimitToLineHeightAttributeKey;
    v45[4] = v23;
    v45[5] = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:6];

    v25 = [v20 multiPartAttributedStringWithAttributes:v24];

    attributedString = [v25 attributedString];

    _maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords = [attributedString _maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords];

    if ([_maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords length])
    {
      v28 = _maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if ([(NavSignLabel *)self shouldRemoveTextStartingAtFirstNewline])
    {
      if ([v29 length])
      {
        string = [v29 string];
        v31 = [string rangeOfString:@"\n"];
        v33 = v32;

        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v33)
          {
            v34 = ([v29 length] - v31);
            v35 = [v29 mutableCopy];
            mutableString = [v35 mutableString];
            [mutableString deleteCharactersInRange:{v31, v34}];

            v37 = [v35 copy];
            v29 = v37;
          }
        }
      }
    }

    if ([v29 length])
    {
      v38 = v29;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    stringCache2 = [(NavSignLabel *)self stringCache];
    v41 = stringCache2;
    if (v39)
    {
      [stringCache2 setObject:v39 forKey:v9];
    }

    else
    {
      v42 = +[NSNull null];
      [v41 setObject:v42 forKey:v9];
    }

    v11 = v39;
    v13 = v11;
  }

  return v13;
}

- (id)_attributedStringKeyForString:(id)string font:(id)font
{
  stringCopy = string;
  fontCopy = font;
  fontCopy2 = font;
  stringCopy2 = string;
  [(NavSignLabel *)self inlineShieldAlpha:stringCopy];
  v8 = [NSNumber numberWithDouble:?];
  v15 = v8;
  v9 = [NSNumber numberWithInteger:[(NavSignLabel *)self inlineShieldSize]];
  v16 = v9;
  v10 = [NSNumber numberWithBool:[(NavSignLabel *)self shouldRemoveTextStartingAtFirstNewline]];
  v17 = v10;
  v11 = [NSArray arrayWithObjects:&stringCopy count:5];

  return v11;
}

- (BOOL)_fitsMaxNumberOfLines:(int64_t)lines bounds:(CGRect)bounds
{
  if (!lines)
  {
    return 1;
  }

  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NavSignLabel *)self textRectForBounds:0 limitedToNumberOfLines:?];
  v11 = v10;
  [(NavSignLabel *)self textRectForBounds:lines limitedToNumberOfLines:x, y, width, height];
  return v11 <= v12;
}

- (double)inlineShieldBaselineOffset:(unint64_t)offset fromTop:(BOOL)top
{
  topCopy = top;
  [(NavSignLabel *)self bounds];
  [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder setTextSize:v7, v8];
  lineFragments = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  v10 = lineFragments;
  if (offset == -1)
  {
    lastObject = [lineFragments lastObject];
    goto LABEL_5;
  }

  if (!offset)
  {
    lastObject = [lineFragments firstObject];
LABEL_5:
    v12 = lastObject;
    goto LABEL_6;
  }

  if ([lineFragments count] <= offset)
  {

    v12 = 0;
    goto LABEL_20;
  }

  lineFragments2 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  v12 = [lineFragments2 objectAtIndexedSubscript:offset];

LABEL_6:
  if (!v12)
  {
LABEL_20:
    v19 = 0.0;
    goto LABEL_33;
  }

  v13 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder attributedStringForLineFragment:v12];
  v14 = v13;
  if (v13)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = sub_100BEC934;
    v37 = sub_100BEC944;
    v38 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100BEC94C;
    v34[3] = &unk_101653058;
    v34[4] = buf;
    [v13 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:objc_msgSend(v13 usingBlock:{"length"), 0, v34}];
    image = [*(*&buf[8] + 40) image];
    v16 = image == 0;

    if (v16)
    {
      v19 = 0.0;
    }

    else
    {
      if ([(NavSignLabel *)self shouldUseAlternateFont])
      {
        [(NavSignLabel *)self alternateFont];
      }

      else
      {
        [(NavSignLabel *)self preferredFont];
      }
      v22 = ;
      image2 = [*(*&buf[8] + 40) image];
      [image2 size];
      v25 = v24;
      [v22 lineHeight];
      v27 = v25 > v26;

      v19 = 0.0;
      if (v27)
      {
        v28 = *(*&buf[8] + 40);
        if (topCopy)
        {
          selfCopy2 = [v28 image];
          [(NavSignLabel *)selfCopy2 size];
          [*(*&buf[8] + 40) bounds];
          [v22 ascender];
          selfCopy = self;
          UIRoundToViewScale();
          v19 = v31;
        }

        else
        {
          [v28 bounds];
          [v22 descender];
          selfCopy2 = self;
          UIRoundToViewScale();
          v19 = v32;
        }
      }
    }

    if (!topCopy)
    {
      v19 = -v19;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NavSignLabel inlineShieldBaselineOffset:fromTop:]";
      *&buf[12] = 2080;
      *&buf[14] = "NavSignLabel.m";
      *&buf[22] = 1024;
      LODWORD(v36) = 246;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    v19 = 0.0;
    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

LABEL_33:
  return v19;
}

- (BOOL)shouldUseAlternateFont
{
  alternateFont = [(NavSignLabel *)self alternateFont];
  if (alternateFont && [(NavSignLabel *)self maxNumberOfLinesWithPreferredFont]>= 1)
  {
    lineCount = [(NavSignLabel *)self lineCount];
    v5 = lineCount > [(NavSignLabel *)self maxNumberOfLinesWithPreferredFont];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInlineShieldSize:(int64_t)size
{
  if (self->_inlineShieldSize != size)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setInlineShieldSize:]";
      v10 = 2048;
      sizeCopy = size;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_inlineShieldSize = size;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setParagraphLineBreakMode:(int64_t)mode
{
  if (self->_paragraphLineBreakMode != mode)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setParagraphLineBreakMode:]";
      v10 = 2048;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_paragraphLineBreakMode = mode;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setPerferredFontAdjustsFontSizeToFitWidth:(BOOL)width
{
  if (self->_perferredFontAdjustsFontSizeToFitWidth != width)
  {
    widthCopy = width;
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setPerferredFontAdjustsFontSizeToFitWidth:]";
      v10 = 1024;
      v11 = widthCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %d", &v6, 0x1Cu);
    }

    self->_perferredFontAdjustsFontSizeToFitWidth = widthCopy;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setPreferredFontMinimumScaleFactor:(double)factor
{
  if (self->_preferredFontMinimumScaleFactor != factor)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setPreferredFontMinimumScaleFactor:]";
      v10 = 2048;
      factorCopy = factor;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_preferredFontMinimumScaleFactor = factor;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setInlineShieldAlpha:(double)alpha
{
  if (self->_inlineShieldAlpha != alpha)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setInlineShieldAlpha:]";
      v10 = 2048;
      alphaCopy = alpha;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_inlineShieldAlpha = alpha;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfLinesWithLongestAlternative:(int64_t)alternative
{
  if (self->_maxNumberOfLinesWithLongestAlternative != alternative)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfLinesWithLongestAlternative:]";
      v10 = 2048;
      alternativeCopy = alternative;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_maxNumberOfLinesWithLongestAlternative = alternative;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setAlternateFontLineSpacing:(double)spacing
{
  if (self->_alternateFontLineSpacing != spacing)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setAlternateFontLineSpacing:]";
      v10 = 2048;
      spacingCopy = spacing;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_alternateFontLineSpacing = spacing;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  if (([MNComparison isValue:self->_textAlternatives equalTo:alternativesCopy]& 1) == 0)
  {
    v5 = [alternativesCopy copy];
    textAlternatives = self->_textAlternatives;
    self->_textAlternatives = v5;

    v7 = sub_100BEBEB0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100BED2C0;
      v9[3] = &unk_10164D580;
      v9[4] = self;
      v8 = sub_100021DB0(alternativesCopy, v9);
      *buf = 134349570;
      selfCopy = self;
      v12 = 2080;
      v13 = "[NavSignLabel setTextAlternatives:]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", buf, 0x20u);
    }

    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfTotalLines:(int64_t)lines
{
  if (self->_maxNumberOfTotalLines != lines)
  {
    self->_maxNumberOfTotalLines = lines;
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfTotalLines:]";
      v10 = 2048;
      linesCopy = lines;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfLinesWithPreferredFont:(int64_t)font
{
  if (self->_maxNumberOfLinesWithPreferredFont != font)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      selfCopy = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfLinesWithPreferredFont:]";
      v10 = 2048;
      fontCopy = font;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_maxNumberOfLinesWithPreferredFont = font;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setAlternateFont:(id)font
{
  fontCopy = font;
  v6 = self->_alternateFont;
  v7 = fontCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BEBEB0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349570;
        selfCopy = self;
        v12 = 2080;
        v13 = "[NavSignLabel setAlternateFont:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", &v10, 0x20u);
      }

      objc_storeStrong(&self->_alternateFont, font);
      [(NavSignLabel *)self _setNeedsUpdateLabel];
    }
  }
}

- (void)setPreferredFont:(id)font
{
  fontCopy = font;
  v6 = self->_preferredFont;
  v7 = fontCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BEBEB0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349570;
        selfCopy = self;
        v12 = 2080;
        v13 = "[NavSignLabel setPreferredFont:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", &v10, 0x20u);
      }

      objc_storeStrong(&self->_preferredFont, font);
      [(NavSignLabel *)self _setNeedsUpdateLabel];
    }
  }
}

- (void)dealloc
{
  v3 = sub_100BEBEB0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NavSignLabel;
  [(NavSignLabel *)&v4 dealloc];
}

- (void)_maps_commonInit
{
  v3 = sub_100BEBEB0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", &v8, 0xCu);
  }

  self->_inlineShieldAlpha = 1.0;
  self->_inlineShieldSize = 6;
  self->_perferredFontAdjustsFontSizeToFitWidth = 1;
  self->_preferredFontMinimumScaleFactor = 0.75;
  v4 = objc_alloc_init(TextFirstLineCharacterRangeFinder);
  rangeFinder = self->_rangeFinder;
  self->_rangeFinder = v4;

  self->_paragraphLineBreakMode = 4;
  v6 = _os_activity_create(&_mh_execute_header, "NavSignLabel", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
  activity = self->_activity;
  self->_activity = v6;
}

- (NavSignLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NavSignLabel;
  v3 = [(NavSignLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavSignLabel *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavSignLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NavSignLabel;
  v3 = [(NavSignLabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NavSignLabel *)v3 _maps_commonInit];
  }

  return v4;
}

@end