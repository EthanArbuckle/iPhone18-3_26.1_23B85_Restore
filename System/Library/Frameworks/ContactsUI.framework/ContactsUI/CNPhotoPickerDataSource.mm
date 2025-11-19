@interface CNPhotoPickerDataSource
+ (AVTAvatarStore)avatarStore;
- (BOOL)isItemAtIndexPathAddItem:(id)a3;
- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)a3 contactViewCache:(id)a4 photoPickerConfiguration:(id)a5;
- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)a3 contactViewCache:(id)a4 providerGroups:(id)a5 avatarStore:(id)a6;
- (CNPhotoPickerProviderGroupDelegate)delegate;
- (id)actionTitleForSection:(int64_t)a3;
- (id)findActiveIndexPathInGroup:(id)a3 withImageData:(id)a4;
- (id)indexOfAddedItem:(id)a3 inGroupOfType:(int64_t)a4;
- (id)indexPathsToReloadForUpdatedGroup:(id)a3;
- (id)injectedItemsGroup;
- (id)monogramProviderDefaultItemWithSize:(CGSize)a3;
- (id)monogramProviderMonogramItemWithSize:(CGSize)a3;
- (id)providerGroupAtIndexPath:(id)a3;
- (id)providerGroupAtSection:(int64_t)a3;
- (id)providerItemAtIndexPath:(id)a3;
- (id)removeItem:(id)a3;
- (id)suggestionsGroup;
- (id)titleForSection:(int64_t)a3;
- (id)uniqueEmojiSuggestionItems:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForProviderGroup:(id)a3;
- (int64_t)sectionIndexForProviderGroupType:(int64_t)a3;
- (unint64_t)itemsPerRow;
- (unint64_t)itemsPerRowForSection:(int64_t)a3;
- (void)loadProviderGroupsItemsForSize:(CGSize)a3 itemsPerRow:(double)a4 scale:(double)a5 RTL:(BOOL)a6;
- (void)photoPickerProviderGroup:(id)a3 didUpdateItem:(id)a4;
- (void)photoPickerProviderGroupDidUpdate:(id)a3 requiresFullReload:(BOOL)a4;
- (void)setItemsPerRow:(unint64_t)a3 requiresFullReload:(BOOL)a4;
- (void)updateGroupCollapsedStateForSection:(int64_t)a3;
@end

@implementation CNPhotoPickerDataSource

- (CNPhotoPickerProviderGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)uniqueEmojiSuggestionItems:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerDataSource *)self emojiSuggestionItems];
  v6 = [v5 _cn_map:&__block_literal_global_43];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CNPhotoPickerDataSource_uniqueEmojiSuggestionItems___block_invoke_2;
  v10[3] = &unk_1E74E28F0;
  v11 = v6;
  v7 = v6;
  v8 = [v4 _cn_filter:v10];

  return v8;
}

uint64_t __54__CNPhotoPickerDataSource_uniqueEmojiSuggestionItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringRepresentation];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)photoPickerProviderGroup:(id)a3 didUpdateItem:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CNPhotoPickerDataSource *)self delegate];

  if (v7)
  {
    v8 = [(CNPhotoPickerDataSource *)self delegate];
    [v8 photoPickerProviderGroup:v9 didUpdateItem:v6];
  }
}

- (void)photoPickerProviderGroupDidUpdate:(id)a3 requiresFullReload:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(CNPhotoPickerDataSource *)self delegate];

  if (v6)
  {
    v7 = [(CNPhotoPickerDataSource *)self delegate];
    [v7 photoPickerProviderGroupDidUpdate:v8 requiresFullReload:v4];
  }
}

- (void)updateGroupCollapsedStateForSection:(int64_t)a3
{
  v5 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 BOOLValue];

    v11 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 ^ 1u];
    [v11 replaceObjectAtIndex:a3 withObject:v10];
  }
}

