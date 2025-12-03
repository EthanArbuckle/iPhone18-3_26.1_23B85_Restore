@interface CNPickerController
- (BOOL)isAddCustomItemIndexPath:(id)path;
- (BOOL)isSearching;
- (BOOL)isSupplementalDisclosureItemIndexPath:(id)path;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (CNPickerController)initWithStyle:(int64_t)style;
- (CNPickerControllerDelegate)delegate;
- (NSArray)filteredBuiltinItems;
- (NSArray)filteredCustomItems;
- (NSArray)filteredDiscoveredItems;
- (NSArray)filteredPromotedItems;
- (id)_itemAtIndexPath:(id)path isPlaceholder:(BOOL *)placeholder;
- (id)_titleForPickerItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForAddCustomItem;
- (id)titleForPickerItem:(id)item;
- (id)titleForSupplementalItems;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_indexForCustomItemAtIndexPath:(id)path;
- (void)_updateRightButtonItem;
- (void)cancelPicker:(id)picker;
- (void)customLabelUpdated:(id)updated;
- (void)didDismissSearchController:(id)controller;
- (void)doneInlineEditing:(id)editing;
- (void)donePicker:(id)picker;
- (void)picker:(id)picker didDeleteItem:(id)item;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)presentExtendedPicker;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFilterTokens:(id)tokens;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
- (void)willPresentSearchController:(id)controller;
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
    builtinItems = filteredBuiltinItems;
  }

  else
  {
    builtinItems = [(CNPickerController *)self builtinItems];
  }

  return builtinItems;
}

- (NSArray)filteredDiscoveredItems
{
  filteredDiscoveredItems = self->_filteredDiscoveredItems;
  if (filteredDiscoveredItems)
  {
    discoveredItems = filteredDiscoveredItems;
  }

  else
  {
    discoveredItems = [(CNPickerController *)self discoveredItems];
  }

  return discoveredItems;
}

- (NSArray)filteredPromotedItems
{
  filteredPromotedItems = self->_filteredPromotedItems;
  if (filteredPromotedItems)
  {
    promotedItems = filteredPromotedItems;
  }

  else
  {
    promotedItems = [(CNPickerController *)self promotedItems];
  }

  return promotedItems;
}

- (NSArray)filteredCustomItems
{
  filteredCustomItems = self->_filteredCustomItems;
  if (filteredCustomItems)
  {
    customItems = filteredCustomItems;
  }

  else
  {
    customItems = [(CNPickerController *)self customItems];
  }

  return customItems;
}

- (id)_itemAtIndexPath:(id)path isPlaceholder:(BOOL *)placeholder
{
  pathCopy = path;
  v7 = [(CNPickerController *)self _indexForCustomItemAtIndexPath:pathCopy];
  v8 = v7;
  if (placeholder)
  {
    *placeholder = 0;
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    filteredCustomItems = [(CNPickerController *)self filteredCustomItems];
    v12 = filteredCustomItems;
    v13 = v8;
LABEL_10:
    v15 = [filteredCustomItems objectAtIndexedSubscript:v13];

    goto LABEL_11;
  }

  section = [pathCopy section];
  if (section == [(CNPickerController *)self discoveredItemsSection])
  {
    filteredDiscoveredItems = [(CNPickerController *)self filteredDiscoveredItems];
LABEL_9:
    v12 = filteredDiscoveredItems;
    v13 = [pathCopy row];
    filteredCustomItems = v12;
    goto LABEL_10;
  }

  section2 = [pathCopy section];
  if (section2 == [(CNPickerController *)self promotedItemsSection])
  {
    filteredDiscoveredItems = [(CNPickerController *)self filteredPromotedItems];
    goto LABEL_9;
  }

  section3 = [pathCopy section];
  if (section3 == [(CNPickerController *)self builtinItemsSection])
  {
    v18 = [pathCopy indexAtPosition:1];
    filteredBuiltinItems = [(CNPickerController *)self filteredBuiltinItems];
    v20 = [filteredBuiltinItems count];

    if (v18 < v20)
    {
      filteredDiscoveredItems = [(CNPickerController *)self filteredBuiltinItems];
      goto LABEL_9;
    }

    titleForSupplementalItems = [(CNPickerController *)self titleForSupplementalItems];
  }

  else
  {
    if (placeholder)
    {
      *placeholder = 1;
    }

    titleForSupplementalItems = [(CNPickerController *)self titleForAddCustomItem];
  }

  v15 = titleForSupplementalItems;
LABEL_11:

  return v15;
}

