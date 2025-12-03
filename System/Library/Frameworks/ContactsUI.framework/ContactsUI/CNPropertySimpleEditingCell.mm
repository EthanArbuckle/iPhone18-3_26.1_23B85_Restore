@interface CNPropertySimpleEditingCell
- (id)constantConstraints;
- (id)valueView;
- (id)variableConstraints;
- (void)dealloc;
- (void)prepareForReuse;
- (void)textFieldChanged:(id)changed;
- (void)updateValueWithPropertyItem:(id)item;
@end

@implementation CNPropertySimpleEditingCell

- (void)textFieldChanged:(id)changed
{
  object = [changed object];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  text = [object text];
  v6 = [propertyItem valueForDisplayString:text];

  delegate = [(CNPropertyCell *)self delegate];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem2 withNewValue:v6];
}

- (void)prepareForReuse
{
  textField = [(CNPropertySimpleEditingCell *)self textField];
  [textField resignFirstResponder];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCell;
  [(CNContactCell *)&v4 prepareForReuse];
}

- (void)updateValueWithPropertyItem:(id)item
{
  itemCopy = item;
  if (([(UITextField *)self->_textField isFirstResponder]& 1) == 0)
  {
    if (itemCopy)
    {
      editingStringValue = [itemCopy editingStringValue];
      [(UITextField *)self->_textField setText:editingStringValue];

      if ([itemCopy isReadonly] & 1) != 0 || (objc_msgSend(itemCopy, "isSuggested"))
      {
        v5 = 0;
      }

      else
      {
        v5 = [itemCopy showValueWithLabelStyle] ^ 1;
      }

      [(UITextField *)self->_textField setUserInteractionEnabled:v5];
      placeholderString = [itemCopy placeholderString];
      [(UITextField *)self->_textField setPlaceholder:placeholderString];
    }

    else
    {
      [(UITextField *)self->_textField setText:&stru_1F0CE7398];
      [(UITextField *)self->_textField setPlaceholder:0];
    }

    [(UITextField *)self->_textField _cnui_applyContactStyle];
    property = [itemCopy property];
    v8 = [CNKeyboardSettings newKeyboardSettingsForProperty:property];

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
  variableConstraints = [(CNPropertyEditingCell *)&v20 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v7 = MEMORY[0x1E696ACD8];
  valueView = [(CNPropertySimpleEditingCell *)self valueView];
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    labelView = [(CNPropertyEditingCell *)self labelView];
    v10 = [v7 constraintWithItem:valueView attribute:3 relatedBy:0 toItem:labelView attribute:4 multiplier:1.0 constant:4.0];
    v11 = 1148846080;
  }

  else
  {
    contentView = [(CNPropertySimpleEditingCell *)self contentView];
    v13 = [v7 constraintWithItem:valueView attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v13];

    lastObject = [v5 lastObject];
    LODWORD(v15) = 1148796928;
    [lastObject setPriority:v15];

    v16 = MEMORY[0x1E696ACD8];
    valueView = [(CNPropertySimpleEditingCell *)self valueView];
    labelView = [(CNPropertySimpleEditingCell *)self contentView];
    v10 = [v16 constraintWithItem:valueView attribute:3 relatedBy:0 toItem:labelView attribute:15 multiplier:1.0 constant:0.0];
    v11 = 1148813312;
  }

  [v5 addObject:v10];

  lastObject2 = [v5 lastObject];
  LODWORD(v18) = v11;
  [lastObject2 setPriority:v18];

  return v5;
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNPropertySimpleEditingCell;
  constantConstraints = [(CNPropertyEditingCell *)&v13 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = MEMORY[0x1E696ACD8];
  contentView = [(CNPropertySimpleEditingCell *)self contentView];
  valueView = [(CNPropertySimpleEditingCell *)self valueView];
  v9 = [v6 constraintWithItem:contentView attribute:16 relatedBy:0 toItem:valueView attribute:4 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  lastObject = [v5 lastObject];
  LODWORD(v11) = 1148813312;
  [lastObject setPriority:v11];

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
    textInputTraits = [(UITextField *)self->_textField textInputTraits];
    [textInputTraits setReturnKeyGoesToNextResponder:1];

    LODWORD(v8) = 1148846080;
    [(UITextField *)self->_textField setContentHuggingPriority:1 forAxis:v8];
    [(UITextField *)self->_textField _cnui_applyContactStyle];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:self->_textField];

    textField = self->_textField;
  }

  return textField;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCell;
  [(CNPropertyEditingCell *)&v4 dealloc];
}

@end