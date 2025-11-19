@interface CNPickerController
- (BOOL)isAddCustomItemIndexPath:(id)a3;
- (BOOL)isSearching;
- (BOOL)isSupplementalDisclosureItemIndexPath:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CNPickerController)initWithStyle:(int64_t)a3;
- (CNPickerControllerDelegate)delegate;
- (NSArray)filteredBuiltinItems;
- (NSArray)filteredCustomItems;
- (NSArray)filteredDiscoveredItems;
- (NSArray)filteredPromotedItems;
- (id)_itemAtIndexPath:(id)a3 isPlaceholder:(BOOL *)a4;
- (id)_titleForPickerItem:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForAddCustomItem;
- (id)titleForPickerItem:(id)a3;
- (id)titleForSupplementalItems;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_indexForCustomItemAtIndexPath:(id)a3;
- (void)_updateRightButtonItem;
- (void)cancelPicker:(id)a3;
- (void)customLabelUpdated:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)doneInlineEditing:(id)a3;
- (void)donePicker:(id)a3;
- (void)picker:(id)a3 didDeleteItem:(id)a4;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
- (void)presentExtendedPicker;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFilterTokens:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation CNPickerController

- (CNPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)filteredBuiltinItems
{
  filteredBuiltinItems = self->_filteredBuiltinItems;
  if (filteredBuiltinItems)
  {
    v3 = filteredBuiltinItems;
  }

  else
  {
    v3 = [(CNPickerController *)self builtinItems];
  }

  return v3;
}

- (NSArray)filteredDiscoveredItems
{
  filteredDiscoveredItems = self->_filteredDiscoveredItems;
  if (filteredDiscoveredItems)
  {
    v3 = filteredDiscoveredItems;
  }

  else
  {
    v3 = [(CNPickerController *)self discoveredItems];
  }

  return v3;
}

- (NSArray)filteredPromotedItems
{
  filteredPromotedItems = self->_filteredPromotedItems;
  if (filteredPromotedItems)
  {
    v3 = filteredPromotedItems;
  }

  else
  {
    v3 = [(CNPickerController *)self promotedItems];
  }

  return v3;
}

- (NSArray)filteredCustomItems
{
  filteredCustomItems = self->_filteredCustomItems;
  if (filteredCustomItems)
  {
    v3 = filteredCustomItems;
  }

  else
  {
    v3 = [(CNPickerController *)self customItems];
  }

  return v3;
}

- (id)_itemAtIndexPath:(id)a3 isPlaceholder:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CNPickerController *)self _indexForCustomItemAtIndexPath:v6];
  v8 = v7;
  if (a4)
  {
    *a4 = 0;
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(CNPickerController *)self filteredCustomItems];
    v12 = v11;
    v13 = v8;
LABEL_10:
    v15 = [v11 objectAtIndexedSubscript:v13];

    goto LABEL_11;
  }

  v9 = [v6 section];
  if (v9 == [(CNPickerController *)self discoveredItemsSection])
  {
    v10 = [(CNPickerController *)self filteredDiscoveredItems];
LABEL_9:
    v12 = v10;
    v13 = [v6 row];
    v11 = v12;
    goto LABEL_10;
  }

  v14 = [v6 section];
  if (v14 == [(CNPickerController *)self promotedItemsSection])
  {
    v10 = [(CNPickerController *)self filteredPromotedItems];
    goto LABEL_9;
  }

  v17 = [v6 section];
  if (v17 == [(CNPickerController *)self builtinItemsSection])
  {
    v18 = [v6 indexAtPosition:1];
    v19 = [(CNPickerController *)self filteredBuiltinItems];
    v20 = [v19 count];

    if (v18 < v20)
    {
      v10 = [(CNPickerController *)self filteredBuiltinItems];
      goto LABEL_9;
    }

    v21 = [(CNPickerController *)self titleForSupplementalItems];
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    v21 = [(CNPickerController *)self titleForAddCustomItem];
  }

  v15 = v21;
LABEL_11:

  return v15;
}

