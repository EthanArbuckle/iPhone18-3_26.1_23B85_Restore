@interface SRCompactTextRequestField
- (BOOL)_hasText;
- (BOOL)resignFirstResponder;
- (CGRect)_adjustTextOrEditingRect:(CGRect)a3 forBounds:(CGRect)a4;
- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5;
- (CGRect)_placeholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5;
- (CGRect)_textRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SRCompactTextRequestField)initWithFrame:(CGRect)a3;
- (SRCompactTextRequestSiriSuggestionsButtonDelegate)buttonDelegate;
- (double)_preferredHeight;
- (id)_borderColorForUserInterfaceStyle:(int64_t)a3;
- (int64_t)_preferredTextAlignment;
- (int64_t)_preferredTextAlignmentForEditing:(BOOL)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_textDidChange:(id)a3;
- (void)_updateBorderVisualStyling;
- (void)_updateStyleForAccessoryView:(id)a3;
- (void)_updateStyleForClearButton;
- (void)_updateStyleForLeftView;
- (void)_updateStyleForPlaceholderView;
- (void)_updateStyleForRightView;
- (void)_updateTextAlignmentForEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateVisualStyling;
- (void)layoutSubviews;
- (void)textRequestSuggestionsButton:(id)a3 didEnableSuggestions:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SRCompactTextRequestField

- (SRCompactTextRequestField)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = SRCompactTextRequestField;
  v3 = [(SRCompactTextRequestField *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SRCompactTextRequestField *)v3 setLoadKeyboardsForSiriLanguage:1];
    [(SRCompactTextRequestField *)v4 setBorderStyle:0];
    if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
    {
      v5 = [[SRCompactTextRequestSiriSuggestionsButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      suggestionsButton = v4->_suggestionsButton;
      v4->_suggestionsButton = v5;

      [(SRCompactTextRequestSiriSuggestionsButton *)v4->_suggestionsButton setDelegate:v4];
      [(SRCompactTextRequestField *)v4 setLeftView:v4->_suggestionsButton];
      [(SRCompactTextRequestField *)v4 setLeftViewMode:3];
    }

    v7 = [MTMaterialView materialViewWithRecipe:19 configuration:1];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v7;

    [(MTMaterialView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(MTMaterialView *)v4->_backgroundView layer];
    [v9 setBorderWidth:0.300000012];

    [(SRCompactTextRequestField *)v4 _updateBorderVisualStyling];
    [(MTMaterialView *)v4->_backgroundView setAutoresizingMask:18];
    v10 = v4->_backgroundView;
    [(SRCompactTextRequestField *)v4 bounds];
    [(MTMaterialView *)v10 setFrame:?];
    [(MTMaterialView *)v4->_backgroundView setUserInteractionEnabled:0];
    [(SRCompactTextRequestField *)v4 addSubview:v4->_backgroundView];
    [(SRCompactTextRequestField *)v4 sendSubviewToBack:v4->_backgroundView];
    [(SRCompactTextRequestField *)v4 setReturnKeyType:9];
    [(SRCompactTextRequestField *)v4 setEnablesReturnKeyAutomatically:1];
    [(SRCompactTextRequestField *)v4 setEnablesReturnKeyOnNonWhiteSpaceContent:1];
    [(SRCompactTextRequestField *)v4 setMinimumFontSize:10.0];
    [(SRCompactTextRequestField *)v4 _updateVisualStyling];
    v11 = +[NSHashTable weakObjectsHashTable];
    styledViews = v4->_styledViews;
    v4->_styledViews = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v4 selector:"_didEndEditing:" name:UITextFieldTextDidEndEditingNotification object:v4];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v4 selector:"_didBeginEditing:" name:UITextFieldTextDidBeginEditingNotification object:v4];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v4 selector:"_textDidChange:" name:UITextFieldTextDidChangeNotification object:v4];

    [(SRCompactTextRequestField *)v4 _setContinuousCornerRadius:16.0];
    [(SRCompactTextRequestField *)v4 _updateTextAlignmentForEditing:0 animated:0];
  }

  return v4;
}

- (id)_borderColorForUserInterfaceStyle:(int64_t)a3
{
  if (a3 <= 2)
  {
    self = [UIColor colorWithWhite:dbl_1000F6B78[a3] alpha:0.08, v3];
  }

  return self;
}

