@interface CNPropertyInstantMessageEditingCell
- (CNInstantMessageAddress)imAddress;
- (void)labelButtonClicked:(id)clicked;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
@end

@implementation CNPropertyInstantMessageEditingCell

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CNPropertyInstantMessageEditingCell_pickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [presentingDelegate sender:self dismissViewController:cancelCopy completionHandler:v6];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  v29[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  pickerCopy = picker;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  value = [labeledValue value];
  v11 = [value mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = itemCopy;
    name = [v12 name];
    [v11 setService:name];

    teamIdentifier = [v12 teamIdentifier];
    [v11 setTeamIdentifier:teamIdentifier];

    bundleIdentifiers = [v11 bundleIdentifiers];

    if (bundleIdentifiers)
    {
      bundleIdentifiers2 = [v11 bundleIdentifiers];
      bundleIdentifier = [v12 bundleIdentifier];
      v18 = [bundleIdentifiers2 containsObject:bundleIdentifier];

      if (v18)
      {
LABEL_8:

        goto LABEL_9;
      }

      bundleIdentifiers3 = [v11 bundleIdentifiers];
      bundleIdentifier2 = [v12 bundleIdentifier];
      v21 = [bundleIdentifiers3 arrayByAddingObject:bundleIdentifier2];
      [v11 setBundleIdentifiers:v21];
    }

    else
    {
      bundleIdentifiers3 = [v12 bundleIdentifier];
      v29[0] = bundleIdentifiers3;
      bundleIdentifier2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v11 setBundleIdentifiers:bundleIdentifier2];
    }

    goto LABEL_8;
  }

  [v11 setService:itemCopy];
  [v11 setBundleIdentifiers:0];
  [v11 setTeamIdentifier:0];
LABEL_9:
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  service = [v11 service];
  [delegate propertyCell:self didUpdateItem:propertyItem2 withNewLabel:service];

  delegate2 = [(CNPropertyCell *)self delegate];
  propertyItem3 = [(CNPropertyCell *)self propertyItem];
  [delegate2 propertyCell:self didUpdateItem:propertyItem3 withNewValue:v11];

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __58__CNPropertyInstantMessageEditingCell_picker_didPickItem___block_invoke;
  v28[3] = &unk_1E74E6A88;
  v28[4] = self;
  [presentingDelegate sender:self dismissViewController:pickerCopy completionHandler:v28];
}

- (void)labelButtonClicked:(id)clicked
{
  v27[3] = *MEMORY[0x1E69E9840];
  clickedCopy = clicked;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  extendedLabels = [propertyItem extendedLabels];
  v7 = [extendedLabels count];

  if (v7 >= 2)
  {
    v8 = [[CNInstantMessagePickerController alloc] initWithStyle:2];
    [(CNPickerController *)v8 setDelegate:self];
    delegate = [(CNPropertyCell *)self delegate];
    sharedActionsDataSource = [delegate sharedActionsDataSource];
    v11 = *MEMORY[0x1E695C1B8];
    v27[0] = *MEMORY[0x1E695C150];
    v27[1] = v11;
    v27[2] = *MEMORY[0x1E695C178];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    v13 = [sharedActionsDataSource thirdPartyTargetsForActionTypes:v12];
    v26 = 0;
    v14 = [v13 result:&v26];
    v15 = v26;

    if ([v14 count])
    {
      [(CNPickerController *)v8 setDiscoveredItems:v14];
      [(CNPickerController *)v8 setAllowsDiscoveredItems:1];
      imAddress = [(CNPropertyInstantMessageEditingCell *)self imAddress];
      bundleIdentifiers = [imAddress bundleIdentifiers];
      v18 = [bundleIdentifiers count];

      if (v18)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __58__CNPropertyInstantMessageEditingCell_labelButtonClicked___block_invoke;
        v25[3] = &unk_1E74E4E88;
        v25[4] = self;
        v19 = [v14 _cn_firstObjectPassingTest:v25];
        [(CNPickerController *)v8 setSelectedItem:v19];
      }
    }

    selectedItem = [(CNPickerController *)v8 selectedItem];

    if (!selectedItem)
    {
      imAddress2 = [(CNPropertyInstantMessageEditingCell *)self imAddress];
      service = [imAddress2 service];
      [(CNPickerController *)v8 setSelectedItem:service];
    }

    v23 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
    presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
    [presentingDelegate sender:clickedCopy presentViewController:v23];
  }
}

uint64_t __58__CNPropertyInstantMessageEditingCell_labelButtonClicked___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 imAddress];
  v5 = [v4 bundleIdentifiers];
  v6 = [v3 bundleIdentifier];

  v7 = [v5 containsObject:v6];
  return v7;
}

- (CNInstantMessageAddress)imAddress
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNPropertyInstantMessageCell.m" lineNumber:39 description:@"Unexpected instant message profile value"];
  }

  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  labeledValue2 = [propertyItem2 labeledValue];
  value2 = [labeledValue2 value];

  return value2;
}

@end