- (unint64_t)_indexForCustomItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (([(CNPickerController *)self isEditing]& 1) == 0)
  {
    v6 = [v4 section];
    if (v6 == -[CNPickerController discoveredItemsSection](self, "discoveredItemsSection") || (v7 = [v4 section], v7 == -[CNPickerController promotedItemsSection](self, "promotedItemsSection")) || (v8 = objc_msgSend(v4, "section"), v8 == -[CNPickerController builtinItemsSection](self, "builtinItemsSection")) || !v5 && !-[CNPickerController isSearching](self, "isSearching"))
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 -= [(CNPickerController *)self isSearching]^ 1;
    }
  }

  return v5;
}

- (void)picker:(id)a3 didDeleteItem:(id)a4
{
  v8 = a4;
  v5 = [(CNPickerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNPickerController *)self delegate];
    [v7 picker:self didDeleteItem:v8];
  }
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v5 = a4;
  v6 = [(CNPickerController *)self delegate];
  [v6 picker:self didPickItem:v5];
}

- (void)pickerDidCancel:(id)a3
{
  v4 = [(CNPickerController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneInlineEditing_];
  v5 = [(CNPickerController *)self navigationItem];
  [v5 setRightBarButtonItem:v6];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6996568];
  v6 = [v4 text];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if ((v5 & 1) == 0)
  {
    v7 = [v4 text];
    v20[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v9 = [(CNPickerController *)self customItems];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    [(CNPickerController *)self setCustomItems:v10];

    v11 = [(CNPickerController *)self tableView];
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
    v13 = [v11 cellForRowAtIndexPath:v12];

    v14 = [(CNPickerController *)self customEditingItem];
    v15 = [v13 textLabel];
    [v15 setText:v14];

    [v13 setTextFieldHidden:1];
    [v13 setPlaceholder:0];
    v16 = [(CNPickerController *)self tableView];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
    v19 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v16 insertRowsAtIndexPaths:v18 withRowAnimation:100];
  }

  [(CNPickerController *)self _updateRightButtonItem];
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
  v6 = [(CNPickerController *)self tableView];
  v7 = [v6 cellForRowAtIndexPath:v5];

  [v7 endEditing];
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 text];
    [(CNPickerController *)self setSelectedItem:v7];
  }

  [v4 setDelegate:0];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self];

  [(CNPickerController *)self donePicker:v4];
  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = MEMORY[0x1E69DC708];
  v5 = a3;
  v8 = [[v4 alloc] initWithBarButtonSystemItem:0 target:self action:sel_donePicker_];
  v6 = [(CNPickerController *)self navigationItem];
  [v6 setRightBarButtonItem:v8];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_customLabelUpdated_ name:*MEMORY[0x1E69DE5C0] object:v5];
}

- (BOOL)isSearching
{
  if ([(CNPickerController *)self isSearchControllerActive])
  {
    return 1;
  }

  v4 = [(CNPickerController *)self filterTokens];
  v3 = [v4 count] != 0;

  return v3;
}

- (void)setFilterTokens:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_filterTokens count]== 0;
  }

  objc_storeStrong(&self->_filterTokens, a3);
  if (![v5 count])
  {
    [(CNPickerController *)self setFilteredDiscoveredItems:0];
    [(CNPickerController *)self setFilteredCustomItems:0];
    [(CNPickerController *)self setFilteredBuiltinItems:0];
    [(CNPickerController *)self setFilteredPromotedItems:0];
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __38__CNPickerController_setFilterTokens___block_invoke;
  v26 = &unk_1E74E3568;
  v27 = self;
  v28 = v5;
  v7 = _Block_copy(&v23);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(CNPickerController *)self searchIncludesSupplementalItems:v23]&& ([(CNPickerController *)self supplementalItems], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = MEMORY[0x1E695DFA0];
    v11 = [(CNPickerController *)self supplementalItems];
    v12 = [v10 orderedSetWithArray:v11];

    v13 = [(CNPickerController *)self supplementalItems];
    [v12 addObjectsFromArray:v13];

    v14 = [v12 array];
    [v8 setArray:v14];
  }

  else
  {
    v12 = [(CNPickerController *)self builtinItems];
    [v8 setArray:v12];
  }

  v15 = [(CNPickerController *)self discoveredItems];
  v16 = v7[2](v7, v15);
  [(CNPickerController *)self setFilteredDiscoveredItems:v16];

  v17 = [(CNPickerController *)self customItems];
  v18 = v7[2](v7, v17);
  [(CNPickerController *)self setFilteredCustomItems:v18];

  v19 = [(CNPickerController *)self promotedItems];
  v20 = v7[2](v7, v19);
  [(CNPickerController *)self setFilteredPromotedItems:v20];

  v21 = v7[2](v7, v8);
  [(CNPickerController *)self setFilteredBuiltinItems:v21];

  if (!v6)
  {
LABEL_10:
    v22 = [(CNPickerController *)self tableView];
    [v22 reloadData];
  }

