@interface CNPhotoPickerDataSource
+ (AVTAvatarStore)avatarStore;
- (BOOL)isItemAtIndexPathAddItem:(id)item;
- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)identity contactViewCache:(id)cache photoPickerConfiguration:(id)configuration;
- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)identity contactViewCache:(id)cache providerGroups:(id)groups avatarStore:(id)store;
- (CNPhotoPickerProviderGroupDelegate)delegate;
- (id)actionTitleForSection:(int64_t)section;
- (id)findActiveIndexPathInGroup:(id)group withImageData:(id)data;
- (id)indexOfAddedItem:(id)item inGroupOfType:(int64_t)type;
- (id)indexPathsToReloadForUpdatedGroup:(id)group;
- (id)injectedItemsGroup;
- (id)monogramProviderDefaultItemWithSize:(CGSize)size;
- (id)monogramProviderMonogramItemWithSize:(CGSize)size;
- (id)providerGroupAtIndexPath:(id)path;
- (id)providerGroupAtSection:(int64_t)section;
- (id)providerItemAtIndexPath:(id)path;
- (id)removeItem:(id)item;
- (id)suggestionsGroup;
- (id)titleForSection:(int64_t)section;
- (id)uniqueEmojiSuggestionItems:(id)items;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForProviderGroup:(id)group;
- (int64_t)sectionIndexForProviderGroupType:(int64_t)type;
- (unint64_t)itemsPerRow;
- (unint64_t)itemsPerRowForSection:(int64_t)section;
- (void)loadProviderGroupsItemsForSize:(CGSize)size itemsPerRow:(double)row scale:(double)scale RTL:(BOOL)l;
- (void)photoPickerProviderGroup:(id)group didUpdateItem:(id)item;
- (void)photoPickerProviderGroupDidUpdate:(id)update requiresFullReload:(BOOL)reload;
- (void)setItemsPerRow:(unint64_t)row requiresFullReload:(BOOL)reload;
- (void)updateGroupCollapsedStateForSection:(int64_t)section;
@end

@implementation CNPhotoPickerDataSource

- (CNPhotoPickerProviderGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)uniqueEmojiSuggestionItems:(id)items
{
  itemsCopy = items;
  emojiSuggestionItems = [(CNPhotoPickerDataSource *)self emojiSuggestionItems];
  v6 = [emojiSuggestionItems _cn_map:&__block_literal_global_43];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CNPhotoPickerDataSource_uniqueEmojiSuggestionItems___block_invoke_2;
  v10[3] = &unk_1E74E28F0;
  v11 = v6;
  v7 = v6;
  v8 = [itemsCopy _cn_filter:v10];

  return v8;
}

uint64_t __54__CNPhotoPickerDataSource_uniqueEmojiSuggestionItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringRepresentation];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)photoPickerProviderGroup:(id)group didUpdateItem:(id)item
{
  groupCopy = group;
  itemCopy = item;
  delegate = [(CNPhotoPickerDataSource *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNPhotoPickerDataSource *)self delegate];
    [delegate2 photoPickerProviderGroup:groupCopy didUpdateItem:itemCopy];
  }
}

- (void)photoPickerProviderGroupDidUpdate:(id)update requiresFullReload:(BOOL)reload
{
  reloadCopy = reload;
  updateCopy = update;
  delegate = [(CNPhotoPickerDataSource *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNPhotoPickerDataSource *)self delegate];
    [delegate2 photoPickerProviderGroupDidUpdate:updateCopy requiresFullReload:reloadCopy];
  }
}

- (void)updateGroupCollapsedStateForSection:(int64_t)section
{
  groupIsCollapsedState = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
  v6 = [groupIsCollapsedState count];

  if (v6 > section)
  {
    groupIsCollapsedState2 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v8 = [groupIsCollapsedState2 objectAtIndexedSubscript:section];
    bOOLValue = [v8 BOOLValue];

    groupIsCollapsedState3 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue ^ 1u];
    [groupIsCollapsedState3 replaceObjectAtIndex:section withObject:v10];
  }
}

