@interface SRCompactTextRequestView
- (BOOL)_shouldShowCancelButton;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SRCompactTextRequestView)initWithFrame:(CGRect)a3;
- (SRCompactTextRequestViewDelegate)delegate;
- (double)_preferredHeight;
- (void)_accessibilityBoldStatusDidChange:(id)a3;
- (void)_beginEditing;
- (void)_beginEditingGestureWasRecognized:(id)a3;
- (void)_cancelButtonWasTapped:(id)a3;
- (void)_setShowingCancelButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)setAllowsCancellation:(BOOL)a3;
- (void)textField:(id)a3 willDismissEditMenuWithAnimator:(id)a4;
- (void)textField:(id)a3 willPresentEditMenuWithAnimator:(id)a4;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)textRequestSuggestionsButton:(id)a3 didEnableSuggestions:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SRCompactTextRequestView

- (SRCompactTextRequestView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = SRCompactTextRequestView;
  v3 = [(SRCompactTextRequestView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v4;

    v6 = v3->_cancelButton;
    v7 = sub_100056184(@"TYPE_TO_SIRI_CANCEL_BUTTON_TITLE");
    [(UIButton *)v6 setTitle:v7 forState:0];

    [(UIButton *)v3->_cancelButton sizeToFit];
    [(UIButton *)v3->_cancelButton setAlpha:0.0];
    [(UIButton *)v3->_cancelButton addTarget:v3 action:"_cancelButtonWasTapped:" forControlEvents:64];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_accessibilityBoldStatusDidChange:" name:UIAccessibilityBoldTextStatusDidChangeNotification object:0];

    [(SRCompactTextRequestView *)v3 addSubview:v3->_cancelButton];
    [(SRCompactTextRequestView *)v3 _updateCancelButtonFont];
    v9 = objc_alloc_init(SRCompactTextRequestField);
    textField = v3->_textField;
    v3->_textField = v9;

    [(SRCompactTextRequestField *)v3->_textField setInlinePredictionType:2];
    [(SRCompactTextRequestField *)v3->_textField setDelegate:v3];
    [(SRCompactTextRequestField *)v3->_textField setButtonDelegate:v3];
    if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
    {
      v11 = 13;
    }

    else
    {
      v11 = 1;
    }

    [(SRCompactTextRequestField *)v3->_textField setKeyboardAppearance:v11];
    if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
    {
      v12 = @"TYPE_TO_SIRI_TEXT_PLACEHOLDER_SAE";
    }

    else
    {
      v12 = @"TYPE_TO_SIRI_TEXT_PLACEHOLDER";
    }

    v13 = v3->_textField;
    v14 = sub_100056184(v12);
    [(SRCompactTextRequestField *)v13 setPlaceholder:v14];

    [(SRCompactTextRequestView *)v3 addSubview:v3->_textField];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_beginEditingGestureWasRecognized:"];
    beginEditingGestureRecognizer = v3->_beginEditingGestureRecognizer;
    v3->_beginEditingGestureRecognizer = v15;

    [(UIGestureRecognizer *)v3->_beginEditingGestureRecognizer setDelegate:v3];
    [(SRCompactTextRequestField *)v3->_textField addGestureRecognizer:v3->_beginEditingGestureRecognizer];
    if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
    {
      v17 = [(SRCompactTextRequestField *)v3->_textField inputAssistantItem];
      v18 = [UIImage _systemImageNamed:@"siri"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100080A4C;
      v21[3] = &unk_100168B90;
      v22 = v3;
      v19 = [UIAction actionWithTitle:@"siri" image:v18 identifier:0 handler:v21];
      [v17 _setDictationReplacementAction:v19];
    }
  }

  return v3;
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 text];

  [WeakRetained textRequestView:self didChangeTextFieldText:v5];
}

- (void)_beginEditing
{
  v3 = [(SRCompactTextRequestView *)self delegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100080BB4;
  v4[3] = &unk_100168888;
  v4[4] = self;
  [v3 textRequestView:self requestsKeyboardWithCompletion:v4];
}

- (void)_beginEditingGestureWasRecognized:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SRCompactTextRequestView *)self _beginEditing];
  }
}

- (void)setAllowsCancellation:(BOOL)a3
{
  self->_allowsCancellation = a3 & ~+[AFSystemAssistantExperienceStatusManager saeAvailable];
  v4 = [(SRCompactTextRequestView *)self _shouldShowCancelButton];

  [(SRCompactTextRequestView *)self _setShowingCancelButton:v4];
}

- (BOOL)_shouldShowCancelButton
{
  v3 = [(SRCompactTextRequestView *)self allowsCancellation];
  if (v3)
  {

    LOBYTE(v3) = [(SRCompactTextRequestView *)self isFirstResponder];
  }

  return v3;
}

- (void)_setShowingCancelButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingCancelButton != a3)
  {
    v4 = a4;
    v7 = +[UIView _isInAnimationBlock];
    self->_showingCancelButton = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100080E08;
    v11[3] = &unk_100167010;
    v11[4] = self;
    v8 = objc_retainBlock(v11);
    v9 = v8;
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = !v4;
    }

    if (v10)
    {
      (v8[2])(v8);
    }

    else
    {
      [UIView _animateUsingDefaultTimingWithOptions:6 animations:v8 completion:0];
    }
  }
}

- (void)_cancelButtonWasTapped:(id)a3
{
  v4 = [(SRCompactTextRequestView *)self _textField];
  [v4 setText:&stru_10016AE90];

  [(SRCompactTextRequestView *)self resignFirstResponder];
}