LABEL_11:
}

id __38__CNPickerController_setFilterTokens___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v2;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v17)
  {
    v16 = *v31;
    do
    {
      v3 = 0;
      do
      {
        if (*v31 != v16)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v18 = *(*(&v30 + 1) + 8 * v3);
        v19 = v3;
        v5 = [*(a1 + 32) _titleForPickerItem:?];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v6 = *(a1 + 40);
        v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v7)
        {
          v8 = *v27;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v27 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v26 + 1) + 8 * i);
              v22 = 0;
              v23 = &v22;
              v24 = 0x2020000000;
              v25 = 0;
              v11 = [v5 length];
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __38__CNPickerController_setFilterTokens___block_invoke_2;
              v21[3] = &unk_1E74E3540;
              v21[4] = v10;
              v21[5] = &v22;
              [v5 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v21}];
              LOBYTE(v10) = *(v23 + 24);
              _Block_object_dispose(&v22, 8);
              if ((v10 & 1) == 0)
              {

                goto LABEL_16;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        [v14 addObject:v18];
LABEL_16:

        v3 = v19 + 1;
      }

      while (v19 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v17);
  }

  v12 = [v14 copy];

  return v12;
}

uint64_t __38__CNPickerController_setFilterTokens___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 _cn_hasPrefix:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

- (void)didDismissSearchController:(id)a3
{
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if ([(CNPickerController *)self customItemsSection]!= -1)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
    if (![(CNPickerController *)self isAddCustomItemIndexPath:v4])
    {
      [v11 addObject:v4];
    }
  }

  if ([(CNPickerController *)self builtinItemsSection]!= -1)
  {
    v5 = [(CNPickerController *)self supplementalItems];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696AC88];
      v8 = [(CNPickerController *)self builtinItems];
      v9 = [v7 indexPathForRow:objc_msgSend(v8 inSection:{"count"), -[CNPickerController builtinItemsSection](self, "builtinItemsSection")}];

      [v11 addObject:v9];
    }
  }

  [(CNPickerController *)self setSearchControllerActive:0];
  v10 = [(CNPickerController *)self tableView];
  [v10 insertRowsAtIndexPaths:v11 withRowAnimation:0];
}

