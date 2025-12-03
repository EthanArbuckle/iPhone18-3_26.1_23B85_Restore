@interface SRCompactTextRequestField
- (BOOL)_hasText;
- (BOOL)resignFirstResponder;
- (CGRect)_adjustTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds;
- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left;
- (CGRect)_placeholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left;
- (CGRect)_textRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRCompactTextRequestField)initWithFrame:(CGRect)frame;
- (SRCompactTextRequestSiriSuggestionsButtonDelegate)buttonDelegate;
- (double)_preferredHeight;
- (id)_borderColorForUserInterfaceStyle:(int64_t)style;
- (int64_t)_preferredTextAlignment;
- (int64_t)_preferredTextAlignmentForEditing:(BOOL)editing;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_textDidChange:(id)change;
- (void)_updateBorderVisualStyling;
- (void)_updateStyleForAccessoryView:(id)view;
- (void)_updateStyleForClearButton;
- (void)_updateStyleForLeftView;
- (void)_updateStyleForPlaceholderView;
- (void)_updateStyleForRightView;
- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated;
- (void)_updateVisualStyling;
- (void)layoutSubviews;
- (void)textRequestSuggestionsButton:(id)button didEnableSuggestions:(BOOL)suggestions;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SRCompactTextRequestField

- (SRCompactTextRequestField)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = SRCompactTextRequestField;
  v3 = [(SRCompactTextRequestField *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(MTMaterialView *)v4->_backgroundView layer];
    [layer setBorderWidth:0.300000012];

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

- (id)_borderColorForUserInterfaceStyle:(int64_t)style
{
  if (style <= 2)
  {
    self = [UIColor colorWithWhite:dbl_1000F6B78[style] alpha:0.08, v3];
  }

  return self;
}

- (void)_updateBorderVisualStyling
{
  traitCollection = [(SRCompactTextRequestField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v8 = [(SRCompactTextRequestField *)self _borderColorForUserInterfaceStyle:userInterfaceStyle];
  _backgroundView = [(SRCompactTextRequestField *)self _backgroundView];
  layer = [_backgroundView layer];

  v7 = v8;
  [layer setBorderColor:{objc_msgSend(v8, "CGColor")}];
}

- (double)_preferredHeight
{
  font = [(SRCompactTextRequestField *)self font];
  [font lineHeight];
  v4 = v3 + 26.0;
  [font descender];
  v6 = fmax(v4 + v5, 48.0);

  return v6;
}

- (void)_updateVisualStyling
{
  traitCollection = [(SRCompactTextRequestField *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = sub_100088A08(preferredContentSizeCategory, UIContentSizeCategorySmall, UIContentSizeCategoryAccessibilityExtraExtraLarge);
  v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:v6];
  [(SRCompactTextRequestField *)self setFont:v7];
  _secondaryTintColor = [(SRCompactTextRequestField *)self _secondaryTintColor];
  _clearButton = [(SRCompactTextRequestField *)self _clearButton];
  v10 = dispatch_get_global_queue(21, 0);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10008941C;
  v20 = &unk_100167298;
  v21 = _secondaryTintColor;
  v22 = _clearButton;
  v11 = _clearButton;
  v12 = _secondaryTintColor;
  dispatch_async(v10, &v17);

  v13 = [UIColor whiteColor:v17];
  [(SRCompactTextRequestField *)self setTintColor:v13];

  v14 = +[UIColor whiteColor];
  [(SRCompactTextRequestField *)self setTextColor:v14];

  _placeholderLabel = [(SRCompactTextRequestField *)self _placeholderLabel];
  [_placeholderLabel setTextColor:v12];
  [(SRCompactTextRequestField *)self _updateStyleForLeftView];
  [(SRCompactTextRequestField *)self _updateStyleForRightView];
  [(SRCompactTextRequestField *)self _updateStyleForClearButton];
  [(SRCompactTextRequestField *)self _updateStyleForPlaceholderView];
  layer = [(SRCompactTextRequestField *)self layer];
  [layer setAllowsGroupBlending:0];
}

- (void)_updateStyleForPlaceholderView
{
  _placeholderView = [(SRCompactTextRequestField *)self _placeholderView];
  _styledViews = [(SRCompactTextRequestField *)self _styledViews];
  if (([_styledViews containsObject:_placeholderView] & 1) == 0)
  {
    _backgroundView = [(SRCompactTextRequestField *)self _backgroundView];
    v5 = [_backgroundView visualStylingProviderForCategory:1];
    [v5 automaticallyUpdateView:_placeholderView withStyle:1];

    layer = [_placeholderView layer];
    v7 = [CAFilter filterWithType:kCAFilterPlusL];
    [layer setCompositingFilter:v7];

    [_styledViews addObject:_placeholderView];
  }

  v8 = objc_opt_class();
  v9 = sub_100019948(v8, _placeholderView);
  [v9 setAdjustsFontSizeToFitWidth:1];
}

- (void)_updateStyleForAccessoryView:(id)view
{
  viewCopy = view;
  _styledViews = [(SRCompactTextRequestField *)self _styledViews];
  if (([_styledViews containsObject:viewCopy] & 1) == 0)
  {
    _backgroundView = [(SRCompactTextRequestField *)self _backgroundView];
    v6 = [_backgroundView visualStylingProviderForCategory:1];
    [v6 automaticallyUpdateView:viewCopy withStyle:1];

    layer = [viewCopy layer];
    v8 = [CAFilter filterWithType:kCAFilterPlusL];
    [layer setCompositingFilter:v8];

    [viewCopy setContentMode:1];
    [_styledViews addObject:viewCopy];
  }
}

- (void)_updateStyleForLeftView
{
  if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) == 0)
  {
    leftView = [(SRCompactTextRequestField *)self leftView];
    [(SRCompactTextRequestField *)self _updateStyleForAccessoryView:leftView];
  }
}

- (void)_updateStyleForRightView
{
  rightView = [(SRCompactTextRequestField *)self rightView];
  [(SRCompactTextRequestField *)self _updateStyleForAccessoryView:rightView];
}

- (void)_updateStyleForClearButton
{
  _clearButton = [(SRCompactTextRequestField *)self _clearButton];
  _styledViews = [(SRCompactTextRequestField *)self _styledViews];
  if (([_styledViews containsObject:_clearButton] & 1) == 0)
  {
    _backgroundView = [(SRCompactTextRequestField *)self _backgroundView];
    v5 = [_backgroundView visualStylingProviderForCategory:1];
    [v5 automaticallyUpdateView:_clearButton withStyle:1];

    layer = [_clearButton layer];
    v7 = [CAFilter filterWithType:kCAFilterPlusL];
    [layer setCompositingFilter:v7];

    [_clearButton setContentMode:1];
    [_styledViews addObject:_clearButton];
  }
}

- (int64_t)_preferredTextAlignmentForEditing:(BOOL)editing
{
  if (editing)
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
  isEditing = [(SRCompactTextRequestField *)self isEditing];

  return [(SRCompactTextRequestField *)self _preferredTextAlignmentForEditing:isEditing];
}

- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SRCompactTextRequestField *)self _preferredTextAlignmentForEditing:editing];
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
    if (animatedCopy)
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
  text = [(SRCompactTextRequestField *)self text];
  v3 = [text length] != 0;

  return v3;
}

