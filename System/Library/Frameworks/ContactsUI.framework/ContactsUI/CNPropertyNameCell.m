@interface CNPropertyNameCell
- (CNPropertyCellDelegate)delegate;
- (CNPropertyNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)constantConstraints;
- (id)placeholderString;
- (void)dealloc;
- (void)setBackgroundColor:(id)a3;
- (void)setCardGroupItem:(id)a3;
- (void)textFieldChanged:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CNPropertyNameCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNPropertyNameCell;
  v4 = a3;
  [(CNPropertyNameCell *)&v7 setBackgroundColor:v4];
  v5 = [(CNPropertyNameCell *)self textField:v7.receiver];
  [v5 setBackgroundColor:v4];

  v6 = [(CNPropertyNameCell *)self contentView];
  [v6 setBackgroundColor:v4];

  [(CNPropertyNameCell *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6 = [(CNPropertyNameCell *)self traitCollection];
  v4 = 2 * ([v6 layoutDirection] == 1);
  v5 = [(CNPropertyNameCell *)self textField];
  [v5 setTextAlignment:v4];
}

- (id)placeholderString
{
  v2 = [(CNPropertyNameCell *)self propertyItem];
  v3 = [v2 placeholderString];

  return v3;
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CNPropertyNameCell;
  v5 = [(CNContactCell *)&v25 cardGroupItem];

  if (v5 != v4)
  {
    v24.receiver = self;
    v24.super_class = CNPropertyNameCell;
    [(CNContactCell *)&v24 setCardGroupItem:v4];
    v6 = [(CNPropertyNameCell *)self propertyItem];

    if (v6)
    {
      v7 = [(CNPropertyNameCell *)self placeholderString];
      v8 = [(CNPropertyNameCell *)self textField];
      [v8 setPlaceholder:v7];

      v9 = [(CNPropertyNameCell *)self propertyItem];
      v10 = [v9 labeledValue];
      v11 = [v10 value];
      v12 = [(CNPropertyNameCell *)self displayStringForValue:v11];
      v13 = [(CNPropertyNameCell *)self textField];
      [v13 setText:v12];
    }

    else
    {
      v14 = [(CNPropertyNameCell *)self textField];
      [v14 setText:&stru_1F0CE7398];

      v9 = [(CNPropertyNameCell *)self textField];
      [v9 setPlaceholder:0];
    }

    v15 = [(CNPropertyNameCell *)self textField];
    [v15 _cnui_applyContactStyle];

    v16 = [v4 property];
    v17 = [CNKeyboardSettings newKeyboardSettingsForProperty:v16];

    v18 = [CNKeyboardSettings keyboardTypeFromDictionary:v17];
    v19 = [(CNPropertyNameCell *)self textField];
    [v19 setKeyboardType:v18];

    v20 = [CNKeyboardSettings autocapitalizationTypeFromDictionary:v17];
    v21 = [(CNPropertyNameCell *)self textField];
    [v21 setAutocapitalizationType:v20];

    v22 = [CNKeyboardSettings autocorrectionTypeFromDictionary:v17];
    v23 = [(CNPropertyNameCell *)self textField];
    [v23 setAutocorrectionType:v22];
  }
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v37.receiver = self;
  v37.super_class = CNPropertyNameCell;
  v4 = [(CNContactCell *)&v37 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNPropertyNameCell *)self textField];
  v8 = [(CNPropertyNameCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = [v5 lastObject];
  LODWORD(v11) = 1148796928;
  [v10 setPriority:v11];

  v12 = MEMORY[0x1E696ACD8];
  v13 = [(CNPropertyNameCell *)self textField];
  v14 = [(CNPropertyNameCell *)self contentView];
  v15 = [v12 constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v14 attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v15];

  v16 = MEMORY[0x1E696ACD8];
  v17 = [(CNPropertyNameCell *)self contentView];
  v18 = [(CNPropertyNameCell *)self textField];
  v19 = [v16 constraintWithItem:v17 attribute:18 relatedBy:0 toItem:v18 attribute:6 multiplier:1.0 constant:0.0];
  [v5 addObject:v19];

  v20 = MEMORY[0x1E696ACD8];
  v21 = [(CNPropertyNameCell *)self textField];
  v22 = [(CNPropertyNameCell *)self contentView];
  v23 = [v20 constraintWithItem:v21 attribute:6 relatedBy:0 toItem:v22 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [(CNPropertyNameCell *)self textField];
  v26 = [(CNPropertyNameCell *)self contentView];
  v27 = [v24 constraintWithItem:v25 attribute:3 relatedBy:0 toItem:v26 attribute:15 multiplier:1.0 constant:0.0];
  [v5 addObject:v27];

  v28 = [v5 lastObject];
  LODWORD(v29) = 1148813312;
  [v28 setPriority:v29];

  v30 = MEMORY[0x1E696ACD8];
  v31 = [(CNPropertyNameCell *)self textField];
  v32 = [(CNPropertyNameCell *)self contentView];
  v33 = [v30 constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v32 attribute:16 multiplier:1.0 constant:0.0];
  [v5 addObject:v33];

  v34 = [v5 lastObject];
  LODWORD(v35) = 1148813312;
  [v34 setPriority:v35];

  return v5;
}

- (void)textFieldChanged:(id)a3
{
  v12 = [a3 object];
  v4 = [(CNPropertyNameCell *)self propertyItem];
  v5 = [v12 text];
  v6 = [v4 valueForDisplayString:v5];

  v7 = [v12 markedTextRange];
  v8 = v7;
  if (!v7 || [v7 isEmpty])
  {
    v9 = [(CNPropertyNameCell *)self propertyItem];
    [v9 updateLabeledValueWithValue:v6];

    v10 = [(CNPropertyNameCell *)self delegate];
    v11 = [(CNPropertyNameCell *)self propertyItem];
    [v10 propertyCell:self didUpdateItem:v11 withNewValue:v6];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyNameCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25.receiver = self;
  v25.super_class = CNPropertyNameCell;
  v4 = [(CNContactCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNContactCell *)v4 setShowSeparator:0];
    v6 = [CNTextField alloc];
    v7 = [(CNTextField *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    textField = v5->_textField;
    v5->_textField = v7;

    v9 = [(CNPropertyNameCell *)v5 textField];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CNPropertyNameCell *)v5 textField];
    [v10 setAutocapitalizationType:0];

    v11 = [(CNPropertyNameCell *)v5 textField];
    [v11 setAutocorrectionType:1];

    v12 = [(CNPropertyNameCell *)v5 textField];
    [v12 setClearButtonMode:1];

    v13 = [(CNPropertyNameCell *)v5 textField];
    v14 = [v13 textInputTraits];
    [v14 setReturnKeyGoesToNextResponder:1];

    v15 = [(CNPropertyNameCell *)v5 textField];
    LODWORD(v16) = 1148846080;
    [v15 setContentHuggingPriority:1 forAxis:v16];

    v17 = [(CNPropertyNameCell *)v5 textField];
    [v17 _cnui_applyContactStyle];

    v18 = [(CNPropertyNameCell *)v5 contentView];
    v19 = [(CNPropertyNameCell *)v5 textField];
    [v18 addSubview:v19];

    [(CNPropertyNameCell *)v5 setNeedsUpdateConstraints];
    v5->_firstResponderItem = &v5->_textField->super.super.super;
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = *MEMORY[0x1E69DE5C0];
    v22 = [(CNPropertyNameCell *)v5 textField];
    [v20 addObserver:v5 selector:sel_textFieldChanged_ name:v21 object:v22];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

@end