- (void)willPresentSearchController:(id)a3
{
  if (![(CNPickerController *)self isSearching])
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if ([(CNPickerController *)self customItemsSection]!= -1)
    {
      v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
      if ([(CNPickerController *)self isAddCustomItemIndexPath:v4])
      {
        [v11 addObject:v4];
      }
    }

    if ([(CNPickerController *)self builtinItemsSection]!= -1)
    {
      v5 = [(CNPickerController *)self supplementalItems];
      v6 = [v5 count];

      if (v6)
      {
        v7 = MEMORY[0x1E696AC88];
        v8 = [(CNPickerController *)self builtinItems];
        v9 = [v7 indexPathForRow:objc_msgSend(v8 inSection:{"count"), -[CNPickerController builtinItemsSection](self, "builtinItemsSection")}];

        [v11 addObject:v9];
      }
    }

    [(CNPickerController *)self setSearchControllerActive:1];
    v10 = [(CNPickerController *)self tableView];
    [v10 deleteRowsAtIndexPaths:v11 withRowAnimation:0];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];

  v6 = [v5 length];
  v7 = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CNPickerController_updateSearchResultsForSearchController___block_invoke;
  v9[3] = &unk_1E74E3518;
  v10 = v7;
  v8 = v7;
  [v5 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v9}];
  [(CNPickerController *)self setFilterTokens:v8];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if (a4 == 1)
  {
    if ([(CNPickerController *)self isSearching])
    {
      [(CNPickerController *)self filteredCustomItems];
    }

    else
    {
      [(CNPickerController *)self customItems];
    }
    v8 = ;
    v9 = [v8 objectAtIndexedSubscript:{-[CNPickerController _indexForCustomItemAtIndexPath:](self, "_indexForCustomItemAtIndexPath:", v7)}];
    [(CNPickerController *)self removeCustomItem:v9];
    v10 = [(CNPickerController *)self selectedItem];
    if (v10)
    {
      v11 = v10;
      v12 = [(CNPickerController *)self selectedItem];
      v13 = [v12 isEqual:v9];

      if (v13)
      {
        [(CNPickerController *)self setSelectedItem:0];
      }
    }

    v14 = [(CNPickerController *)self customItems];
    v15 = [v14 mutableCopy];

    [v15 removeObject:v9];
    [(CNPickerController *)self setCustomItems:v15];
    if ([(CNPickerController *)self isSearching])
    {
      v16 = [(CNPickerController *)self filteredCustomItems];
      v17 = [v16 mutableCopy];

      [v17 removeObject:v9];
      [(CNPickerController *)self setFilteredCustomItems:v17];
    }

    v18 = [(CNPickerController *)self tableView];
    v20[0] = v7;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v18 deleteRowsAtIndexPaths:v19 withRowAnimation:100];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a3;
  v7 = a4;
  [v7 _cnui_applyContactStyle];
  if (-[UIViewController ab_shouldUseTransparentBackgroundInPopovers](self, "ab_shouldUseTransparentBackgroundInPopovers") || ([v14 backgroundColor], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DC888], "clearColor"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    v11 = [(CNPickerController *)self tableView];
LABEL_4:
    v12 = v11;
    v13 = [v11 backgroundColor];
    [v7 setBackgroundColor:v13];

    goto LABEL_5;
  }

  if (CNUIIsWatchCompanion() || CNUIIsActivity())
  {
    v11 = [v7 backgroundView];
    goto LABEL_4;
  }

  v12 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  [v7 setBackgroundColor:v12];
LABEL_5:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ([(CNPickerController *)self isSupplementalDisclosureItemIndexPath:v6])
  {
    [(CNPickerController *)self presentExtendedPicker];
  }

  else if ([(CNPickerController *)self isAddCustomItemIndexPath:v6])
  {
    v7 = [v17 cellForRowAtIndexPath:v6];
    v8 = [v7 textField];
    [v8 setDelegate:self];

    v9 = [v7 textLabel];
    v10 = [v9 textColor];
    v11 = [v7 textField];
    [v11 setTextColor:v10];

    [v7 beginEditing];
    [v17 deselectRowAtIndexPath:v6 animated:1];
  }

  else
  {
    [(CNPickerController *)self setSelectedIndexPath:v6];
    v12 = [(CNPickerController *)self _itemAtIndexPath:v6 isPlaceholder:0];
    [(CNPickerController *)self setSelectedItem:v12];

    v13 = [(CNPickerController *)self searchController];
    [v13 setActive:0];

    v14 = [(CNPickerController *)self delegate];
    v15 = [(CNPickerController *)self selectedItem];
    [v14 picker:self didPickItem:v15];

    v16 = [(CNPickerController *)self selectedItem];
    [(CNPickerController *)self pickedItem:v16];

    [v17 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ABPickerItemCell"];
  v8 = [v7 textLabel];
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = [v7 textLabel];
  [v9 setNumberOfLines:2];

  v21 = 0;
  v10 = [(CNPickerController *)self _itemAtIndexPath:v6 isPlaceholder:&v21];
  v11 = [(CNPickerController *)self _titleForPickerItem:v10];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  [v7 setPlaceholder:v21];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([(CNPickerController *)self selectedItem], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass))
  {
    v15 = [(CNPickerController *)self selectedItem];
    v16 = [v10 _cn_caseInsensitiveIsEqual:v15];
  }

  else
  {
    v15 = [(CNPickerController *)self selectedItem];
    v16 = [v10 isEqual:v15];
  }

  v17 = v16;

  if ([(CNPickerController *)self isSupplementalDisclosureItemIndexPath:v6])
  {
    v18 = v7;
    v19 = 1;
  }

  else
  {
    v18 = v7;
    if (v17)
    {
      [v7 setAccessoryType:3];
      [(CNPickerController *)self setSelectedIndexPath:v6];
      goto LABEL_11;
    }

    v19 = 0;
  }

  [v18 setAccessoryType:v19];
LABEL_11:

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(CNPickerController *)self isSearching];
  if ([(CNPickerController *)self isEditing])
  {
    v7 = [(CNPickerController *)self customItems];
LABEL_7:
    v8 = v7;
    v9 = [v7 count];
    goto LABEL_8;
  }

  if ([(CNPickerController *)self discoveredItemsSection]== a4)
  {
    v7 = [(CNPickerController *)self filteredDiscoveredItems];
    goto LABEL_7;
  }

  if ([(CNPickerController *)self promotedItemsSection]== a4)
  {
    v7 = [(CNPickerController *)self filteredPromotedItems];
    goto LABEL_7;
  }

  if ([(CNPickerController *)self builtinItemsSection]== a4)
  {
    v11 = [(CNPickerController *)self supplementalItems];
    v12 = [v11 count] != 0;
    v13 = !v6;

    v8 = [(CNPickerController *)self filteredBuiltinItems];
    v9 = [v8 count] + (v12 & v13);
  }

  else
  {
    v8 = [(CNPickerController *)self filteredCustomItems];
    v14 = [v8 count];
    v9 = v14 + ([(CNPickerController *)self isSearching]^ 1);
  }