- (unint64_t)_indexForCustomItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (([(CNPickerController *)self isEditing]& 1) == 0)
  {
    section = [pathCopy section];
    if (section == -[CNPickerController discoveredItemsSection](self, "discoveredItemsSection") || (v7 = [pathCopy section], v7 == -[CNPickerController promotedItemsSection](self, "promotedItemsSection")) || (v8 = objc_msgSend(pathCopy, "section"), v8 == -[CNPickerController builtinItemsSection](self, "builtinItemsSection")) || !v5 && !-[CNPickerController isSearching](self, "isSearching"))
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

- (void)picker:(id)picker didDeleteItem:(id)item
{
  itemCopy = item;
  delegate = [(CNPickerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNPickerController *)self delegate];
    [delegate2 picker:self didDeleteItem:itemCopy];
  }
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  delegate = [(CNPickerController *)self delegate];
  [delegate picker:self didPickItem:itemCopy];
}

- (void)pickerDidCancel:(id)cancel
{
  navigationController = [(CNPickerController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneInlineEditing_];
  navigationItem = [(CNPickerController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v20[1] = *MEMORY[0x1E69E9840];
  editingCopy = editing;
  v5 = *MEMORY[0x1E6996568];
  text = [editingCopy text];
  LOBYTE(v5) = (*(v5 + 16))(v5, text);

  if ((v5 & 1) == 0)
  {
    text2 = [editingCopy text];
    v20[0] = text2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    customItems = [(CNPickerController *)self customItems];
    v10 = [v8 arrayByAddingObjectsFromArray:customItems];
    [(CNPickerController *)self setCustomItems:v10];

    tableView = [(CNPickerController *)self tableView];
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
    v13 = [tableView cellForRowAtIndexPath:v12];

    customEditingItem = [(CNPickerController *)self customEditingItem];
    textLabel = [v13 textLabel];
    [textLabel setText:customEditingItem];

    [v13 setTextFieldHidden:1];
    [v13 setPlaceholder:0];
    tableView2 = [(CNPickerController *)self tableView];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
    v19 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [tableView2 insertRowsAtIndexPaths:v18 withRowAnimation:100];
  }

  [(CNPickerController *)self _updateRightButtonItem];
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[CNPickerController customItemsSection](self, "customItemsSection")}];
  tableView = [(CNPickerController *)self tableView];
  v7 = [tableView cellForRowAtIndexPath:v5];

  [v7 endEditing];
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [text length];

  if (v6)
  {
    text2 = [returnCopy text];
    [(CNPickerController *)self setSelectedItem:text2];
  }

  [returnCopy setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CNPickerController *)self donePicker:returnCopy];
  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = MEMORY[0x1E69DC708];
  editingCopy = editing;
  v8 = [[v4 alloc] initWithBarButtonSystemItem:0 target:self action:sel_donePicker_];
  navigationItem = [(CNPickerController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_customLabelUpdated_ name:*MEMORY[0x1E69DE5C0] object:editingCopy];
}

- (BOOL)isSearching
{
  if ([(CNPickerController *)self isSearchControllerActive])
  {
    return 1;
  }

  filterTokens = [(CNPickerController *)self filterTokens];
  v3 = [filterTokens count] != 0;

  return v3;
}

- (void)setFilterTokens:(id)tokens
{
  tokensCopy = tokens;
  if ([tokensCopy count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_filterTokens count]== 0;
  }

  objc_storeStrong(&self->_filterTokens, tokens);
  if (![tokensCopy count])
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
  selfCopy = self;
  v28 = tokensCopy;
  v7 = _Block_copy(&v23);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(CNPickerController *)self searchIncludesSupplementalItems:v23]&& ([(CNPickerController *)self supplementalItems], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = MEMORY[0x1E695DFA0];
    supplementalItems = [(CNPickerController *)self supplementalItems];
    builtinItems = [v10 orderedSetWithArray:supplementalItems];

    supplementalItems2 = [(CNPickerController *)self supplementalItems];
    [builtinItems addObjectsFromArray:supplementalItems2];

    array = [builtinItems array];
    [v8 setArray:array];
  }

  else
  {
    builtinItems = [(CNPickerController *)self builtinItems];
    [v8 setArray:builtinItems];
  }

  discoveredItems = [(CNPickerController *)self discoveredItems];
  v16 = v7[2](v7, discoveredItems);
  [(CNPickerController *)self setFilteredDiscoveredItems:v16];

  customItems = [(CNPickerController *)self customItems];
  v18 = v7[2](v7, customItems);
  [(CNPickerController *)self setFilteredCustomItems:v18];

  promotedItems = [(CNPickerController *)self promotedItems];
  v20 = v7[2](v7, promotedItems);
  [(CNPickerController *)self setFilteredPromotedItems:v20];

  v21 = v7[2](v7, v8);
  [(CNPickerController *)self setFilteredBuiltinItems:v21];

  if (!v6)
  {
LABEL_10:
    tableView = [(CNPickerController *)self tableView];
    [tableView reloadData];
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

- (void)didDismissSearchController:(id)controller
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
    supplementalItems = [(CNPickerController *)self supplementalItems];
    v6 = [supplementalItems count];

    if (v6)
    {
      v7 = MEMORY[0x1E696AC88];
      builtinItems = [(CNPickerController *)self builtinItems];
      v9 = [v7 indexPathForRow:objc_msgSend(builtinItems inSection:{"count"), -[CNPickerController builtinItemsSection](self, "builtinItemsSection")}];

      [v11 addObject:v9];
    }
  }

  [(CNPickerController *)self setSearchControllerActive:0];
  tableView = [(CNPickerController *)self tableView];
  [tableView insertRowsAtIndexPaths:v11 withRowAnimation:0];
}

