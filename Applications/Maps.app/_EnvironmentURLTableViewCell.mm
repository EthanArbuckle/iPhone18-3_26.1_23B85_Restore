@interface _EnvironmentURLTableViewCell
- (_EnvironmentURLTableViewCell)initWithReuseIdentifier:(id)identifier;
- (_EnvironmentURLTableViewCellDelegate)delegate;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation _EnvironmentURLTableViewCell

- (_EnvironmentURLTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textFieldDidEndEditing:(id)editing
{
  self->_editing = 0;
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [editingCopy text];

  [WeakRetained urlCell:self didChangeURLString:text];
}

- (_EnvironmentURLTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = _EnvironmentURLTableViewCell;
  v3 = [(_EnvironmentURLTableViewCell *)&v13 initWithStyle:1000 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    editableTextField = [(_EnvironmentURLTableViewCell *)v3 editableTextField];
    [editableTextField setReturnKeyType:9];

    editableTextField2 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [editableTextField2 setClearButtonMode:1];

    editableTextField3 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [editableTextField3 setKeyboardType:3];

    editableTextField4 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [editableTextField4 setAutocorrectionType:1];

    editableTextField5 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [editableTextField5 setAutocapitalizationType:0];

    [(_EnvironmentURLTableViewCell *)v4 setSelectionStyle:0];
    [(_EnvironmentURLTableViewCell *)v4 setTextFieldOffset:0.0];
    editableTextField6 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [editableTextField6 setDelegate:v4];

    v11 = v4;
  }

  return v4;
}

@end