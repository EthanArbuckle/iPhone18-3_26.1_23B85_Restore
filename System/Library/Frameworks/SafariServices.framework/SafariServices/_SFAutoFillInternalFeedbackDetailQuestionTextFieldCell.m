@interface _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell
- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell)initWithFrame:(CGRect)a3;
- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCellDelegate)delegate;
- (void)_setShowPlaceholder:(BOOL)a3;
- (void)_updateTextViewHeight;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell

- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell)initWithFrame:(CGRect)a3
{
  v38[5] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell;
  v3 = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v3 setAutomaticallyUpdatesBackgroundConfiguration:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = v4->_textView;
    v4->_textView = v5;

    [(UITextView *)v4->_textView setDelegate:v4];
    v7 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] labelFontSize];
    v8 = [v7 systemFontOfSize:?];
    [(UITextView *)v4->_textView setFont:v8];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v9];

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
    [(UITextView *)v4->_textView setContentInset:*MEMORY[0x1E69DDCE0], v11, v12, v13];
    [(UITextView *)v4->_textView setTextContainerInset:v10, v11, v12, v13];
    [(UITextView *)v4->_textView setEditable:1];
    v36 = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 contentView];
    [v36 addSubview:v4->_textView];
    v14 = [(UITextView *)v4->_textView heightAnchor];
    [(UITextView *)v4->_textView contentSize];
    v16 = [v14 constraintEqualToConstant:v15];
    textViewHeightConstraint = v4->_textViewHeightConstraint;
    v4->_textViewHeightConstraint = v16;

    [v36 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
    v18 = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 contentView];
    v19 = [v18 layoutMarginsGuide];

    v30 = MEMORY[0x1E696ACD8];
    v35 = [(UITextView *)v4->_textView leadingAnchor];
    v34 = [v19 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v38[0] = v33;
    v32 = [(UITextView *)v4->_textView trailingAnchor];
    v31 = [v19 trailingAnchor];
    v20 = [v32 constraintEqualToAnchor:v31];
    v38[1] = v20;
    v21 = [(UITextView *)v4->_textView topAnchor];
    v22 = [v19 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v38[2] = v23;
    v24 = [(UITextView *)v4->_textView bottomAnchor];
    v25 = [v19 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v38[3] = v26;
    v38[4] = v4->_textViewHeightConstraint;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
    [v30 activateConstraints:v27];

    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 _setShowPlaceholder:1];
    v28 = v4;
  }

  return v4;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v6 = [a3 copy];
  [v6 setHighlighted:0];
  [v6 setSelected:0];
  v4 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  v5 = [v4 updatedConfigurationForState:v6];
  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self setBackgroundConfiguration:v5];
}

- (void)setText:(id)a3
{
  textView = self->_textView;
  v5 = a3;
  [(UITextView *)textView setText:v5];
  v6 = [v5 length];

  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _setShowPlaceholder:v6 == 0];

  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
}

- (void)setPlaceholder:(id)a3
{
  v4 = [a3 copy];
  placeholder = self->_placeholder;
  self->_placeholder = v4;

  if (self->_isShowingPlaceholder)
  {
    [(UITextView *)self->_textView setText:self->_placeholder];

    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
  }
}

- (void)textViewDidChange:(id)a3
{
  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained textFieldCellTextDidChange:self];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [a3 text];
  -[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell _setShowPlaceholder:](self, "_setShowPlaceholder:", [v4 length] == 0);
}

- (void)_setShowPlaceholder:(BOOL)a3
{
  if (self->_isShowingPlaceholder != a3)
  {
    self->_isShowingPlaceholder = a3;
    if (a3)
    {
      placeholder = self->_placeholder;
    }

    else
    {
      placeholder = 0;
    }

    [(UITextView *)self->_textView setText:placeholder];
    if (self->_isShowingPlaceholder)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v5 = ;
    [(UITextView *)self->_textView setTextColor:v5];

    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
  }
}

- (void)_updateTextViewHeight
{
  [(UITextView *)self->_textView contentSize];
  [(NSLayoutConstraint *)self->_textViewHeightConstraint setConstant:v3];

  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self invalidateIntrinsicContentSize];
}

- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end