- (void)willPresentSearchController:(id)controller
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
      supplementalItems = [(CNPickerController *)self supplementalItems];
      v6 = [supplementalItems count];

      if (v6)
      {
        v7 = MEMORY[0x1E696AC88];
        builtinItems = [(CNPickerController *)self builtinItems];
        v9 = [v7 indexPathForRow:objc_msgSend(builtinItems inSection:{"count"), -[CNPickerController builtinItemsSection](self, "builtinItemsSection")}];

        [v11 addObject:v9];
      }
    }

    [(CNPickerController *)self setSearchControllerActive:1];
    tableView = [(CNPickerController *)self tableView];
    [tableView deleteRowsAtIndexPaths:v11 withRowAnimation:0];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  v6 = [text length];
  array = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CNPickerController_updateSearchResultsForSearchController___block_invoke;
  v9[3] = &unk_1E74E3518;
  v10 = array;
  v8 = array;
  [text enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v9}];
  [(CNPickerController *)self setFilterTokens:v8];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (style == 1)
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
    v9 = [v8 objectAtIndexedSubscript:{-[CNPickerController _indexForCustomItemAtIndexPath:](self, "_indexForCustomItemAtIndexPath:", pathCopy)}];
    [(CNPickerController *)self removeCustomItem:v9];
    selectedItem = [(CNPickerController *)self selectedItem];
    if (selectedItem)
    {
      v11 = selectedItem;
      selectedItem2 = [(CNPickerController *)self selectedItem];
      v13 = [selectedItem2 isEqual:v9];

      if (v13)
      {
        [(CNPickerController *)self setSelectedItem:0];
      }
    }

    customItems = [(CNPickerController *)self customItems];
    v15 = [customItems mutableCopy];

    [v15 removeObject:v9];
    [(CNPickerController *)self setCustomItems:v15];
    if ([(CNPickerController *)self isSearching])
    {
      filteredCustomItems = [(CNPickerController *)self filteredCustomItems];
      v17 = [filteredCustomItems mutableCopy];

      [v17 removeObject:v9];
      [(CNPickerController *)self setFilteredCustomItems:v17];
    }

    tableView = [(CNPickerController *)self tableView];
    v20[0] = pathCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [tableView deleteRowsAtIndexPaths:v19 withRowAnimation:100];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  [cellCopy _cnui_applyContactStyle];
  if (-[UIViewController ab_shouldUseTransparentBackgroundInPopovers](self, "ab_shouldUseTransparentBackgroundInPopovers") || ([viewCopy backgroundColor], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DC888], "clearColor"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    tableView = [(CNPickerController *)self tableView];
LABEL_4:
    v12 = tableView;
    backgroundColor = [tableView backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor];

    goto LABEL_5;
  }

  if (CNUIIsWatchCompanion() || CNUIIsActivity())
  {
    tableView = [cellCopy backgroundView];
    goto LABEL_4;
  }

  v12 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  [cellCopy setBackgroundColor:v12];
