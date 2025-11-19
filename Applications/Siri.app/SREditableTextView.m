@interface SREditableTextView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SREditableTextView)initWithFrame:(CGRect)a3 presentationStyle:(int64_t)a4;
- (SREditableTextViewDelegate)delegate;
- (double)_indentWidth;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (id)_createVisualEffectBackgroundViewForTextView:(id)a3 topOffset:(double *)a4;
- (void)_adjustLineSpacing;
- (void)_handleTap:(id)a3;
- (void)_requestKeyboardFocusAndBecomeFirstResponder;
- (void)endEditingAndCorrect:(BOOL)a3;
- (void)layoutSubviews;
- (void)setDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)utteranceTextDidReceiveReturnKey:(id)a3;
- (void)utteranceTextDidResignFirstResponder:(id)a3;
@end

@implementation SREditableTextView

- (SREditableTextView)initWithFrame:(CGRect)a3 presentationStyle:(int64_t)a4
{
  v30.receiver = self;
  v30.super_class = SREditableTextView;
  v5 = [(SREditableTextView *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_presentationStyle = a4;
    IsRTL = SiriLanguageIsRTL();
    v8 = 2;
    if (!IsRTL)
    {
      v8 = 0;
    }

    v6->_textAlignment = v8;
    v9 = [SRSpeechRecognizedCorrectionTextView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [(SRSpeechRecognizedCorrectionTextView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
    textView = v6->_textView;
    v6->_textView = v13;

    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setDelegate:v6];
    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody variant:256];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setFont:v15];
    v16 = v6->_textView;
    v17 = +[UIColor clearColor];
    [(SRSpeechRecognizedCorrectionTextView *)v16 setBackgroundColor:v17];

    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setTextAlignment:v6->_textAlignment];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setBounces:0];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setClipsToBounds:0];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setScrollEnabled:0];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setReturnKeyType:9];
    [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    if (v6->_presentationStyle == 1)
    {
      v6->_topOffsetForTextView = 8.0;
      v18 = v6->_textView;
      v19 = +[UIColor labelColor];
      [(SRSpeechRecognizedCorrectionTextView *)v18 setTextColor:v19];

      [(SRSpeechRecognizedCorrectionTextView *)v6->_textView setKeyboardAppearance:0];
      v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      backgroundView = v6->_backgroundView;
      v6->_backgroundView = v20;

      v22 = v6->_backgroundView;
      v23 = +[UIColor systemFillColor];
      [(UIView *)v22 setBackgroundColor:v23];
    }

    else
    {
      v24 = [(SREditableTextView *)v6 _createVisualEffectBackgroundViewForTextView:v6->_textView topOffset:&v6->_topOffsetForTextView];
      v23 = v6->_backgroundView;
      v6->_backgroundView = v24;
    }

    [(UIView *)v6->_backgroundView _setContinuousCornerRadius:10.0];
    [(UIView *)v6->_backgroundView setUserInteractionEnabled:0];
    [(SREditableTextView *)v6 insertSubview:v6->_backgroundView below:v6->_textView];
    v25 = [(SRSpeechRecognizedCorrectionTextView *)v6->_textView font];
    [v25 _scaledValueForValue:8.0];
    v6->_heightOffsetForTextView = v26 + v6->_topOffsetForTextView;

    [(SREditableTextView *)v6 addSubview:v6->_textView];
    v27 = SiriUIDefaultEdgePadding;
    v6->_edgeInsets.top = 0.0;
    v6->_edgeInsets.leading = v27;
    v6->_edgeInsets.bottom = 0.0;
    v6->_edgeInsets.trailing = v27;
    v28 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"_handleTap:"];
    [(SREditableTextView *)v6 addGestureRecognizer:v28];
  }

  return v6;
}

- (double)firstLineBaselineOffsetFromTop
{
  v2 = +[UIFont siriui_userUtteranceFont];
  [v2 ascender];
  v4 = v3;

  return v4;
}

- (double)baselineOffsetFromBottom
{
  v2 = +[UIFont siriui_userUtteranceFont];
  [v2 descender];
  v4 = -v3;

  return v4;
}

- (void)setText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_10016AE90;
  }

  v6 = v5;
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView setText:?];
  [(SREditableTextView *)self _adjustLineSpacing];
  [(SREditableTextView *)self setNeedsLayout];
}

