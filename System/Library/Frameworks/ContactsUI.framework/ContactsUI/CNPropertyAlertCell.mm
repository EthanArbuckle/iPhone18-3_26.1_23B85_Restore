@interface CNPropertyAlertCell
- (BOOL)allowsCellSelection;
- (CNPropertyAlertCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)alertGroup;
- (void)performDefaultAction;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)setCardGroupItem:(id)item;
@end

@implementation CNPropertyAlertCell

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:cancelCopy];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  pickerCopy = picker;
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewValue:itemCopy];

  if (([(CNPropertyAlertCell *)self isEditing]& 1) == 0)
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    [propertyItem2 saveChangesImmediately:1];
  }

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:pickerCopy];
}

- (void)performDefaultAction
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    firstResponder = [keyWindow firstResponder];
    [firstResponder resignFirstResponder];
  }

  propertyItem = [(CNPropertyCell *)self propertyItem];
  property = [propertyItem property];
  v9 = [property isEqualToString:*MEMORY[0x1E695C1E0]];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  alertItem = [(CNPropertyAlertCell *)self alertItem];
  labeledValue = [alertItem labeledValue];
  value = [labeledValue value];

  v13 = [[CNTonePickerController alloc] initWithAlertType:v10 activityAlert:value];
  [(CNTonePickerController *)v13 setDelegate:self];
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  [presentingDelegate sender:self presentViewController:v13];
}

- (BOOL)allowsCellSelection
{
  alertGroup = [(CNPropertyAlertCell *)self alertGroup];
  allowsDisplayModePickerActions = [alertGroup allowsDisplayModePickerActions];

  return allowsDisplayModePickerActions;
}

- (void)setCardGroupItem:(id)item
{
  v7.receiver = self;
  v7.super_class = CNPropertyAlertCell;
  [(CNPropertyCell *)&v7 setCardGroupItem:?];
  if (item)
  {
    alertGroup = [(CNPropertyAlertCell *)self alertGroup];
    allowsDisplayModePickerActions = [alertGroup allowsDisplayModePickerActions];

    if (allowsDisplayModePickerActions)
    {
      [(CNLabeledCell *)self addChevron];
    }

    else
    {
      [(CNLabeledCell *)self removeChevron];
    }
  }
}

- (id)alertGroup
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  group = [propertyItem group];

  return group;
}

- (CNPropertyAlertCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNPropertyAlertCell;
  v4 = [(CNPropertyCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    valueLabel = [(CNPropertySimpleCell *)v4 valueLabel];
    [valueLabel setNumberOfLines:0];
  }

  return v5;
}

@end