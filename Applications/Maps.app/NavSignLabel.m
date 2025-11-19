@interface NavSignLabel
- (BOOL)_fitsMaxNumberOfLines:(int64_t)a3 bounds:(CGRect)a4;
- (BOOL)shouldUseAlternateFont;
- (NavSignLabel)initWithCoder:(id)a3;
- (NavSignLabel)initWithFrame:(CGRect)a3;
- (NavSignLabelDelegate)delegate;
- (UILayoutGuide)textTrailingLayoutGuide;
- (double)inlineShieldBaselineOffset:(unint64_t)a3 fromTop:(BOOL)a4;
- (id)_attributedStringFromServerString:(id)a3;
- (id)_attributedStringKeyForString:(id)a3 font:(id)a4;
- (unint64_t)lineCount;
- (void)_maps_commonInit;
- (void)_setNeedsUpdateLabel;
- (void)_updateLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlternateFont:(id)a3;
- (void)setAlternateFontLineSpacing:(double)a3;
- (void)setInlineShieldAlpha:(double)a3;
- (void)setInlineShieldSize:(int64_t)a3;
- (void)setMaxNumberOfLinesWithLongestAlternative:(int64_t)a3;
- (void)setMaxNumberOfLinesWithPreferredFont:(int64_t)a3;
- (void)setMaxNumberOfTotalLines:(int64_t)a3;
- (void)setParagraphLineBreakMode:(int64_t)a3;
- (void)setPerferredFontAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setPreferredFont:(id)a3;
- (void)setPreferredFontMinimumScaleFactor:(double)a3;
- (void)setTextAlternatives:(id)a3;
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
    v3 = [(NavSignLabel *)self textAlternatives];
    v4 = [v3 count] == 0;

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
        v9 = [(NavSignLabel *)self maxNumberOfLinesWithLongestAlternative];
        v10 = [(NavSignLabel *)self textAlternatives];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100BEC450;
        v49[3] = &unk_10164D580;
        v49[4] = self;
        v11 = sub_100021DB0(v10, v49);
        *buf = 134349826;
        v54 = self;
        v55 = 2112;
        v56 = v8;
        v57 = 2048;
        v58 = v9;
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Begin updating label with bounds: %@, max number of lines: %ld text alternatives: %@", buf, 0x2Au);
      }

      v12 = [(NavSignLabel *)self textAlternatives];
      v13 = [v12 count] == 0;

      if (v13)
      {
        v25 = sub_100BEBEB0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v54 = self;
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
          v16 = [(NavSignLabel *)self textAlternatives];
          v17 = v15 < [v16 count];

          if (!v17)
          {
            break;
          }

          v18 = sub_100BEBEB0();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = [(NavSignLabel *)self textAlternatives];
            v20 = [v19 objectAtIndexedSubscript:v15];
            v21 = [(NavSignLabel *)self _attributedStringFromServerString:v20];
            *buf = v48;
            v54 = self;
            v55 = 2112;
            v56 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Checking text alternative %@", buf, 0x16u);
          }

          v22 = [(NavSignLabel *)self textAlternatives];
          v23 = [v22 objectAtIndexedSubscript:v15];
          v24 = [(NavSignLabel *)self _attributedStringFromServerString:v23];
          [(NavSignLabel *)self setAttributedText:v24];

          if ([(NavSignLabel *)self _fitsMaxNumberOfLines:[(NavSignLabel *)self maxNumberOfLinesWithLongestAlternative] bounds:0.0, 0.0, v6, 1.79769313e308])
          {
            v26 = sub_100BEBEB0();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349056;
              v54 = self;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[%{public}p] Text alternative fits", buf, 0xCu);
            }

            break;
          }

          ++v15;
        }

        v25 = sub_100BEBEB0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v27 = [(NavSignLabel *)self attributedText];
          *buf = 134349570;
          v54 = self;
          v55 = 2048;
          v56 = v15;
          v57 = 2112;
          v58 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Found text alternative %lu: %@", buf, 0x20u);
        }
      }

      v28 = [(NavSignLabel *)self delegate];
      [v28 navSignLabel:self didSelectAlternate:v15];

      v29 = [(NavSignLabel *)self alternateFont];
      if (v29 && (v30 = [(NavSignLabel *)self _fitsMaxNumberOfLines:[(NavSignLabel *)self maxNumberOfLinesWithPreferredFont] bounds:0.0, 0.0, v6, 1.79769313e308], v29, (v30 & 1) == 0))
      {
        v32 = objc_alloc_init(NSMutableParagraphStyle);
        [(NavSignLabel *)self alternateFontLineSpacing];
        v34 = v33;
        v35 = [(NavSignLabel *)self alternateFont];
        [v35 lineHeight];
        v37 = v36;
        v38 = [(NavSignLabel *)self alternateFont];
        [v38 leading];
        v40 = v39;

        if (v40 + v34 - v37 >= 0.0)
        {
          [v32 setLineSpacing:?];
        }

        [v32 setLineBreakMode:{-[NavSignLabel paragraphLineBreakMode](self, "paragraphLineBreakMode")}];
        LODWORD(v41) = 1036831949;
        [v32 setHyphenationFactor:v41];
        v42 = [(NavSignLabel *)self attributedText];
        v43 = [v42 mutableCopy];

        v51[0] = NSFontAttributeName;
        v44 = [(NavSignLabel *)self alternateFont];
        v51[1] = NSParagraphStyleAttributeName;
        v52[0] = v44;
        v52[1] = v32;
        v45 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        v46 = [(NavSignLabel *)self attributedText];
        [v43 addAttributes:v45 range:{0, objc_msgSend(v46, "length")}];

        [(NavSignLabel *)self setAttributedText:v43];
      }

      else
      {
        v31 = [(NavSignLabel *)self preferredFont];

        if (v31)
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
        v54 = self;
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
  v3 = [(NavSignLabel *)self attributedText];
  v4 = [(NavSignLabel *)self attributedText];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009E3A4;
  v14[3] = &unk_101653058;
  v14[4] = &v15;
  [v3 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:objc_msgSend(v4 usingBlock:{"length"), 0, v14}];

  if (*(v16 + 24) != 1)
  {
    [(NavSignLabel *)self bounds];
    [(NavSignLabel *)self textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0];
    v9 = v8;
    v6 = [(NavSignLabel *)self font];
    [v6 lineHeight];
    if (!(v9 / v10))
    {
      v7 = 0;
      goto LABEL_9;
    }

    v11 = [(NavSignLabel *)self font];
    [v11 lineHeight];
    v7 = (v9 / v12);
    goto LABEL_7;
  }

  v5 = [(NavSignLabel *)self maxNumberOfTotalLines];
  v6 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  if (v5 >= [v6 count])
  {
    v11 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
    v7 = [v11 count];
LABEL_7:

    goto LABEL_9;
  }

  v7 = [(NavSignLabel *)self maxNumberOfTotalLines];
LABEL_9:

  _Block_object_dispose(&v15, 8);
  return v7;
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
    v6 = [(UILayoutGuide *)self->_textTrailingLayoutGuide widthAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];
    textTrailingLayoutGuideWidthConstraint = self->_textTrailingLayoutGuideWidthConstraint;
    self->_textTrailingLayoutGuideWidthConstraint = v7;

    v20[0] = self->_textTrailingLayoutGuideWidthConstraint;
    v19 = [(UILayoutGuide *)self->_textTrailingLayoutGuide leadingAnchor];
    v18 = [(NavSignLabel *)self leadingAnchor];
    v9 = [v19 constraintEqualToAnchor:v18];
    v20[1] = v9;
    v10 = [(UILayoutGuide *)self->_textTrailingLayoutGuide topAnchor];
    v11 = [(NavSignLabel *)self topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v20[2] = v12;
    v13 = [(UILayoutGuide *)self->_textTrailingLayoutGuide bottomAnchor];
    v14 = [(NavSignLabel *)self bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
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
      v10 = self;
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

- (id)_attributedStringFromServerString:(id)a3
{
  v4 = a3;
  v5 = [(NavSignLabel *)self preferredFont];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NavSignLabel *)self font];
  }

  v8 = v7;

  v9 = [(NavSignLabel *)self _attributedStringKeyForString:v4 font:v8];
  v10 = [(NavSignLabel *)self stringCache];
  v11 = [v10 objectForKey:v9];

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
    v16 = [(NavSignLabel *)self inlineShieldSize];
    [(NavSignLabel *)self _car_dynamicPointScaleValue];
    v18 = v17;
    v45[0] = v8;
    v44[0] = NSFontAttributeName;
    v44[1] = MKServerFormattedStringArtworkAlphaAttributeKey;
    v19 = v8;
    v20 = v4;
    v21 = [NSNumber numberWithDouble:v15];
    v45[1] = v21;
    v44[2] = MKServerFormattedStringArtworkSizeAttributeKey;
    v22 = [NSNumber numberWithInteger:v16];
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

    v26 = [v25 attributedString];

    v27 = [v26 _maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords];

    if ([v27 length])
    {
      v28 = v27;
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
        v30 = [v29 string];
        v31 = [v30 rangeOfString:@"\n"];
        v33 = v32;

        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v33)
          {
            v34 = ([v29 length] - v31);
            v35 = [v29 mutableCopy];
            v36 = [v35 mutableString];
            [v36 deleteCharactersInRange:{v31, v34}];

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
    v40 = [(NavSignLabel *)self stringCache];
    v41 = v40;
    if (v39)
    {
      [v40 setObject:v39 forKey:v9];
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

- (id)_attributedStringKeyForString:(id)a3 font:(id)a4
{
  v13 = a3;
  v14 = a4;
  v6 = a4;
  v7 = a3;
  [(NavSignLabel *)self inlineShieldAlpha:v13];
  v8 = [NSNumber numberWithDouble:?];
  v15 = v8;
  v9 = [NSNumber numberWithInteger:[(NavSignLabel *)self inlineShieldSize]];
  v16 = v9;
  v10 = [NSNumber numberWithBool:[(NavSignLabel *)self shouldRemoveTextStartingAtFirstNewline]];
  v17 = v10;
  v11 = [NSArray arrayWithObjects:&v13 count:5];

  return v11;
}

- (BOOL)_fitsMaxNumberOfLines:(int64_t)a3 bounds:(CGRect)a4
{
  if (!a3)
  {
    return 1;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(NavSignLabel *)self textRectForBounds:0 limitedToNumberOfLines:?];
  v11 = v10;
  [(NavSignLabel *)self textRectForBounds:a3 limitedToNumberOfLines:x, y, width, height];
  return v11 <= v12;
}

- (double)inlineShieldBaselineOffset:(unint64_t)a3 fromTop:(BOOL)a4
{
  v4 = a4;
  [(NavSignLabel *)self bounds];
  [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder setTextSize:v7, v8];
  v9 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  v10 = v9;
  if (a3 == -1)
  {
    v11 = [v9 lastObject];
    goto LABEL_5;
  }

  if (!a3)
  {
    v11 = [v9 firstObject];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([v9 count] <= a3)
  {

    v12 = 0;
    goto LABEL_20;
  }

  v17 = [(TextFirstLineCharacterRangeFinder *)self->_rangeFinder lineFragments];
  v12 = [v17 objectAtIndexedSubscript:a3];

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
    v15 = [*(*&buf[8] + 40) image];
    v16 = v15 == 0;

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
      v23 = [*(*&buf[8] + 40) image];
      [v23 size];
      v25 = v24;
      [v22 lineHeight];
      v27 = v25 > v26;

      v19 = 0.0;
      if (v27)
      {
        v28 = *(*&buf[8] + 40);
        if (v4)
        {
          v29 = [v28 image];
          [(NavSignLabel *)v29 size];
          [*(*&buf[8] + 40) bounds];
          [v22 ascender];
          v30 = self;
          UIRoundToViewScale();
          v19 = v31;
        }

        else
        {
          [v28 bounds];
          [v22 descender];
          v29 = self;
          UIRoundToViewScale();
          v19 = v32;
        }
      }
    }

    if (!v4)
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
  v3 = [(NavSignLabel *)self alternateFont];
  if (v3 && [(NavSignLabel *)self maxNumberOfLinesWithPreferredFont]>= 1)
  {
    v4 = [(NavSignLabel *)self lineCount];
    v5 = v4 > [(NavSignLabel *)self maxNumberOfLinesWithPreferredFont];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInlineShieldSize:(int64_t)a3
{
  if (self->_inlineShieldSize != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setInlineShieldSize:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_inlineShieldSize = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setParagraphLineBreakMode:(int64_t)a3
{
  if (self->_paragraphLineBreakMode != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setParagraphLineBreakMode:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_paragraphLineBreakMode = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setPerferredFontAdjustsFontSizeToFitWidth:(BOOL)a3
{
  if (self->_perferredFontAdjustsFontSizeToFitWidth != a3)
  {
    v3 = a3;
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setPerferredFontAdjustsFontSizeToFitWidth:]";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %d", &v6, 0x1Cu);
    }

    self->_perferredFontAdjustsFontSizeToFitWidth = v3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setPreferredFontMinimumScaleFactor:(double)a3
{
  if (self->_preferredFontMinimumScaleFactor != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setPreferredFontMinimumScaleFactor:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_preferredFontMinimumScaleFactor = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setInlineShieldAlpha:(double)a3
{
  if (self->_inlineShieldAlpha != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setInlineShieldAlpha:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_inlineShieldAlpha = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfLinesWithLongestAlternative:(int64_t)a3
{
  if (self->_maxNumberOfLinesWithLongestAlternative != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfLinesWithLongestAlternative:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_maxNumberOfLinesWithLongestAlternative = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setAlternateFontLineSpacing:(double)a3
{
  if (self->_alternateFontLineSpacing != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setAlternateFontLineSpacing:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
    }

    self->_alternateFontLineSpacing = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setTextAlternatives:(id)a3
{
  v4 = a3;
  if (([MNComparison isValue:self->_textAlternatives equalTo:v4]& 1) == 0)
  {
    v5 = [v4 copy];
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
      v8 = sub_100021DB0(v4, v9);
      *buf = 134349570;
      v11 = self;
      v12 = 2080;
      v13 = "[NavSignLabel setTextAlternatives:]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", buf, 0x20u);
    }

    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfTotalLines:(int64_t)a3
{
  if (self->_maxNumberOfTotalLines != a3)
  {
    self->_maxNumberOfTotalLines = a3;
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfTotalLines:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setMaxNumberOfLinesWithPreferredFont:(int64_t)a3
{
  if (self->_maxNumberOfLinesWithPreferredFont != a3)
  {
    v5 = sub_100BEBEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349570;
      v7 = self;
      v8 = 2080;
      v9 = "[NavSignLabel setMaxNumberOfLinesWithPreferredFont:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %ld", &v6, 0x20u);
    }

    self->_maxNumberOfLinesWithPreferredFont = a3;
    [(NavSignLabel *)self _setNeedsUpdateLabel];
  }
}

- (void)setAlternateFont:(id)a3
{
  v5 = a3;
  v6 = self->_alternateFont;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BEBEB0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349570;
        v11 = self;
        v12 = 2080;
        v13 = "[NavSignLabel setAlternateFont:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", &v10, 0x20u);
      }

      objc_storeStrong(&self->_alternateFont, a3);
      [(NavSignLabel *)self _setNeedsUpdateLabel];
    }
  }
}

- (void)setPreferredFont:(id)a3
{
  v5 = a3;
  v6 = self->_preferredFont;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BEBEB0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349570;
        v11 = self;
        v12 = 2080;
        v13 = "[NavSignLabel setPreferredFont:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %@", &v10, 0x20u);
      }

      objc_storeStrong(&self->_preferredFont, a3);
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
    v6 = self;
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
    v9 = self;
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

- (NavSignLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NavSignLabel;
  v3 = [(NavSignLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavSignLabel *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavSignLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NavSignLabel;
  v3 = [(NavSignLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NavSignLabel *)v3 _maps_commonInit];
  }

  return v4;
}

@end