@interface CNLabelPickerController
- (CNPropertyGroupItem)item;
- (id)initForPropertyItem:(id)a3;
- (void)pickedItem:(id)a3;
- (void)removeCustomItem:(id)a3;
@end

@implementation CNLabelPickerController

- (CNPropertyGroupItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)pickedItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(CNPickerController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(CNLabelPickerController *)self labelsToDeleteOnCommit];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [MEMORY[0x1E695CEE0] deleteCustomLabel:v11];
        if (v5)
        {
          v12 = [(CNPickerController *)self delegate];
          [v12 picker:self didDeleteItem:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)removeCustomItem:(id)a3
{
  v4 = a3;
  v5 = [(CNLabelPickerController *)self labelsToDeleteOnCommit];
  [v5 addObject:v4];
}

- (id)initForPropertyItem:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPickerController *)self initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, v4);
    v7 = [MEMORY[0x1E695DF70] array];
    labelsToDeleteOnCommit = v6->_labelsToDeleteOnCommit;
    v6->_labelsToDeleteOnCommit = v7;

    v9 = [v4 standardLabels];
    [(CNPickerController *)v6 setBuiltinItems:v9];

    v10 = [v4 extendedLabels];
    v11 = [(CNPickerController *)v6 builtinItems];
    v12 = [v11 count];
    v13 = [v10 count];

    if (v12 < v13)
    {
      [(CNPickerController *)v6 setSupplementalItems:v10];
      v14 = [v4 promotedExtendedLabels];
      [(CNPickerController *)v6 setPromotedSupplementalItems:v14];

      v15 = [(CNPickerController *)v6 supplementalItems];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __47__CNLabelPickerController_initForPropertyItem___block_invoke;
      v54[3] = &unk_1E74E71A8;
      v16 = v6;
      v55 = v16;
      v17 = [v15 _cn_filter:v54];
      [(CNPickerController *)v16 setRemainderSupplementalItems:v17];
    }

    v18 = [v4 group];
    v19 = [v18 policy];
    v20 = [v4 property];
    v21 = [v19 supportedLabelsForContactProperty:v20];
    [(CNPickerController *)v6 setAllowsCustomItems:v21 == 0];

    if ([(CNPickerController *)v6 allowsCustomItems])
    {
      v22 = [v4 group];
      v23 = [v22 contactStore];
      v24 = [v4 property];
      v25 = [v23 usedLabelsForPropertyWithKey:v24 error:0];
      v26 = [v25 mutableCopy];

      v27 = [v4 group];
      v28 = [v27 labelsInUseByGroup];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v28;
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

    v38 = [v4 labeledValue];
    v39 = [v38 label];
    [(CNPickerController *)v6 setSelectedItem:v39];

    v40 = [(CNPickerController *)v6 selectedItem];

    if (!v40)
    {
      v41 = [(CNLabelPickerController *)v6 navigationItem];
      v42 = [v41 rightBarButtonItem];
      [v42 setEnabled:0];
    }

    v43 = [(CNLabelPickerController *)v6 title];

    if (v43)
    {
      v44 = [(CNLabelPickerController *)v6 title];
      v45 = [(CNLabelPickerController *)v6 navigationItem];
      [v45 setTitle:v44];
    }

    else
    {
      v44 = CNContactsUIBundle();
      v45 = [v44 localizedStringForKey:@"EDIT_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
      v46 = [(CNLabelPickerController *)v6 navigationItem];
      [v46 setTitle:v45];
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