- (id)removeItem:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CNPhotoPickerDataSource_removeItem___block_invoke;
  v9[3] = &unk_1E74E28A8;
  v6 = v4;
  v10 = v6;
  v11 = &v13;
  v12 = &v17;
  [v5 enumerateObjectsUsingBlock:v9];

  if (v18[3] == 0x7FFFFFFFFFFFFFFFLL || v14[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

uint64_t __38__CNPhotoPickerDataSource_removeItem___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 removeProviderItem:a1[4]];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[5] + 8) + 24) = result;
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)indexOfAddedItem:(id)a3 inGroupOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNPhotoPickerDataSource *)self providerGroups];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__CNPhotoPickerDataSource_indexOfAddedItem_inGroupOfType___block_invoke;
  v15[3] = &__block_descriptor_40_e36_B16__0__CNPhotoPickerProviderGroup_8l;
  v15[4] = a4;
  v8 = [v7 _cn_firstObjectPassingTest:v15];

  if (v8 && (v9 = [v8 addProviderItem:v6], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = v9;
    v12 = MEMORY[0x1E696AC88];
    v13 = [(CNPhotoPickerDataSource *)self providerGroups];
    v10 = [v12 indexPathForItem:v11 inSection:{objc_msgSend(v13, "indexOfObjectIdenticalTo:", v8)}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)findActiveIndexPathInGroup:(id)a3 withImageData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPhotoPickerDataSource *)self providerGroups];
  v9 = [v8 indexOfObject:v6];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || [v6 numberOfItems] < 1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v6 providerItemAtIndex:v10];
    v12 = [v11 imageData];
    v13 = [v12 isEqualToData:v7];

    if (v13)
    {
      break;
    }

    if (++v10 >= [v6 numberOfItems])
    {
      goto LABEL_8;
    }
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:v9];
  }

  return v14;
}

- (id)injectedItemsGroup
{
  v2 = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [v2 _cn_firstObjectPassingTest:&__block_literal_global_37];

  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)suggestionsGroup
{
  v2 = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [v2 _cn_firstObjectPassingTest:&__block_literal_global_34];

  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)monogramProviderMonogramItemWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  v7 = [(CNPhotoPickerDataSource *)self visualIdentity];
  v8 = [v7 mutableCopy];
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 scale];
  v11 = [CNPhotoPickerMonogramProvider monogramProviderItemForVisualIdentity:v8 size:v6 scale:1 RTL:0 isVariantOptionItem:width backgroundColor:height, v10];

  return v11;
}

- (id)monogramProviderDefaultItemWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  v7 = [(CNPhotoPickerDataSource *)self visualIdentity];
  v8 = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:v7 size:v6 RTL:width, height];

  return v8;
}

- (id)providerItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerDataSource *)self providerGroupAtIndexPath:v4];
  v6 = [v4 row];

  v7 = [v5 providerItemAtIndex:v6];

  return v7;
}

- (id)providerGroupAtIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(CNPhotoPickerDataSource *)self providerGroupAtSection:v4];
}

- (id)providerGroupAtSection:(int64_t)a3
{
  if (a3 < 0 || (-[CNPhotoPickerDataSource providerGroups](self, "providerGroups"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(CNPhotoPickerDataSource *)self providerGroups];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (BOOL)isItemAtIndexPathAddItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  if ([v6 allowAddItem])
  {
    v7 = [v4 row];
    v8 = [v6 addItems];
    v9 = v7 < [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)actionTitleForSection:(int64_t)a3
{
  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  if ([v6 groupType] == 2)
  {
    v7 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 BOOLValue];

    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"PHOTO_EDIT_ANIMOJI_HEADER_COLLAPSE_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"PHOTO_EDIT_ANIMOJI_HEADER_EXPAND_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

    if (v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)titleForSection:(int64_t)a3
{
  v4 = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [v4 objectAtIndexedSubscript:a3];

  v6 = [v5 groupType];
  switch(v6)
  {
    case 3:
      v10 = CNContactsUIBundle();
      v7 = v10;
      v11 = @"PHOTO_EDIT_EMOJI_HEADER";
      goto LABEL_8;
    case 2:
      v10 = CNContactsUIBundle();
      v7 = v10;
      v11 = @"PHOTO_EDIT_ANIMOJI_HEADER";
LABEL_8:
      v9 = [v10 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized"];
LABEL_9:

      goto LABEL_11;
    case 1:
      v7 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v7 userInterfaceIdiom])
      {
        v8 = CNContactsUIBundle();
        v9 = [v8 localizedStringForKey:@"PHOTO_EDIT_PHOTOS_HEADER" value:&stru_1F0CE7398 table:@"Localized"];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)indexPathsToReloadForUpdatedGroup:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerDataSource *)self sectionIndexForProviderGroup:v4];
  v6 = [v4 numberOfItems];
  v7 = v6 - 1;
  if (v6 < 1)
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = v6;
    v9 = 0;
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v5];
      v12 = [v10 arrayByAddingObject:v11];

      ++v9;
      v10 = v12;
    }

    while (v8 != v9);
  }

  if ([v4 allowAddItem])
  {
    v13 = [v12 _cn_takeLast:v7];

    v12 = v13;
  }

  return v12;
}

- (int64_t)sectionIndexForProviderGroupType:(int64_t)a3
{
  v4 = [(CNPhotoPickerDataSource *)self providerGroups];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNPhotoPickerDataSource_sectionIndexForProviderGroupType___block_invoke;
  v7[3] = &__block_descriptor_40_e36_B16__0__CNPhotoPickerProviderGroup_8l;
  v7[4] = a3;
  v5 = [v4 _cn_indexOfFirstObjectPassingTest:v7];

  return v5;
}