- (id)removeItem:(id)item
{
  itemCopy = item;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CNPhotoPickerDataSource_removeItem___block_invoke;
  v9[3] = &unk_1E74E28A8;
  v6 = itemCopy;
  v10 = v6;
  v11 = &v13;
  v12 = &v17;
  [providerGroups enumerateObjectsUsingBlock:v9];

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

- (id)indexOfAddedItem:(id)item inGroupOfType:(int64_t)type
{
  itemCopy = item;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__CNPhotoPickerDataSource_indexOfAddedItem_inGroupOfType___block_invoke;
  v15[3] = &__block_descriptor_40_e36_B16__0__CNPhotoPickerProviderGroup_8l;
  v15[4] = type;
  v8 = [providerGroups _cn_firstObjectPassingTest:v15];

  if (v8 && (v9 = [v8 addProviderItem:itemCopy], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = v9;
    v12 = MEMORY[0x1E696AC88];
    providerGroups2 = [(CNPhotoPickerDataSource *)self providerGroups];
    v10 = [v12 indexPathForItem:v11 inSection:{objc_msgSend(providerGroups2, "indexOfObjectIdenticalTo:", v8)}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)findActiveIndexPathInGroup:(id)group withImageData:(id)data
{
  groupCopy = group;
  dataCopy = data;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v9 = [providerGroups indexOfObject:groupCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || [groupCopy numberOfItems] < 1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  while (1)
  {
    v11 = [groupCopy providerItemAtIndex:v10];
    imageData = [v11 imageData];
    v13 = [imageData isEqualToData:dataCopy];

    if (v13)
    {
      break;
    }

    if (++v10 >= [groupCopy numberOfItems])
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
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [providerGroups _cn_firstObjectPassingTest:&__block_literal_global_37];

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
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [providerGroups _cn_firstObjectPassingTest:&__block_literal_global_34];

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

- (id)monogramProviderMonogramItemWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  visualIdentity = [(CNPhotoPickerDataSource *)self visualIdentity];
  v8 = [visualIdentity mutableCopy];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = [CNPhotoPickerMonogramProvider monogramProviderItemForVisualIdentity:v8 size:v6 scale:1 RTL:0 isVariantOptionItem:width backgroundColor:height, v10];

  return v11;
}

- (id)monogramProviderDefaultItemWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  visualIdentity = [(CNPhotoPickerDataSource *)self visualIdentity];
  height = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:visualIdentity size:v6 RTL:width, height];

  return height;
}

- (id)providerItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CNPhotoPickerDataSource *)self providerGroupAtIndexPath:pathCopy];
  v6 = [pathCopy row];

  v7 = [v5 providerItemAtIndex:v6];

  return v7;
}

- (id)providerGroupAtIndexPath:(id)path
{
  section = [path section];

  return [(CNPhotoPickerDataSource *)self providerGroupAtSection:section];
}

- (id)providerGroupAtSection:(int64_t)section
{
  if (section < 0 || (-[CNPhotoPickerDataSource providerGroups](self, "providerGroups"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= section))
  {
    v8 = 0;
  }

  else
  {
    providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
    v8 = [providerGroups objectAtIndexedSubscript:section];
  }

  return v8;
}

- (BOOL)isItemAtIndexPathAddItem:(id)item
{
  itemCopy = item;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [providerGroups objectAtIndexedSubscript:{objc_msgSend(itemCopy, "section")}];

  if ([v6 allowAddItem])
  {
    v7 = [itemCopy row];
    addItems = [v6 addItems];
    v9 = v7 < [addItems count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)actionTitleForSection:(int64_t)section
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [providerGroups objectAtIndexedSubscript:section];

  if ([v6 groupType] == 2)
  {
    groupIsCollapsedState = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v8 = [groupIsCollapsedState objectAtIndexedSubscript:section];
    bOOLValue = [v8 BOOLValue];

    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"PHOTO_EDIT_ANIMOJI_HEADER_COLLAPSE_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"PHOTO_EDIT_ANIMOJI_HEADER_EXPAND_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

    if (bOOLValue)
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

- (id)titleForSection:(int64_t)section
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [providerGroups objectAtIndexedSubscript:section];

  groupType = [v5 groupType];
  switch(groupType)
  {
    case 3:
      v10 = CNContactsUIBundle();
      currentDevice = v10;
      v11 = @"PHOTO_EDIT_EMOJI_HEADER";
      goto LABEL_8;
    case 2:
      v10 = CNContactsUIBundle();
      currentDevice = v10;
      v11 = @"PHOTO_EDIT_ANIMOJI_HEADER";
LABEL_8:
      v9 = [v10 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized"];
LABEL_9:

      goto LABEL_11;
    case 1:
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
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

- (id)indexPathsToReloadForUpdatedGroup:(id)group
{
  groupCopy = group;
  v5 = [(CNPhotoPickerDataSource *)self sectionIndexForProviderGroup:groupCopy];
  numberOfItems = [groupCopy numberOfItems];
  v7 = numberOfItems - 1;
  if (numberOfItems < 1)
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = numberOfItems;
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

  if ([groupCopy allowAddItem])
  {
    v13 = [v12 _cn_takeLast:v7];

    v12 = v13;
  }

  return v12;
}

- (int64_t)sectionIndexForProviderGroupType:(int64_t)type
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNPhotoPickerDataSource_sectionIndexForProviderGroupType___block_invoke;
  v7[3] = &__block_descriptor_40_e36_B16__0__CNPhotoPickerProviderGroup_8l;
  v7[4] = type;
  v5 = [providerGroups _cn_indexOfFirstObjectPassingTest:v7];

  return v5;
}

- (int64_t)sectionIndexForProviderGroup:(id)group
{
  groupCopy = group;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CNPhotoPickerDataSource_sectionIndexForProviderGroup___block_invoke;
  v9[3] = &unk_1E74E2840;
  v10 = groupCopy;
  v6 = groupCopy;
  v7 = [providerGroups _cn_indexOfFirstObjectPassingTest:v9];

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [providerGroups objectAtIndexedSubscript:section];

  groupIsCollapsedState = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
  v8 = [groupIsCollapsedState objectAtIndexedSubscript:section];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    numberOfItems2 = 2 * [(CNPhotoPickerDataSource *)self itemsPerRowForSection:section];
    numberOfItems = [v6 numberOfItems];
    if (numberOfItems2 >= numberOfItems)
    {
      numberOfItems2 = numberOfItems;
    }
  }

  else
  {
    numberOfItems2 = [v6 numberOfItems];
  }

  return numberOfItems2;
}

- (int64_t)numberOfSections
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v3 = [providerGroups count];

  return v3;
}

- (void)setItemsPerRow:(unint64_t)row requiresFullReload:(BOOL)reload
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNPhotoPickerDataSource_setItemsPerRow_requiresFullReload___block_invoke;
  v7[3] = &__block_descriptor_41_e36_v16__0__CNPhotoPickerProviderGroup_8l;
  v7[4] = row;
  reloadCopy = reload;
  [providerGroups _cn_each:v7];
}

- (unint64_t)itemsPerRowForSection:(int64_t)section
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [providerGroups objectAtIndex:section];

  itemsPerRow = [v5 itemsPerRow];
  return itemsPerRow;
}

- (unint64_t)itemsPerRow
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  firstObject = [providerGroups firstObject];
  itemsPerRow = [firstObject itemsPerRow];

  return itemsPerRow;
}

- (void)loadProviderGroupsItemsForSize:(CGSize)size itemsPerRow:(double)row scale:(double)scale RTL:(BOOL)l
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v12 = [providerGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(providerGroups);
        }

        [*(*(&v16 + 1) + 8 * v15++) loadProvidersItemsForSize:lCopy itemsPerRow:width scale:height RTL:{row, scale}];
      }

      while (v13 != v15);
      v13 = [providerGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)identity contactViewCache:(id)cache providerGroups:(id)groups avatarStore:(id)store
{
  identityCopy = identity;
  cacheCopy = cache;
  groupsCopy = groups;
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = CNPhotoPickerDataSource;
  v15 = [(CNPhotoPickerDataSource *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_visualIdentity, identity);
    objc_storeStrong(&v16->_contactViewCache, cache);
    activePhotoIndexPath = v16->_activePhotoIndexPath;
    v16->_activePhotoIndexPath = 0;

    objc_storeStrong(&v16->_providerGroups, groups);
    objc_storeStrong(&v16->_avatarStore, store);
    v18 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = v16->_variantsManager;
    v16->_variantsManager = v18;

    v20 = [groupsCopy _cn_map:&__block_literal_global_13183];
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
    [groupsCopy _cn_each:v27];
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

- (CNPhotoPickerDataSource)initWithVisualIdentity:(id)identity contactViewCache:(id)cache photoPickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cacheCopy = cache;
  identityCopy = identity;
  avatarStore = [objc_opt_class() avatarStore];
  v12 = [identityCopy mutableCopy];
  v13 = +[CNUIContactsEnvironment currentEnvironment];
  v14 = [CNPhotoPickerProviderGroupsBuilder builderWithVisualIdentity:v12 avatarStore:avatarStore environment:v13 contactViewCache:cacheCopy photoPickerConfiguration:configurationCopy];

  LOBYTE(v12) = [configurationCopy allowPhotoCapture];
  self->_allowsPhotoLibraryAccess = v12;
  build = [v14 build];
  v16 = [(CNPhotoPickerDataSource *)self initWithVisualIdentity:identityCopy contactViewCache:cacheCopy providerGroups:build avatarStore:avatarStore];

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