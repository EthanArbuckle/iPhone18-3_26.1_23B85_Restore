@interface CNPropertyNameCell
- (CNPropertyCellDelegate)delegate;
- (CNPropertyNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)constantConstraints;
- (id)placeholderString;
- (void)dealloc;
- (void)setBackgroundColor:(id)color;
- (void)setCardGroupItem:(id)item;
- (void)textFieldChanged:(id)changed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNPropertyNameCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = CNPropertyNameCell;
  colorCopy = color;
  [(CNPropertyNameCell *)&v7 setBackgroundColor:colorCopy];
  v5 = [(CNPropertyNameCell *)self textField:v7.receiver];
  [v5 setBackgroundColor:colorCopy];

  contentView = [(CNPropertyNameCell *)self contentView];
  [contentView setBackgroundColor:colorCopy];

  [(CNPropertyNameCell *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(CNPropertyNameCell *)self traitCollection];
  v4 = 2 * ([traitCollection layoutDirection] == 1);
  textField = [(CNPropertyNameCell *)self textField];
  [textField setTextAlignment:v4];
}

- (id)placeholderString
{
  propertyItem = [(CNPropertyNameCell *)self propertyItem];
  placeholderString = [propertyItem placeholderString];

  return placeholderString;
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = CNPropertyNameCell;
  cardGroupItem = [(CNContactCell *)&v25 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v24.receiver = self;
    v24.super_class = CNPropertyNameCell;
    [(CNContactCell *)&v24 setCardGroupItem:itemCopy];
    propertyItem = [(CNPropertyNameCell *)self propertyItem];

    if (propertyItem)
    {
      placeholderString = [(CNPropertyNameCell *)self placeholderString];
      textField = [(CNPropertyNameCell *)self textField];
      [textField setPlaceholder:placeholderString];

      propertyItem2 = [(CNPropertyNameCell *)self propertyItem];
      labeledValue = [propertyItem2 labeledValue];
      value = [labeledValue value];
      v12 = [(CNPropertyNameCell *)self displayStringForValue:value];
      textField2 = [(CNPropertyNameCell *)self textField];
      [textField2 setText:v12];
    }

    else
    {
      textField3 = [(CNPropertyNameCell *)self textField];
      [textField3 setText:&stru_1F0CE7398];

      propertyItem2 = [(CNPropertyNameCell *)self textField];
      [propertyItem2 setPlaceholder:0];
    }

    textField4 = [(CNPropertyNameCell *)self textField];
    [textField4 _cnui_applyContactStyle];

    property = [itemCopy property];
    v17 = [CNKeyboardSettings newKeyboardSettingsForProperty:property];

    v18 = [CNKeyboardSettings keyboardTypeFromDictionary:v17];
    textField5 = [(CNPropertyNameCell *)self textField];
    [textField5 setKeyboardType:v18];

    v20 = [CNKeyboardSettings autocapitalizationTypeFromDictionary:v17];
    textField6 = [(CNPropertyNameCell *)self textField];
    [textField6 setAutocapitalizationType:v20];

    v22 = [CNKeyboardSettings autocorrectionTypeFromDictionary:v17];
    textField7 = [(CNPropertyNameCell *)self textField];
    [textField7 setAutocorrectionType:v22];
  }
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v37.receiver = self;
  v37.super_class = CNPropertyNameCell;
  constantConstraints = [(CNContactCell *)&v37 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = MEMORY[0x1E696ACD8];
  textField = [(CNPropertyNameCell *)self textField];
  contentView = [(CNPropertyNameCell *)self contentView];
  v9 = [v6 constraintWithItem:textField attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  lastObject = [v5 lastObject];
  LODWORD(v11) = 1148796928;
  [lastObject setPriority:v11];

  v12 = MEMORY[0x1E696ACD8];
  textField2 = [(CNPropertyNameCell *)self textField];
  contentView2 = [(CNPropertyNameCell *)self contentView];
  v15 = [v12 constraintWithItem:textField2 attribute:5 relatedBy:0 toItem:contentView2 attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v15];

  v16 = MEMORY[0x1E696ACD8];
  contentView3 = [(CNPropertyNameCell *)self contentView];
  textField3 = [(CNPropertyNameCell *)self textField];
  v19 = [v16 constraintWithItem:contentView3 attribute:18 relatedBy:0 toItem:textField3 attribute:6 multiplier:1.0 constant:0.0];
  [v5 addObject:v19];

  v20 = MEMORY[0x1E696ACD8];
  textField4 = [(CNPropertyNameCell *)self textField];
  contentView4 = [(CNPropertyNameCell *)self contentView];
  v23 = [v20 constraintWithItem:textField4 attribute:6 relatedBy:0 toItem:contentView4 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  textField5 = [(CNPropertyNameCell *)self textField];
  contentView5 = [(CNPropertyNameCell *)self contentView];
  v27 = [v24 constraintWithItem:textField5 attribute:3 relatedBy:0 toItem:contentView5 attribute:15 multiplier:1.0 constant:0.0];
  [v5 addObject:v27];

  lastObject2 = [v5 lastObject];
  LODWORD(v29) = 1148813312;
  [lastObject2 setPriority:v29];

  v30 = MEMORY[0x1E696ACD8];
  textField6 = [(CNPropertyNameCell *)self textField];
  contentView6 = [(CNPropertyNameCell *)self contentView];
  v33 = [v30 constraintWithItem:textField6 attribute:4 relatedBy:0 toItem:contentView6 attribute:16 multiplier:1.0 constant:0.0];
  [v5 addObject:v33];

  lastObject3 = [v5 lastObject];
  LODWORD(v35) = 1148813312;
  [lastObject3 setPriority:v35];

  return v5;
}

- (void)textFieldChanged:(id)changed
{
  object = [changed object];
  propertyItem = [(CNPropertyNameCell *)self propertyItem];
  text = [object text];
  v6 = [propertyItem valueForDisplayString:text];

  markedTextRange = [object markedTextRange];
  v8 = markedTextRange;
  if (!markedTextRange || [markedTextRange isEmpty])
  {
    propertyItem2 = [(CNPropertyNameCell *)self propertyItem];
    [propertyItem2 updateLabeledValueWithValue:v6];

    delegate = [(CNPropertyNameCell *)self delegate];
    propertyItem3 = [(CNPropertyNameCell *)self propertyItem];
    [delegate propertyCell:self didUpdateItem:propertyItem3 withNewValue:v6];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyNameCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = CNPropertyNameCell;
  v4 = [(CNContactCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNContactCell *)v4 setShowSeparator:0];
    v6 = [CNTextField alloc];
    v7 = [(CNTextField *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    textField = v5->_textField;
    v5->_textField = v7;

    textField = [(CNPropertyNameCell *)v5 textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textField2 = [(CNPropertyNameCell *)v5 textField];
    [textField2 setAutocapitalizationType:0];

    textField3 = [(CNPropertyNameCell *)v5 textField];
    [textField3 setAutocorrectionType:1];

    textField4 = [(CNPropertyNameCell *)v5 textField];
    [textField4 setClearButtonMode:1];

    textField5 = [(CNPropertyNameCell *)v5 textField];
    textInputTraits = [textField5 textInputTraits];
    [textInputTraits setReturnKeyGoesToNextResponder:1];

    textField6 = [(CNPropertyNameCell *)v5 textField];
    LODWORD(v16) = 1148846080;
    [textField6 setContentHuggingPriority:1 forAxis:v16];

    textField7 = [(CNPropertyNameCell *)v5 textField];
    [textField7 _cnui_applyContactStyle];

    contentView = [(CNPropertyNameCell *)v5 contentView];
    textField8 = [(CNPropertyNameCell *)v5 textField];
    [contentView addSubview:textField8];

    [(CNPropertyNameCell *)v5 setNeedsUpdateConstraints];
    v5->_firstResponderItem = &v5->_textField->super.super.super;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = *MEMORY[0x1E69DE5C0];
    textField9 = [(CNPropertyNameCell *)v5 textField];
    [defaultCenter addObserver:v5 selector:sel_textFieldChanged_ name:v21 object:textField9];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

@end