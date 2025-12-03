@interface CNPropertyGeminiEditingCell
- (CNPropertyGeminiEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)variableConstraints;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)performDefaultAction;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
@end

@implementation CNPropertyGeminiEditingCell

- (void)geminiDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  geminiPicker = [(CNPropertyGeminiEditingCell *)self geminiPicker];
  geminiResult = [updateCopy geminiResult];

  [geminiPicker setGeminiResult:geminiResult];
}

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:cancelCopy];

  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:0];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  v6 = MEMORY[0x1E695CEB0];
  pickerCopy = picker;
  v8 = [v6 channelStringFromSenderIdentity:item];
  v9 = v8;
  v10 = &stru_1F0CE7398;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewValue:v11];

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:pickerCopy];

  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:0];
}

- (void)performDefaultAction
{
  geminiItem = [(CNPropertyGeminiEditingCell *)self geminiItem];
  geminiResult = [geminiItem geminiResult];

  v4 = [[CNGeminiPickerController alloc] initWithGeminiResult:geminiResult];
  [(CNPropertyGeminiEditingCell *)self setGeminiPicker:v4];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [propertyItem setGeminiUpdateDelegate:self];
  [(CNGeminiPickerController *)v4 setDelegate:self];
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self presentViewController:v4];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v11.receiver = self;
  v11.super_class = CNPropertyGeminiEditingCell;
  variableConstraints = [(CNLabeledCell *)&v11 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v6 = MEMORY[0x1E696ACD8];
    labelView = [(CNPropertySimpleCell *)self labelView];
    contentView = [(CNPropertyGeminiEditingCell *)self contentView];
    v9 = [v6 constraintWithItem:labelView attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v9];
  }

  return v5;
}

- (CNPropertyGeminiEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNPropertyGeminiEditingCell;
  v4 = [(CNPropertyCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    valueLabel = [(CNPropertySimpleCell *)v4 valueLabel];
    [valueLabel setNumberOfLines:0];

    v7 = v5;
  }

  return v5;
}

@end