- (void)_updateBorderVisualStyling
{
  v3 = [(SRCompactTextRequestField *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v8 = [(SRCompactTextRequestField *)self _borderColorForUserInterfaceStyle:v4];
  v5 = [(SRCompactTextRequestField *)self _backgroundView];
  v6 = [v5 layer];

  v7 = v8;
  [v6 setBorderColor:{objc_msgSend(v8, "CGColor")}];
}

- (double)_preferredHeight
{
  v2 = [(SRCompactTextRequestField *)self font];
  [v2 lineHeight];
  v4 = v3 + 26.0;
  [v2 descender];
  v6 = fmax(v4 + v5, 48.0);

  return v6;
}

- (void)_updateVisualStyling
{
  v3 = [(SRCompactTextRequestField *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_100088A08(v4, UIContentSizeCategorySmall, UIContentSizeCategoryAccessibilityExtraExtraLarge);
  v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:v6];
  [(SRCompactTextRequestField *)self setFont:v7];
  v8 = [(SRCompactTextRequestField *)self _secondaryTintColor];
  v9 = [(SRCompactTextRequestField *)self _clearButton];
  v10 = dispatch_get_global_queue(21, 0);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10008941C;
  v20 = &unk_100167298;
  v21 = v8;
  v22 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, &v17);

  v13 = [UIColor whiteColor:v17];
  [(SRCompactTextRequestField *)self setTintColor:v13];

  v14 = +[UIColor whiteColor];
  [(SRCompactTextRequestField *)self setTextColor:v14];

  v15 = [(SRCompactTextRequestField *)self _placeholderLabel];
  [v15 setTextColor:v12];
  [(SRCompactTextRequestField *)self _updateStyleForLeftView];
  [(SRCompactTextRequestField *)self _updateStyleForRightView];
  [(SRCompactTextRequestField *)self _updateStyleForClearButton];
  [(SRCompactTextRequestField *)self _updateStyleForPlaceholderView];
  v16 = [(SRCompactTextRequestField *)self layer];
  [v16 setAllowsGroupBlending:0];
}

- (void)_updateStyleForPlaceholderView
{
  v10 = [(SRCompactTextRequestField *)self _placeholderView];
  v3 = [(SRCompactTextRequestField *)self _styledViews];
  if (([v3 containsObject:v10] & 1) == 0)
  {
    v4 = [(SRCompactTextRequestField *)self _backgroundView];
    v5 = [v4 visualStylingProviderForCategory:1];
    [v5 automaticallyUpdateView:v10 withStyle:1];

    v6 = [v10 layer];
    v7 = [CAFilter filterWithType:kCAFilterPlusL];
    [v6 setCompositingFilter:v7];

    [v3 addObject:v10];
  }

  v8 = objc_opt_class();
  v9 = sub_100019948(v8, v10);
  [v9 setAdjustsFontSizeToFitWidth:1];
}

- (void)_updateStyleForAccessoryView:(id)a3
{
  v9 = a3;
  v4 = [(SRCompactTextRequestField *)self _styledViews];
  if (([v4 containsObject:v9] & 1) == 0)
  {
    v5 = [(SRCompactTextRequestField *)self _backgroundView];
    v6 = [v5 visualStylingProviderForCategory:1];
    [v6 automaticallyUpdateView:v9 withStyle:1];

    v7 = [v9 layer];
    v8 = [CAFilter filterWithType:kCAFilterPlusL];
    [v7 setCompositingFilter:v8];

    [v9 setContentMode:1];
    [v4 addObject:v9];
  }
}

- (void)_updateStyleForLeftView
{
  if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) == 0)
  {
    v3 = [(SRCompactTextRequestField *)self leftView];
    [(SRCompactTextRequestField *)self _updateStyleForAccessoryView:v3];
  }
}

- (void)_updateStyleForRightView
{
  v3 = [(SRCompactTextRequestField *)self rightView];
  [(SRCompactTextRequestField *)self _updateStyleForAccessoryView:v3];
}

- (void)_updateStyleForClearButton
{
  v8 = [(SRCompactTextRequestField *)self _clearButton];
  v3 = [(SRCompactTextRequestField *)self _styledViews];
  if (([v3 containsObject:v8] & 1) == 0)
  {
    v4 = [(SRCompactTextRequestField *)self _backgroundView];
    v5 = [v4 visualStylingProviderForCategory:1];
    [v5 automaticallyUpdateView:v8 withStyle:1];

    v6 = [v8 layer];
    v7 = [CAFilter filterWithType:kCAFilterPlusL];
    [v6 setCompositingFilter:v7];

    [v8 setContentMode:1];
    [v3 addObject:v8];
  }
}

