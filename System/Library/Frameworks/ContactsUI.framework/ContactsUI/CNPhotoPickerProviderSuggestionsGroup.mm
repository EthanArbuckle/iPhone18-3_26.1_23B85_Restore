@interface CNPhotoPickerProviderSuggestionsGroup
- (CNPhotoPickerProviderSuggestionsGroup)initWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
- (id)dedupedSuggestionItemsGroupedByProvider;
- (id)defaultMonogramItem;
- (id)itemsForProviderIdentifier:(id)a3;
- (id)paddedDisplayItems:(id)a3;
- (id)providerItems:(id)a3 withMaxRecentsAndMonogramsCount:(unint64_t)a4;
- (id)providerOfClass:(Class)a3;
- (int64_t)addProviderItem:(id)a3;
- (int64_t)indexForDefaultMonogram;
- (int64_t)removeProviderItem:(id)a3;
- (void)loadAvailablePaddingItems;
- (void)prepareDisplayItems:(id)a3;
- (void)providerItemDidUpdate:(id)a3;
- (void)reloadMonogramProviderGroupWithVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5;
@end

@implementation CNPhotoPickerProviderSuggestionsGroup

- (void)providerItemDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNPhotoPickerProviderSuggestionsGroup_providerItemDidUpdate___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __63__CNPhotoPickerProviderSuggestionsGroup_providerItemDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerProviderGroup:*(a1 + 32) didUpdateItem:*(a1 + 40)];
}

- (void)reloadMonogramProviderGroupWithVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  v11 = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:v9 size:v5 RTL:width, height];

  [v11 setDelegate:self];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  v14 = [v10 identifier];
  [v13 setObject:v12 forKeyedSubscript:v14];

  [(CNPhotoPickerProviderSuggestionsGroup *)self loadAvailablePaddingItems];
  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:1];
}

- (id)defaultMonogramItem
{
  v3 = [(CNPhotoPickerProviderSuggestionsGroup *)self providerOfClass:objc_opt_class()];
  if (v3)
  {
    v4 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    v5 = [v3 identifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)removeProviderItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderSuggestionsGroup *)self defaultMonogramItem];
  if (v5 == v4)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerProviderSuggestionsGroup;
    v6 = [(CNPhotoPickerProviderGroup *)&v8 removeProviderItem:v4];
  }

  return v6;
}

- (int64_t)addProviderItem:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPhotoPickerProviderSuggestionsGroup *)self defaultMonogramItem];
  if (v5 == v4)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = [(CNPhotoPickerProviderGroup *)self removedItems];
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
    v11 = v4;
    v8[4] = v11;
    v12 = [v7 _cn_filter:v8];
    [(CNPhotoPickerProviderGroup *)self setRemovedItems:v12];

    v13 = [(CNPhotoPickerProviderGroup *)self addedItems];
    v14 = [v13 count];
    v15 = [(CNPhotoPickerProviderSuggestionsGroup *)self maxRecentsAndMonogramsCount];

    if (v14 <= v15)
    {
      v25 = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v17 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v18 = [v16 arrayByAddingObjectsFromArray:v17];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:v18];
    }

    else
    {
      v26[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v17 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v18 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v19 = [v17 _cn_take:{objc_msgSend(v18, "count") - 1}];
      v20 = [v16 arrayByAddingObjectsFromArray:v19];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:v20];
    }

    [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
    v21 = [(CNPhotoPickerProviderGroup *)self displayItems];
    v10 = [v21 indexOfObject:v11];
  }

  return v10;
}