- (void)_textDidChange:(id)change
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

- (CGRect)_placeholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left
{
  leftCopy = left;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [SRCompactTextRequestField _frameForPlaceholderRectForBounds:"_frameForPlaceholderRectForBounds:alignment:layingOutContentRightToLeft:" alignment:? layingOutContentRightToLeft:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (alignment == 1)
  {
    UIRectCenteredXInRectScale();
    v19 = v18;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    [(SRCompactTextRequestField *)self _textRectForBounds:alignment alignment:leftCopy layingOutContentRightToLeft:x, y, width, height];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (leftCopy)
    {
      v19 = CGRectGetMaxX(*&v23) - (v15 + 8.0);
    }

    else
    {
      leftView = [(SRCompactTextRequestField *)self leftView];
      [leftView frame];
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

- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left
{
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = [(SRCompactTextRequestField *)self placeholder:alignment];
  v15 = NSFontAttributeName;
  font = [(SRCompactTextRequestField *)self font];
  v16 = font;
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v8 boundingRectWithSize:0 options:v10 attributes:0 context:{width, height}];

  UIRectCenteredIntegralRectScale();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_textRectForBounds:(CGRect)bounds alignment:(int64_t)alignment layingOutContentRightToLeft:(BOOL)left
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (alignment == 1)
  {
    [(SRCompactTextRequestField *)self _frameForPlaceholderRectForBounds:1 alignment:left layingOutContentRightToLeft:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
    v12 = v11;
  }

  else
  {
    v12 = bounds.size.height + -26.0;
    v13 = bounds.size.height + -26.0 + 8.0 + 13.0;
    if ([(SRCompactTextRequestField *)self _laysOutContentRightToLeft:alignment])
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

- (CGRect)_adjustTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height - (rect.origin.y + rect.size.height);
  [(SRCompactTextRequestField *)self bounds];
  v11 = v10 - y - v9;
  [(SRCompactTextRequestField *)self _padding];
  v13 = v11 - v12;
  font = [(SRCompactTextRequestField *)self font];
  [font lineHeight];
  v16 = v13 - v15;

  v17 = height - v16;
  UIRectCenteredRect();
  v19 = v18;
  leftView = [(SRCompactTextRequestField *)self leftView];
  [leftView frame];
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

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _preferredTextAlignment = [(SRCompactTextRequestField *)self _preferredTextAlignment];
  _laysOutContentRightToLeft = [(SRCompactTextRequestField *)self _laysOutContentRightToLeft];

  [(SRCompactTextRequestField *)self _placeholderRectForBounds:_preferredTextAlignment alignment:_laysOutContentRightToLeft layingOutContentRightToLeft:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  [(SRCompactTextRequestField *)self _textRectForBounds:[(SRCompactTextRequestField *)self _preferredTextAlignment] alignment:[(SRCompactTextRequestField *)self _laysOutContentRightToLeft] layingOutContentRightToLeft:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  [SRCompactTextRequestField _adjustTextOrEditingRect:"_adjustTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  [(SRCompactTextRequestField *)self _textRectForBounds:[(SRCompactTextRequestField *)self _preferredTextAlignment] alignment:[(SRCompactTextRequestField *)self _laysOutContentRightToLeft] layingOutContentRightToLeft:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  [SRCompactTextRequestField _adjustTextOrEditingRect:"_adjustTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

  leftView = [(SRCompactTextRequestField *)self leftView];

  if (leftView)
  {
    leftView2 = [(SRCompactTextRequestField *)self leftView];
    [leftView2 frame];
  }

  UIRectCenteredYInRectScale();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v15.receiver = self;
  v15.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v15 sizeThatFits:fits.width, fits.height];
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
  _suggestionsButton = [(SRCompactTextRequestField *)self _suggestionsButton];
  [_suggestionsButton frame];
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
  [_suggestionsButton setFrame:{v5, (Height - CGRectGetHeight(v18)) * 0.5, v12, v14}];
  [(SRCompactTextRequestField *)self _updateVisualStyling];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v6 _setContinuousCornerRadius:?];
  _backgroundView = [(SRCompactTextRequestField *)self _backgroundView];
  [_backgroundView _setContinuousCornerRadius:radius];
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
  resignFirstResponder = [(SRCompactTextRequestField *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(SRCompactTextRequestField *)self setText:&stru_10016AE90];
  }

  return resignFirstResponder;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = SRCompactTextRequestField;
  [(SRCompactTextRequestField *)&v12 traitCollectionDidChange:changeCopy];
  _styledViews = [(SRCompactTextRequestField *)self _styledViews];
  [_styledViews removeAllObjects];

  [(SRCompactTextRequestField *)self _updateVisualStyling];
  if (changeCopy)
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    traitCollection = [(SRCompactTextRequestField *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

    if (preferredContentSizeCategory != preferredContentSizeCategory2)
    {
      traitCollection2 = [(SRCompactTextRequestField *)self traitCollection];
      preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

      if (IsAccessibilityCategory)
      {
        [(SRCompactTextRequestField *)self invalidateIntrinsicContentSize];
      }
    }
  }
}

- (void)textRequestSuggestionsButton:(id)button didEnableSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  buttonCopy = button;
  buttonDelegate = [(SRCompactTextRequestField *)self buttonDelegate];
  [buttonDelegate textRequestSuggestionsButton:buttonCopy didEnableSuggestions:suggestionsCopy];
}

- (SRCompactTextRequestSiriSuggestionsButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end