LABEL_5:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(CNPickerController *)self isSupplementalDisclosureItemIndexPath:pathCopy])
  {
    [(CNPickerController *)self presentExtendedPicker];
  }

  else if ([(CNPickerController *)self isAddCustomItemIndexPath:pathCopy])
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    textField = [v7 textField];
    [textField setDelegate:self];

    textLabel = [v7 textLabel];
    textColor = [textLabel textColor];
    textField2 = [v7 textField];
    [textField2 setTextColor:textColor];

    [v7 beginEditing];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    [(CNPickerController *)self setSelectedIndexPath:pathCopy];
    v12 = [(CNPickerController *)self _itemAtIndexPath:pathCopy isPlaceholder:0];
    [(CNPickerController *)self setSelectedItem:v12];

    searchController = [(CNPickerController *)self searchController];
    [searchController setActive:0];

    delegate = [(CNPickerController *)self delegate];
    selectedItem = [(CNPickerController *)self selectedItem];
    [delegate picker:self didPickItem:selectedItem];

    selectedItem2 = [(CNPickerController *)self selectedItem];
    [(CNPickerController *)self pickedItem:selectedItem2];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ABPickerItemCell"];
  textLabel = [v7 textLabel];
  [textLabel setAdjustsFontSizeToFitWidth:1];

  textLabel2 = [v7 textLabel];
  [textLabel2 setNumberOfLines:2];

  v21 = 0;
  v10 = [(CNPickerController *)self _itemAtIndexPath:pathCopy isPlaceholder:&v21];
  v11 = [(CNPickerController *)self _titleForPickerItem:v10];
  textLabel3 = [v7 textLabel];
  [textLabel3 setText:v11];

  [v7 setPlaceholder:v21];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([(CNPickerController *)self selectedItem], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass))
  {
    selectedItem = [(CNPickerController *)self selectedItem];
    v16 = [v10 _cn_caseInsensitiveIsEqual:selectedItem];
  }

  else
  {
    selectedItem = [(CNPickerController *)self selectedItem];
    v16 = [v10 isEqual:selectedItem];
  }

  v17 = v16;

  if ([(CNPickerController *)self isSupplementalDisclosureItemIndexPath:pathCopy])
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
      [(CNPickerController *)self setSelectedIndexPath:pathCopy];
      goto LABEL_11;
    }

    v19 = 0;
  }

  [v18 setAccessoryType:v19];