- (int64_t)_preferredTextAlignmentForEditing:(BOOL)a3
{
  if (a3)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_preferredTextAlignment
{
  v3 = [(SRCompactTextRequestField *)self isEditing];

  return [(SRCompactTextRequestField *)self _preferredTextAlignmentForEditing:v3];
}

- (void)_updateTextAlignmentForEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactTextRequestField *)self _preferredTextAlignmentForEditing:a3];
  if (v6 != [(SRCompactTextRequestField *)self textAlignment])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100089AD0;
    v9[3] = &unk_100166EA8;
    v9[4] = self;
    v9[5] = v6;
    v7 = objc_retainBlock(v9);
    v8 = v7;
    if (v4)
    {
      [UIView _animateUsingDefaultTimingWithOptions:6 animations:v7 completion:0];
    }

    else
    {
      (v7[2])(v7);
    }
  }
}

- (BOOL)_hasText
{
  v2 = [(SRCompactTextRequestField *)self text];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_textDidChange:(id)a3
{
  if ([(SRCompactTextRequestField *)self _hasText])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(SRCompactTextRequestField *)self setClearButtonMode:v4];
}

- (CGRect)_placeholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [SRCompactTextRequestField _frameForPlaceholderRectForBounds:"_frameForPlaceholderRectForBounds:alignment:layingOutContentRightToLeft:" alignment:? layingOutContentRightToLeft:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (a4 == 1)
  {
    UIRectCenteredXInRectScale();
    v19 = v18;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    [(SRCompactTextRequestField *)self _textRectForBounds:a4 alignment:v5 layingOutContentRightToLeft:x, y, width, height];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (v5)
    {
      v19 = CGRectGetMaxX(*&v23) - (v15 + 8.0);
    }

    else
    {
      v31 = [(SRCompactTextRequestField *)self leftView];
      [v31 frame];
      v33 = v32;
      v38.origin.x = v27;
      v38.origin.y = v28;
      v38.size.width = v29;
      v38.size.height = v30;
      v19 = CGRectGetMinX(v38) + v33;
    }
  }

  v34 = v19;
  v35 = v13;
  v36 = v15;
  v37 = v17;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = [(SRCompactTextRequestField *)self placeholder:a4];
  v15 = NSFontAttributeName;
  v9 = [(SRCompactTextRequestField *)self font];
  v16 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v8 boundingRectWithSize:0 options:v10 attributes:0 context:{width, height}];

  UIRectCenteredIntegralRectScale();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_textRectForBounds:(CGRect)a3 alignment:(int64_t)a4 layingOutContentRightToLeft:(BOOL)a5
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 == 1)
  {
    [(SRCompactTextRequestField *)self _frameForPlaceholderRectForBounds:1 alignment:a5 layingOutContentRightToLeft:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    v12 = v11;
  }

  else
  {
    v12 = a3.size.height + -26.0;
    v13 = a3.size.height + -26.0 + 8.0 + 13.0;
    if ([(SRCompactTextRequestField *)self _laysOutContentRightToLeft:a4])
    {
      v14 = v13;
    }

    else
    {
      v14 = 13.0;
    }

    v8 = x + v14;
    v9 = y + 13.0;
    v10 = width - (v13 + 13.0);
  }

  v15 = v12;
  result.size.height = v15;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_adjustTextOrEditingRect:(CGRect)a3 forBounds:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4.size.height - (a3.origin.y + a3.size.height);
  [(SRCompactTextRequestField *)self bounds];
  v11 = v10 - y - v9;
  [(SRCompactTextRequestField *)self _padding];
  v13 = v11 - v12;
  v14 = [(SRCompactTextRequestField *)self font];
  [v14 lineHeight];
  v16 = v13 - v15;

  v17 = height - v16;
  UIRectCenteredRect();
  v19 = v18;
  v20 = [(SRCompactTextRequestField *)self leftView];
  [v20 frame];
  v22 = x + v21;

  v23 = v22;
  v24 = v19;
  v25 = width;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SRCompactTextRequestField *)self _preferredTextAlignment];
  v9 = [(SRCompactTextRequestField *)self _laysOutContentRightToLeft];

  [(SRCompactTextRequestField *)self _placeholderRectForBounds:v8 alignment:v9 layingOutContentRightToLeft:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  [(SRCompactTextRequestField *)self _textRectForBounds:[(SRCompactTextRequestField *)self _preferredTextAlignment] alignment:[(SRCompactTextRequestField *)self _laysOutContentRightToLeft] layingOutContentRightToLeft:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [SRCompactTextRequestField _adjustTextOrEditingRect:"_adjustTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  [(SRCompactTextRequestField *)self _textRectForBounds:[(SRCompactTextRequestField *)self _preferredTextAlignment] alignment:[(SRCompactTextRequestField *)self _laysOutContentRightToLeft] layingOutContentRightToLeft:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [SRCompactTextRequestField _adjustTextOrEditingRect:"_adjustTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SRCompactTextRequestField *)self _laysOutContentRightToLeft];
  UIRectCenteredYInRectScale();
  if ([(SRCompactTextRequestField *)self textAlignment]== 1)
  {
    [(SRCompactTextRequestField *)self _placeholderRectForBounds:1 alignment:0 layingOutContentRightToLeft:x, y, width, height];
  }

  else
  {
    v8 = x;
    v9 = y;
    v10 = width;
    v11 = height;
  }

  v12 = [(SRCompactTextRequestField *)self leftView];

  if (v12)
  {
    v13 = [(SRCompactTextRequestField *)self leftView];
    [v13 frame];
  }

  UIRectCenteredYInRectScale();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SRCompactTextRequestField *)self _laysOutContentRightToLeft];
  UIRectCenteredYInRectScale();
  if ([(SRCompactTextRequestField *)self textAlignment]== 1)
  {
    [(SRCompactTextRequestField *)self _placeholderRectForBounds:1 alignment:1 layingOutContentRightToLeft:x, y, width, height];
  }

  else
  {
    v8 = x;
    v9 = y;
    v10 = width;
    v11 = height;
  }

  CGRectGetMaxX(*&v8);
  UIRectCenteredYInRectScale();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(SRCompactTextRequestField *)self _laysOutContentRightToLeft])
  {
    [(SRCompactTextRequestField *)self leftViewRectForBounds:x, y, width, height];
  }

  else
  {
    [(SRCompactTextRequestField *)self rightViewRectForBounds:x, y, width, height];
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v8.receiver = self;
  v8.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v8 intrinsicContentSize];
  v4 = v3;
  [(SRCompactTextRequestField *)self _preferredHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v15.receiver = self;
  v15.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v15 sizeThatFits:a3.width, a3.height];
  v6 = v5;
  v8 = v7;
  [(SRCompactTextRequestField *)self _preferredHeight];
  v10 = v9;
  if (!sub_10008D7D0(width, v9, v6, v8))
  {
    v11 = sub_10008D7E4(v6, v8, width, v10);
    width = sub_10008D7FC(v11);
    v10 = v12;
  }

  v13 = width;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v16 layoutSubviews];
  v3 = [(SRCompactTextRequestField *)self _suggestionsButton];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  suggestionsButton = self->_suggestionsButton;
  [(SRCompactTextRequestField *)self bounds];
  [(SRCompactTextRequestSiriSuggestionsButton *)suggestionsButton sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;
  [(SRCompactTextRequestField *)self bounds];
  Height = CGRectGetHeight(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v12;
  v18.size.height = v14;
  [v3 setFrame:{v5, (Height - CGRectGetHeight(v18)) * 0.5, v12, v14}];
  [(SRCompactTextRequestField *)self _updateVisualStyling];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v6 _setContinuousCornerRadius:?];
  v5 = [(SRCompactTextRequestField *)self _backgroundView];
  [v5 _setContinuousCornerRadius:a3];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(SRCompactTextRequestField *)self _updateBorderVisualStyling];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = SRCompactTextRequestField;
  v3 = [(SRCompactTextRequestField *)&v5 resignFirstResponder];
  if (v3)
  {
    [(SRCompactTextRequestField *)self setText:&stru_10016AE90];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v12 traitCollectionDidChange:v4];
  v5 = [(SRCompactTextRequestField *)self _styledViews];
  [v5 removeAllObjects];

  [(SRCompactTextRequestField *)self _updateVisualStyling];
  if (v4)
  {
    v6 = [v4 preferredContentSizeCategory];
    v7 = [(SRCompactTextRequestField *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    if (v6 != v8)
    {
      v9 = [(SRCompactTextRequestField *)self traitCollection];
      v10 = [v9 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

      if (IsAccessibilityCategory)
      {
        [(SRCompactTextRequestField *)self invalidateIntrinsicContentSize];
      }
    }
  }
}

- (void)textRequestSuggestionsButton:(id)a3 didEnableSuggestions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SRCompactTextRequestField *)self buttonDelegate];
  [v7 textRequestSuggestionsButton:v6 didEnableSuggestions:v4];
}

- (SRCompactTextRequestSiriSuggestionsButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end