LABEL_8:

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  [(CNPickerController *)self setDiscoveredItemsSection:-1];
  [(CNPickerController *)self setBuiltinItemsSection:-1];
  [(CNPickerController *)self setPromotedItemsSection:-1];
  [(CNPickerController *)self setCustomItemsSection:-1];
  if (([(CNPickerController *)self isEditing]& 1) != 0)
  {
    return 1;
  }

  if ([(CNPickerController *)self allowsDiscoveredItems])
  {
    [(CNPickerController *)self setDiscoveredItemsSection:0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CNPickerController *)self promotedItems];
  v7 = [v6 count];

  if (v7)
  {
    [(CNPickerController *)self setPromotedItemsSection:v5++];
  }

  [(CNPickerController *)self setBuiltinItemsSection:v5];
  v4 = v5 + 1;
  if ([(CNPickerController *)self allowsCustomItems])
  {
    [(CNPickerController *)self setCustomItemsSection:v5 + 1];
    return v5 + 2;
  }

  return v4;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = CNPickerController;
  [(CNPickerController *)&v13 setEditing:a3 animated:a4];
  v6 = [(CNPickerController *)self tableView];
  [v6 reloadData];
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CNPickerController *)self searchController];
  }

  v8 = [(CNPickerController *)self navigationItem];
  [v8 setSearchController:v7];

  if (!a3)
  {

    v9 = [v6 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v6 delegate];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [v11 tableView:v6 didEndEditingRowAtIndexPath:v12];
    }
  }
}