LABEL_11:

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  isSearching = [(CNPickerController *)self isSearching];
  if ([(CNPickerController *)self isEditing])
  {
    customItems = [(CNPickerController *)self customItems];
LABEL_7:
    filteredBuiltinItems = customItems;
    v9 = [customItems count];
    goto LABEL_8;
  }

  if ([(CNPickerController *)self discoveredItemsSection]== section)
  {
    customItems = [(CNPickerController *)self filteredDiscoveredItems];
    goto LABEL_7;
  }

  if ([(CNPickerController *)self promotedItemsSection]== section)
  {
    customItems = [(CNPickerController *)self filteredPromotedItems];
    goto LABEL_7;
  }

  if ([(CNPickerController *)self builtinItemsSection]== section)
  {
    supplementalItems = [(CNPickerController *)self supplementalItems];
    v12 = [supplementalItems count] != 0;
    v13 = !isSearching;

    filteredBuiltinItems = [(CNPickerController *)self filteredBuiltinItems];
    v9 = [filteredBuiltinItems count] + (v12 & v13);
  }

  else
  {
    filteredBuiltinItems = [(CNPickerController *)self filteredCustomItems];
    v14 = [filteredBuiltinItems count];
    v9 = v14 + ([(CNPickerController *)self isSearching]^ 1);
  }

LABEL_8:

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

  promotedItems = [(CNPickerController *)self promotedItems];
  v7 = [promotedItems count];

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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v13.receiver = self;
  v13.super_class = CNPickerController;
  [(CNPickerController *)&v13 setEditing:editing animated:animated];
  tableView = [(CNPickerController *)self tableView];
  [tableView reloadData];
  if (editing)
  {
    searchController = 0;
  }

  else
  {
    searchController = [(CNPickerController *)self searchController];
  }

  navigationItem = [(CNPickerController *)self navigationItem];
  [navigationItem setSearchController:searchController];

  if (!editing)
  {

    delegate = [tableView delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [tableView delegate];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [delegate2 tableView:tableView didEndEditingRowAtIndexPath:v12];
    }
  }
}