- (void)_updateCancelButtonFont
{
  v3 = [(SRCompactTextRequestView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_100088A08(v4, UIContentSizeCategoryExtraSmall, UIContentSizeCategoryAccessibilityExtraExtraLarge);
  v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v9];
  v7 = [(SRCompactTextRequestView *)self _cancelButton];
  v8 = [v7 titleLabel];
  [v8 setFont:v6];

  [v7 sizeToFit];
}

- (double)_preferredHeight
{
  v2 = [(SRCompactTextRequestView *)self _textField];
  [v2 intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (void)_accessibilityBoldStatusDidChange:(id)a3
{
  [(SRCompactTextRequestView *)self _updateCancelButtonFont];
  [(SRCompactTextRequestView *)self setNeedsLayout];

  [(SRCompactTextRequestView *)self layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SRCompactTextRequestView *)self _textField];
  [v3 intrinsicContentSize];
  v5 = v4;

  [(SRCompactTextRequestView *)self _preferredHeight];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SRCompactTextRequestView *)self _textField];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;

  [(SRCompactTextRequestView *)self _preferredHeight];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SRCompactTextRequestView;
  [(SRCompactTextRequestView *)&v25 layoutSubviews];
  [(SRCompactTextRequestView *)self bounds];
  v3 = [(SRCompactTextRequestView *)self _textField];
  v4 = [(SRCompactTextRequestView *)self _cancelButton];
  [(SRCompactTextRequestView *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  [v3 intrinsicContentSize];
  [v4 frame];
  v6 = v5;
  y = CGPointZero.y;
  UIRectCenteredIntegralRect();
  v21 = v7;
  v22 = v8;
  rect = v9;
  v20 = v10;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if ([(SRCompactTextRequestView *)self _isShowingCancelButton])
  {
    if ([(SRCompactTextRequestView *)self _laysOutContentRightToLeft])
    {
      left = v6 + 12.0 + left;
    }

    else
    {
      right = v6 + 12.0 + right;
    }
  }

  [v3 setBounds:{CGPointZero.x, y, rect - (left + right), v20 - (UIEdgeInsetsZero.top + bottom)}];
  UIRectGetCenter();
  [v3 setCenter:?];
  [v4 frame];
  v26.origin.x = v21;
  v26.origin.y = v22;
  v26.size.width = rect;
  v26.size.height = v20;
  CGRectGetMidY(v26);
  v14 = [(SRCompactTextRequestView *)self _isShowingCancelButton];
  v15 = [(SRCompactTextRequestView *)self _laysOutContentRightToLeft];
  if (v14)
  {
    v16 = v21;
    v17 = v22;
    v18 = rect;
    v19 = v20;
    if (!v15)
    {
      CGRectGetMaxX(*&v16);
      goto LABEL_12;
    }
  }

  else
  {
    v16 = v21;
    v17 = v22;
    v18 = rect;
    v19 = v20;
    if (!v15)
    {
      CGRectGetMaxX(*&v16);
      goto LABEL_12;
    }
  }

  CGRectGetMinX(*&v16);
LABEL_12:
  UIRectIntegralWithScale();
  [v4 setBounds:{CGPointZero.x, y}];
  UIRectGetCenter();
  [v4 setCenter:?];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(SRCompactTextRequestView *)self _textField];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(SRCompactTextRequestView *)self _textField];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestView;
  [(SRCompactTextRequestView *)&v6 resignFirstResponder];
  v3 = [(SRCompactTextRequestView *)self _textField];
  v4 = [v3 resignFirstResponder];

  return v4;
}

- (BOOL)isFirstResponder
{
  v2 = [(SRCompactTextRequestView *)self _textField];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactTextRequestView *)self _beginEditingGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(SRCompactTextRequestView *)self _textField];
    v6 = [v7 isEditing] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  if ([(SRCompactTextRequestView *)self allowsCancellation])
  {
    [(SRCompactTextRequestView *)self _setShowingCancelButton:1 animated:1];
  }

  v4 = [(SRCompactTextRequestView *)self delegate];
  [v4 textRequestViewWillBeginEditing:self];

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  v5 = [(SRCompactTextRequestView *)self delegate];
  [v5 textRequestView:self siriRequestCommittedWithText:v4];

  if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) == 0)
  {
    [(SRCompactTextRequestView *)self resignFirstResponder];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  [(SRCompactTextRequestView *)self _setShowingCancelButton:0 animated:1];
  v4 = [(SRCompactTextRequestView *)self delegate];
  [v4 textRequestViewDidEndEditing:self];
}

- (void)textField:(id)a3 willPresentEditMenuWithAnimator:(id)a4
{
  v5 = [(SRCompactTextRequestView *)self delegate:a3];
  [v5 textRequestViewWillBeginTextEditMenuInteraction:self];
}

- (void)textField:(id)a3 willDismissEditMenuWithAnimator:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000817F8;
  v8[3] = &unk_1001676A0;
  objc_copyWeak(&v9, &location);
  [v7 addCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = SRCompactTextRequestView;
  [(SRCompactTextRequestView *)&v4 traitCollectionDidChange:a3];
  [(SRCompactTextRequestView *)self _updateCancelButtonFont];
  [(SRCompactTextRequestView *)self setNeedsLayout];
  [(SRCompactTextRequestView *)self layoutIfNeeded];
}

- (void)textRequestSuggestionsButton:(id)a3 didEnableSuggestions:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactTextRequestView *)self delegate];
  [v6 textRequestView:self didEnableSuggestions:v4];
}

- (SRCompactTextRequestViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end