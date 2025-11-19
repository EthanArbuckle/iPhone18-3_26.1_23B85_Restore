@interface CNPropertyGeminiEditingCell
- (CNPropertyGeminiEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)variableConstraints;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)performDefaultAction;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
@end

@implementation CNPropertyGeminiEditingCell

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v4 = a3;
  v6 = [(CNPropertyGeminiEditingCell *)self geminiPicker];
  v5 = [v4 geminiResult];

  [v6 setGeminiResult:v5];
}

- (void)pickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self presentingDelegate];
  [v5 sender:self dismissViewController:v4];

  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:0];
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v6 = MEMORY[0x1E695CEB0];
  v7 = a3;
  v8 = [v6 channelStringFromSenderIdentity:a4];
  v9 = v8;
  v10 = &stru_1F0CE7398;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [(CNPropertyCell *)self delegate];
  v13 = [(CNPropertyCell *)self propertyItem];
  [v12 propertyCell:self didUpdateItem:v13 withNewValue:v11];

  v14 = [(CNPropertyCell *)self presentingDelegate];
  [v14 sender:self dismissViewController:v7];

  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:0];
}

- (void)performDefaultAction
{
  v3 = [(CNPropertyGeminiEditingCell *)self geminiItem];
  v7 = [v3 geminiResult];

  v4 = [[CNGeminiPickerController alloc] initWithGeminiResult:v7];
  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:v4];
  v5 = [(CNPropertyCell *)self propertyItem];
  [v5 setGeminiUpdateDelegate:self];
  [(CNGeminiPickerController *)v4 setDelegate:self];
  v6 = [(CNPropertyCell *)self presentingDelegate];
  [v6 sender:self presentViewController:v4];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v11.receiver = self;
  v11.super_class = CNPropertyGeminiEditingCell;
  v4 = [(CNLabeledCell *)&v11 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNPropertySimpleCell *)self labelView];
    v8 = [(CNPropertyGeminiEditingCell *)self contentView];
    v9 = [v6 constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v9];
  }

  return v5;
}

- (CNPropertyGeminiEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNPropertyGeminiEditingCell;
  v4 = [(CNPropertyCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CNPropertySimpleCell *)v4 valueLabel];
    [v6 setNumberOfLines:0];

    v7 = v5;
  }

  return v5;
}

@end