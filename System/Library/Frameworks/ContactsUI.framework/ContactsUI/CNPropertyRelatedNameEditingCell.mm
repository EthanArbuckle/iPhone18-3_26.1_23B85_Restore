@interface CNPropertyRelatedNameEditingCell
- (CNPropertyRelatedNameEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)performAccessoryAction;
@end

@implementation CNPropertyRelatedNameEditingCell

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v6 = MEMORY[0x1E695CD80];
  pickerCopy = picker;
  v8 = [v6 stringFromContact:contact style:0];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  v10 = [propertyItem valueForDisplayString:v8];

  delegate = [(CNPropertyCell *)self delegate];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem2 withNewValue:v10];

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CNPropertyRelatedNameEditingCell_contactPicker_didSelectContact___block_invoke;
  v14[3] = &unk_1E74E6A88;
  v14[4] = self;
  [presentingDelegate sender:self dismissViewController:pickerCopy completionHandler:v14];
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CNPropertyRelatedNameEditingCell_contactPickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [presentingDelegate sender:self dismissViewController:cancelCopy completionHandler:v6];
}

- (void)performAccessoryAction
{
  v5 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v5 setDelegate:self];
  [(CNContactPickerViewController *)v5 setMode:2];
  textField = [(CNPropertySimpleEditingCell *)self textField];
  [textField resignFirstResponder];

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self presentViewController:v5];
}

- (CNPropertyRelatedNameEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNPropertyRelatedNameEditingCell;
  v4 = [(CNPropertyEditingCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNPropertyRelatedNameEditingCell *)v4 setEditingAccessoryType:2];
  }

  return v5;
}

@end