- (int64_t)sectionIndexForProviderGroup:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CNPhotoPickerDataSource_sectionIndexForProviderGroup___block_invoke;
  v9[3] = &unk_1E74E2840;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_indexOfFirstObjectPassingTest:v9];

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = 2 * [(CNPhotoPickerDataSource *)self itemsPerRowForSection:a3];
    v11 = [v6 numberOfItems];
    if (v10 >= v11)
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = [v6 numberOfItems];
  }

  return v10;
}

- (int64_t)numberOfSections
{
  v2 = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [v2 count];

  return v3;
}

- (void)setItemsPerRow:(unint64_t)a3 requiresFullReload:(BOOL)a4
{
  v6 = [(CNPhotoPickerDataSource *)self providerGroups];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNPhotoPickerDataSource_setItemsPerRow_requiresFullReload___block_invoke;
  v7[3] = &__block_descriptor_41_e36_v16__0__CNPhotoPickerProviderGroup_8l;
  v7[4] = a3;
  v8 = a4;
  [v6 _cn_each:v7];
}

- (unint64_t)itemsPerRowForSection:(int64_t)a3
{
  v4 = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 itemsPerRow];
  return v6;
}

- (unint64_t)itemsPerRow
{
  v2 = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [v2 firstObject];
  v4 = [v3 itemsPerRow];

  return v4;
}

- (void)loadProviderGroupsItemsForSize:(CGSize)a3 itemsPerRow:(double)a4 scale:(double)a5 RTL:(BOOL)a6
{
  v6 = a6;
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(CNPhotoPickerDataSource *)self providerGroups];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) loadProvidersItemsForSize:v6 itemsPerRow:width scale:height RTL:{a4, a5}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)a3 contactViewCache:(id)a4 providerGroups:(id)a5 avatarStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = CNPhotoPickerDataSource;
  v15 = [(CNPhotoPickerDataSource *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_visualIdentity, a3);
    objc_storeStrong(&v16->_contactViewCache, a4);
    activePhotoIndexPath = v16->_activePhotoIndexPath;
    v16->_activePhotoIndexPath = 0;

    objc_storeStrong(&v16->_providerGroups, a5);
    objc_storeStrong(&v16->_avatarStore, a6);
    v18 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = v16->_variantsManager;
    v16->_variantsManager = v18;

    v20 = [v13 _cn_map:&__block_literal_global_13183];
    v21 = [v20 mutableCopy];
    groupIsCollapsedState = v16->_groupIsCollapsedState;
    v16->_groupIsCollapsedState = v21;

    emojiSuggestionItems = v16->_emojiSuggestionItems;
    v16->_emojiSuggestionItems = MEMORY[0x1E695E0F0];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __94__CNPhotoPickerDataSource_initWithVisualIdentity_contactViewCache_providerGroups_avatarStore___block_invoke_2;
    v27[3] = &unk_1E74E27F8;
    v24 = v16;
    v28 = v24;
    [v13 _cn_each:v27];
    v25 = v24;
  }

  return v16;
}

id __94__CNPhotoPickerDataSource_initWithVisualIdentity_contactViewCache_providerGroups_avatarStore___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 groupType] == 2)
  {
    v2 = MEMORY[0x1E695E118];
  }

  else
  {
    v2 = MEMORY[0x1E695E110];
  }

  return v2;
}

- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)a3 contactViewCache:(id)a4 photoPickerConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() avatarStore];
  v12 = [v10 mutableCopy];
  v13 = +[CNUIContactsEnvironment currentEnvironment];
  v14 = [CNPhotoPickerProviderGroupsBuilder builderWithVisualIdentity:v12 avatarStore:v11 environment:v13 contactViewCache:v9 photoPickerConfiguration:v8];

  LOBYTE(v12) = [v8 allowPhotoCapture];
  self->_allowsPhotoLibraryAccess = v12;
  v15 = [v14 build];
  v16 = [(CNPhotoPickerDataSource *)self initWithVisualIdentity:v10 contactViewCache:v9 providerGroups:v15 avatarStore:v11];

  return v16;
}

+ (AVTAvatarStore)avatarStore
{
  if (+[CNPhotoPickerCapabilities allowsAvatarUI])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v2 = getAVTAvatarStoreClass_softClass;
    v10 = getAVTAvatarStoreClass_softClass;
    if (!getAVTAvatarStoreClass_softClass)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __getAVTAvatarStoreClass_block_invoke;
      v6[3] = &unk_1E74E7518;
      v6[4] = &v7;
      __getAVTAvatarStoreClass_block_invoke(v6);
      v2 = v8[3];
    }

    v3 = v2;
    _Block_object_dispose(&v7, 8);
    v4 = objc_alloc_init(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end