- (void)_updateRightButtonItem
{
  if (-[CNPickerController allowsCustomItems](self, "allowsCustomItems") && (-[CNPickerController customItems](self, "customItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v6 = [(CNPickerController *)self editButtonItem];
    v5 = [(CNPickerController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = [(CNPickerController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CNPickerController;
  [(CNPickerController *)&v33 viewWillAppear:a3];
  v4 = [(CNPickerController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 _cnui_applyContactStyle];

  v6 = [(CNPickerController *)self tableView];
  [v6 _cnui_applyContactStyle];

  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v7 = [(CNPickerController *)self navigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
      v11 = [(CNPickerController *)self navigationItem];
      [v11 setLeftBarButtonItem:v10];
    }
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v12 = +[CNUIColorRepository popoverBackgroundColor];
    v13 = [(CNPickerController *)self tableView];
    [v13 setBackgroundColor:v12];

    v14 = [(CNPickerController *)self tableView];
    v15 = [v14 backgroundColor];
    v16 = [(CNPickerController *)self tableView];
    [v16 setSectionIndexBackgroundColor:v15];
  }

  if ([(CNPickerController *)self allowsCustomItems])
  {
    v17 = [(CNPickerController *)self selectedItem];
    if (v17)
    {
      v18 = v17;
      v19 = [(CNPickerController *)self discoveredItems];
      v20 = [(CNPickerController *)self selectedItem];
      if ([v19 containsObject:v20])
      {
        goto LABEL_9;
      }

      v21 = [(CNPickerController *)self builtinItems];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __37__CNPickerController_viewWillAppear___block_invoke;
      v32[3] = &unk_1E74E5A18;
      v32[4] = self;
      if ([v21 _cn_any:v32])
      {
        v22 = 0;
      }

      else
      {
        v23 = [(CNPickerController *)self promotedItems];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __37__CNPickerController_viewWillAppear___block_invoke_2;
        v31[3] = &unk_1E74E5A18;
        v31[4] = self;
        if ([v23 _cn_any:v31])
        {
          v22 = 0;
        }

        else
        {
          v24 = [(CNPickerController *)self customItems];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __37__CNPickerController_viewWillAppear___block_invoke_3;
          v30[3] = &unk_1E74E5A18;
          v30[4] = self;
          v22 = [v24 _cn_any:v30] ^ 1;
        }
      }

      if (v22)
      {
        v25 = [(CNPickerController *)self supplementalItems];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __37__CNPickerController_viewWillAppear___block_invoke_4;
        v29[3] = &unk_1E74E5A18;
        v29[4] = self;
        v26 = [v25 _cn_any:v29];

        if (v26)
        {
          v18 = [(CNPickerController *)self builtinItems];
          v19 = [(CNPickerController *)self selectedItem];
          v20 = [v18 arrayByAddingObject:v19];
          [(CNPickerController *)self setBuiltinItems:v20];
        }

        else
        {
          v28 = [(CNPickerController *)self customItems];

          if (!v28)
          {
            v18 = [(CNPickerController *)self selectedItem];
            v34[0] = v18;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
            [(CNPickerController *)self setCustomItems:v19];
            goto LABEL_10;
          }

          v18 = [(CNPickerController *)self customItems];
          v19 = [(CNPickerController *)self selectedItem];
          v20 = [v18 arrayByAddingObject:v19];
          [(CNPickerController *)self setCustomItems:v20];
        }

LABEL_9:

LABEL_10:
      }
    }
  }

  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    [(CNPickerController *)self _updateRightButtonItem];
  }

  v27 = [(CNPickerController *)self tableView];
  [v27 reloadData];
}

uint64_t __37__CNPickerController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedItem];
  v5 = [v3 _cn_caseInsensitiveIsEqual:v4];

  return v5;
}

uint64_t __37__CNPickerController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedItem];
  v5 = [v3 _cn_caseInsensitiveIsEqual:v4];

  return v5;
}

uint64_t __37__CNPickerController_viewWillAppear___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedItem];
  v5 = [v3 _cn_caseInsensitiveIsEqual:v4];

  return v5;
}

uint64_t __37__CNPickerController_viewWillAppear___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedItem];
  v5 = [v3 _cn_caseInsensitiveIsEqual:v4];

  return v5;
}

- (BOOL)isSupplementalDisclosureItemIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == [(CNPickerController *)self builtinItemsSection])
  {
    v6 = [v4 row];
    v7 = [(CNPickerController *)self filteredBuiltinItems];
    v8 = v6 >= [v7 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAddCustomItemIndexPath:(id)a3
{
  v4 = a3;
  if (-[CNPickerController allowsCustomItems](self, "allowsCustomItems") && (v5 = [v4 section], v5 == -[CNPickerController customItemsSection](self, "customItemsSection")) && !objc_msgSend(v4, "row"))
  {
    v6 = ![(CNPickerController *)self isSearchControllerActive];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)customLabelUpdated:(id)a3
{
  v4 = [a3 object];
  [(CNPickerController *)self setCustomTextField:v4];

  v6 = [(CNPickerController *)self customTextField];
  v5 = [v6 text];
  [(CNPickerController *)self setCustomEditingItem:v5];
}

- (void)presentExtendedPicker
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(CNPickerController *)self tableView];
  v8 = [v3 initWithStyle:{objc_msgSend(v4, "style")}];

  [v8 setDelegate:self];
  v5 = [(CNPickerController *)self remainderSupplementalItems];
  [v8 setBuiltinItems:v5];

  v6 = [(CNPickerController *)self promotedSupplementalItems];
  [v8 setPromotedItems:v6];

  [v8 setAllowsCustomItems:0];
  v7 = [(CNPickerController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)donePicker:(id)a3
{
  v4 = [(CNPickerController *)self customEditingItem];
  if (v4)
  {
    v5 = v4;
    v6 = [(CNPickerController *)self customTextField];
    v7 = [v6 isFirstResponder];

    if (v7)
    {
      v8 = [(CNPickerController *)self customEditingItem];
      [(CNPickerController *)self setSelectedItem:v8];
    }
  }

  v10 = [(CNPickerController *)self delegate];
  v9 = [(CNPickerController *)self selectedItem];
  [v10 picker:self didPickItem:v9];
}

- (void)doneInlineEditing:(id)a3
{
  v4 = [(CNPickerController *)self tableView];
  [v4 setEditing:0];

  [(CNPickerController *)self _updateRightButtonItem];
}

- (void)cancelPicker:(id)a3
{
  v4 = [(CNPickerController *)self delegate];
  [v4 pickerDidCancel:self];
}

- (id)titleForSupplementalItems
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ALL_LABELS" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (id)titleForAddCustomItem
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ADD_CUSTOM_LABEL_BUTTON" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (id)titleForPickerItem:(id)a3
{
  v3 = a3;
  if (_useSiriLocalization == 1)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      if (_useSiriLocalization)
      {
        v10 = ABAddressBookBundle();
        v11 = [v10 siriUILocalizedStringForKey:v3 table:@"Localized"];

        goto LABEL_7;
      }
    }

    else
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/OldFramework/Sources/ContactsUI_Internal.m", 126, 4, @"You tried to use Siri localization but SiriUI is not loaded.", v6, v7, v8, v9, v13);
    }
  }

  v11 = [MEMORY[0x1E695CD58] localizedStringForKey:v3];
LABEL_7:

  return v11;
}

- (id)_titleForPickerItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPickerController *)self itemLocalizationBlock];

  if (v5)
  {
    v6 = [(CNPickerController *)self itemLocalizationBlock];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v8 = [(CNPickerController *)self itemLocalizationKey];

    if (!v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 name];
      }

      else
      {
        [(CNPickerController *)self titleForPickerItem:v4];
      }
      v7 = ;
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [(CNPickerController *)self itemLocalizationKey];
    v6 = [v9 stringWithFormat:@"%@ %@", v4, v10];

    v11 = CNContactsUIBundle();
    v7 = [v11 localizedStringForKey:v6 value:v4 table:@"Localized"];
  }

LABEL_6:

  return v7;
}

- (CNPickerController)initWithStyle:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = CNPickerController;
  v3 = [(CNPickerController *)&v20 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CNPickerController *)v3 tableView];
    [v5 setDelegate:v4];
    [v5 setDataSource:v4];
    [v5 setKeyboardDismissMode:1];
    [v5 setRowHeight:*MEMORY[0x1E69DE3D0]];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 _scaledValueForValue:44.0];
    [v5 setEstimatedRowHeight:?];

    [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"ABPickerItemCell"];
    v7 = [(CNPickerController *)v4 navigationItem];
    [v7 setLargeTitleDisplayMode:2];

    v8 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = v4->_searchController;
    v4->_searchController = v8;

    v10 = v4->_searchController;
    v11 = [(CNPickerController *)v4 navigationItem];
    [v11 setSearchController:v10];

    v12 = [(CNPickerController *)v4 navigationItem];
    v13 = [v12 searchController];
    [v13 setSearchResultsUpdater:v4];

    v14 = [(CNPickerController *)v4 navigationItem];
    v15 = [v14 searchController];
    [v15 setDelegate:v4];

    v16 = [(CNPickerController *)v4 navigationItem];
    v17 = [v16 searchController];
    [v17 setObscuresBackgroundDuringPresentation:0];

    v18 = [(CNPickerController *)v4 navigationItem];
    [v18 setPreferredSearchBarPlacement:2];

    v4->_allowsCustomItems = 1;
    v4->_searchIncludesSupplementalItems = 1;
  }

  return v4;
}

@end