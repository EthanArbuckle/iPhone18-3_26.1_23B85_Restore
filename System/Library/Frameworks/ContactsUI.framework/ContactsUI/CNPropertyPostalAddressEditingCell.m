@interface CNPropertyPostalAddressEditingCell
- (CNPostalAddressEditorView)addressEditor;
- (UIColor)editorSeparatorColor;
- (id)variableConstraints;
- (void)layoutChanged:(id)a3;
- (void)layoutMarginsDidChange;
- (void)setBackgroundColor:(id)a3;
- (void)setEditorSeparatorColor:(id)a3;
- (void)setPresentingDelegate:(id)a3;
- (void)updateWithPropertyItem:(id)a3;
- (void)valueChanged:(id)a3;
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

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNPropertyPostalAddressEditingCell;
  v4 = a3;
  [(CNPropertyPostalAddressEditingCell *)&v6 setBackgroundColor:v4];
  v5 = [(CNPropertyPostalAddressEditingCell *)self addressEditor:v6.receiver];
  [v5 setBackgroundColor:v4];
}

- (UIColor)editorSeparatorColor
{
  v2 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  v3 = [v2 separatorColor];

  return v3;
}

- (void)setEditorSeparatorColor:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [v5 setSeparatorColor:v4];
}

- (void)layoutChanged:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self delegate];
  [v5 propertyCellDidChangeLayout:self];

  v6 = [v4 lineCount];
  v7 = [(CNPropertyEditingCell *)self vseparator];
  [v7 setLineCount:v6];
}

- (void)valueChanged:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v4 address];
  [v5 updateLabeledValueWithValue:v6];

  v9 = [(CNPropertyCell *)self delegate];
  v7 = [(CNPropertyCell *)self propertyItem];
  v8 = [v4 address];

  [v9 propertyCell:self didUpdateItem:v7 withNewValue:v8];
}

- (void)updateWithPropertyItem:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNPropertyPostalAddressEditingCell;
  [(CNPropertyEditingCell *)&v12 updateWithPropertyItem:v4];
  v5 = [v4 labeledValue];
  v6 = [v5 value];

  v7 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [v7 setAddress:v6];

  if ([v4 isReadonly])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 isSuggested] ^ 1;
  }

  v9 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  [v9 setEnabled:v8];

  v10 = [(CNPostalAddressEditorView *)self->_addressEditor lineCount];
  v11 = [(CNPropertyEditingCell *)self vseparator];
  [v11 setLineCount:v10];
}

- (void)setPresentingDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNPropertyPostalAddressEditingCell;
  v4 = a3;
  [(CNPropertyCell *)&v6 setPresentingDelegate:v4];
  v5 = [(CNPropertyPostalAddressEditingCell *)self addressEditor:v6.receiver];
  [v5 setDelegate:v4];
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
    v7 = [(CNPropertyPostalAddressEditingCell *)self contentView];
    [v7 addSubview:self->_addressEditor];

    v8 = [(CNPropertyCell *)self propertyItem];
    v9 = [v8 labeledValue];
    v10 = [v9 value];
    [(CNPostalAddressEditorView *)self->_addressEditor setAddress:v10];

    v11 = [(CNPostalAddressEditorView *)self->_addressEditor lineCount];
    v12 = [(CNPropertyEditingCell *)self vseparator];
    [v12 setLineCount:v11];

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
  v4 = [(CNPropertyEditingCell *)&v15 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v16[0] = @"labelButton";
  v6 = [(CNPropertyEditingCell *)self labelButton];
  v16[1] = @"addressEditor";
  v17[0] = v6;
  v7 = [(CNPropertyPostalAddressEditingCell *)self addressEditor];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[labelButton]-0-[addressEditor]-0-|" options:0 metrics:0 views:v8];
    [v5 addObjectsFromArray:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[addressEditor]-0-|" options:0 metrics:0 views:v8];
    [v5 addObjectsFromArray:v10];

    v11 = MEMORY[0x1E696ACD8];
    v9 = [(CNPropertyEditingCell *)self labelButton];
    v12 = [(CNPropertyPostalAddressEditingCell *)self contentView];
    v13 = [v11 constraintWithItem:v9 attribute:10 relatedBy:0 toItem:v12 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v13];
  }

  return v5;
}

@end