- (void)_updateRightButtonItem
{
  if (-[CNPickerController allowsCustomItems](self, "allowsCustomItems") && (-[CNPickerController customItems](self, "customItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    editButtonItem = [(CNPickerController *)self editButtonItem];
    navigationItem = [(CNPickerController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  else
  {
    editButtonItem = [(CNPickerController *)self navigationItem];
    [editButtonItem setRightBarButtonItem:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v34[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CNPickerController;
  [(CNPickerController *)&v33 viewWillAppear:appear];
  navigationController = [(CNPickerController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _cnui_applyContactStyle];

  tableView = [(CNPickerController *)self tableView];
  [tableView _cnui_applyContactStyle];

  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    navigationController2 = [(CNPickerController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    v9 = [viewControllers count];

    if (v9 == 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
      navigationItem = [(CNPickerController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:v10];
    }
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v12 = +[CNUIColorRepository popoverBackgroundColor];
    tableView2 = [(CNPickerController *)self tableView];
    [tableView2 setBackgroundColor:v12];

    tableView3 = [(CNPickerController *)self tableView];
    backgroundColor = [tableView3 backgroundColor];
    tableView4 = [(CNPickerController *)self tableView];
    [tableView4 setSectionIndexBackgroundColor:backgroundColor];
  }

  if ([(CNPickerController *)self allowsCustomItems])
  {
    selectedItem = [(CNPickerController *)self selectedItem];
    if (selectedItem)
    {
      builtinItems2 = selectedItem;
      discoveredItems = [(CNPickerController *)self discoveredItems];
      selectedItem2 = [(CNPickerController *)self selectedItem];
      if ([discoveredItems containsObject:selectedItem2])
      {
        goto LABEL_9;
      }

      builtinItems = [(CNPickerController *)self builtinItems];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __37__CNPickerController_viewWillAppear___block_invoke;
      v32[3] = &unk_1E74E5A18;
      v32[4] = self;
      if ([builtinItems _cn_any:v32])
      {
        v22 = 0;
      }

      else
      {
        promotedItems = [(CNPickerController *)self promotedItems];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __37__CNPickerController_viewWillAppear___block_invoke_2;
        v31[3] = &unk_1E74E5A18;
        v31[4] = self;
        if ([promotedItems _cn_any:v31])
        {
          v22 = 0;
        }

        else
        {
          customItems = [(CNPickerController *)self customItems];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __37__CNPickerController_viewWillAppear___block_invoke_3;
          v30[3] = &unk_1E74E5A18;
          v30[4] = self;
          v22 = [customItems _cn_any:v30] ^ 1;
        }
      }

      if (v22)
      {
        supplementalItems = [(CNPickerController *)self supplementalItems];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __37__CNPickerController_viewWillAppear___block_invoke_4;
        v29[3] = &unk_1E74E5A18;
        v29[4] = self;
        v26 = [supplementalItems _cn_any:v29];

        if (v26)
        {
          builtinItems2 = [(CNPickerController *)self builtinItems];
          discoveredItems = [(CNPickerController *)self selectedItem];
          selectedItem2 = [builtinItems2 arrayByAddingObject:discoveredItems];
          [(CNPickerController *)self setBuiltinItems:selectedItem2];
        }

        else
        {
          customItems2 = [(CNPickerController *)self customItems];

          if (!customItems2)
          {
            builtinItems2 = [(CNPickerController *)self selectedItem];
            v34[0] = builtinItems2;
            discoveredItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
            [(CNPickerController *)self setCustomItems:discoveredItems];
            goto LABEL_10;
          }

          builtinItems2 = [(CNPickerController *)self customItems];
          discoveredItems = [(CNPickerController *)self selectedItem];
          selectedItem2 = [builtinItems2 arrayByAddingObject:discoveredItems];
          [(CNPickerController *)self setCustomItems:selectedItem2];
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

  tableView5 = [(CNPickerController *)self tableView];
  [tableView5 reloadData];
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

- (BOOL)isSupplementalDisclosureItemIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(CNPickerController *)self builtinItemsSection])
  {
    v6 = [pathCopy row];
    filteredBuiltinItems = [(CNPickerController *)self filteredBuiltinItems];
    v8 = v6 >= [filteredBuiltinItems count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAddCustomItemIndexPath:(id)path
{
  pathCopy = path;
  if (-[CNPickerController allowsCustomItems](self, "allowsCustomItems") && (v5 = [pathCopy section], v5 == -[CNPickerController customItemsSection](self, "customItemsSection")) && !objc_msgSend(pathCopy, "row"))
  {
    v6 = ![(CNPickerController *)self isSearchControllerActive];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)customLabelUpdated:(id)updated
{
  object = [updated object];
  [(CNPickerController *)self setCustomTextField:object];

  customTextField = [(CNPickerController *)self customTextField];
  text = [customTextField text];
  [(CNPickerController *)self setCustomEditingItem:text];
}

- (void)presentExtendedPicker
{
  v3 = objc_alloc(objc_opt_class());
  tableView = [(CNPickerController *)self tableView];
  v8 = [v3 initWithStyle:{objc_msgSend(tableView, "style")}];

  [v8 setDelegate:self];
  remainderSupplementalItems = [(CNPickerController *)self remainderSupplementalItems];
  [v8 setBuiltinItems:remainderSupplementalItems];

  promotedSupplementalItems = [(CNPickerController *)self promotedSupplementalItems];
  [v8 setPromotedItems:promotedSupplementalItems];

  [v8 setAllowsCustomItems:0];
  navigationController = [(CNPickerController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)donePicker:(id)picker
{
  customEditingItem = [(CNPickerController *)self customEditingItem];
  if (customEditingItem)
  {
    v5 = customEditingItem;
    customTextField = [(CNPickerController *)self customTextField];
    isFirstResponder = [customTextField isFirstResponder];

    if (isFirstResponder)
    {
      customEditingItem2 = [(CNPickerController *)self customEditingItem];
      [(CNPickerController *)self setSelectedItem:customEditingItem2];
    }
  }

  delegate = [(CNPickerController *)self delegate];
  selectedItem = [(CNPickerController *)self selectedItem];
  [delegate picker:self didPickItem:selectedItem];
}

- (void)doneInlineEditing:(id)editing
{
  tableView = [(CNPickerController *)self tableView];
  [tableView setEditing:0];

  [(CNPickerController *)self _updateRightButtonItem];
}

- (void)cancelPicker:(id)picker
{
  delegate = [(CNPickerController *)self delegate];
  [delegate pickerDidCancel:self];
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

- (id)titleForPickerItem:(id)item
{
  itemCopy = item;
  if (_useSiriLocalization == 1)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      if (_useSiriLocalization)
      {
        v10 = ABAddressBookBundle();
        v11 = [v10 siriUILocalizedStringForKey:itemCopy table:@"Localized"];

        goto LABEL_7;
      }
    }

    else
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/OldFramework/Sources/ContactsUI_Internal.m", 126, 4, @"You tried to use Siri localization but SiriUI is not loaded.", v6, v7, v8, v9, v13);
    }
  }

  v11 = [MEMORY[0x1E695CD58] localizedStringForKey:itemCopy];
LABEL_7:

  return v11;
}

- (id)_titleForPickerItem:(id)item
{
  itemCopy = item;
  itemLocalizationBlock = [(CNPickerController *)self itemLocalizationBlock];

  if (itemLocalizationBlock)
  {
    itemLocalizationBlock2 = [(CNPickerController *)self itemLocalizationBlock];
    v7 = (itemLocalizationBlock2)[2](itemLocalizationBlock2, itemCopy);
  }

  else
  {
    itemLocalizationKey = [(CNPickerController *)self itemLocalizationKey];

    if (!itemLocalizationKey)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [itemCopy name];
      }

      else
      {
        [(CNPickerController *)self titleForPickerItem:itemCopy];
      }
      v7 = ;
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E696AEC0];
    itemLocalizationKey2 = [(CNPickerController *)self itemLocalizationKey];
    itemLocalizationBlock2 = [v9 stringWithFormat:@"%@ %@", itemCopy, itemLocalizationKey2];

    v11 = CNContactsUIBundle();
    v7 = [v11 localizedStringForKey:itemLocalizationBlock2 value:itemCopy table:@"Localized"];
  }

LABEL_6:

  return v7;
}

- (CNPickerController)initWithStyle:(int64_t)style
{
  v20.receiver = self;
  v20.super_class = CNPickerController;
  v3 = [(CNPickerController *)&v20 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    tableView = [(CNPickerController *)v3 tableView];
    [tableView setDelegate:v4];
    [tableView setDataSource:v4];
    [tableView setKeyboardDismissMode:1];
    [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 _scaledValueForValue:44.0];
    [tableView setEstimatedRowHeight:?];

    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ABPickerItemCell"];
    navigationItem = [(CNPickerController *)v4 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    v8 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = v4->_searchController;
    v4->_searchController = v8;

    v10 = v4->_searchController;
    navigationItem2 = [(CNPickerController *)v4 navigationItem];
    [navigationItem2 setSearchController:v10];

    navigationItem3 = [(CNPickerController *)v4 navigationItem];
    searchController = [navigationItem3 searchController];
    [searchController setSearchResultsUpdater:v4];

    navigationItem4 = [(CNPickerController *)v4 navigationItem];
    searchController2 = [navigationItem4 searchController];
    [searchController2 setDelegate:v4];

    navigationItem5 = [(CNPickerController *)v4 navigationItem];
    searchController3 = [navigationItem5 searchController];
    [searchController3 setObscuresBackgroundDuringPresentation:0];

    navigationItem6 = [(CNPickerController *)v4 navigationItem];
    [navigationItem6 setPreferredSearchBarPlacement:2];

    v4->_allowsCustomItems = 1;
    v4->_searchIncludesSupplementalItems = 1;
  }

  return v4;
}

@end