@interface CNPhotoPickerProviderSuggestionsGroup
- (CNPhotoPickerProviderSuggestionsGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
- (id)dedupedSuggestionItemsGroupedByProvider;
- (id)defaultMonogramItem;
- (id)itemsForProviderIdentifier:(id)identifier;
- (id)paddedDisplayItems:(id)items;
- (id)providerItems:(id)items withMaxRecentsAndMonogramsCount:(unint64_t)count;
- (id)providerOfClass:(Class)class;
- (int64_t)addProviderItem:(id)item;
- (int64_t)indexForDefaultMonogram;
- (int64_t)removeProviderItem:(id)item;
- (void)loadAvailablePaddingItems;
- (void)prepareDisplayItems:(id)items;
- (void)providerItemDidUpdate:(id)update;
- (void)reloadMonogramProviderGroupWithVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l;
@end

@implementation CNPhotoPickerProviderSuggestionsGroup

- (void)providerItemDidUpdate:(id)update
{
  updateCopy = update;
  callbackQueue = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNPhotoPickerProviderSuggestionsGroup_providerItemDidUpdate___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  [callbackQueue performBlock:v7];
}

void __63__CNPhotoPickerProviderSuggestionsGroup_providerItemDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerProviderGroup:*(a1 + 32) didUpdateItem:*(a1 + 40)];
}

- (void)reloadMonogramProviderGroupWithVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v15[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v10 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  height = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:identityCopy size:lCopy RTL:width, height];

  [height setDelegate:self];
  v15[0] = height;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  itemsGroupedByProvider = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  identifier = [v10 identifier];
  [itemsGroupedByProvider setObject:v12 forKeyedSubscript:identifier];

  [(CNPhotoPickerProviderSuggestionsGroup *)self loadAvailablePaddingItems];
  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:1];
}

- (id)defaultMonogramItem
{
  v3 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  if (v3)
  {
    itemsGroupedByProvider = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    identifier = [v3 identifier];
    v6 = [itemsGroupedByProvider objectForKeyedSubscript:identifier];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (int64_t)removeProviderItem:(id)item
{
  itemCopy = item;
  defaultMonogramItem = [(CNPhotoPickerProviderSuggestionsGroup *)self defaultMonogramItem];
  if (defaultMonogramItem == itemCopy)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerProviderSuggestionsGroup;
    v6 = [(CNPhotoPickerProviderGroup *)&v8 removeProviderItem:itemCopy];
  }

  return v6;
}

- (int64_t)addProviderItem:(id)item
{
  v26[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultMonogramItem = [(CNPhotoPickerProviderSuggestionsGroup *)self defaultMonogramItem];
  if (defaultMonogramItem == itemCopy)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    removedItems = [(CNPhotoPickerProviderGroup *)self removedItems];
    if (isKindOfClass)
    {
      v8 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v9 = __57__CNPhotoPickerProviderSuggestionsGroup_addProviderItem___block_invoke;
    }

    else
    {
      v8 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v9 = __57__CNPhotoPickerProviderSuggestionsGroup_addProviderItem___block_invoke_2;
    }

    v8[2] = v9;
    v8[3] = &unk_1E74E66D0;
    v11 = itemCopy;
    v8[4] = v11;
    v12 = [removedItems _cn_filter:v8];
    [(CNPhotoPickerProviderGroup *)self setRemovedItems:v12];

    addedItems = [(CNPhotoPickerProviderGroup *)self addedItems];
    v14 = [addedItems count];
    maxRecentsAndMonogramsCount = [(CNPhotoPickerProviderSuggestionsGroup *)self maxRecentsAndMonogramsCount];

    if (v14 <= maxRecentsAndMonogramsCount)
    {
      v25 = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      addedItems2 = [(CNPhotoPickerProviderGroup *)self addedItems];
      addedItems3 = [v16 arrayByAddingObjectsFromArray:addedItems2];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:addedItems3];
    }

    else
    {
      v26[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      addedItems2 = [(CNPhotoPickerProviderGroup *)self addedItems];
      addedItems3 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v19 = [addedItems2 _cn_take:{objc_msgSend(addedItems3, "count") - 1}];
      v20 = [v16 arrayByAddingObjectsFromArray:v19];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:v20];
    }

    [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
    displayItems = [(CNPhotoPickerProviderGroup *)self displayItems];
    v10 = [displayItems indexOfObject:v11];
  }

  return v10;
}

- (id)paddedDisplayItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy count];
  if (v5 < [(CNPhotoPickerProviderGroup *)self itemsPerRow])
  {
    availablePaddingItems = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];
    if (!availablePaddingItems)
    {
      goto LABEL_10;
    }

    v7 = availablePaddingItems;
    v8 = [itemsCopy count];
    v9 = v8 % [(CNPhotoPickerProviderGroup *)self itemsPerRow];

    if (!v9)
    {
      goto LABEL_10;
    }

    itemsPerRow = [(CNPhotoPickerProviderGroup *)self itemsPerRow];
    v11 = [itemsCopy count];
    itemsPerRow2 = [(CNPhotoPickerProviderGroup *)self itemsPerRow];
    v13 = itemsPerRow + v11 / itemsPerRow2 * itemsPerRow2 - v11;
    paddingItems = [(CNPhotoPickerProviderGroup *)self paddingItems];
    v15 = [paddingItems count];

    paddingItems2 = [(CNPhotoPickerProviderGroup *)self paddingItems];
    if (!paddingItems2 || (v17 = paddingItems2, -[CNPhotoPickerProviderGroup paddingItems](self, "paddingItems"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v17, v13 < v19))
    {
      v15 = v13;
    }

    if (v15)
    {
      v20 = [itemsCopy _cn_filter:&__block_literal_global_23_63133];
      v21 = [v20 _cn_map:&__block_literal_global_25_63134];

      availablePaddingItems2 = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60__CNPhotoPickerProviderSuggestionsGroup_paddedDisplayItems___block_invoke_3;
      v29[3] = &unk_1E74E6718;
      v23 = itemsCopy;
      v30 = v23;
      selfCopy = self;
      v32 = v21;
      v24 = v21;
      v25 = [availablePaddingItems2 _cn_filter:v29];
      v26 = [v25 _cn_take:v15];

      [(CNPhotoPickerProviderGroup *)self setPaddingItems:v26];
      v27 = [v23 arrayByAddingObjectsFromArray:v26];

      goto LABEL_11;
    }
  }

  [(CNPhotoPickerProviderGroup *)self setPaddingItems:MEMORY[0x1E695E0F0]];
