@interface SRCompactTextRequestView
- (BOOL)_shouldShowCancelButton;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRCompactTextRequestView)initWithFrame:(CGRect)frame;
- (SRCompactTextRequestViewDelegate)delegate;
- (double)_preferredHeight;
- (void)_accessibilityBoldStatusDidChange:(id)change;
- (void)_beginEditing;
- (void)_beginEditingGestureWasRecognized:(id)recognized;
- (void)_cancelButtonWasTapped:(id)tapped;
- (void)_setShowingCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)setAllowsCancellation:(BOOL)cancellation;
- (void)textField:(id)field willDismissEditMenuWithAnimator:(id)animator;
- (void)textField:(id)field willPresentEditMenuWithAnimator:(id)animator;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textRequestSuggestionsButton:(id)button didEnableSuggestions:(BOOL)suggestions;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SRCompactTextRequestView

- (SRCompactTextRequestView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = SRCompactTextRequestView;
  v3 = [(SRCompactTextRequestView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
      inputAssistantItem = [(SRCompactTextRequestField *)v3->_textField inputAssistantItem];
      v18 = [UIImage _systemImageNamed:@"siri"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100080A4C;
      v21[3] = &unk_100168B90;
      v22 = v3;
      v19 = [UIAction actionWithTitle:@"siri" image:v18 identifier:0 handler:v21];
      [inputAssistantItem _setDictationReplacementAction:v19];
    }
  }

  return v3;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [selectionCopy text];

  [WeakRetained textRequestView:self didChangeTextFieldText:text];
}

- (void)_beginEditing
{
  delegate = [(SRCompactTextRequestView *)self delegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100080BB4;
  v4[3] = &unk_100168888;
  v4[4] = self;
  [delegate textRequestView:self requestsKeyboardWithCompletion:v4];
}

- (void)_beginEditingGestureWasRecognized:(id)recognized
{
  if ([recognized state] == 3)
  {

    [(SRCompactTextRequestView *)self _beginEditing];
  }
}

- (void)setAllowsCancellation:(BOOL)cancellation
{
  self->_allowsCancellation = cancellation & ~+[AFSystemAssistantExperienceStatusManager saeAvailable];
  _shouldShowCancelButton = [(SRCompactTextRequestView *)self _shouldShowCancelButton];

  [(SRCompactTextRequestView *)self _setShowingCancelButton:_shouldShowCancelButton];
}

- (BOOL)_shouldShowCancelButton
{
  allowsCancellation = [(SRCompactTextRequestView *)self allowsCancellation];
  if (allowsCancellation)
  {

    LOBYTE(allowsCancellation) = [(SRCompactTextRequestView *)self isFirstResponder];
  }

  return allowsCancellation;
}

- (void)_setShowingCancelButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showingCancelButton != button)
  {
    animatedCopy = animated;
    v7 = +[UIView _isInAnimationBlock];
    self->_showingCancelButton = button;
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
      v10 = !animatedCopy;
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

- (void)_cancelButtonWasTapped:(id)tapped
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  [_textField setText:&stru_10016AE90];

  [(SRCompactTextRequestView *)self resignFirstResponder];
}

- (void)_updateCancelButtonFont
{
  traitCollection = [(SRCompactTextRequestView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = sub_100088A08(preferredContentSizeCategory, UIContentSizeCategoryExtraSmall, UIContentSizeCategoryAccessibilityExtraExtraLarge);
  v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v9];
  _cancelButton = [(SRCompactTextRequestView *)self _cancelButton];
  titleLabel = [_cancelButton titleLabel];
  [titleLabel setFont:v6];

  [_cancelButton sizeToFit];
}

- (double)_preferredHeight
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  [_textField intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (void)_accessibilityBoldStatusDidChange:(id)change
{
  [(SRCompactTextRequestView *)self _updateCancelButtonFont];
  [(SRCompactTextRequestView *)self setNeedsLayout];

  [(SRCompactTextRequestView *)self layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  [_textField intrinsicContentSize];
  v5 = v4;

  [(SRCompactTextRequestView *)self _preferredHeight];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _textField = [(SRCompactTextRequestView *)self _textField];
  [_textField sizeThatFits:{width, height}];
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
  _textField = [(SRCompactTextRequestView *)self _textField];
  _cancelButton = [(SRCompactTextRequestView *)self _cancelButton];
  [(SRCompactTextRequestView *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  [_textField intrinsicContentSize];
  [_cancelButton frame];
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

  [_textField setBounds:{CGPointZero.x, y, rect - (left + right), v20 - (UIEdgeInsetsZero.top + bottom)}];
  UIRectGetCenter();
  [_textField setCenter:?];
  [_cancelButton frame];
  v26.origin.x = v21;
  v26.origin.y = v22;
  v26.size.width = rect;
  v26.size.height = v20;
  CGRectGetMidY(v26);
  _isShowingCancelButton = [(SRCompactTextRequestView *)self _isShowingCancelButton];
  _laysOutContentRightToLeft = [(SRCompactTextRequestView *)self _laysOutContentRightToLeft];
  if (_isShowingCancelButton)
  {
    v16 = v21;
    v17 = v22;
    v18 = rect;
    v19 = v20;
    if (!_laysOutContentRightToLeft)
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
    if (!_laysOutContentRightToLeft)
    {
      CGRectGetMaxX(*&v16);
      goto LABEL_12;
    }
  }

  CGRectGetMinX(*&v16);
LABEL_12:
  UIRectIntegralWithScale();
  [_cancelButton setBounds:{CGPointZero.x, y}];
  UIRectGetCenter();
  [_cancelButton setCenter:?];
}

- (BOOL)canBecomeFirstResponder
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  canBecomeFirstResponder = [_textField canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  canResignFirstResponder = [_textField canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestView;
  [(SRCompactTextRequestView *)&v6 resignFirstResponder];
  _textField = [(SRCompactTextRequestView *)self _textField];
  resignFirstResponder = [_textField resignFirstResponder];

  return resignFirstResponder;
}

- (BOOL)isFirstResponder
{
  _textField = [(SRCompactTextRequestView *)self _textField];
  isEditing = [_textField isEditing];

  return isEditing;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _beginEditingGestureRecognizer = [(SRCompactTextRequestView *)self _beginEditingGestureRecognizer];

  if (_beginEditingGestureRecognizer == beginCopy)
  {
    _textField = [(SRCompactTextRequestView *)self _textField];
    v6 = [_textField isEditing] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  if ([(SRCompactTextRequestView *)self allowsCancellation])
  {
    [(SRCompactTextRequestView *)self _setShowingCancelButton:1 animated:1];
  }

  delegate = [(SRCompactTextRequestView *)self delegate];
  [delegate textRequestViewWillBeginEditing:self];

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  delegate = [(SRCompactTextRequestView *)self delegate];
  [delegate textRequestView:self siriRequestCommittedWithText:text];

  if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) == 0)
  {
    [(SRCompactTextRequestView *)self resignFirstResponder];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(SRCompactTextRequestView *)self _setShowingCancelButton:0 animated:1];
  delegate = [(SRCompactTextRequestView *)self delegate];
  [delegate textRequestViewDidEndEditing:self];
}

- (void)textField:(id)field willPresentEditMenuWithAnimator:(id)animator
{
  v5 = [(SRCompactTextRequestView *)self delegate:field];
  [v5 textRequestViewWillBeginTextEditMenuInteraction:self];
}

- (void)textField:(id)field willDismissEditMenuWithAnimator:(id)animator
{
  fieldCopy = field;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000817F8;
  v8[3] = &unk_1001676A0;
  objc_copyWeak(&v9, &location);
  [animatorCopy addCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SRCompactTextRequestView;
  [(SRCompactTextRequestView *)&v4 traitCollectionDidChange:change];
  [(SRCompactTextRequestView *)self _updateCancelButtonFont];
  [(SRCompactTextRequestView *)self setNeedsLayout];
  [(SRCompactTextRequestView *)self layoutIfNeeded];
}

- (void)textRequestSuggestionsButton:(id)button didEnableSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  delegate = [(SRCompactTextRequestView *)self delegate];
  [delegate textRequestView:self didEnableSuggestions:suggestionsCopy];
}

- (SRCompactTextRequestViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end