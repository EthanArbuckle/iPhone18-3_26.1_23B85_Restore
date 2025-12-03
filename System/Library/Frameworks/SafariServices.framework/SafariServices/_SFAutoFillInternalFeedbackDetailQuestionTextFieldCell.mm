@interface _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell
- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell)initWithFrame:(CGRect)frame;
- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCellDelegate)delegate;
- (void)_setShowPlaceholder:(BOOL)placeholder;
- (void)_updateTextViewHeight;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell

- (_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell)initWithFrame:(CGRect)frame
{
  v38[5] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = _SFAutoFillInternalFeedbackDetailQuestionTextFieldCell;
  v3 = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
    [(UITextView *)v4->_textView setContentInset:*MEMORY[0x1E69DDCE0], v11, v12, v13];
    [(UITextView *)v4->_textView setTextContainerInset:v10, v11, v12, v13];
    [(UITextView *)v4->_textView setEditable:1];
    contentView = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 contentView];
    [contentView addSubview:v4->_textView];
    heightAnchor = [(UITextView *)v4->_textView heightAnchor];
    [(UITextView *)v4->_textView contentSize];
    v16 = [heightAnchor constraintEqualToConstant:v15];
    textViewHeightConstraint = v4->_textViewHeightConstraint;
    v4->_textViewHeightConstraint = v16;

    [contentView setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
    contentView2 = [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v30 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UITextView *)v4->_textView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[0] = v33;
    trailingAnchor = [(UITextView *)v4->_textView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[1] = v20;
    topAnchor = [(UITextView *)v4->_textView topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[2] = v23;
    bottomAnchor = [(UITextView *)v4->_textView bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v26;
    v38[4] = v4->_textViewHeightConstraint;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
    [v30 activateConstraints:v27];

    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)v4 _setShowPlaceholder:1];
    v28 = v4;
  }

  return v4;
}

- (void)updateConfigurationUsingState:(id)state
{
  v6 = [state copy];
  [v6 setHighlighted:0];
  [v6 setSelected:0];
  listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  v5 = [listGroupedCellConfiguration updatedConfigurationForState:v6];
  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self setBackgroundConfiguration:v5];
}

- (void)setText:(id)text
{
  textView = self->_textView;
  textCopy = text;
  [(UITextView *)textView setText:textCopy];
  v6 = [textCopy length];

  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _setShowPlaceholder:v6 == 0];

  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
}

- (void)setPlaceholder:(id)placeholder
{
  v4 = [placeholder copy];
  placeholder = self->_placeholder;
  self->_placeholder = v4;

  if (self->_isShowingPlaceholder)
  {
    [(UITextView *)self->_textView setText:self->_placeholder];

    [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
  }
}

- (void)textViewDidChange:(id)change
{
  [(_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell *)self _updateTextViewHeight];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained textFieldCellTextDidChange:self];
}

- (void)textViewDidEndEditing:(id)editing
{
  text = [editing text];
  -[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell _setShowPlaceholder:](self, "_setShowPlaceholder:", [text length] == 0);
}

- (void)_setShowPlaceholder:(BOOL)placeholder
{
  if (self->_isShowingPlaceholder != placeholder)
  {
    self->_isShowingPlaceholder = placeholder;
    if (placeholder)
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