- (id)paddedDisplayItems:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 < [(CNPhotoPickerProviderGroup *)self itemsPerRow])
  {
    v6 = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v6;
    v8 = [v4 count];
    v9 = v8 % [(CNPhotoPickerProviderGroup *)self itemsPerRow];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [(CNPhotoPickerProviderGroup *)self itemsPerRow];
    v11 = [v4 count];
    v12 = [(CNPhotoPickerProviderGroup *)self itemsPerRow];
    v13 = v10 + v11 / v12 * v12 - v11;
    v14 = [(CNPhotoPickerProviderGroup *)self paddingItems];
    v15 = [v14 count];

    v16 = [(CNPhotoPickerProviderGroup *)self paddingItems];
    if (!v16 || (v17 = v16, -[CNPhotoPickerProviderGroup paddingItems](self, "paddingItems"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v17, v13 < v19))
    {
      v15 = v13;
    }

    if (v15)
    {
      v20 = [v4 _cn_filter:&__block_literal_global_23_63133];
      v21 = [v20 _cn_map:&__block_literal_global_25_63134];

      v22 = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60__CNPhotoPickerProviderSuggestionsGroup_paddedDisplayItems___block_invoke_3;
      v29[3] = &unk_1E74E6718;
      v23 = v4;
      v30 = v23;
      v31 = self;
      v32 = v21;
      v24 = v21;
      v25 = [v22 _cn_filter:v29];
      v26 = [v25 _cn_take:v15];

      [(CNPhotoPickerProviderGroup *)self setPaddingItems:v26];
      v27 = [v23 arrayByAddingObjectsFromArray:v26];

      goto LABEL_11;
    }
  }

  [(CNPhotoPickerProviderGroup *)self setPaddingItems:MEMORY[0x1E695E0F0]];
LABEL_10:
  v27 = v4;
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

- (id)providerItems:(id)a3 withMaxRecentsAndMonogramsCount:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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
          if (v10 >= a4)
          {
            continue;
          }

          ++v10;
        }

        [v6 addObject:{v13, v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)prepareDisplayItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPhotoPickerProviderGroup *)self availablePaddingItems];

  if (!v5)
  {
    [(CNPhotoPickerProviderSuggestionsGroup *)self loadAvailablePaddingItems];
  }

  v6 = [(CNPhotoPickerProviderSuggestionsGroup *)self indexForDefaultMonogram];
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v4];

  if ([v7 count] > v6)
  {
    v8 = [v7 objectAtIndex:v6];
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
      v13 = [MEMORY[0x1E696AD50] indexSet];
      [v13 addIndex:v6];
      [v13 addIndex:v11];
      v14 = [v13 count];
      if (v14 >= [v7 count])
      {
        v15 = CNUILogContactPhotoPicker();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v13;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "Failed to update placeholder monogram, attempting to remove indices: %@ from display items: %@", buf, 0x16u);
        }
      }

      else
      {
        [v7 removeObjectsAtIndexes:v13];
        [v7 insertObject:v12 atIndex:v6];
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
    v4 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    v5 = [v15 identifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 firstObject];

    v8 = v7;
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
    v12 = [v10 itemText];
    LODWORD(v11) = (*(v11 + 16))(v11, v12);

    if (v11)
    {
      if ([v8 imageType] == 2)
      {
        v13 = [v8 createColorVariantItemsExcludingSelf];
        [(CNPhotoPickerProviderGroup *)self setAvailablePaddingItems:v13];
      }

      else
      {
        v13 = objc_alloc_init(CNPhotoPickerVariantsManager);
        v14 = [v8 createVariantsItemsWithVariantsManager:v13];
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
    v6 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
    v7 = [v5 initWithDictionary:v6];

    v8 = [v4 identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if ([v9 count] > 1)
    {
      v11 = [v3 identifier];
      v12 = [v7 objectForKeyedSubscript:v11];
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

    v15 = [v4 identifier];
    [v7 setObject:v10 forKeyedSubscript:v15];
  }

  else
  {
    v7 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  }

  return v7;
}

uint64_t __80__CNPhotoPickerProviderSuggestionsGroup_dedupedSuggestionItemsGroupedByProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 imageData];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)itemsForProviderIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderSuggestionsGroup *)self dedupedSuggestionItemsGroupedByProvider];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (int64_t)indexForDefaultMonogram
{
  if (![(CNPhotoPickerProviderGroup *)self allowAddItem])
  {
    return 0;
  }

  v3 = [(CNPhotoPickerProviderSuggestionsGroup *)self addItems];
  v4 = [v3 count];

  return v4;
}

- (id)providerOfClass:(Class)a3
{
  v4 = [(CNPhotoPickerProviderGroup *)self providers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNPhotoPickerProviderSuggestionsGroup_providerOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e33_B16__0___CNPhotoPickerProvider__8lu32l8;
  v7[4] = a3;
  v5 = [v4 _cn_firstObjectPassingTest:v7];

  return v5;
}

- (CNPhotoPickerProviderSuggestionsGroup)initWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerProviderSuggestionsGroup;
  v5 = [(CNPhotoPickerProviderGroup *)&v9 initWithProviders:a3 groupType:1 environment:a4 allowAddItem:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end