LABEL_10:
  v27 = itemsCopy;
LABEL_11:

  return v27;
}

uint64_t __60__CNPhotoPickerProviderSuggestionsGroup_paddedDisplayItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 40), "removedPaddingItems"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v3), v4, (v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [v3 imageData];
    v6 = [v7 containsObject:v8] ^ 1;
  }

  return v6;
}

uint64_t __60__CNPhotoPickerProviderSuggestionsGroup_paddedDisplayItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = v2;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 hasUnknownColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)providerItems:(id)items withMaxRecentsAndMonogramsCount:(unint64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v10 >= count)
          {
            continue;
          }

          ++v10;
        }

        [array addObject:{v13, v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)prepareDisplayItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  availablePaddingItems = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];

  if (!availablePaddingItems)
  {
    [(CNPhotoPickerProviderSuggestionsGroup *)self loadAvailablePaddingItems];
  }

  indexForDefaultMonogram = [(CNPhotoPickerProviderSuggestionsGroup *)self indexForDefaultMonogram];
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:itemsCopy];

  if ([v7 count] > indexForDefaultMonogram)
  {
    v8 = [v7 objectAtIndex:indexForDefaultMonogram];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__CNPhotoPickerProviderSuggestionsGroup_prepareDisplayItems___block_invoke;
    v18[3] = &unk_1E74E66D0;
    v9 = v8;
    v19 = v9;
    v10 = [v7 _cn_indexOfFirstObjectPassingTest:v18];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [v7 objectAtIndex:v10];
      indexSet = [MEMORY[0x1E696AD50] indexSet];
      [indexSet addIndex:indexForDefaultMonogram];
      [indexSet addIndex:v11];
      v14 = [indexSet count];
      if (v14 >= [v7 count])
      {
        v15 = CNUILogContactPhotoPicker();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = indexSet;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "Failed to update placeholder monogram, attempting to remove indices: %@ from display items: %@", buf, 0x16u);
        }
      }

      else
      {
        [v7 removeObjectsAtIndexes:indexSet];
        [v7 insertObject:v12 atIndex:indexForDefaultMonogram];
      }
    }
  }

  v16 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerItems:v7 withMaxRecentsAndMonogramsCount:[(CNPhotoPickerProviderSuggestionsGroup *)self maxRecentsAndMonogramsCount]];
  v17 = [(CNPhotoPickerProviderSuggestionsGroup *)self paddedDisplayItems:v16];
  [(CNPhotoPickerProviderGroup *)self setDisplayItems:v17];
}

