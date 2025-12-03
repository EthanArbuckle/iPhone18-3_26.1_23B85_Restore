@interface SFAccountNoteTableViewCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (SFAccountNoteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SFAccountNoteTableViewCellDelegate)delegate;
- (void)_didTapTextView;
- (void)_updateHeightConstraint;
- (void)layoutMarginsDidChange;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)textViewDidChange:(id)change;
@end

@implementation SFAccountNoteTableViewCell

- (SFAccountNoteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = SFAccountNoteTableViewCell;
  v4 = [(SFAccountNoteTableViewCell *)&v41 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B1B10]) initWithMaxHeight:350.0];
    textView = v4->_textView;
    v4->_textView = v5;

    v7 = +[_SFAccountManagerAppearanceValues subtitleFontForLargerCell];
    [(UITextView *)v4->_textView setFont:v7];

    textContainer = [(UITextView *)v4->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    contentView = [(SFAccountNoteTableViewCell *)v4 contentView];
    [contentView layoutMargins];
    [(UITextView *)v4->_textView setTextContainerInset:?];

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = _WBSLocalizedString();
    v43 = *MEMORY[0x1E69DB650];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v44[0] = tertiaryLabelColor;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v14 = [v10 initWithString:v11 attributes:v13];
    [(UITextView *)v4->_textView setAttributedPlaceholder:v14];

    [(UITextView *)v4->_textView setDelegate:v4];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    tintColor = [MEMORY[0x1E69DC888] tintColor];
    [(UITextView *)v4->_textView setTintColor:tintColor];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__didTapTextView];
    [(UITextView *)v4->_textView addGestureRecognizer:v17];
    textViewTapGestureRecognizer = v4->_textViewTapGestureRecognizer;
    v4->_textViewTapGestureRecognizer = v17;
    v36 = v17;

    contentView2 = [(SFAccountNoteTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_textView];

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFAccountNoteTableViewCell *)v4 _updateHeightConstraint];
    v32 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UITextView *)v4->_textView leadingAnchor];
    contentView3 = [(SFAccountNoteTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v37;
    trailingAnchor = [(UITextView *)v4->_textView trailingAnchor];
    contentView4 = [(SFAccountNoteTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[1] = v31;
    topAnchor = [(UITextView *)v4->_textView topAnchor];
    contentView5 = [(SFAccountNoteTableViewCell *)v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[2] = v23;
    bottomAnchor = [(UITextView *)v4->_textView bottomAnchor];
    contentView6 = [(SFAccountNoteTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    [v32 activateConstraints:v28];

    v29 = v4;
  }

  return v4;
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = SFAccountNoteTableViewCell;
  [(SFAccountNoteTableViewCell *)&v4 layoutMarginsDidChange];
  contentView = [(SFAccountNoteTableViewCell *)self contentView];
  [contentView layoutMargins];
  [(UITextView *)self->_textView setTextContainerInset:?];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = SFAccountNoteTableViewCell;
  [(SFAccountNoteTableViewCell *)&v7 setEditing:editing animated:animated];
  textView = [(SFAccountNoteTableViewCell *)self textView];
  [textView setEditable:editingCopy];

  [(UITapGestureRecognizer *)self->_textViewTapGestureRecognizer setEnabled:editingCopy ^ 1];
  [(SFAccountNoteTableViewCell *)self _updateHeightConstraint];
}

- (void)_updateHeightConstraint
{
  v16[1] = *MEMORY[0x1E69E9840];
  textView = [(SFAccountNoteTableViewCell *)self textView];
  if ([textView isEditable])
  {

LABEL_6:
    heightConstraint = self->_heightConstraint;
    if (!heightConstraint)
    {
      heightAnchor = [(UITextView *)self->_textView heightAnchor];
      v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:62.0];
      v12 = self->_heightConstraint;
      self->_heightConstraint = v11;

      LODWORD(v13) = 1144750080;
      [(NSLayoutConstraint *)self->_heightConstraint setPriority:v13];
      heightConstraint = self->_heightConstraint;
    }

    v14 = MEMORY[0x1E696ACD8];
    v15 = heightConstraint;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v14 activateConstraints:v8];
    goto LABEL_9;
  }

  textView2 = [(SFAccountNoteTableViewCell *)self textView];
  text = [textView2 text];
  v6 = [text length];

  if (!v6)
  {
    goto LABEL_6;
  }

  if (!self->_heightConstraint)
  {
    return;
  }

  v7 = MEMORY[0x1E696ACD8];
  v16[0] = self->_heightConstraint;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v7 deactivateConstraints:v8];
LABEL_9:
}

- (void)_didTapTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained noteTableViewCellTextViewTapped:self];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  textCopy = text;
  text = [view text];
  v9 = [text length];
  v10 = [textCopy length];

  LOBYTE(length) = v9 - length + v10 <= *MEMORY[0x1E69C8D48];
  return length;
}

- (void)textViewDidChange:(id)change
{
  [change invalidateIntrinsicContentSize];
  textDidChange = self->_textDidChange;
  if (textDidChange)
  {
    v5 = *(textDidChange + 2);

    v5();
  }
}

- (SFAccountNoteTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end