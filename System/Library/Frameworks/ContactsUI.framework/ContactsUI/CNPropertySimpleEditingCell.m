@interface CNPropertySimpleEditingCell
- (id)constantConstraints;
- (id)valueView;
- (id)variableConstraints;
- (void)dealloc;
- (void)prepareForReuse;
- (void)textFieldChanged:(id)a3;
- (void)updateValueWithPropertyItem:(id)a3;
@end

@implementation CNPropertySimpleEditingCell

- (void)textFieldChanged:(id)a3
{
  v9 = [a3 object];
  v4 = [(CNPropertyCell *)self propertyItem];
  v5 = [v9 text];
  v6 = [v4 valueForDisplayString:v5];

  v7 = [(CNPropertyCell *)self delegate];
  v8 = [(CNPropertyCell *)self propertyItem];
  [v7 propertyCell:self didUpdateItem:v8 withNewValue:v6];
}

- (void)prepareForReuse
{
  v3 = [(CNPropertySimpleEditingCell *)self textField];
  [v3 resignFirstResponder];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCell;
  [(CNContactCell *)&v4 prepareForReuse];
}

- (void)updateValueWithPropertyItem:(id)a3
{
  v9 = a3;
  if (([(UITextField *)self->_textField isFirstResponder]& 1) == 0)
  {
    if (v9)
    {
      v4 = [v9 editingStringValue];
      [(UITextField *)self->_textField setText:v4];

      if ([v9 isReadonly] & 1) != 0 || (objc_msgSend(v9, "isSuggested"))
      {
        v5 = 0;
      }

      else
      {
        v5 = [v9 showValueWithLabelStyle] ^ 1;
      }

      [(UITextField *)self->_textField setUserInteractionEnabled:v5];
      v6 = [v9 placeholderString];
      [(UITextField *)self->_textField setPlaceholder:v6];
    }

    else
    {
      [(UITextField *)self->_textField setText:&stru_1F0CE7398];
      [(UITextField *)self->_textField setPlaceholder:0];
    }

    [(UITextField *)self->_textField _cnui_applyContactStyle];
    v7 = [v9 property];
    v8 = [CNKeyboardSettings newKeyboardSettingsForProperty:v7];

    [(UITextField *)self->_textField setKeyboardType:[CNKeyboardSettings keyboardTypeFromDictionary:v8]];
    [(UITextField *)self->_textField setAutocapitalizationType:[CNKeyboardSettings autocapitalizationTypeFromDictionary:v8]];
    [(UITextField *)self->_textField setAutocorrectionType:[CNKeyboardSettings autocorrectionTypeFromDictionary:v8]];
  }
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v20.receiver = self;
  v20.super_class = CNPropertySimpleEditingCell;
  v4 = [(CNPropertyEditingCell *)&v20 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v7 = MEMORY[0x1E696ACD8];
  v8 = [(CNPropertySimpleEditingCell *)self valueView];
  if (v6)
  {
    v9 = [(CNPropertyEditingCell *)self labelView];
    v10 = [v7 constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:4.0];
    v11 = 1148846080;
  }

  else
  {
    v12 = [(CNPropertySimpleEditingCell *)self contentView];
    v13 = [v7 constraintWithItem:v8 attribute:10 relatedBy:0 toItem:v12 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v13];

    v14 = [v5 lastObject];
    LODWORD(v15) = 1148796928;
    [v14 setPriority:v15];

    v16 = MEMORY[0x1E696ACD8];
    v8 = [(CNPropertySimpleEditingCell *)self valueView];
    v9 = [(CNPropertySimpleEditingCell *)self contentView];
    v10 = [v16 constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v9 attribute:15 multiplier:1.0 constant:0.0];
    v11 = 1148813312;
  }

  [v5 addObject:v10];

  v17 = [v5 lastObject];
  LODWORD(v18) = v11;
  [v17 setPriority:v18];

  return v5;
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNPropertySimpleEditingCell;
  v4 = [(CNPropertyEditingCell *)&v13 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNPropertySimpleEditingCell *)self contentView];
  v8 = [(CNPropertySimpleEditingCell *)self valueView];
  v9 = [v6 constraintWithItem:v7 attribute:16 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = [v5 lastObject];
  LODWORD(v11) = 1148813312;
  [v10 setPriority:v11];

  return v5;
}

- (id)valueView
{
  textField = self->_textField;
  if (!textField)
  {
    v4 = [CNTextField alloc];
    v5 = [(CNTextField *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_textField;
    self->_textField = v5;

    [(UITextField *)self->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)self->_textField setAutocapitalizationType:0];
    [(UITextField *)self->_textField setAutocorrectionType:1];
    [(UITextField *)self->_textField setClearButtonMode:1];
    v7 = [(UITextField *)self->_textField textInputTraits];
    [v7 setReturnKeyGoesToNextResponder:1];

    LODWORD(v8) = 1148846080;
    [(UITextField *)self->_textField setContentHuggingPriority:1 forAxis:v8];
    [(UITextField *)self->_textField _cnui_applyContactStyle];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:self selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:self->_textField];

    textField = self->_textField;
  }

  return textField;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCell;
  [(CNPropertyEditingCell *)&v4 dealloc];
}

@end