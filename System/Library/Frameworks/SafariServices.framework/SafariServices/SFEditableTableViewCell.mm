@interface SFEditableTableViewCell
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (SFEditableTableViewCell)initWithEnabledState:(BOOL)a3;
- (SFEditableTableViewCellDelegate)delegate;
- (void)_updateTextFieldTextColor;
- (void)copy:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setOverrideEditableTextFieldTextColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SFEditableTableViewCell

- (SFEditableTableViewCell)initWithEnabledState:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = SFEditableTableViewCell;
  v4 = [(SFEditableTableViewCell *)&v11 initWithStyle:1000 reuseIdentifier:@"editableTableViewCell"];
  v5 = v4;
  if (v4)
  {
    v6 = [(SFEditableTableViewCell *)v4 editableTextField];
    if ([(SFEditableTableViewCell *)v5 _sf_usesLeftToRightLayout])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [v6 setTextAlignment:v7];
    [v6 setAutocapitalizationType:0];
    [v6 setAutocorrectionType:1];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 setFont:v8];

    [(SFEditableTableViewCell *)v5 setEnabled:v3];
    v9 = v5;
  }

  return v5;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SFEditableTableViewCell;
  [(SFEditableTableViewCell *)&v3 tintColorDidChange];
  [(SFEditableTableViewCell *)self _updateTextFieldTextColor];
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  v4 = [(SFEditableTableViewCell *)self editableTextField];
  [v4 setEnabled:self->_enabled];
  [(SFEditableTableViewCell *)self _updateTextFieldTextColor];
}

- (void)setOverrideEditableTextFieldTextColor:(id)a3
{
  objc_storeStrong(&self->_overrideEditableTextFieldTextColor, a3);

  [(SFEditableTableViewCell *)self _updateTextFieldTextColor];
}

- (void)_updateTextFieldTextColor
{
  overrideEditableTextFieldTextColor = self->_overrideEditableTextFieldTextColor;
  if (overrideEditableTextFieldTextColor)
  {
    v5 = [(SFEditableTableViewCell *)self editableTextField];
    [v5 setTextColor:overrideEditableTextFieldTextColor];
  }

  else
  {
    if (self->_enabled)
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v5 = ;
    v4 = [(SFEditableTableViewCell *)self editableTextField];
    [v4 setTextColor:v5];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ == a3)
  {
    v5 = [(SFEditableTableViewCell *)self editableTextField];
    v6 = [v5 text];
    v4 = [v6 length] != 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFEditableTableViewCell;
    return [SFEditableTableViewCell canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (void)copy:(id)a3
{
  v10 = [(SFEditableTableViewCell *)self editableTextField];
  v4 = [v10 text];
  v5 = [(SFEditableTableViewCell *)self _tableView];
  v6 = [v5 isEditing];

  if (v6)
  {
    v7 = [v10 selectedTextRange];
    if (([v7 isEmpty] & 1) == 0)
    {
      v8 = [v10 textInRange:v7];

      v4 = v8;
    }
  }

  v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v9 safari_setSensitiveString:v4];
}

- (SFEditableTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end