@interface _EnvironmentURLTableViewCell
- (_EnvironmentURLTableViewCell)initWithReuseIdentifier:(id)a3;
- (_EnvironmentURLTableViewCellDelegate)delegate;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation _EnvironmentURLTableViewCell

- (_EnvironmentURLTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textFieldDidEndEditing:(id)a3
{
  self->_editing = 0;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 text];

  [WeakRetained urlCell:self didChangeURLString:v5];
}

- (_EnvironmentURLTableViewCell)initWithReuseIdentifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = _EnvironmentURLTableViewCell;
  v3 = [(_EnvironmentURLTableViewCell *)&v13 initWithStyle:1000 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(_EnvironmentURLTableViewCell *)v3 editableTextField];
    [v5 setReturnKeyType:9];

    v6 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [v6 setClearButtonMode:1];

    v7 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [v7 setKeyboardType:3];

    v8 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [v8 setAutocorrectionType:1];

    v9 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [v9 setAutocapitalizationType:0];

    [(_EnvironmentURLTableViewCell *)v4 setSelectionStyle:0];
    [(_EnvironmentURLTableViewCell *)v4 setTextFieldOffset:0.0];
    v10 = [(_EnvironmentURLTableViewCell *)v4 editableTextField];
    [v10 setDelegate:v4];

    v11 = v4;
  }

  return v4;
}

@end