uint64_t __61__CNPhotoPickerProviderSuggestionsGroup_prepareDisplayItems___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    isKindOfClass = 0;
  }

  else
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)loadAvailablePaddingItems
{
  v3 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  if (v3)
  {
    v15 = v3;
    itemsGroupedByProvider = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    identifier = [v15 identifier];
    v6 = [itemsGroupedByProvider objectForKeyedSubscript:identifier];
    firstObject = [v6 firstObject];

    v8 = firstObject;
    if ([v8 conformsToProtocol:&unk_1F0DD51E0])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *MEMORY[0x1E6996570];
    itemText = [v10 itemText];
    LODWORD(v11) = (*(v11 + 16))(v11, itemText);

    if (v11)
    {
      if ([v8 imageType] == 2)
      {
        createColorVariantItemsExcludingSelf = [v8 createColorVariantItemsExcludingSelf];
        [(CNPhotoPickerProviderGroup *)self setAvailablePaddingItems:createColorVariantItemsExcludingSelf];
      }

      else
      {
        createColorVariantItemsExcludingSelf = objc_alloc_init(CNPhotoPickerVariantsManager);
        v14 = [v8 createVariantsItemsWithVariantsManager:createColorVariantItemsExcludingSelf];
        [(CNPhotoPickerProviderGroup *)self setAvailablePaddingItems:v14];
      }

      [(CNPhotoPickerProviderGroup *)self setPaddingItems:0];
    }

    v3 = v15;
  }
}

- (id)dedupedSuggestionItemsGroupedByProvider
{
  v3 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  v4 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  if (v4 && ([v3 containsContactImage] & 1) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF90]);
    itemsGroupedByProvider = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    itemsGroupedByProvider2 = [v5 initWithDictionary:itemsGroupedByProvider];

    identifier = [v4 identifier];
    v9 = [itemsGroupedByProvider2 objectForKeyedSubscript:identifier];

    if ([v9 count] > 1)
    {
      identifier2 = [v3 identifier];
      v12 = [itemsGroupedByProvider2 objectForKeyedSubscript:identifier2];
      v13 = [v12 _cn_map:&__block_literal_global_63147];

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__CNPhotoPickerProviderSuggestionsGroup_dedupedSuggestionItemsGroupedByProvider__block_invoke_2;
      v17[3] = &unk_1E74E66D0;
      v18 = v13;
      v14 = v13;
      v10 = [v9 _cn_filter:v17];
    }

    else
    {

      v10 = MEMORY[0x1E695E0F0];
    }

    identifier3 = [v4 identifier];
    [itemsGroupedByProvider2 setObject:v10 forKeyedSubscript:identifier3];
  }

  else
  {
    itemsGroupedByProvider2 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  }

  return itemsGroupedByProvider2;
}

uint64_t __80__CNPhotoPickerProviderSuggestionsGroup_dedupedSuggestionItemsGroupedByProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 imageData];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)itemsForProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dedupedSuggestionItemsGroupedByProvider = [(CNPhotoPickerProviderSuggestionsGroup *)self dedupedSuggestionItemsGroupedByProvider];
  v6 = [dedupedSuggestionItemsGroupedByProvider valueForKey:identifierCopy];

  return v6;
}

- (int64_t)indexForDefaultMonogram
{
  if (![(CNPhotoPickerProviderGroup *)self allowAddItem])
  {
    return 0;
  }

  addItems = [(CNPhotoPickerProviderSuggestionsGroup *)self addItems];
  v4 = [addItems count];

  return v4;
}

- (id)providerOfClass:(Class)class
{
  providers = [(CNPhotoPickerProviderGroup *)self providers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNPhotoPickerProviderSuggestionsGroup_providerOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e33_B16__0___CNPhotoPickerProvider__8lu32l8;
  v7[4] = class;
  v5 = [providers _cn_firstObjectPassingTest:v7];

  return v5;
}

- (CNPhotoPickerProviderSuggestionsGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerProviderSuggestionsGroup;
  v5 = [(CNPhotoPickerProviderGroup *)&v9 initWithProviders:providers groupType:1 environment:environment allowAddItem:item];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end