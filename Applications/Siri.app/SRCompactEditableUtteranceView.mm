@interface SRCompactEditableUtteranceView
- (SRCompactEditableUtteranceView)initWithFrame:(CGRect)frame userUtterance:(id)utterance delegate:(id)delegate;
- (SRCompactEditableUtteranceViewDelegate)_delegate;
- (void)_setupConstraints;
- (void)_setupTextView;
- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)completion;
- (void)editableTextViewTextDidFinishCorrecting:(id)correcting;
- (void)editableTextViewTextDidResignFirstResponder:(id)responder;
- (void)editableTextViewTextWillBeginCorrecting:(id)correcting;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAuxiliaryView:(id)view;
@end

@implementation SRCompactEditableUtteranceView

- (SRCompactEditableUtteranceView)initWithFrame:(CGRect)frame userUtterance:(id)utterance delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  utteranceCopy = utterance;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = SRCompactEditableUtteranceView;
  height = [(SRCompactEditableUtteranceView *)&v17 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_userUtterance, utterance);
    [(SRCompactEditableUtteranceView *)v15 _setupTextView];
    [(SRCompactEditableUtteranceView *)v15 _setupConstraints];
    [(SRCompactEditableUtteranceView *)v15 _setDelegate:delegateCopy];
  }

  return v15;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SRCompactEditableUtteranceView;
  [(SRCompactEditableUtteranceView *)&v12 layoutSubviews];
  [(SRCompactEditableUtteranceView *)self bounds];
  v4 = v3;
  v6 = v5;
  _textView = [(SRCompactEditableUtteranceView *)self _textView];
  [_textView sizeThatFits:{v4, v6}];
  v9 = v8;

  [(NSLayoutConstraint *)self->_textViewHeightAnchor setConstant:v9];
  textViewTopAnchor = self->_textViewTopAnchor;
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  [(NSLayoutConstraint *)textViewTopAnchor setConstant:v11 + 24.0];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SRCompactEditableUtteranceView;
  [(SRCompactEditableUtteranceView *)&v3 safeAreaInsetsDidChange];
  [(SRCompactEditableUtteranceView *)self setNeedsLayout];
}

- (void)setAuxiliaryView:(id)view
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SRCompactEditableUtteranceView *)self addSubview:viewCopy];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(SRCompactEditableUtteranceView *)self leadingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v7];
  [v8 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(SRCompactEditableUtteranceView *)self trailingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v11];
  [v12 setActive:1];

  topAnchor = [viewCopy topAnchor];
  _textView = [(SRCompactEditableUtteranceView *)self _textView];
  bottomAnchor = [_textView bottomAnchor];
  v16 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
  [v16 setActive:1];

  bottomAnchor2 = [viewCopy bottomAnchor];

  bottomAnchor3 = [(SRCompactEditableUtteranceView *)self bottomAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v18];
  [v19 setActive:1];
}

- (void)_setupTextView
{
  v3 = [[SREditableTextView alloc] initWithFrame:1 presentationStyle:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SRCompactEditableUtteranceView *)self _setTextView:v3];

  _textView = [(SRCompactEditableUtteranceView *)self _textView];
  [_textView setTranslatesAutoresizingMaskIntoConstraints:0];

  _textView2 = [(SRCompactEditableUtteranceView *)self _textView];
  [_textView2 setDelegate:self];

  bestTextInterpretation = [(AFUserUtterance *)self->_userUtterance bestTextInterpretation];
  _textView3 = [(SRCompactEditableUtteranceView *)self _textView];
  [_textView3 setText:bestTextInterpretation];

  allPhrases = [(AFUserUtterance *)self->_userUtterance allPhrases];
  correctionIdentifier = [(AFUserUtterance *)self->_userUtterance correctionIdentifier];
  v9 = correctionIdentifier;
  if (allPhrases)
  {
    v10 = correctionIdentifier == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    _textView4 = [(SRCompactEditableUtteranceView *)self _textView];
    [_textView4 setDictationResult:allPhrases withCorrectionIdentifier:v9];
  }

  _textView5 = [(SRCompactEditableUtteranceView *)self _textView];
  [(SRCompactEditableUtteranceView *)self addSubview:_textView5];
}

- (void)_setupConstraints
{
  _textView = [(SRCompactEditableUtteranceView *)self _textView];
  leadingAnchor = [_textView leadingAnchor];
  leadingAnchor2 = [(SRCompactEditableUtteranceView *)self leadingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
  [v7 setActive:1];

  _textView2 = [(SRCompactEditableUtteranceView *)self _textView];
  trailingAnchor = [_textView2 trailingAnchor];
  trailingAnchor2 = [(SRCompactEditableUtteranceView *)self trailingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v11];
  [v12 setActive:1];

  _textView3 = [(SRCompactEditableUtteranceView *)self _textView];
  topAnchor = [_textView3 topAnchor];
  topAnchor2 = [(SRCompactEditableUtteranceView *)self topAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  textViewTopAnchor = self->_textViewTopAnchor;
  self->_textViewTopAnchor = v16;

  [(NSLayoutConstraint *)self->_textViewTopAnchor setActive:1];
  _textView4 = [(SRCompactEditableUtteranceView *)self _textView];
  heightAnchor = [_textView4 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:0.0];
  textViewHeightAnchor = self->_textViewHeightAnchor;
  self->_textViewHeightAnchor = v20;

  v22 = self->_textViewHeightAnchor;

  [(NSLayoutConstraint *)v22 setActive:1];
}

- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRCompactEditableUtteranceView editableTextViewRequestKeyboardForTapToEditWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: requesting keyboard for tap to edit", &v7, 0xCu);
  }

  _delegate = [(SRCompactEditableUtteranceView *)self _delegate];
  [_delegate editableUtteranceView:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)editableTextViewTextDidFinishCorrecting:(id)correcting
{
  text = [correcting text];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRCompactEditableUtteranceView editableTextViewTextDidFinishCorrecting:]";
    v9 = 2112;
    v10 = text;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: #tap2edit: correction finished with editedText: %@", &v7, 0x16u);
  }

  _delegate = [(SRCompactEditableUtteranceView *)self _delegate];
  [_delegate editableUtteranceView:self didFinishEditingWithText:text];
}

- (void)editableTextViewTextDidResignFirstResponder:(id)responder
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactEditableUtteranceView editableTextViewTextDidResignFirstResponder:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #compact: did resign first responder", &v6, 0xCu);
  }

  _delegate = [(SRCompactEditableUtteranceView *)self _delegate];
  [_delegate didResignFirstResponderFromUtteranceView:self];
}

- (void)editableTextViewTextWillBeginCorrecting:(id)correcting
{
  _delegate = [(SRCompactEditableUtteranceView *)self _delegate];
  [_delegate willBeginEditingFromUtteranceView:self];

  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:1424 context:0];
}

- (SRCompactEditableUtteranceViewDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end