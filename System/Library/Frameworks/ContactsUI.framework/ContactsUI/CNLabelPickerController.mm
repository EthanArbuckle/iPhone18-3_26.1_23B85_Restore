@interface CNLabelPickerController
- (CNPropertyGroupItem)item;
- (id)initForPropertyItem:(id)item;
- (void)pickedItem:(id)item;
- (void)removeCustomItem:(id)item;
@end

@implementation CNLabelPickerController

- (CNPropertyGroupItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)pickedItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  delegate = [(CNPickerController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  labelsToDeleteOnCommit = [(CNLabelPickerController *)self labelsToDeleteOnCommit];
  v7 = [labelsToDeleteOnCommit countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(labelsToDeleteOnCommit);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [MEMORY[0x1E695CEE0] deleteCustomLabel:v11];
        if (v5)
        {
          delegate2 = [(CNPickerController *)self delegate];
          [delegate2 picker:self didDeleteItem:v11];
        }
      }

      v8 = [labelsToDeleteOnCommit countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)removeCustomItem:(id)item
{
  itemCopy = item;
  labelsToDeleteOnCommit = [(CNLabelPickerController *)self labelsToDeleteOnCommit];
  [labelsToDeleteOnCommit addObject:itemCopy];
}

- (id)initForPropertyItem:(id)item
{
  v57 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [(CNPickerController *)self initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, itemCopy);
    array = [MEMORY[0x1E695DF70] array];
    labelsToDeleteOnCommit = v6->_labelsToDeleteOnCommit;
    v6->_labelsToDeleteOnCommit = array;

    standardLabels = [itemCopy standardLabels];
    [(CNPickerController *)v6 setBuiltinItems:standardLabels];

    extendedLabels = [itemCopy extendedLabels];
    builtinItems = [(CNPickerController *)v6 builtinItems];
    v12 = [builtinItems count];
    v13 = [extendedLabels count];

    if (v12 < v13)
    {
      [(CNPickerController *)v6 setSupplementalItems:extendedLabels];
      promotedExtendedLabels = [itemCopy promotedExtendedLabels];
      [(CNPickerController *)v6 setPromotedSupplementalItems:promotedExtendedLabels];

      supplementalItems = [(CNPickerController *)v6 supplementalItems];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __47__CNLabelPickerController_initForPropertyItem___block_invoke;
      v54[3] = &unk_1E74E71A8;
      v16 = v6;
      v55 = v16;
      v17 = [supplementalItems _cn_filter:v54];
      [(CNPickerController *)v16 setRemainderSupplementalItems:v17];
    }

    group = [itemCopy group];
    policy = [group policy];
    property = [itemCopy property];
    v21 = [policy supportedLabelsForContactProperty:property];
    [(CNPickerController *)v6 setAllowsCustomItems:v21 == 0];

    if ([(CNPickerController *)v6 allowsCustomItems])
    {
      group2 = [itemCopy group];
      contactStore = [group2 contactStore];
      property2 = [itemCopy property];
      v25 = [contactStore usedLabelsForPropertyWithKey:property2 error:0];
      v26 = [v25 mutableCopy];

      group3 = [itemCopy group];
      labelsInUseByGroup = [group3 labelsInUseByGroup];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = labelsInUseByGroup;
      v30 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v51;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v50 + 1) + 8 * i);
            if (([v26 containsObject:v34] & 1) == 0)
            {
              [v26 addObject:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v31);
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __47__CNLabelPickerController_initForPropertyItem___block_invoke_2;
      v48[3] = &unk_1E74E4838;
      v35 = v6;
      v49 = v35;
      v36 = [v26 indexesOfObjectsPassingTest:v48];
      v37 = [v26 objectsAtIndexes:v36];
      [(CNPickerController *)v35 setCustomItems:v37];
    }

    labeledValue = [itemCopy labeledValue];
    label = [labeledValue label];
    [(CNPickerController *)v6 setSelectedItem:label];

    selectedItem = [(CNPickerController *)v6 selectedItem];

    if (!selectedItem)
    {
      navigationItem = [(CNLabelPickerController *)v6 navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:0];
    }

    title = [(CNLabelPickerController *)v6 title];

    if (title)
    {
      title2 = [(CNLabelPickerController *)v6 title];
      navigationItem2 = [(CNLabelPickerController *)v6 navigationItem];
      [navigationItem2 setTitle:title2];
    }

    else
    {
      title2 = CNContactsUIBundle();
      navigationItem2 = [title2 localizedStringForKey:@"EDIT_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
      navigationItem3 = [(CNLabelPickerController *)v6 navigationItem];
      [navigationItem3 setTitle:navigationItem2];
    }
  }

  return v6;
}

uint64_t __47__CNLabelPickerController_initForPropertyItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 promotedSupplementalItems];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

uint64_t __47__CNLabelPickerController_initForPropertyItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) builtinItems];
  if ([v4 containsObject:v3])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) supplementalItems];
    v5 = [v6 containsObject:v3] ^ 1;
  }

  return v5;
}

@end