- (void)setTextAlignment:(int64_t)a3
{
  self->_textAlignment = a3;
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView setTextAlignment:?];

  [(SREditableTextView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = -88.0;
  if (self->_presentationStyle == 1)
  {
    v5 = -52.0;
  }

  [(SRSpeechRecognizedCorrectionTextView *)self->_textView sizeThatFits:width + v5, 1.79769313e308];
  v7 = v6 + self->_heightOffsetForTextView;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SREditableTextView *)self bounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)layoutSubviews
{
  [(SREditableTextView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v16.receiver = self;
  v16.super_class = SREditableTextView;
  [(SREditableTextView *)&v16 layoutSubviews];
  [(SREditableTextView *)self bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  presentationStyle = self->_presentationStyle;
  v8 = CGRectGetWidth(v17);
  v9 = -88.0;
  if (presentationStyle == 1)
  {
    v9 = -52.0;
  }

  v10 = v8 + v9;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView sizeThatFits:v10, CGRectGetHeight(v18)];
  v12 = 44.0;
  if (self->_presentationStyle == 1)
  {
    v12 = 26.0;
  }

  [(SRSpeechRecognizedCorrectionTextView *)self->_textView setFrame:v12, self->_topOffsetForTextView, v10, v11];
  v13 = self->_presentationStyle;
  v14 = 30.0;
  if (v13 == 1)
  {
    v14 = 14.0;
  }

  v15 = -60.0;
  if (v13 == 1)
  {
    v15 = -28.0;
  }

  [(UIView *)self->_backgroundView setFrame:v14, y, width + v15, height];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = SREditableTextView;
  [(SREditableTextView *)&v4 resignFirstResponder];
  return [(SRSpeechRecognizedCorrectionTextView *)self->_textView resignFirstResponder];
}

- (void)_handleTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SREditableTextView *)self _requestKeyboardFocusAndBecomeFirstResponder];
  }
}

- (void)_requestKeyboardFocusAndBecomeFirstResponder
{
  objc_initWeak(&location, self);
  v3 = [(SREditableTextView *)self delegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034928;
  v4[3] = &unk_1001677D8;
  objc_copyWeak(&v5, &location);
  [v3 editableTextViewRequestKeyboardForTapToEditWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)endEditingAndCorrect:(BOOL)a3
{
  v3 = a3;
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView resignFirstResponder];
  if (v3)
  {
    v5 = [(SREditableTextView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SREditableTextView *)self delegate];
      [v7 editableTextViewTextDidFinishCorrecting:self];
    }
  }
}

- (void)_adjustLineSpacing
{
  v6 = objc_alloc_init(NSMutableParagraphStyle);
  v3 = [(SRSpeechRecognizedCorrectionTextView *)self->_textView font];
  [v3 _scaledValueForValue:1.0];
  [v6 setLineSpacing:?];

  v4 = [(SRSpeechRecognizedCorrectionTextView *)self->_textView attributedText];
  v5 = [v4 mutableCopy];

  [v5 addAttribute:NSParagraphStyleAttributeName value:v6 range:{0, objc_msgSend(v5, "length")}];
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView setAttributedText:v5];
}

- (void)setDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  [(SRSpeechRecognizedCorrectionTextView *)self->_textView _setDictationResult:a3 withCorrectionIdentifier:a4];
  [(SREditableTextView *)self _adjustLineSpacing];
  textView = self->_textView;

  [(SRSpeechRecognizedCorrectionTextView *)textView setNeedsLayout];
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = [(SREditableTextView *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v4 editableTextViewTextShouldPreventCorrection:self])
  {
    v5 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 editableTextViewTextWillBeginCorrecting:self];
    }

    v5 = 1;
  }

  return v5;
}

- (void)textViewDidEndEditing:(id)a3
{
  if (self->_didCorrect)
  {
    self->_didCorrect = 0;
  }

  else
  {
    [(SREditableTextView *)self endEditingAndCorrect:0];
  }
}

- (void)textViewDidChange:(id)a3
{
  v4 = [a3 window];

  if (v4)
  {
    v5 = [(SREditableTextView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 editableTextViewTextDidChange:self];
    }
  }
}

- (double)_indentWidth
{
  v2 = 28.0;
  if ((SiriUIIsCompactWidth() & 1) == 0)
  {
    if (SiriUIIsCompactHeight())
    {
      return 28.0;
    }

    else
    {
      return 31.0;
    }
  }

  return v2;
}

- (void)utteranceTextDidResignFirstResponder:(id)a3
{
  v4 = [(SREditableTextView *)self delegate];
  [v4 editableTextViewTextDidResignFirstResponder:self];

  [(SREditableTextView *)self setNeedsLayout];
}

- (void)utteranceTextDidReceiveReturnKey:(id)a3
{
  self->_didCorrect = 1;
  [(SREditableTextView *)self endEditingAndCorrect:1];
  v4 = [(SREditableTextView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SREditableTextView *)self delegate];
    [v6 editableTextViewTextDidReceiveReturnKey:self];
  }
}

- (id)_createVisualEffectBackgroundViewForTextView:(id)a3 topOffset:(double *)a4
{
  v5 = a3;
  v6 = [v5 font];
  v7 = [v5 font];
  [v7 ascender];
  [v6 _scaledValueForValue:29.0 - v8];
  *a4 = v9;

  v10 = +[UIColor whiteColor];
  [v5 setTextColor:v10];

  v11 = [UIVisualEffectView alloc];
  v12 = +[UIVibrancyEffect siriui_userUtteranceEditModeVibrancyEffect];
  v13 = [v11 initWithEffect:v12];

  v14 = [v13 contentView];
  [v14 _setContinuousCornerRadius:10.0];

  v15 = [v13 contentView];
  v16 = +[UIColor whiteColor];
  [v15 setBackgroundColor:v16];

  return v13;
}

- (SREditableTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end