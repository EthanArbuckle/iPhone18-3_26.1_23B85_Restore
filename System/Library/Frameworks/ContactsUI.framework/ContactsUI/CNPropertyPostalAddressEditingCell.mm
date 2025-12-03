@interface CNPropertyPostalAddressEditingCell
- (CNPostalAddressEditorView)addressEditor;
- (UIColor)editorSeparatorColor;
- (id)variableConstraints;
- (void)layoutChanged:(id)changed;
- (void)layoutMarginsDidChange;
- (void)setBackgroundColor:(id)color;
- (void)setEditorSeparatorColor:(id)color;
- (void)setPresentingDelegate:(id)delegate;
- (void)updateWithPropertyItem:(id)item;
- (void)valueChanged:(id)changed;
@end

@implementation CNPropertyPostalAddressEditingCell

- (void)layoutMarginsDidChange
{
  [(CNPropertyPostalAddressEditingCell *)self layoutMargins];
  [(CNPostalAddressEditorView *)self->_addressEditor setLayoutMargins:?];
  v3.receiver = self;
  v3.super_class = CNPropertyPostalAddressEditingCell;
  [(CNPropertyPostalAddressEditingCell *)&v3 layoutMarginsDidChange];
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = CNPropertyPostalAddressEditingCell;
  colorCopy = color;
  [(CNPropertyPostalAddressEditingCell *)&v6 setBackgroundColor:colorCopy];
  v5 = [(CNPropertyPostalAddressEditingCell *)self addressEditor:v6.receiver];
  [v5 setBackgroundColor:colorCopy];
}

- (UIColor)editorSeparatorColor
{
  addressEditor = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  separatorColor = [addressEditor separatorColor];

  return separatorColor;
}

- (void)setEditorSeparatorColor:(id)color
{
  colorCopy = color;
  addressEditor = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [addressEditor setSeparatorColor:colorCopy];
}

- (void)layoutChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(CNPropertyCell *)self delegate];
  [delegate propertyCellDidChangeLayout:self];

  lineCount = [changedCopy lineCount];
  vseparator = [(CNPropertyEditingCell *)self vseparator];
  [vseparator setLineCount:lineCount];
}

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  address = [changedCopy address];
  [propertyItem updateLabeledValueWithValue:address];

  delegate = [(CNPropertyCell *)self delegate];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  address2 = [changedCopy address];

  [delegate propertyCell:self didUpdateItem:propertyItem2 withNewValue:address2];
}

- (void)updateWithPropertyItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = CNPropertyPostalAddressEditingCell;
  [(CNPropertyEditingCell *)&v12 updateWithPropertyItem:itemCopy];
  labeledValue = [itemCopy labeledValue];
  value = [labeledValue value];

  addressEditor = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [addressEditor setAddress:value];

  if ([itemCopy isReadonly])
  {
    v8 = 0;
  }

  else
  {
    v8 = [itemCopy isSuggested] ^ 1;
  }

  addressEditor2 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [addressEditor2 setEnabled:v8];

  lineCount = [(CNPostalAddressEditorView *)self->_addressEditor lineCount];
  vseparator = [(CNPropertyEditingCell *)self vseparator];
  [vseparator setLineCount:lineCount];
}

- (void)setPresentingDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = CNPropertyPostalAddressEditingCell;
  delegateCopy = delegate;
  [(CNPropertyCell *)&v6 setPresentingDelegate:delegateCopy];
  v5 = [(CNPropertyPostalAddressEditingCell *)self addressEditor:v6.receiver];
  [v5 setDelegate:delegateCopy];
}

- (CNPostalAddressEditorView)addressEditor
{
  addressEditor = self->_addressEditor;
  if (!addressEditor)
  {
    v4 = [CNPostalAddressEditorView alloc];
    v5 = [(CNPostalAddressEditorView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_addressEditor;
    self->_addressEditor = v5;

    [(CNPostalAddressEditorView *)self->_addressEditor setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNPostalAddressEditorView *)self->_addressEditor addTarget:self action:sel_valueChanged_ forControlEvents:4096];
    [(CNPostalAddressEditorView *)self->_addressEditor addTarget:self action:sel_layoutChanged_ forControlEvents:0x1000000];
    contentView = [(CNPropertyPostalAddressEditingCell *)self contentView];
    [contentView addSubview:self->_addressEditor];

    propertyItem = [(CNPropertyCell *)self propertyItem];
    labeledValue = [propertyItem labeledValue];
    value = [labeledValue value];
    [(CNPostalAddressEditorView *)self->_addressEditor setAddress:value];

    lineCount = [(CNPostalAddressEditorView *)self->_addressEditor lineCount];
    vseparator = [(CNPropertyEditingCell *)self vseparator];
    [vseparator setLineCount:lineCount];

    addressEditor = self->_addressEditor;
  }

  return addressEditor;
}

- (id)variableConstraints
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v15.receiver = self;
  v15.super_class = CNPropertyPostalAddressEditingCell;
  variableConstraints = [(CNPropertyEditingCell *)&v15 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  v16[0] = @"labelButton";
  labelButton = [(CNPropertyEditingCell *)self labelButton];
  v16[1] = @"addressEditor";
  v17[0] = labelButton;
  addressEditor = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  v17[1] = addressEditor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    labelButton2 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[labelButton]-0-[addressEditor]-0-|" options:0 metrics:0 views:v8];
    [v5 addObjectsFromArray:labelButton2];
  }

  else
  {
    v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[addressEditor]-0-|" options:0 metrics:0 views:v8];
    [v5 addObjectsFromArray:v10];

    v11 = MEMORY[0x1E696ACD8];
    labelButton2 = [(CNPropertyEditingCell *)self labelButton];
    contentView = [(CNPropertyPostalAddressEditingCell *)self contentView];
    v13 = [v11 constraintWithItem:labelButton2 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v13];
  }

  return v5;
}

@end