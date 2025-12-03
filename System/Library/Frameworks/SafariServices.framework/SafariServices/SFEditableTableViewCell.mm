@interface SFEditableTableViewCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (SFEditableTableViewCell)initWithEnabledState:(BOOL)state;
- (SFEditableTableViewCellDelegate)delegate;
- (void)_updateTextFieldTextColor;
- (void)copy:(id)copy;
- (void)setEnabled:(BOOL)enabled;
- (void)setOverrideEditableTextFieldTextColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation SFEditableTableViewCell

- (SFEditableTableViewCell)initWithEnabledState:(BOOL)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = SFEditableTableViewCell;
  v4 = [(SFEditableTableViewCell *)&v11 initWithStyle:1000 reuseIdentifier:@"editableTableViewCell"];
  v5 = v4;
  if (v4)
  {
    editableTextField = [(SFEditableTableViewCell *)v4 editableTextField];
    if ([(SFEditableTableViewCell *)v5 _sf_usesLeftToRightLayout])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [editableTextField setTextAlignment:v7];
    [editableTextField setAutocapitalizationType:0];
    [editableTextField setAutocorrectionType:1];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [editableTextField setFont:v8];

    [(SFEditableTableViewCell *)v5 setEnabled:stateCopy];
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

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  editableTextField = [(SFEditableTableViewCell *)self editableTextField];
  [editableTextField setEnabled:self->_enabled];
  [(SFEditableTableViewCell *)self _updateTextFieldTextColor];
}

- (void)setOverrideEditableTextFieldTextColor:(id)color
{
  objc_storeStrong(&self->_overrideEditableTextFieldTextColor, color);

  [(SFEditableTableViewCell *)self _updateTextFieldTextColor];
}

- (void)_updateTextFieldTextColor
{
  overrideEditableTextFieldTextColor = self->_overrideEditableTextFieldTextColor;
  if (overrideEditableTextFieldTextColor)
  {
    editableTextField = [(SFEditableTableViewCell *)self editableTextField];
    [editableTextField setTextColor:overrideEditableTextFieldTextColor];
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
    editableTextField = ;
    editableTextField2 = [(SFEditableTableViewCell *)self editableTextField];
    [editableTextField2 setTextColor:editableTextField];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    editableTextField = [(SFEditableTableViewCell *)self editableTextField];
    text = [editableTextField text];
    v4 = [text length] != 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFEditableTableViewCell;
    return [SFEditableTableViewCell canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (void)copy:(id)copy
{
  editableTextField = [(SFEditableTableViewCell *)self editableTextField];
  text = [editableTextField text];
  _tableView = [(SFEditableTableViewCell *)self _tableView];
  isEditing = [_tableView isEditing];

  if (isEditing)
  {
    selectedTextRange = [editableTextField selectedTextRange];
    if (([selectedTextRange isEmpty] & 1) == 0)
    {
      v8 = [editableTextField textInRange:selectedTextRange];

      text = v8;
    }
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard safari_setSensitiveString:text];
}

- (SFEditableTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end