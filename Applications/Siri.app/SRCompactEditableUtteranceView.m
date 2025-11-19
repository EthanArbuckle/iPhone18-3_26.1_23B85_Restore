@interface SRCompactEditableUtteranceView
- (SRCompactEditableUtteranceView)initWithFrame:(CGRect)a3 userUtterance:(id)a4 delegate:(id)a5;
- (SRCompactEditableUtteranceViewDelegate)_delegate;
- (void)_setupConstraints;
- (void)_setupTextView;
- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)a3;
- (void)editableTextViewTextDidFinishCorrecting:(id)a3;
- (void)editableTextViewTextDidResignFirstResponder:(id)a3;
- (void)editableTextViewTextWillBeginCorrecting:(id)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAuxiliaryView:(id)a3;
@end

@implementation SRCompactEditableUtteranceView

- (SRCompactEditableUtteranceView)initWithFrame:(CGRect)a3 userUtterance:(id)a4 delegate:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SRCompactEditableUtteranceView;
  v14 = [(SRCompactEditableUtteranceView *)&v17 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userUtterance, a4);
    [(SRCompactEditableUtteranceView *)v15 _setupTextView];
    [(SRCompactEditableUtteranceView *)v15 _setupConstraints];
    [(SRCompactEditableUtteranceView *)v15 _setDelegate:v13];
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
  v7 = [(SRCompactEditableUtteranceView *)self _textView];
  [v7 sizeThatFits:{v4, v6}];
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

- (void)setAuxiliaryView:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SRCompactEditableUtteranceView *)self addSubview:v4];
  v5 = [v4 leadingAnchor];
  v6 = [(SRCompactEditableUtteranceView *)self leadingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v8 = [v5 constraintEqualToAnchor:v6 constant:v7];
  [v8 setActive:1];

  v9 = [v4 trailingAnchor];
  v10 = [(SRCompactEditableUtteranceView *)self trailingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v12 = [v9 constraintEqualToAnchor:v10 constant:v11];
  [v12 setActive:1];

  v13 = [v4 topAnchor];
  v14 = [(SRCompactEditableUtteranceView *)self _textView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:0.0];
  [v16 setActive:1];

  v20 = [v4 bottomAnchor];

  v17 = [(SRCompactEditableUtteranceView *)self bottomAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v19 = [v20 constraintEqualToAnchor:v17 constant:v18];
  [v19 setActive:1];
}

- (void)_setupTextView
{
  v3 = [[SREditableTextView alloc] initWithFrame:1 presentationStyle:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SRCompactEditableUtteranceView *)self _setTextView:v3];

  v4 = [(SRCompactEditableUtteranceView *)self _textView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(SRCompactEditableUtteranceView *)self _textView];
  [v5 setDelegate:self];

  v13 = [(AFUserUtterance *)self->_userUtterance bestTextInterpretation];
  v6 = [(SRCompactEditableUtteranceView *)self _textView];
  [v6 setText:v13];

  v7 = [(AFUserUtterance *)self->_userUtterance allPhrases];
  v8 = [(AFUserUtterance *)self->_userUtterance correctionIdentifier];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [(SRCompactEditableUtteranceView *)self _textView];
    [v11 setDictationResult:v7 withCorrectionIdentifier:v9];
  }

  v12 = [(SRCompactEditableUtteranceView *)self _textView];
  [(SRCompactEditableUtteranceView *)self addSubview:v12];
}

- (void)_setupConstraints
{
  v3 = [(SRCompactEditableUtteranceView *)self _textView];
  v4 = [v3 leadingAnchor];
  v5 = [(SRCompactEditableUtteranceView *)self leadingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v7 = [v4 constraintEqualToAnchor:v5 constant:v6];
  [v7 setActive:1];

  v8 = [(SRCompactEditableUtteranceView *)self _textView];
  v9 = [v8 trailingAnchor];
  v10 = [(SRCompactEditableUtteranceView *)self trailingAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v12 = [v9 constraintEqualToAnchor:v10 constant:v11];
  [v12 setActive:1];

  v13 = [(SRCompactEditableUtteranceView *)self _textView];
  v14 = [v13 topAnchor];
  v15 = [(SRCompactEditableUtteranceView *)self topAnchor];
  [(SRCompactEditableUtteranceView *)self safeAreaInsets];
  v16 = [v14 constraintEqualToAnchor:v15 constant:?];
  textViewTopAnchor = self->_textViewTopAnchor;
  self->_textViewTopAnchor = v16;

  [(NSLayoutConstraint *)self->_textViewTopAnchor setActive:1];
  v18 = [(SRCompactEditableUtteranceView *)self _textView];
  v19 = [v18 heightAnchor];
  v20 = [v19 constraintEqualToConstant:0.0];
  textViewHeightAnchor = self->_textViewHeightAnchor;
  self->_textViewHeightAnchor = v20;

  v22 = self->_textViewHeightAnchor;

  [(NSLayoutConstraint *)v22 setActive:1];
}

- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRCompactEditableUtteranceView editableTextViewRequestKeyboardForTapToEditWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: requesting keyboard for tap to edit", &v7, 0xCu);
  }

  v6 = [(SRCompactEditableUtteranceView *)self _delegate];
  [v6 editableUtteranceView:self requestsKeyboardWithCompletion:v4];
}

- (void)editableTextViewTextDidFinishCorrecting:(id)a3
{
  v4 = [a3 text];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRCompactEditableUtteranceView editableTextViewTextDidFinishCorrecting:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: #tap2edit: correction finished with editedText: %@", &v7, 0x16u);
  }

  v6 = [(SRCompactEditableUtteranceView *)self _delegate];
  [v6 editableUtteranceView:self didFinishEditingWithText:v4];
}

- (void)editableTextViewTextDidResignFirstResponder:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactEditableUtteranceView editableTextViewTextDidResignFirstResponder:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #compact: did resign first responder", &v6, 0xCu);
  }

  v5 = [(SRCompactEditableUtteranceView *)self _delegate];
  [v5 didResignFirstResponderFromUtteranceView:self];
}

- (void)editableTextViewTextWillBeginCorrecting:(id)a3
{
  v4 = [(SRCompactEditableUtteranceView *)self _delegate];
  [v4 willBeginEditingFromUtteranceView:self];

  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:1424 context:0];
}

- (SRCompactEditableUtteranceViewDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end