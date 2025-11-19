@interface SFAccountNoteTableViewCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (SFAccountNoteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SFAccountNoteTableViewCellDelegate)delegate;
- (void)_didTapTextView;
- (void)_updateHeightConstraint;
- (void)layoutMarginsDidChange;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)textViewDidChange:(id)a3;
@end

@implementation SFAccountNoteTableViewCell

- (SFAccountNoteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = SFAccountNoteTableViewCell;
  v4 = [(SFAccountNoteTableViewCell *)&v41 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B1B10]) initWithMaxHeight:350.0];
    textView = v4->_textView;
    v4->_textView = v5;

    v7 = +[_SFAccountManagerAppearanceValues subtitleFontForLargerCell];
    [(UITextView *)v4->_textView setFont:v7];

    v8 = [(UITextView *)v4->_textView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = [(SFAccountNoteTableViewCell *)v4 contentView];
    [v9 layoutMargins];
    [(UITextView *)v4->_textView setTextContainerInset:?];

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = _WBSLocalizedString();
    v43 = *MEMORY[0x1E69DB650];
    v12 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v44[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v14 = [v10 initWithString:v11 attributes:v13];
    [(UITextView *)v4->_textView setAttributedPlaceholder:v14];

    [(UITextView *)v4->_textView setDelegate:v4];
    v15 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v15];

    v16 = [MEMORY[0x1E69DC888] tintColor];
    [(UITextView *)v4->_textView setTintColor:v16];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__didTapTextView];
    [(UITextView *)v4->_textView addGestureRecognizer:v17];
    textViewTapGestureRecognizer = v4->_textViewTapGestureRecognizer;
    v4->_textViewTapGestureRecognizer = v17;
    v36 = v17;

    v19 = [(SFAccountNoteTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_textView];

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFAccountNoteTableViewCell *)v4 _updateHeightConstraint];
    v32 = MEMORY[0x1E696ACD8];
    v39 = [(UITextView *)v4->_textView leadingAnchor];
    v40 = [(SFAccountNoteTableViewCell *)v4 contentView];
    v38 = [v40 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v42[0] = v37;
    v34 = [(UITextView *)v4->_textView trailingAnchor];
    v35 = [(SFAccountNoteTableViewCell *)v4 contentView];
    v33 = [v35 trailingAnchor];
    v31 = [v34 constraintEqualToAnchor:v33];
    v42[1] = v31;
    v20 = [(UITextView *)v4->_textView topAnchor];
    v21 = [(SFAccountNoteTableViewCell *)v4 contentView];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v42[2] = v23;
    v24 = [(UITextView *)v4->_textView bottomAnchor];
    v25 = [(SFAccountNoteTableViewCell *)v4 contentView];
    v26 = [v25 bottomAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
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
  v3 = [(SFAccountNoteTableViewCell *)self contentView];
  [v3 layoutMargins];
  [(UITextView *)self->_textView setTextContainerInset:?];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFAccountNoteTableViewCell;
  [(SFAccountNoteTableViewCell *)&v7 setEditing:a3 animated:a4];
  v6 = [(SFAccountNoteTableViewCell *)self textView];
  [v6 setEditable:v4];

  [(UITapGestureRecognizer *)self->_textViewTapGestureRecognizer setEnabled:v4 ^ 1];
  [(SFAccountNoteTableViewCell *)self _updateHeightConstraint];
}

- (void)_updateHeightConstraint
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(SFAccountNoteTableViewCell *)self textView];
  if ([v3 isEditable])
  {

LABEL_6:
    heightConstraint = self->_heightConstraint;
    if (!heightConstraint)
    {
      v10 = [(UITextView *)self->_textView heightAnchor];
      v11 = [v10 constraintGreaterThanOrEqualToConstant:62.0];
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

  v4 = [(SFAccountNoteTableViewCell *)self textView];
  v5 = [v4 text];
  v6 = [v5 length];

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

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v7 = a5;
  v8 = [a3 text];
  v9 = [v8 length];
  v10 = [v7 length];

  LOBYTE(length) = v9 - length + v10 <= *MEMORY[0x1E69C8D48];
  return length;
}

- (void)textViewDidChange:(id)a3
{
  [a3 invalidateIntrinsicContentSize];
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